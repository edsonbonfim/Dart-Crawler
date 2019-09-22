import "package:http/http.dart" as http;

void main(List<String> args) async
{
    var request = await http.get(args[0]);
    var regex   = RegExp(r"http(s)?:\/\/[\w\.]+");
    var matches = regex.allMatches(request.body);
    var links   = Set();

    matches.forEach((match) => links.add(match.group(0)));
    links.forEach((link) => print(link));
}