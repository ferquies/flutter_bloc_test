import '../models/item_model.dart';

class MovieItem {
  var _posterUrl;
  var _description;
  var _releaseDate;
  var _title;
  var _voteAverage;
  var _movieId;

  MovieItem(ItemModel itemModel, int index) {
    _posterUrl = itemModel.results[index].poster_path;
    _title = itemModel.results[index].title;
    _description = itemModel.results[index].overview;
    _releaseDate = itemModel.results[index].release_date;
    _voteAverage = itemModel.results[index].vote_average.toString();
    _movieId = itemModel.results[index].id;
  }

  get movieId => _movieId;

  get voteAverage => _voteAverage;

  get title => _title;

  get releaseDate => _releaseDate;

  get description => _description;

  get posterUrl => _posterUrl;
}
