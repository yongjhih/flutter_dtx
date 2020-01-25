library streamx;

extension StreamX<T> on Stream<T> {
  Stream<T> distinctBy<R>(R comsume(T it)) => distinct((prev, next) => comsume(prev) == comsume(next));
}
