.class public interface abstract Lorg/xmlpull/v1/XmlPullParser;
.super Ljava/lang/Object;
.source "XmlPullParser.java"


# static fields
.field public static final whitelist test-api CDSECT:I = 0x5

.field public static final whitelist test-api COMMENT:I = 0x9

.field public static final whitelist test-api DOCDECL:I = 0xa

.field public static final whitelist test-api END_DOCUMENT:I = 0x1

.field public static final whitelist test-api END_TAG:I = 0x3

.field public static final whitelist test-api ENTITY_REF:I = 0x6

.field public static final whitelist test-api FEATURE_PROCESS_DOCDECL:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#process-docdecl"

.field public static final whitelist test-api FEATURE_PROCESS_NAMESPACES:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#process-namespaces"

.field public static final whitelist test-api FEATURE_REPORT_NAMESPACE_ATTRIBUTES:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

.field public static final whitelist test-api FEATURE_VALIDATION:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#validation"

.field public static final whitelist test-api IGNORABLE_WHITESPACE:I = 0x7

.field public static final whitelist test-api NO_NAMESPACE:Ljava/lang/String; = ""

.field public static final whitelist test-api PROCESSING_INSTRUCTION:I = 0x8

.field public static final whitelist test-api START_DOCUMENT:I = 0x0

.field public static final whitelist test-api START_TAG:I = 0x2

.field public static final whitelist test-api TEXT:I = 0x4

.field public static final whitelist test-api TYPES:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 330
    const-string v9, "COMMENT"

    const-string v10, "DOCDECL"

    const-string v0, "START_DOCUMENT"

    const-string v1, "END_DOCUMENT"

    const-string v2, "START_TAG"

    const-string v3, "END_TAG"

    const-string v4, "TEXT"

    const-string v5, "CDSECT"

    const-string v6, "ENTITY_REF"

    const-string v7, "IGNORABLE_WHITESPACE"

    const-string v8, "PROCESSING_INSTRUCTION"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract whitelist test-api defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getAttributeCount()I
.end method

.method public abstract whitelist test-api getAttributeName(I)Ljava/lang/String;
.end method

.method public abstract whitelist test-api getAttributeNamespace(I)Ljava/lang/String;
.end method

.method public abstract whitelist test-api getAttributePrefix(I)Ljava/lang/String;
.end method

.method public abstract whitelist test-api getAttributeType(I)Ljava/lang/String;
.end method

.method public abstract whitelist test-api getAttributeValue(I)Ljava/lang/String;
.end method

.method public abstract whitelist test-api getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract whitelist test-api getColumnNumber()I
.end method

.method public abstract whitelist test-api getDepth()I
.end method

.method public abstract whitelist test-api getEventType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getFeature(Ljava/lang/String;)Z
.end method

.method public abstract whitelist test-api getInputEncoding()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getLineNumber()I
.end method

.method public abstract whitelist test-api getName()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getNamespace()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getNamespace(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract whitelist test-api getNamespaceCount(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getNamespacePrefix(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getNamespaceUri(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getPositionDescription()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getPrefix()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract whitelist test-api getText()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getTextCharacters([I)[C
.end method

.method public abstract whitelist test-api isAttributeDefault(I)Z
.end method

.method public abstract whitelist test-api isEmptyElementTag()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api isWhitespace()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api next()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api nextTag()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api nextText()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api nextToken()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api require(ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setInput(Ljava/io/Reader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method
