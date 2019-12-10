library xml.entities.null_mapping;

import '../utils/attribute_type.dart';
import 'entity_mapping.dart';

/// Entity mapping that skips all entity conversion, both on decoding and
/// encoding input.
///
/// This entity encoding is unlikely to be useful, unless you exactly know what
/// you are doing. XML output generated by this mapping is unlikely to valid
/// XML output and might not be readable again.
class XmlNullEntityMapping extends XmlEntityMapping {
  const XmlNullEntityMapping();

  @override
  String decode(String input) => input;

  @override
  String decodeEntity(String input) => null;

  @override
  String encodeText(String input) => input;

  @override
  String encodeAttributeValue(String input, XmlAttributeType type) => input;
}
