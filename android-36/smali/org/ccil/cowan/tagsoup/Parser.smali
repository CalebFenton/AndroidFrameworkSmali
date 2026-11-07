.class public Lorg/ccil/cowan/tagsoup/Parser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Parser.java"

# interfaces
.implements Lorg/ccil/cowan/tagsoup/ScanHandler;
.implements Lorg/xml/sax/XMLReader;
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field public static final greylist CDATAElementsFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/cdata-elements"

.field private static greylist DEFAULT_BOGONS_EMPTY:Z = false

.field private static greylist DEFAULT_CDATA_ELEMENTS:Z = false

.field private static greylist DEFAULT_DEFAULT_ATTRIBUTES:Z = false

.field private static greylist DEFAULT_IGNORABLE_WHITESPACE:Z = false

.field private static greylist DEFAULT_IGNORE_BOGONS:Z = false

.field private static greylist DEFAULT_NAMESPACES:Z = false

.field private static greylist DEFAULT_RESTART_ELEMENTS:Z = false

.field private static greylist DEFAULT_ROOT_BOGONS:Z = false

.field private static greylist DEFAULT_TRANSLATE_COLONS:Z = false

.field public static final greylist XML11Feature:Ljava/lang/String; = "http://xml.org/sax/features/xml-1.1"

.field public static final greylist autoDetectorProperty:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/properties/auto-detector"

.field public static final greylist bogonsEmptyFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/bogons-empty"

.field public static final greylist defaultAttributesFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/default-attributes"

