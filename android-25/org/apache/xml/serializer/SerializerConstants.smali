.class interface abstract Lorg/apache/xml/serializer/SerializerConstants;
.super Ljava/lang/Object;
.source "SerializerConstants.java"


# static fields
.field public static final CDATA_CONTINUE:Ljava/lang/String; = "]]]]><![CDATA[>"

.field public static final CDATA_DELIMITER_CLOSE:Ljava/lang/String; = "]]>"

.field public static final CDATA_DELIMITER_OPEN:Ljava/lang/String; = "<![CDATA["

.field public static final DEFAULT_SAX_SERIALIZER:Ljava/lang/String;

.field public static final EMPTYSTRING:Ljava/lang/String; = ""

.field public static final ENTITY_AMP:Ljava/lang/String; = "&amp;"

.field public static final ENTITY_CRLF:Ljava/lang/String; = "&#xA;"

.field public static final ENTITY_GT:Ljava/lang/String; = "&gt;"

.field public static final ENTITY_LT:Ljava/lang/String; = "&lt;"

.field public static final ENTITY_QUOT:Ljava/lang/String; = "&quot;"

.field public static final XMLNS_PREFIX:Ljava/lang/String; = "xmlns"

.field public static final XMLNS_URI:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"

.field public static final XMLVERSION10:Ljava/lang/String; = "1.0"

.field public static final XMLVERSION11:Ljava/lang/String; = "1.1"

.field public static final XML_PREFIX:Ljava/lang/String; = "xml"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    sget-object v1, Lorg/apache/xml/serializer/SerializerBase;->PKG_NAME:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, ".ToXMLSAXHandler"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Lorg/apache/xml/serializer/SerializerConstants;->DEFAULT_SAX_SERIALIZER:Ljava/lang/String;

    #@18
    .line 27
    return-void
.end method
