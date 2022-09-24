import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';
import 'package:movieapp/models/movie_model.dart';
import 'package:movieapp/pages/details_page.dart';
import 'package:movieapp/utils/apis.utils.dart';

class CustomListCardWidget extends StatelessWidget {
  final MovieModel movie;
  const CustomListCardWidget({Key? key, required this.movie}) : super(key: key);
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => DetailsPage(movie: movie),
                  fullscreenDialog: true));
        },
        child: Container(
            height: 200,
            decoration: BoxDecoration(
                color: Colors.black54, borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                  child: Hero(
                    tag: movie.id,
                    child: Image.network(
                      API.REQUEST_IMG(movie.posterPath),
                      loadingBuilder: (_, child, progress) {
                        return (progress == null)
                            ? child
                            : CircularProgressIndicator.adaptive();
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movie.title,
                          style: Theme.of(context).textTheme.headline6,
                          softWrap: true,
                          overflow: TextOverflow.visible,
                        ),
                        Spacer(),
                        Text('Popularidade: ' + movie.popularity.toString()),
                        Text('Votos: ' + movie.voteAverage.toString()),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