.field private static greylist etagchars:[C = null

.field public static final greylist externalGeneralEntitiesFeature:Ljava/lang/String; = "http://xml.org/sax/features/external-general-entities"

.field public static final greylist externalParameterEntitiesFeature:Ljava/lang/String; = "http://xml.org/sax/features/external-parameter-entities"

.field public static final greylist ignorableWhitespaceFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/ignorable-whitespace"

.field public static final greylist ignoreBogonsFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/ignore-bogons"

.field public static final greylist isStandaloneFeature:Ljava/lang/String; = "http://xml.org/sax/features/is-standalone"

.field private static greylist legal:Ljava/lang/String; = null

.field public static final greylist lexicalHandlerParameterEntitiesFeature:Ljava/lang/String; = "http://xml.org/sax/features/lexical-handler/parameter-entities"

.field public static final greylist lexicalHandlerProperty:Ljava/lang/String; = "http://xml.org/sax/properties/lexical-handler"

.field public static final greylist namespacePrefixesFeature:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field public static final greylist namespacesFeature:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field public static final greylist resolveDTDURIsFeature:Ljava/lang/String; = "http://xml.org/sax/features/resolve-dtd-uris"

.field public static final greylist restartElementsFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/restart-elements"

.field public static final greylist rootBogonsFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/root-bogons"

.field public static final greylist scannerProperty:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/properties/scanner"

.field public static final greylist schemaProperty:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/properties/schema"

.field public static final greylist stringInterningFeature:Ljava/lang/String; = "http://xml.org/sax/features/string-interning"

.field public static final greylist translateColonsFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/translate-colons"

.field public static final greylist unicodeNormalizationCheckingFeature:Ljava/lang/String; = "http://xml.org/sax/features/unicode-normalization-checking"

.field public static final greylist useAttributes2Feature:Ljava/lang/String; = "http://xml.org/sax/features/use-attributes2"

.field public static final greylist useEntityResolver2Feature:Ljava/lang/String; = "http://xml.org/sax/features/use-entity-resolver2"

.field public static final greylist useLocator2Feature:Ljava/lang/String; = "http://xml.org/sax/features/use-locator2"

.field public static final greylist validationFeature:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field public static final greylist xmlnsURIsFeature:Ljava/lang/String; = "http://xml.org/sax/features/xmlns-uris"


# instance fields
.field private greylist CDATAElements:Z

.field private greylist bogonsEmpty:Z

.field private greylist defaultAttributes:Z

.field private greylist ignorableWhitespace:Z

.field private greylist ignoreBogons:Z

.field private greylist namespaces:Z

.field private greylist restartElements:Z

.field private greylist rootBogons:Z

.field private greylist theAttributeName:Ljava/lang/String;

.field private greylist theAutoDetector:Lorg/ccil/cowan/tagsoup/AutoDetector;

.field private greylist theCommentBuffer:[C

.field private greylist theContentHandler:Lorg/xml/sax/ContentHandler;

.field private greylist theDTDHandler:Lorg/xml/sax/DTDHandler;

.field private greylist theDoctypeIsPresent:Z

.field private greylist theDoctypeName:Ljava/lang/String;

.field private greylist theDoctypePublicId:Ljava/lang/String;

.field private greylist theDoctypeSystemId:Ljava/lang/String;

.field private greylist theEntity:I

.field private greylist theEntityResolver:Lorg/xml/sax/EntityResolver;

.field private greylist theErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private greylist theFeatures:Ljava/util/HashMap;

.field private greylist theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private greylist theNewElement:Lorg/ccil/cowan/tagsoup/Element;

.field private greylist thePCDATA:Lorg/ccil/cowan/tagsoup/Element;

.field private greylist thePITarget:Ljava/lang/String;

.field private greylist theSaved:Lorg/ccil/cowan/tagsoup/Element;

.field private greylist theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

.field private greylist theSchema:Lorg/ccil/cowan/tagsoup/Schema;

.field private greylist theStack:Lorg/ccil/cowan/tagsoup/Element;

.field private greylist translateColons:Z

.field private greylist virginStack:Z


# direct methods
.method static constructor greylist <clinit>()V
    .registers 2

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_NAMESPACES:Z

    .line 48
    const/4 v1, 0x0

    sput-boolean v1, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_IGNORE_BOGONS:Z

    .line 49
    sput-boolean v1, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_BOGONS_EMPTY:Z

    .line 50
    sput-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_ROOT_BOGONS:Z

    .line 51
    sput-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_DEFAULT_ATTRIBUTES:Z

    .line 52
    sput-boolean v1, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_TRANSLATE_COLONS:Z

    .line 53
    sput-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_RESTART_ELEMENTS:Z

    .line 54
    sput-boolean v1, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_IGNORABLE_WHITESPACE:Z

    .line 55
    sput-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_CDATA_ELEMENTS:Z

    .line 648
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_22

    sput-object v0, Lorg/ccil/cowan/tagsoup/Parser;->etagchars:[C

    .line 929
    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-\'()+,./:=?;!*#@$_%"

    sput-object v0, Lorg/ccil/cowan/tagsoup/Parser;->legal:Ljava/lang/String;

    return-void

    nop

    :array_22
    .array-data 2
        0x3cs
        0x2fs
        0x3es
    .end array-data
.end method

.method public constructor greylist <init>()V
    .registers 4

    .line 32
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 36
    iput-object p0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    .line 37
    iput-object p0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 38
    iput-object p0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 39
    iput-object p0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 40
    iput-object p0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theEntityResolver:Lorg/xml/sax/EntityResolver;

    .line 59
    sget-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_NAMESPACES:Z

    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->namespaces:Z

    .line 60
    sget-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_IGNORE_BOGONS:Z

    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->ignoreBogons:Z

    .line 61
    sget-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_BOGONS_EMPTY:Z

    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->bogonsEmpty:Z

    .line 62
    sget-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_ROOT_BOGONS:Z

    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->rootBogons:Z

    .line 63
    sget-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_DEFAULT_ATTRIBUTES:Z

    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->defaultAttributes:Z

    .line 64
    sget-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_TRANSLATE_COLONS:Z

    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->translateColons:Z

    .line 65
    sget-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_RESTART_ELEMENTS:Z

    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->restartElements:Z

    .line 66
    sget-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_IGNORABLE_WHITESPACE:Z

    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->ignorableWhitespace:Z

    .line 67
    sget-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_CDATA_ELEMENTS:Z

    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->CDATAElements:Z

    .line 282
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    .line 284
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    sget-boolean v1, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_NAMESPACES:Z

    invoke-static {v1}, Lorg/ccil/cowan/tagsoup/Parser;->truthValue(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/external-general-entities"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/external-parameter-entities"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/is-standalone"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/lexical-handler/parameter-entities"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/resolve-dtd-uris"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/string-interning"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/use-attributes2"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/use-locator2"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/use-entity-resolver2"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/validation"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "http://xml.org/sax/features/xmlns-uris"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/xml-1.1"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    sget-boolean v1, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_IGNORE_BOGONS:Z

    invoke-static {v1}, Lorg/ccil/cowan/tagsoup/Parser;->truthValue(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "http://www.ccil.org/~cowan/tagsoup/features/ignore-bogons"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    sget-boolean v1, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_BOGONS_EMPTY:Z

    invoke-static {v1}, Lorg/ccil/cowan/tagsoup/Parser;->truthValue(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "http://www.ccil.org/~cowan/tagsoup/features/bogons-empty"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    sget-boolean v1, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_ROOT_BOGONS:Z

    invoke-static {v1}, Lorg/ccil/cowan/tagsoup/Parser;->truthValue(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "http://www.ccil.org/~cowan/tagsoup/features/root-bogons"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    sget-boolean v1, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_DEFAULT_ATTRIBUTES:Z

    invoke-static {v1}, Lorg/ccil/cowan/tagsoup/Parser;->truthValue(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "http://www.ccil.org/~cowan/tagsoup/features/default-attributes"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    sget-boolean v1, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_TRANSLATE_COLONS:Z

    invoke-static {v1}, Lorg/ccil/cowan/tagsoup/Parser;->truthValue(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "http://www.ccil.org/~cowan/tagsoup/features/translate-colons"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    sget-boolean v1, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_RESTART_ELEMENTS:Z

    invoke-static {v1}, Lorg/ccil/cowan/tagsoup/Parser;->truthValue(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "http://www.ccil.org/~cowan/tagsoup/features/restart-elements"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    sget-boolean v1, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_IGNORABLE_WHITESPACE:Z

    invoke-static {v1}, Lorg/ccil/cowan/tagsoup/Parser;->truthValue(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "http://www.ccil.org/~cowan/tagsoup/features/ignorable-whitespace"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    sget-boolean v1, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_CDATA_ELEMENTS:Z

    invoke-static {v1}, Lorg/ccil/cowan/tagsoup/Parser;->truthValue(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "http://www.ccil.org/~cowan/tagsoup/features/cdata-elements"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    .line 518
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAttributeName:Ljava/lang/String;

    .line 519
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeIsPresent:Z

    .line 520
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypePublicId:Ljava/lang/String;

    .line 521
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeSystemId:Ljava/lang/String;

    .line 522
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeName:Ljava/lang/String;

    .line 523
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->thePITarget:Ljava/lang/String;

    .line 524
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    .line 525
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSaved:Lorg/ccil/cowan/tagsoup/Element;

    .line 526
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->thePCDATA:Lorg/ccil/cowan/tagsoup/Element;

    .line 527
    iput v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theEntity:I

    .line 766
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->virginStack:Z

    .line 1033
    const/16 v0, 0x7d0

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theCommentBuffer:[C

    return-void
.end method

.method private greylist cleanPublicid(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "src"    # Ljava/lang/String;

    .line 933
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 934
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 935
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 936
    .local v1, "dst":Ljava/lang/StringBuffer;
    const/4 v2, 0x1

    .line 937
    .local v2, "suppressSpace":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v0, :cond_2f

    .line 938
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 939
    .local v4, "ch":C
    sget-object v5, Lorg/ccil/cowan/tagsoup/Parser;->legal:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_23

    .line 940
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 941
    const/4 v2, 0x0

    goto :goto_2c

    .line 943
    :cond_23
    if-eqz v2, :cond_26

    goto :goto_2c

    .line 947
    :cond_26
    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 948
    const/4 v2, 0x1

    .line 937
    .end local v4    # "ch":C
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 952
    .end local v3    # "i":I
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private greylist expandEntities(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "src"    # Ljava/lang/String;

    .line 557
    const/4 v0, -0x1

    .line 558
    .local v0, "refStart":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 559
    .local v1, "len":I
    new-array v2, v1, [C

    .line 560
    .local v2, "dst":[C
    const/4 v3, 0x0

    .line 561
    .local v3, "dstlen":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9
    if-ge v4, v1, :cond_6e

    .line 562
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 563
    .local v5, "ch":C
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "dstlen":I
    .local v6, "dstlen":I
    aput-char v5, v2, v3

    .line 565
    const/16 v3, 0x26

    const/4 v7, -0x1

    if-ne v5, v3, :cond_1d

    if-ne v0, v7, :cond_1d

    .line 567
    move v0, v6

    move v3, v6

    goto :goto_6b

    .line 570
    :cond_1d
    if-ne v0, v7, :cond_20

    goto :goto_6a

    .line 574
    :cond_20
    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_6a

    .line 575
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_6a

    const/16 v3, 0x23

    if-ne v5, v3, :cond_31

    goto :goto_6a

    .line 580
    :cond_31
    const/16 v3, 0x3b

    if-ne v5, v3, :cond_67

    .line 583
    sub-int v3, v6, v0

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v2, v0, v3}, Lorg/ccil/cowan/tagsoup/Parser;->lookupEntity([CII)I

    move-result v3

    .line 585
    .local v3, "ent":I
    const v7, 0xffff

    if-le v3, v7, :cond_5c

    .line 586
    const/high16 v7, 0x10000

    sub-int/2addr v3, v7

    .line 587
    add-int/lit8 v7, v0, -0x1

    shr-int/lit8 v8, v3, 0xa

    const v9, 0xd800

    add-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v2, v7

    .line 588
    and-int/lit16 v7, v3, 0x3ff

    const v8, 0xdc00

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v2, v0

    .line 589
    add-int/lit8 v6, v0, 0x1

    goto :goto_64

    .line 591
    :cond_5c
    if-eqz v3, :cond_64

    .line 592
    add-int/lit8 v7, v0, -0x1

    int-to-char v8, v3

    aput-char v8, v2, v7

    .line 593
    move v6, v0

    .line 595
    :cond_64
    :goto_64
    const/4 v0, -0x1

    .line 596
    .end local v3    # "ent":I
    move v3, v6

    goto :goto_6b

    .line 600
    :cond_67
    const/4 v0, -0x1

    move v3, v6

    goto :goto_6b

    .line 561
    .end local v5    # "ch":C
    :cond_6a
    :goto_6a
    move v3, v6

    .end local v6    # "dstlen":I
    .local v3, "dstlen":I
    :goto_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 603
    .end local v4    # "i":I
    :cond_6e
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v4
.end method

.method private greylist foreign(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .line 816
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    .line 817
    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/Schema;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 819
    .local v0, "foreign":Z
    :goto_1d
    return v0
.end method

.method private greylist getInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 7
    .param p1, "publicid"    # Ljava/lang/String;
    .param p2, "systemid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 508
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.dir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    const-string v3, ""

    invoke-direct {v0, v2, v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    .local v0, "basis":Ljava/net/URL;
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 510
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 511
    .local v2, "c":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    return-object v3
.end method

.method private greylist getReader(Lorg/xml/sax/InputSource;)Ljava/io/Reader;
    .registers 9
    .param p1, "s"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    .line 483
    .local v0, "r":Ljava/io/Reader;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    .line 484
    .local v1, "i":Ljava/io/InputStream;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v2

    .line 485
    .local v2, "encoding":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v3

    .line 486
    .local v3, "publicid":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, "systemid":Ljava/lang/String;
    if-nez v0, :cond_33

    .line 488
    if-nez v1, :cond_1c

    invoke-direct {p0, v3, v4}, Lorg/ccil/cowan/tagsoup/Parser;->getInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 490
    :cond_1c
    if-nez v2, :cond_25

    .line 491
    iget-object v5, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAutoDetector:Lorg/ccil/cowan/tagsoup/AutoDetector;

    invoke-interface {v5, v1}, Lorg/ccil/cowan/tagsoup/AutoDetector;->autoDetectingReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    goto :goto_33

    .line 495
    :cond_25
    :try_start_25
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_25 .. :try_end_2a} :catch_2c

    move-object v0, v5

    .line 499
    goto :goto_33

    .line 497
    :catch_2c
    move-exception v5

    .line 498
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v0, v6

    .line 503
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_33
    :goto_33
    return-object v0
.end method

.method private greylist lookupEntity([CII)I
    .registers 9
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 613
    const/4 v0, 0x0

    .line 614
    .local v0, "result":I
    const/4 v1, 0x1

    if-ge p3, v1, :cond_5

    return v0

    .line 617
    :cond_5
    aget-char v2, p1, p2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_42

    .line 618
    const/4 v2, 0x0

    if-le p3, v1, :cond_30

    add-int/lit8 v1, p2, 0x1

    aget-char v1, p1, v1

    const/16 v3, 0x78

    if-eq v1, v3, :cond_1e

    add-int/lit8 v1, p2, 0x1

    aget-char v1, p1, v1

    const/16 v3, 0x58

    if-ne v1, v3, :cond_30

    .line 621
    :cond_1e
    :try_start_1e
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v1, p1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_2d} :catch_2e

    return v1

    .line 623
    :catch_2e
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    return v2

    .line 626
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_30
    :try_start_30
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x1

    invoke-direct {v1, p1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    const/16 v3, 0xa

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_3f} :catch_40

    return v1

    .line 628
    :catch_40
    move-exception v1

    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    return v2

    .line 630
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_42
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Lorg/ccil/cowan/tagsoup/Schema;->getEntity(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private greylist makeName([CII)Ljava/lang/String;
    .registers 11
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1077
    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v1, p3, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1078
    .local v0, "dst":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 1079
    .local v1, "seenColon":Z
    const/4 v2, 0x1

    .line 1081
    .local v2, "start":Z
    :goto_9
    add-int/lit8 v3, p3, -0x1

    .end local p3    # "length":I
    .local v3, "length":I
    const/16 v4, 0x3a

    const/16 v5, 0x5f

    if-lez p3, :cond_52

    .line 1082
    aget-char p3, p1, p2

    .line 1083
    .local p3, "ch":C
    invoke-static {p3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-nez v6, :cond_4a

    if-ne p3, v5, :cond_1c

    goto :goto_4a

    .line 1087
    :cond_1c
    invoke-static {p3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_40

    const/16 v6, 0x2d

    if-eq p3, v6, :cond_40

    const/16 v6, 0x2e

    if-ne p3, v6, :cond_2b

    goto :goto_40

    .line 1092
    :cond_2b
    if-ne p3, v4, :cond_4e

    if-nez v1, :cond_4e

    .line 1093
    const/4 v1, 0x1

    .line 1094
    if-eqz v2, :cond_35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1095
    :cond_35
    const/4 v2, 0x1

    .line 1096
    iget-boolean v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->translateColons:Z

    if-eqz v4, :cond_3b

    goto :goto_3c

    :cond_3b
    move v5, p3

    :goto_3c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4e

    .line 1088
    :cond_40
    :goto_40
    if-eqz v2, :cond_45

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1089
    :cond_45
    const/4 v2, 0x0

    .line 1090
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4e

    .line 1084
    :cond_4a
    :goto_4a
    const/4 v2, 0x0

    .line 1085
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1081
    .end local p3    # "ch":C
    :cond_4e
    :goto_4e
    add-int/lit8 p2, p2, 0x1

    move p3, v3

    goto :goto_9

    .line 1099
    :cond_52
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p3

    .line 1100
    .local p3, "dstLength":I
    if-eqz p3, :cond_60

    add-int/lit8 v6, p3, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_63

    :cond_60
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1102
    :cond_63
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private greylist pop()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 729
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    if-nez v0, :cond_5

    return-void

    .line 730
    :cond_5
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/Element;->name()Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    invoke-virtual {v1}, Lorg/ccil/cowan/tagsoup/Element;->localName()Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, "localName":Ljava/lang/String;
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    invoke-virtual {v2}, Lorg/ccil/cowan/tagsoup/Element;->namespace()Ljava/lang/String;

    move-result-object v2

    .line 733
    .local v2, "namespace":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/Parser;->prefixOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 736
    .local v3, "prefix":Ljava/lang/String;
    iget-boolean v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->namespaces:Z

    if-nez v4, :cond_23

    const-string v4, ""

    move-object v1, v4

    move-object v2, v4

    .line 737
    :cond_23
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v4, v2, v1, v0}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-direct {p0, v3, v2}, Lorg/ccil/cowan/tagsoup/Parser;->foreign(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 739
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v4, v3}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 742
    :cond_33
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    invoke-virtual {v4}, Lorg/ccil/cowan/tagsoup/Element;->atts()Lorg/ccil/cowan/tagsoup/AttributesImpl;

    move-result-object v4

    .line 743
    .local v4, "atts":Lorg/xml/sax/Attributes;
    invoke-interface {v4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_3f
    if-ltz v5, :cond_5b

    .line 744
    invoke-interface {v4, v5}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v6

    .line 745
    .local v6, "attNamespace":Ljava/lang/String;
    invoke-interface {v4, v5}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/ccil/cowan/tagsoup/Parser;->prefixOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 746
    .local v7, "attPrefix":Ljava/lang/String;
    invoke-direct {p0, v7, v6}, Lorg/ccil/cowan/tagsoup/Parser;->foreign(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_58

    .line 747
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v8, v7}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 743
    .end local v6    # "attNamespace":Ljava/lang/String;
    .end local v7    # "attPrefix":Ljava/lang/String;
    :cond_58
    add-int/lit8 v5, v5, -0x1

    goto :goto_3f

    .line 751
    .end local v5    # "i":I
    :cond_5b
    iget-object v5, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    invoke-virtual {v5}, Lorg/ccil/cowan/tagsoup/Element;->next()Lorg/ccil/cowan/tagsoup/Element;

    move-result-object v5

    iput-object v5, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    .line 752
    return-void
.end method

.method private greylist prefixOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 806
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 807
    .local v0, "i":I
    const-string v1, ""

    .line 808
    .local v1, "prefix":Ljava/lang/String;
    const/4 v2, -0x1

    if-eq v0, v2, :cond_10

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 810
    :cond_10
    return-object v1
.end method

.method private greylist push(Lorg/ccil/cowan/tagsoup/Element;)V
    .registers 12
    .param p1, "e"    # Lorg/ccil/cowan/tagsoup/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 768
    invoke-virtual {p1}, Lorg/ccil/cowan/tagsoup/Element;->name()Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/ccil/cowan/tagsoup/Element;->localName()Ljava/lang/String;

    move-result-object v1

    .line 770
    .local v1, "localName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/ccil/cowan/tagsoup/Element;->namespace()Ljava/lang/String;

    move-result-object v2

    .line 771
    .local v2, "namespace":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/Parser;->prefixOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 774
    .local v3, "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/ccil/cowan/tagsoup/Element;->clean()V

    .line 775
    iget-boolean v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->namespaces:Z

    if-nez v4, :cond_1b

    const-string v4, ""

    move-object v1, v4

    move-object v2, v4

    .line 776
    :cond_1b
    iget-boolean v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->virginStack:Z

    if-eqz v4, :cond_33

    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 778
    :try_start_27
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->theEntityResolver:Lorg/xml/sax/EntityResolver;

    iget-object v5, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypePublicId:Ljava/lang/String;

    iget-object v6, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeSystemId:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_30} :catch_31

    goto :goto_32

    .line 779
    :catch_31
    move-exception v4

    :goto_32
    nop

    .line 781
    :cond_33
    invoke-direct {p0, v3, v2}, Lorg/ccil/cowan/tagsoup/Parser;->foreign(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 782
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v4, v3, v2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :cond_3e
    invoke-virtual {p1}, Lorg/ccil/cowan/tagsoup/Element;->atts()Lorg/ccil/cowan/tagsoup/AttributesImpl;

    move-result-object v4

    .line 786
    .local v4, "atts":Lorg/xml/sax/Attributes;
    invoke-interface {v4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    .line 787
    .local v5, "len":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_47
    if-ge v6, v5, :cond_63

    .line 788
    invoke-interface {v4, v6}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v7

    .line 789
    .local v7, "attNamespace":Ljava/lang/String;
    invoke-interface {v4, v6}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/ccil/cowan/tagsoup/Parser;->prefixOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 790
    .local v8, "attPrefix":Ljava/lang/String;
    invoke-direct {p0, v8, v7}, Lorg/ccil/cowan/tagsoup/Parser;->foreign(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_60

    .line 791
    iget-object v9, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v9, v8, v7}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    .end local v7    # "attNamespace":Ljava/lang/String;
    .end local v8    # "attPrefix":Ljava/lang/String;
    :cond_60
    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    .line 795
    .end local v6    # "i":I
    :cond_63
    iget-object v6, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p1}, Lorg/ccil/cowan/tagsoup/Element;->atts()Lorg/ccil/cowan/tagsoup/AttributesImpl;

    move-result-object v7

    invoke-interface {v6, v2, v1, v0, v7}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 796
    iget-object v6, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    invoke-virtual {p1, v6}, Lorg/ccil/cowan/tagsoup/Element;->setNext(Lorg/ccil/cowan/tagsoup/Element;)V

    .line 797
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    .line 798
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/ccil/cowan/tagsoup/Parser;->virginStack:Z

    .line 799
    iget-boolean v6, p0, Lorg/ccil/cowan/tagsoup/Parser;->CDATAElements:Z

    if-eqz v6, :cond_89

    iget-object v6, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    invoke-virtual {v6}, Lorg/ccil/cowan/tagsoup/Element;->flags()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_89

    .line 800
    iget-object v6, p0, Lorg/ccil/cowan/tagsoup/Parser;->theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

    invoke-interface {v6}, Lorg/ccil/cowan/tagsoup/Scanner;->startCDATA()V

    .line 802
    :cond_89
    return-void
.end method

.method private greylist rectify(Lorg/ccil/cowan/tagsoup/Element;)V
    .registers 6
    .param p1, "e"    # Lorg/ccil/cowan/tagsoup/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1043
    nop

    :goto_1
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    .local v0, "sp":Lorg/ccil/cowan/tagsoup/Element;
    :goto_3
    if-eqz v0, :cond_11

    .line 1044
    invoke-virtual {v0, p1}, Lorg/ccil/cowan/tagsoup/Element;->canContain(Lorg/ccil/cowan/tagsoup/Element;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_11

    .line 1043
    :cond_c
    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/Element;->next()Lorg/ccil/cowan/tagsoup/Element;

    move-result-object v0

    goto :goto_3

    .line 1046
    :cond_11
    :goto_11
    if-eqz v0, :cond_14

    goto :goto_1a

    .line 1047
    :cond_14
    invoke-virtual {p1}, Lorg/ccil/cowan/tagsoup/Element;->parent()Lorg/ccil/cowan/tagsoup/ElementType;

    move-result-object v1

    .line 1048
    .local v1, "parentType":Lorg/ccil/cowan/tagsoup/ElementType;
    if-nez v1, :cond_5c

    .line 1054
    .end local v1    # "parentType":Lorg/ccil/cowan/tagsoup/ElementType;
    :goto_1a
    if-nez v0, :cond_1d

    return-void

    .line 1055
    :cond_1d
    :goto_1d
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    if-eq v1, v0, :cond_3e

    .line 1056
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    invoke-virtual {v1}, Lorg/ccil/cowan/tagsoup/Element;->next()Lorg/ccil/cowan/tagsoup/Element;

    move-result-object v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    .line 1057
    invoke-virtual {v1}, Lorg/ccil/cowan/tagsoup/Element;->next()Lorg/ccil/cowan/tagsoup/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ccil/cowan/tagsoup/Element;->next()Lorg/ccil/cowan/tagsoup/Element;

    move-result-object v1

    if-nez v1, :cond_3a

    goto :goto_3e

    .line 1058
    :cond_3a
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/Parser;->restartablyPop()V

    goto :goto_1d

    .line 1060
    :cond_3e
    :goto_3e
    if-eqz p1, :cond_58

    .line 1061
    invoke-virtual {p1}, Lorg/ccil/cowan/tagsoup/Element;->next()Lorg/ccil/cowan/tagsoup/Element;

    move-result-object v1

    .line 1062
    .local v1, "nexte":Lorg/ccil/cowan/tagsoup/Element;
    invoke-virtual {p1}, Lorg/ccil/cowan/tagsoup/Element;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<pcdata>"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/Parser;->push(Lorg/ccil/cowan/tagsoup/Element;)V

    .line 1063
    :cond_53
    move-object p1, v1

    .line 1064
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/Parser;->restart(Lorg/ccil/cowan/tagsoup/Element;)V

    .line 1065
    .end local v1    # "nexte":Lorg/ccil/cowan/tagsoup/Element;
    goto :goto_3e

    .line 1066
    :cond_58
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    .line 1067
    return-void

    .line 1049
    .local v1, "parentType":Lorg/ccil/cowan/tagsoup/ElementType;
    :cond_5c
    new-instance v2, Lorg/ccil/cowan/tagsoup/Element;

    iget-boolean v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->defaultAttributes:Z

    invoke-direct {v2, v1, v3}, Lorg/ccil/cowan/tagsoup/Element;-><init>(Lorg/ccil/cowan/tagsoup/ElementType;Z)V

    .line 1051
    .local v2, "parent":Lorg/ccil/cowan/tagsoup/Element;
    invoke-virtual {v2, p1}, Lorg/ccil/cowan/tagsoup/Element;->setNext(Lorg/ccil/cowan/tagsoup/Element;)V

    .line 1052
    move-object p1, v2

    .line 1053
    .end local v1    # "parentType":Lorg/ccil/cowan/tagsoup/ElementType;
    .end local v2    # "parent":Lorg/ccil/cowan/tagsoup/Element;
    goto :goto_1
.end method

.method private greylist restart(Lorg/ccil/cowan/tagsoup/Element;)V
    .registers 4
    .param p1, "e"    # Lorg/ccil/cowan/tagsoup/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 719
    nop

    :goto_1
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSaved:Lorg/ccil/cowan/tagsoup/Element;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSaved:Lorg/ccil/cowan/tagsoup/Element;

    invoke-virtual {v0, v1}, Lorg/ccil/cowan/tagsoup/Element;->canContain(Lorg/ccil/cowan/tagsoup/Element;)Z

    move-result v0

    if-eqz v0, :cond_27

    if-eqz p1, :cond_19

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSaved:Lorg/ccil/cowan/tagsoup/Element;

    .line 720
    invoke-virtual {v0, p1}, Lorg/ccil/cowan/tagsoup/Element;->canContain(Lorg/ccil/cowan/tagsoup/Element;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 721
    :cond_19
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSaved:Lorg/ccil/cowan/tagsoup/Element;

    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/Element;->next()Lorg/ccil/cowan/tagsoup/Element;

    move-result-object v0

    .line 722
    .local v0, "next":Lorg/ccil/cowan/tagsoup/Element;
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSaved:Lorg/ccil/cowan/tagsoup/Element;

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/Parser;->push(Lorg/ccil/cowan/tagsoup/Element;)V

    .line 723
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSaved:Lorg/ccil/cowan/tagsoup/Element;

    .line 724
    .end local v0    # "next":Lorg/ccil/cowan/tagsoup/Element;
    goto :goto_1

    .line 725
    :cond_27
    return-void
.end method

.method private greylist restartablyPop()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 756
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    .line 757
    .local v0, "popped":Lorg/ccil/cowan/tagsoup/Element;
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/Parser;->pop()V

    .line 758
    iget-boolean v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->restartElements:Z

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/Element;->flags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1b

    .line 759
    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/Element;->anonymize()V

    .line 760
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSaved:Lorg/ccil/cowan/tagsoup/Element;

    invoke-virtual {v0, v1}, Lorg/ccil/cowan/tagsoup/Element;->setNext(Lorg/ccil/cowan/tagsoup/Element;)V

    .line 761
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSaved:Lorg/ccil/cowan/tagsoup/Element;

    .line 763
    :cond_1b
    return-void
.end method

.method private greylist setup()V
    .registers 4

    .line 459
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    if-nez v0, :cond_b

    new-instance v0, Lorg/ccil/cowan/tagsoup/HTMLSchema;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/HTMLSchema;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    .line 460
    :cond_b
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

    if-nez v0, :cond_16

    new-instance v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

    .line 461
    :cond_16
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAutoDetector:Lorg/ccil/cowan/tagsoup/AutoDetector;

    if-nez v0, :cond_21

    .line 462
    new-instance v0, Lorg/ccil/cowan/tagsoup/Parser$1;

    invoke-direct {v0, p0}, Lorg/ccil/cowan/tagsoup/Parser$1;-><init>(Lorg/ccil/cowan/tagsoup/Parser;)V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAutoDetector:Lorg/ccil/cowan/tagsoup/AutoDetector;

    .line 468
    :cond_21
    new-instance v0, Lorg/ccil/cowan/tagsoup/Element;

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    const-string v2, "<root>"

    invoke-virtual {v1, v2}, Lorg/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;

    move-result-object v1

    iget-boolean v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->defaultAttributes:Z

    invoke-direct {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/Element;-><init>(Lorg/ccil/cowan/tagsoup/ElementType;Z)V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    .line 469
    new-instance v0, Lorg/ccil/cowan/tagsoup/Element;

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    const-string v2, "<pcdata>"

    invoke-virtual {v1, v2}, Lorg/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;

    move-result-object v1

    iget-boolean v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->defaultAttributes:Z

    invoke-direct {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/Element;-><init>(Lorg/ccil/cowan/tagsoup/ElementType;Z)V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->thePCDATA:Lorg/ccil/cowan/tagsoup/Element;

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    .line 471
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAttributeName:Ljava/lang/String;

    .line 472
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->thePITarget:Ljava/lang/String;

    .line 473
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSaved:Lorg/ccil/cowan/tagsoup/Element;

    .line 474
    const/4 v1, 0x0

    iput v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theEntity:I

    .line 475
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->virginStack:Z

    .line 476
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeSystemId:Ljava/lang/String;

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypePublicId:Ljava/lang/String;

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeName:Ljava/lang/String;

    .line 477
    return-void
.end method

.method private static greylist split(Ljava/lang/String;)[Ljava/lang/String;
    .registers 13
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 890
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 891
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 892
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 895
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 896
    .local v0, "l":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .line 897
    .local v2, "s":I
    const/4 v3, 0x0

    .line 898
    .local v3, "e":I
    const/4 v4, 0x0

    .line 899
    .local v4, "sq":Z
    const/4 v5, 0x0

    .line 900
    .local v5, "dq":Z
    const/4 v6, 0x0

    .line 901
    .local v6, "lastc":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 902
    .local v7, "len":I
    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v7, :cond_68

    .line 903
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 904
    .local v8, "c":C
    const/16 v9, 0x5c

    const/4 v10, 0x1

    if-nez v5, :cond_37

    const/16 v11, 0x27

    if-ne v8, v11, :cond_37

    if-eq v6, v9, :cond_37

    .line 905
    if-nez v4, :cond_31

    goto :goto_32

    :cond_31
    move v10, v1

    .line 906
    .end local v4    # "sq":Z
    .local v10, "sq":Z
    :goto_32
    if-gez v2, :cond_35

    move v2, v3

    :cond_35
    move v4, v10

    goto :goto_64

    .line 908
    .end local v10    # "sq":Z
    .restart local v4    # "sq":Z
    :cond_37
    if-nez v4, :cond_48

    const/16 v11, 0x22

    if-ne v8, v11, :cond_48

    if-eq v6, v9, :cond_48

    .line 909
    if-nez v5, :cond_42

    goto :goto_43

    :cond_42
    move v10, v1

    .line 910
    .end local v5    # "dq":Z
    .local v10, "dq":Z
    :goto_43
    if-gez v2, :cond_46

    move v2, v3

    :cond_46
    move v5, v10

    goto :goto_64

    .line 912
    .end local v10    # "dq":Z
    .restart local v5    # "dq":Z
    :cond_48
    if-nez v4, :cond_64

    if-nez v5, :cond_64

    .line 913
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_5d

    .line 914
    if-ltz v2, :cond_5b

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    :cond_5b
    const/4 v2, -0x1

    goto :goto_64

    .line 917
    :cond_5d
    if-gez v2, :cond_64

    const/16 v9, 0x20

    if-eq v8, v9, :cond_64

    .line 918
    move v2, v3

    .line 921
    :cond_64
    :goto_64
    move v6, v8

    .line 902
    .end local v8    # "c":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 923
    :cond_68
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private static greylist trimquotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "in"    # Ljava/lang/String;

    .line 876
    if-nez p0, :cond_3

    return-object p0

    .line 877
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 878
    .local v0, "length":I
    if-nez v0, :cond_a

    return-object p0

    .line 879
    :cond_a
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 880
    .local v1, "s":C
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 881
    .local v2, "e":C
    if-ne v1, v2, :cond_29

    const/16 v3, 0x27

    if-eq v1, v3, :cond_1f

    const/16 v3, 0x22

    if-ne v1, v3, :cond_29

    .line 882
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 884
    :cond_29
    return-object p0
.end method

.method private static greylist truthValue(Z)Ljava/lang/Boolean;
    .registers 2
    .param p0, "b"    # Z

    .line 313
    if-eqz p0, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_7
    return-object v0
.end method


# virtual methods
.method public greylist adup([CII)V
    .registers 8
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAttributeName:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_16

    .line 531
    :cond_9
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAttributeName:Ljava/lang/String;

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAttributeName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/ccil/cowan/tagsoup/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iput-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAttributeName:Ljava/lang/String;

    .line 533
    return-void

    .line 530
    :cond_16
    :goto_16
    return-void
.end method

.method public greylist aname([CII)V
    .registers 6
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 536
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    if-nez v0, :cond_5

    return-void

    .line 539
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/Parser;->makeName([CII)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAttributeName:Ljava/lang/String;

    .line 541
    return-void
.end method

.method public greylist aval([CII)V
    .registers 8
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 544
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAttributeName:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_1d

    .line 545
    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 547
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/Parser;->expandEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAttributeName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lorg/ccil/cowan/tagsoup/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iput-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAttributeName:Ljava/lang/String;

    .line 551
    return-void

    .line 544
    .end local v0    # "value":Ljava/lang/String;
    :cond_1d
    :goto_1d
    return-void
.end method

.method public greylist cdsect([CII)V
    .registers 5
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 976
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 977
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/Parser;->pcdata([CII)V

    .line 978
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    .line 979
    return-void
.end method

.method public greylist cmnt([CII)V
    .registers 5
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1035
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    .line 1036
    return-void
.end method

.method public whitelist test-api comment([CII)V
    .registers 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1107
    return-void
.end method

.method public greylist decl([CII)V
    .registers 13
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 833
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 834
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .line 835
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 836
    .local v2, "systemid":Ljava/lang/String;
    const/4 v3, 0x0

    .line 837
    .local v3, "publicid":Ljava/lang/String;
    invoke-static {v0}, Lorg/ccil/cowan/tagsoup/Parser;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 838
    .local v4, "v":[Ljava/lang/String;
    array-length v5, v4

    if-lez v5, :cond_51

    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "DOCTYPE"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 839
    iget-boolean v5, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeIsPresent:Z

    if-eqz v5, :cond_1f

    return-void

    .line 840
    :cond_1f
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeIsPresent:Z

    .line 841
    array-length v6, v4

    if-le v6, v5, :cond_51

    .line 842
    aget-object v1, v4, v5

    .line 843
    array-length v5, v4

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-le v5, v7, :cond_39

    const-string v5, "SYSTEM"

    aget-object v8, v4, v6

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 844
    aget-object v2, v4, v7

    goto :goto_51

    .line 846
    :cond_39
    array-length v5, v4

    if-le v5, v7, :cond_51

    const-string v5, "PUBLIC"

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 847
    aget-object v3, v4, v7

    .line 848
    array-length v5, v4

    const/4 v6, 0x4

    if-le v5, v6, :cond_4f

    .line 849
    aget-object v2, v4, v6

    goto :goto_51

    .line 852
    :cond_4f
    const-string v2, ""

    .line 857
    :cond_51
    :goto_51
    invoke-static {v3}, Lorg/ccil/cowan/tagsoup/Parser;->trimquotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 858
    invoke-static {v2}, Lorg/ccil/cowan/tagsoup/Parser;->trimquotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 859
    if-eqz v1, :cond_92

    .line 860
    invoke-direct {p0, v3}, Lorg/ccil/cowan/tagsoup/Parser;->cleanPublicid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 861
    iget-object v5, p0, Lorg/ccil/cowan/tagsoup/Parser;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v5, v1, v3, v2}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    iget-object v5, p0, Lorg/ccil/cowan/tagsoup/Parser;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v5}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    .line 863
    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeName:Ljava/lang/String;

    .line 864
    iput-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypePublicId:Ljava/lang/String;

    .line 865
    iget-object v5, p0, Lorg/ccil/cowan/tagsoup/Parser;->theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

    instance-of v5, v5, Lorg/xml/sax/Locator;

    if-eqz v5, :cond_92

    .line 866
    iget-object v5, p0, Lorg/ccil/cowan/tagsoup/Parser;->theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

    check-cast v5, Lorg/xml/sax/Locator;

    invoke-interface {v5}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeSystemId:Ljava/lang/String;

    .line 868
    :try_start_7d
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeSystemId:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeSystemId:Ljava/lang/String;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_8f} :catch_90

    goto :goto_91

    .line 869
    :catch_90
    move-exception v5

    :goto_91
    nop

    .line 872
    :cond_92
    return-void
.end method

.method public whitelist test-api endCDATA()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1108
    return-void
.end method

.method public whitelist test-api endDTD()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1109
    return-void
.end method

.method public whitelist test-api endEntity(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1110
    return-void
.end method

.method public greylist entity([CII)V
    .registers 5
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 607
    invoke-direct {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/Parser;->lookupEntity([CII)I

    move-result v0

    iput v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theEntity:I

    .line 608
    return-void
.end method

.method public greylist eof([CII)V
    .registers 6
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 634
    iget-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->virginStack:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->thePCDATA:Lorg/ccil/cowan/tagsoup/Element;

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/Parser;->rectify(Lorg/ccil/cowan/tagsoup/Element;)V

    .line 635
    :cond_9
    :goto_9
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/Element;->next()Lorg/ccil/cowan/tagsoup/Element;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 636
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/Parser;->pop()V

    goto :goto_9

    .line 638
    :cond_15
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/Schema;->getURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 639
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    invoke-virtual {v1}, Lorg/ccil/cowan/tagsoup/Schema;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 640
    :cond_2e
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 641
    return-void
.end method

.method public greylist etag([CII)V
    .registers 5
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 644
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/Parser;->etag_cdata([CII)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 645
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/Parser;->etag_basic([CII)V

    .line 646
    return-void
.end method

.method public greylist etag_basic([CII)V
    .registers 9
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 676
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    .line 678
    if-eqz p3, :cond_17

    .line 680
    invoke-direct {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/Parser;->makeName([CII)Ljava/lang/String;

    move-result-object v1

    .line 682
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    invoke-virtual {v2, v1}, Lorg/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;

    move-result-object v2

    .line 683
    .local v2, "type":Lorg/ccil/cowan/tagsoup/ElementType;
    if-nez v2, :cond_12

    return-void

    .line 684
    :cond_12
    invoke-virtual {v2}, Lorg/ccil/cowan/tagsoup/ElementType;->name()Ljava/lang/String;

    move-result-object v1

    .line 685
    .end local v2    # "type":Lorg/ccil/cowan/tagsoup/ElementType;
    goto :goto_1d

    .line 687
    .end local v1    # "name":Ljava/lang/String;
    :cond_17
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    invoke-virtual {v1}, Lorg/ccil/cowan/tagsoup/Element;->name()Ljava/lang/String;

    move-result-object v1

    .line 692
    .restart local v1    # "name":Ljava/lang/String;
    :goto_1d
    const/4 v2, 0x0

    .line 693
    .local v2, "inNoforce":Z
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    .local v3, "sp":Lorg/ccil/cowan/tagsoup/Element;
    :goto_20
    if-eqz v3, :cond_3b

    .line 694
    invoke-virtual {v3}, Lorg/ccil/cowan/tagsoup/Element;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    goto :goto_3b

    .line 695
    :cond_2d
    invoke-virtual {v3}, Lorg/ccil/cowan/tagsoup/Element;->flags()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_36

    const/4 v2, 0x1

    .line 693
    :cond_36
    invoke-virtual {v3}, Lorg/ccil/cowan/tagsoup/Element;->next()Lorg/ccil/cowan/tagsoup/Element;

    move-result-object v3

    goto :goto_20

    .line 698
    :cond_3b
    :goto_3b
    if-nez v3, :cond_3e

    return-void

    .line 699
    :cond_3e
    invoke-virtual {v3}, Lorg/ccil/cowan/tagsoup/Element;->next()Lorg/ccil/cowan/tagsoup/Element;

    move-result-object v4

    if-eqz v4, :cond_70

    invoke-virtual {v3}, Lorg/ccil/cowan/tagsoup/Element;->next()Lorg/ccil/cowan/tagsoup/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/ccil/cowan/tagsoup/Element;->next()Lorg/ccil/cowan/tagsoup/Element;

    move-result-object v4

    if-nez v4, :cond_4f

    goto :goto_70

    .line 700
    :cond_4f
    if-eqz v2, :cond_55

    .line 701
    invoke-virtual {v3}, Lorg/ccil/cowan/tagsoup/Element;->preclose()V

    goto :goto_60

    .line 704
    :cond_55
    :goto_55
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    if-eq v4, v3, :cond_5d

    .line 705
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/Parser;->restartablyPop()V

    goto :goto_55

    .line 707
    :cond_5d
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/Parser;->pop()V

    .line 710
    :goto_60
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    invoke-virtual {v4}, Lorg/ccil/cowan/tagsoup/Element;->isPreclosed()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 711
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/Parser;->pop()V

    goto :goto_60

    .line 713
    :cond_6c
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/Parser;->restart(Lorg/ccil/cowan/tagsoup/Element;)V

    .line 714
    return-void

    .line 699
    :cond_70
    :goto_70
    return-void
.end method

.method public greylist etag_cdata([CII)Z
    .registers 12
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/Element;->name()Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, "currentName":Ljava/lang/String;
    iget-boolean v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->CDATAElements:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_56

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    invoke-virtual {v1}, Lorg/ccil/cowan/tagsoup/Element;->flags()I

    move-result v1

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_56

    .line 655
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x1

    if-ne p3, v1, :cond_1e

    move v1, v4

    goto :goto_1f

    :cond_1e
    move v1, v2

    .line 656
    .local v1, "realTag":Z
    :goto_1f
    if-eqz v1, :cond_3b

    .line 657
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_22
    if-ge v5, p3, :cond_3b

    .line 658
    add-int v6, p2, v5

    aget-char v6, p1, v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    if-eq v6, v7, :cond_38

    .line 659
    const/4 v1, 0x0

    .line 660
    goto :goto_3b

    .line 657
    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 664
    .end local v5    # "i":I
    :cond_3b
    :goto_3b
    if-nez v1, :cond_56

    .line 665
    iget-object v5, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    sget-object v6, Lorg/ccil/cowan/tagsoup/Parser;->etagchars:[C

    invoke-interface {v5, v6, v2, v3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 666
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 667
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    sget-object v5, Lorg/ccil/cowan/tagsoup/Parser;->etagchars:[C

    invoke-interface {v2, v5, v3, v4}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 668
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

    invoke-interface {v2}, Lorg/ccil/cowan/tagsoup/Scanner;->startCDATA()V

    .line 669
    return v4

    .line 672
    .end local v1    # "realTag":Z
    :cond_56
    return v2
.end method

.method public whitelist test-api getContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    .line 428
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    :goto_8
    return-object v0
.end method

.method public whitelist test-api getDTDHandler()Lorg/xml/sax/DTDHandler;
    .registers 2

    .line 420
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDTDHandler:Lorg/xml/sax/DTDHandler;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDTDHandler:Lorg/xml/sax/DTDHandler;

    :goto_8
    return-object v0
.end method

.method public greylist getEntity()I
    .registers 2

    .line 1070
    iget v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theEntity:I

    return v0
.end method

.method public whitelist test-api getEntityResolver()Lorg/xml/sax/EntityResolver;
    .registers 2

    .line 412
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theEntityResolver:Lorg/xml/sax/EntityResolver;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theEntityResolver:Lorg/xml/sax/EntityResolver;

    :goto_8
    return-object v0
.end method

.method public whitelist test-api getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .registers 2

    .line 436
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theErrorHandler:Lorg/xml/sax/ErrorHandler;

    :goto_8
    return-object v0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 320
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_f

    .line 323
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 321
    :cond_f
    new-instance v1, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown feature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 348
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 349
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-ne v0, p0, :cond_e

    const/4 v0, 0x0

    goto :goto_10

    :cond_e
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    :goto_10
    return-object v0

    .line 351
    :cond_11
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/properties/scanner"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 352
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

    return-object v0

    .line 354
    :cond_1c
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 355
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    return-object v0

    .line 357
    :cond_27
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/properties/auto-detector"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 358
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAutoDetector:Lorg/ccil/cowan/tagsoup/AutoDetector;

    return-object v0

    .line 361
    :cond_32
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist gi([CII)V
    .registers 10
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 957
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    if-eqz v0, :cond_5

    return-void

    .line 958
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/Parser;->makeName([CII)Ljava/lang/String;

    move-result-object v0

    .line 959
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_c

    return-void

    .line 960
    :cond_c
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    invoke-virtual {v1, v0}, Lorg/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;

    move-result-object v1

    .line 961
    .local v1, "type":Lorg/ccil/cowan/tagsoup/ElementType;
    if-nez v1, :cond_48

    .line 963
    iget-boolean v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->ignoreBogons:Z

    if-eqz v2, :cond_19

    return-void

    .line 964
    :cond_19
    iget-boolean v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->bogonsEmpty:Z

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v2, :cond_21

    move v2, v3

    goto :goto_22

    :cond_21
    move v2, v4

    .line 965
    .local v2, "bogonModel":I
    :goto_22
    iget-boolean v5, p0, Lorg/ccil/cowan/tagsoup/Parser;->rootBogons:Z

    if-eqz v5, :cond_27

    goto :goto_2a

    :cond_27
    const v4, 0x7fffffff

    .line 966
    .local v4, "bogonMemberOf":I
    :goto_2a
    iget-object v5, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    invoke-virtual {v5, v0, v2, v4, v3}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    .line 967
    iget-boolean v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->rootBogons:Z

    if-nez v3, :cond_42

    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    iget-object v5, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    invoke-virtual {v5}, Lorg/ccil/cowan/tagsoup/Schema;->rootElementType()Lorg/ccil/cowan/tagsoup/ElementType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/ccil/cowan/tagsoup/ElementType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    :cond_42
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    invoke-virtual {v3, v0}, Lorg/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;

    move-result-object v1

    .line 971
    .end local v2    # "bogonModel":I
    .end local v4    # "bogonMemberOf":I
    :cond_48
    new-instance v2, Lorg/ccil/cowan/tagsoup/Element;

    iget-boolean v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->defaultAttributes:Z

    invoke-direct {v2, v1, v3}, Lorg/ccil/cowan/tagsoup/Element;-><init>(Lorg/ccil/cowan/tagsoup/ElementType;Z)V

    iput-object v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    .line 973
    return-void
.end method

.method public whitelist test-api parse(Ljava/lang/String;)V
    .registers 3
    .param p1, "systemid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 454
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/ccil/cowan/tagsoup/Parser;->parse(Lorg/xml/sax/InputSource;)V

    .line 455
    return-void
.end method

.method public whitelist test-api parse(Lorg/xml/sax/InputSource;)V
    .registers 6
    .param p1, "input"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 440
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/Parser;->setup()V

    .line 441
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/Parser;->getReader(Lorg/xml/sax/InputSource;)Ljava/io/Reader;

    move-result-object v0

    .line 442
    .local v0, "r":Ljava/io/Reader;
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 443
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Scanner;->resetDocumentLocator(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

    instance-of v1, v1, Lorg/xml/sax/Locator;

    if-eqz v1, :cond_28

    .line 445
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

    check-cast v2, Lorg/xml/sax/Locator;

    invoke-interface {v1, v2}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 447
    :cond_28
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    invoke-virtual {v1}, Lorg/ccil/cowan/tagsoup/Schema;->getURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 448
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    invoke-virtual {v2}, Lorg/ccil/cowan/tagsoup/Schema;->getPrefix()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    .line 449
    invoke-virtual {v3}, Lorg/ccil/cowan/tagsoup/Schema;->getURI()Ljava/lang/String;

    move-result-object v3

    .line 448
    invoke-interface {v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_47
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

    invoke-interface {v1, v0, p0}, Lorg/ccil/cowan/tagsoup/Scanner;->scan(Ljava/io/Reader;Lorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 451
    return-void
.end method

.method public greylist pcdata([CII)V
    .registers 7
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 981
    if-nez p3, :cond_3

    return-void

    .line 982
    :cond_3
    const/4 v0, 0x1

    .line 983
    .local v0, "allWhite":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, p3, :cond_15

    .line 984
    add-int v2, p2, v1

    aget-char v2, p1, v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_12

    .line 985
    const/4 v0, 0x0

    .line 983
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 988
    .end local v1    # "i":I
    :cond_15
    if-eqz v0, :cond_2b

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->thePCDATA:Lorg/ccil/cowan/tagsoup/Element;

    invoke-virtual {v1, v2}, Lorg/ccil/cowan/tagsoup/Element;->canContain(Lorg/ccil/cowan/tagsoup/Element;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 989
    iget-boolean v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->ignorableWhitespace:Z

    if-eqz v1, :cond_35

    .line 990
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    goto :goto_35

    .line 994
    :cond_2b
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->thePCDATA:Lorg/ccil/cowan/tagsoup/Element;

    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/Parser;->rectify(Lorg/ccil/cowan/tagsoup/Element;)V

    .line 995
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 997
    :cond_35
    :goto_35
    return-void
.end method

.method public greylist pi([CII)V
    .registers 7
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1005
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    if-nez v0, :cond_30

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->thePITarget:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_30

    .line 1006
    :cond_9
    const-string v0, "xml"

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->thePITarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    .line 1008
    :cond_14
    if-lez p3, :cond_20

    add-int/lit8 v0, p3, -0x1

    aget-char v0, p1, v0

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_20

    add-int/lit8 p3, p3, -0x1

    .line 1009
    :cond_20
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->thePITarget:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->thePITarget:Ljava/lang/String;

    .line 1012
    return-void

    .line 1005
    :cond_30
    :goto_30
    return-void
.end method

.method public greylist pitarget([CII)V
    .registers 7
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1000
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    if-eqz v0, :cond_5

    return-void

    .line 1001
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/Parser;->makeName([CII)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->thePITarget:Ljava/lang/String;

    .line 1002
    return-void
.end method

.method public whitelist test-api setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .registers 3
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .line 424
    if-nez p1, :cond_4

    move-object v0, p0

    goto :goto_5

    :cond_4
    move-object v0, p1

    :goto_5
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    .line 425
    return-void
.end method

.method public whitelist test-api setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .registers 3
    .param p1, "handler"    # Lorg/xml/sax/DTDHandler;

    .line 416
    if-nez p1, :cond_4

    move-object v0, p0

    goto :goto_5

    :cond_4
    move-object v0, p1

    :goto_5
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 417
    return-void
.end method

.method public whitelist test-api setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .registers 3
    .param p1, "resolver"    # Lorg/xml/sax/EntityResolver;

    .line 408
    if-nez p1, :cond_4

    move-object v0, p0

    goto :goto_5

    :cond_4
    move-object v0, p1

    :goto_5
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theEntityResolver:Lorg/xml/sax/EntityResolver;

    .line 409
    return-void
.end method

.method public whitelist test-api setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .registers 3
    .param p1, "handler"    # Lorg/xml/sax/ErrorHandler;

    .line 432
    if-nez p1, :cond_4

    move-object v0, p0

    goto :goto_5

    :cond_4
    move-object v0, p1

    :goto_5
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 433
    return-void
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 329
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_7e

    .line 332
    if-eqz p2, :cond_14

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 333
    :cond_14
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :goto_1b
    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iput-boolean p2, p0, Lorg/ccil/cowan/tagsoup/Parser;->namespaces:Z

    goto :goto_7d

    .line 336
    :cond_26
    const-string v1, "http://www.ccil.org/~cowan/tagsoup/features/ignore-bogons"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iput-boolean p2, p0, Lorg/ccil/cowan/tagsoup/Parser;->ignoreBogons:Z

    goto :goto_7d

    .line 337
    :cond_31
    const-string v1, "http://www.ccil.org/~cowan/tagsoup/features/bogons-empty"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iput-boolean p2, p0, Lorg/ccil/cowan/tagsoup/Parser;->bogonsEmpty:Z

    goto :goto_7d

    .line 338
    :cond_3c
    const-string v1, "http://www.ccil.org/~cowan/tagsoup/features/root-bogons"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    iput-boolean p2, p0, Lorg/ccil/cowan/tagsoup/Parser;->rootBogons:Z

    goto :goto_7d

    .line 339
    :cond_47
    const-string v1, "http://www.ccil.org/~cowan/tagsoup/features/default-attributes"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    iput-boolean p2, p0, Lorg/ccil/cowan/tagsoup/Parser;->defaultAttributes:Z

    goto :goto_7d

    .line 340
    :cond_52
    const-string v1, "http://www.ccil.org/~cowan/tagsoup/features/translate-colons"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iput-boolean p2, p0, Lorg/ccil/cowan/tagsoup/Parser;->translateColons:Z

    goto :goto_7d

    .line 341
    :cond_5d
    const-string v1, "http://www.ccil.org/~cowan/tagsoup/features/restart-elements"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    iput-boolean p2, p0, Lorg/ccil/cowan/tagsoup/Parser;->restartElements:Z

    goto :goto_7d

    .line 342
    :cond_68
    const-string v1, "http://www.ccil.org/~cowan/tagsoup/features/ignorable-whitespace"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    iput-boolean p2, p0, Lorg/ccil/cowan/tagsoup/Parser;->ignorableWhitespace:Z

    goto :goto_7d

    .line 343
    :cond_73
    const-string v1, "http://www.ccil.org/~cowan/tagsoup/features/cdata-elements"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    iput-boolean p2, p0, Lorg/ccil/cowan/tagsoup/Parser;->CDATAElements:Z

    .line 344
    :cond_7d
    :goto_7d
    return-void

    .line 330
    :cond_7e
    new-instance v1, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown feature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 367
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 368
    if-nez p2, :cond_d

    .line 369
    iput-object p0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    goto :goto_64

    .line 371
    :cond_d
    instance-of v0, p2, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_17

    .line 372
    move-object v0, p2

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    goto :goto_64

    .line 375
    :cond_17
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string v1, "Your lexical handler is not a LexicalHandler"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_1f
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/properties/scanner"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 379
    instance-of v0, p2, Lorg/ccil/cowan/tagsoup/Scanner;

    if-eqz v0, :cond_31

    .line 380
    move-object v0, p2

    check-cast v0, Lorg/ccil/cowan/tagsoup/Scanner;

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

    goto :goto_64

    .line 383
    :cond_31
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string v1, "Your scanner is not a Scanner"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_39
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 387
    instance-of v0, p2, Lorg/ccil/cowan/tagsoup/Schema;

    if-eqz v0, :cond_4b

    .line 388
    move-object v0, p2

    check-cast v0, Lorg/ccil/cowan/tagsoup/Schema;

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    goto :goto_64

    .line 391
    :cond_4b
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string v1, "Your schema is not a Schema"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_53
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/properties/auto-detector"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 395
    instance-of v0, p2, Lorg/ccil/cowan/tagsoup/AutoDetector;

    if-eqz v0, :cond_65

    .line 396
    move-object v0, p2

    check-cast v0, Lorg/ccil/cowan/tagsoup/AutoDetector;

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAutoDetector:Lorg/ccil/cowan/tagsoup/AutoDetector;

    .line 405
    :goto_64
    return-void

    .line 399
    :cond_65
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string v1, "Your auto-detector is not an AutoDetector"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_6d
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist stagc([CII)V
    .registers 5
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1016
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    if-nez v0, :cond_5

    return-void

    .line 1017
    :cond_5
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/Parser;->rectify(Lorg/ccil/cowan/tagsoup/Element;)V

    .line 1018
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/Element;->model()I

    move-result v0

    if-nez v0, :cond_15

    .line 1020
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/Parser;->etag_basic([CII)V

    .line 1022
    :cond_15
    return-void
.end method

.method public greylist stage([CII)V
    .registers 5
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1026
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    if-nez v0, :cond_5

    return-void

    .line 1027
    :cond_5
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/Parser;->rectify(Lorg/ccil/cowan/tagsoup/Element;)V

    .line 1029
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/Parser;->etag_basic([CII)V

    .line 1030
    return-void
.end method

.method public whitelist test-api startCDATA()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1111
    return-void
.end method

.method public whitelist test-api startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicid"    # Ljava/lang/String;
    .param p3, "systemid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1112
    return-void
.end method

.method public whitelist test-api startEntity(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1113
    return-void
.end method
