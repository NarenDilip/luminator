class reg_details {
  late int id;
  late int region_id;
  late String region_name;

  reg_details(this.region_id, this.region_name);

  reg_details.fromMap(Map map) {
    region_id = map[region_id];
    region_name = map[region_name];
  }
}