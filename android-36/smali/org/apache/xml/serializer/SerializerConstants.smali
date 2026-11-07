.class interface abstract Lorg/apache/xml/serializer/SerializerConstants;
.super Ljava/lang/Object;
.source "SerializerConstants.java"


# static fields
.field public static final greylist CDATA_CONTINUE:Ljava/lang/String; = "]]]]><![CDATA[>"

.field public static final greylist CDATA_DELIMITER_CLOSE:Ljava/lang/String; = "]]>"

.field public static final greylist CDATA_DELIMITER_OPEN:Ljava/lang/String; = "<![CDATA["

.field public static final greylist DEFAULT_SAX_SERIALIZER:Ljava/lang/String;

.field public static final greylist EMPTYSTRING:Ljava/lang/String; = ""

.field public static final greylist ENTITY_AMP:Ljava/lang/String; = "&amp;"

.field public static final greylist ENTITY_CRLF:Ljava/lang/String; = "&#xA;"

.field public static final greylist ENTITY_GT:Ljava/lang/String; = "&gt;"

.field public static final greylist ENTITY_LT:Ljava/lang/String; = "&lt;"

.field public static final greylist ENTITY_QUOT:Ljava/lang/String; = "&quot;"

.field public static final greylist XMLNS_PREFIX:Ljava/lang/String; = "xmlns"

.field public static final greylist XMLNS_URI:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"

.field public static final greylist XMLVERSION10:Ljava/lang/String; = "1.0"

.field public static final greylist XMLVERSION11:Ljava/lang/String; = "1.1"

.field public static final greylist XML_PREFIX:Ljava/lang/String; = "xml"


# direct methods
.method static constructor greylist <clinit>()V
    .registers 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/xml/serializer/SerializerBase;->PKG_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".ToXMLSAXHandler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/SerializerConstants;->DEFAULT_SAX_SERIALIZER:Ljava/lang/String;

    return-void
.end method
