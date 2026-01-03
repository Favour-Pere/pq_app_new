class FollowedItem {
  final String tag;
  final String timeOrDate;
  final int badgeCount;
  final bool pinned;

  FollowedItem({
    required this.tag,
    required this.timeOrDate,
    required this.badgeCount,
    this.pinned = false,
  });
}
