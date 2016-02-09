.class public Lorg/ccil/cowan/tagsoup/Parser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Parser.java"

# interfaces
.implements Lorg/ccil/cowan/tagsoup/ScanHandler;
.implements Lorg/xml/sax/XMLReader;
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field public static final CDATAElementsFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/cdata-elements"

.field private static DEFAULT_BOGONS_EMPTY:Z = false

.field private static DEFAULT_CDATA_ELEMENTS:Z = false

.field private static DEFAULT_DEFAULT_ATTRIBUTES:Z = false

.field private static DEFAULT_IGNORABLE_WHITESPACE:Z = false

.field private static DEFAULT_IGNORE_BOGONS:Z = false

.field private static DEFAULT_NAMESPACES:Z = false

.field private static DEFAULT_RESTART_ELEMENTS:Z = false

.field private static DEFAULT_ROOT_BOGONS:Z = false

.field private static DEFAULT_TRANSLATE_COLONS:Z = false

.field public static final XML11Feature:Ljava/lang/String; = "http://xml.org/sax/features/xml-1.1"

.field public static final autoDetectorProperty:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/properties/auto-detector"

.field public static final bogonsEmptyFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/bogons-empty"

.field public static final defaultAttributesFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/default-attributes"

.field private static etagchars:[C = null

.field public static final externalGeneralEntitiesFeature:Ljava/lang/String; = "http://xml.org/sax/features/external-general-entities"

.field public static final externalParameterEntitiesFeature:Ljava/lang/String; = "http://xml.org/sax/features/external-parameter-entities"

.field public static final ignorableWhitespaceFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/ignorable-whitespace"

.field public static final ignoreBogonsFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/ignore-bogons"

.field public static final isStandaloneFeature:Ljava/lang/String; = "http://xml.org/sax/features/is-standalone"

.field private static legal:Ljava/lang/String; = null

.field public static final lexicalHandlerParameterEntitiesFeature:Ljava/lang/String; = "http://xml.org/sax/features/lexical-handler/parameter-entities"

.field public static final lexicalHandlerProperty:Ljava/lang/String; = "http://xml.org/sax/properties/lexical-handler"

.field public static final namespacePrefixesFeature:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field public static final namespacesFeature:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field public static final resolveDTDURIsFeature:Ljava/lang/String; = "http://xml.org/sax/features/resolve-dtd-uris"

.field public static final restartElementsFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/restart-elements"

.field public static final rootBogonsFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/root-bogons"

.field public static final scannerProperty:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/properties/scanner"

.field public static final schemaProperty:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/properties/schema"

.field public static final stringInterningFeature:Ljava/lang/String; = "http://xml.org/sax/features/string-interning"

.field public static final translateColonsFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/translate-colons"

.field public static final unicodeNormalizationCheckingFeature:Ljava/lang/String; = "http://xml.org/sax/features/unicode-normalization-checking"

.field public static final useAttributes2Feature:Ljava/lang/String; = "http://xml.org/sax/features/use-attributes2"

.field public static final useEntityResolver2Feature:Ljava/lang/String; = "http://xml.org/sax/features/use-entity-resolver2"

.field public static final useLocator2Feature:Ljava/lang/String; = "http://xml.org/sax/features/use-locator2"

.field public static final validationFeature:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field public static final xmlnsURIsFeature:Ljava/lang/String; = "http://xml.org/sax/features/xmlns-uris"


# instance fields
.field private CDATAElements:Z

.field private bogonsEmpty:Z

.field private defaultAttributes:Z

.field private ignorableWhitespace:Z

.field private ignoreBogons:Z

.field private namespaces:Z

.field private restartElements:Z

.field private rootBogons:Z

.field private theAttributeName:Ljava/lang/String;

.field private theAutoDetector:Lorg/ccil/cowan/tagsoup/AutoDetector;

.field private theCommentBuffer:[C

.field private theContentHandler:Lorg/xml/sax/ContentHandler;

.field private theDTDHandler:Lorg/xml/sax/DTDHandler;

.field private theDoctypeIsPresent:Z

.field private theDoctypeName:Ljava/lang/String;

.field private theDoctypePublicId:Ljava/lang/String;

.field private theDoctypeSystemId:Ljava/lang/String;

.field private theEntity:I

.field private theEntityResolver:Lorg/xml/sax/EntityResolver;

.field private theErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private theFeatures:Ljava/util/HashMap;

.field private theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private theNewElement:Lorg/ccil/cowan/tagsoup/Element;

.field private thePCDATA:Lorg/ccil/cowan/tagsoup/Element;

.field private thePITarget:Ljava/lang/String;

.field private theSaved:Lorg/ccil/cowan/tagsoup/Element;

.field private theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

.field private theSchema:Lorg/ccil/cowan/tagsoup/Schema;

.field private theStack:Lorg/ccil/cowan/tagsoup/Element;

.field private translateColons:Z

.field private virginStack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 47
    sput-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_NAMESPACES:Z

    #@4
    .line 48
    sput-boolean v1, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_IGNORE_BOGONS:Z

    #@6
    .line 49
    sput-boolean v1, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_BOGONS_EMPTY:Z

    #@8
    .line 50
    sput-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_ROOT_BOGONS:Z

    #@a
    .line 51
    sput-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_DEFAULT_ATTRIBUTES:Z

    #@c
    .line 52
    sput-boolean v1, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_TRANSLATE_COLONS:Z

    #@e
    .line 53
    sput-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_RESTART_ELEMENTS:Z

    #@10
    .line 54
    sput-boolean v1, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_IGNORABLE_WHITESPACE:Z

    #@12
    .line 55
    sput-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_CDATA_ELEMENTS:Z

    #@14
    .line 648
    const/4 v0, 0x3

    #@15
    new-array v0, v0, [C

    #@17
    fill-array-data v0, :array_0

    #@1a
    sput-object v0, Lorg/ccil/cowan/tagsoup/Parser;->etagchars:[C

    #@1c
    .line 930
    const-string/jumbo v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-\'()+,./:=?;!*#@$_%"

    #@1f
    .line 929
    sput-object v0, Lorg/ccil/cowan/tagsoup/Parser;->legal:Ljava/lang/String;

    #@21
    .line 32
    return-void

    #@22
    .line 648
    :array_0
    .array-data 2
        0x3cs
        0x2fs
        0x3es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 32
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    #@5
    .line 36
    iput-object p0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    #@7
    .line 37
    iput-object p0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@9
    .line 38
    iput-object p0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDTDHandler:Lorg/xml/sax/DTDHandler;

    #@b
    .line 39
    iput-object p0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theErrorHandler:Lorg/xml/sax/ErrorHandler;

    #@d
    .line 40
    iput-object p0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theEntityResolver:Lorg/xml/sax/EntityResolver;

    #@f
    .line 59
    sget-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_NAMESPACES:Z

    #@11
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->namespaces:Z

    #@13
    .line 60
    sget-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_IGNORE_BOGONS:Z

    #@15
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->ignoreBogons:Z

    #@17
    .line 61
    sget-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_BOGONS_EMPTY:Z

    #@19
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->bogonsEmpty:Z

    #@1b
    .line 62
    sget-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_ROOT_BOGONS:Z

    #@1d
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->rootBogons:Z

    #@1f
    .line 63
    sget-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_DEFAULT_ATTRIBUTES:Z

    #@21
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->defaultAttributes:Z

    #@23
    .line 64
    sget-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_TRANSLATE_COLONS:Z

    #@25
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->translateColons:Z

    #@27
    .line 65
    sget-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_RESTART_ELEMENTS:Z

    #@29
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->restartElements:Z

    #@2b
    .line 66
    sget-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_IGNORABLE_WHITESPACE:Z

    #@2d
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->ignorableWhitespace:Z

    #@2f
    .line 67
    sget-boolean v0, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_CDATA_ELEMENTS:Z

    #@31
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->CDATAElements:Z

    #@33
    .line 282
    new-instance v0, Ljava/util/HashMap;

    #@35
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@38
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@3a
    .line 284
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@3c
    const-string/jumbo v1, "http://xml.org/sax/features/namespaces"

    #@3f
    sget-boolean v2, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_NAMESPACES:Z

    #@41
    invoke-static {v2}, Lorg/ccil/cowan/tagsoup/Parser;->truthValue(Z)Ljava/lang/Boolean;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    .line 285
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@4a
    const-string/jumbo v1, "http://xml.org/sax/features/namespace-prefixes"

    #@4d
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@4f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    .line 286
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@54
    const-string/jumbo v1, "http://xml.org/sax/features/external-general-entities"

    #@57
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@59
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5c
    .line 287
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@5e
    const-string/jumbo v1, "http://xml.org/sax/features/external-parameter-entities"

    #@61
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@63
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@66
    .line 288
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@68
    const-string/jumbo v1, "http://xml.org/sax/features/is-standalone"

    #@6b
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@6d
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@70
    .line 289
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@72
    const-string/jumbo v1, "http://xml.org/sax/features/lexical-handler/parameter-entities"

    #@75
    .line 290
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@77
    .line 289
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7a
    .line 291
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@7c
    const-string/jumbo v1, "http://xml.org/sax/features/resolve-dtd-uris"

    #@7f
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@81
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@84
    .line 292
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@86
    const-string/jumbo v1, "http://xml.org/sax/features/string-interning"

    #@89
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@8b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8e
    .line 293
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@90
    const-string/jumbo v1, "http://xml.org/sax/features/use-attributes2"

    #@93
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@95
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@98
    .line 294
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@9a
    const-string/jumbo v1, "http://xml.org/sax/features/use-locator2"

    #@9d
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@9f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a2
    .line 295
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@a4
    const-string/jumbo v1, "http://xml.org/sax/features/use-entity-resolver2"

    #@a7
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@a9
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ac
    .line 296
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@ae
    const-string/jumbo v1, "http://xml.org/sax/features/validation"

    #@b1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@b3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b6
    .line 297
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@b8
    const-string/jumbo v1, "http://xml.org/sax/features/xmlns-uris"

    #@bb
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@bd
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c0
    .line 298
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@c2
    const-string/jumbo v1, "http://xml.org/sax/features/xmlns-uris"

    #@c5
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@c7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ca
    .line 299
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@cc
    const-string/jumbo v1, "http://xml.org/sax/features/xml-1.1"

    #@cf
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@d1
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d4
    .line 300
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@d6
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/ignore-bogons"

    #@d9
    sget-boolean v2, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_IGNORE_BOGONS:Z

    #@db
    invoke-static {v2}, Lorg/ccil/cowan/tagsoup/Parser;->truthValue(Z)Ljava/lang/Boolean;

    #@de
    move-result-object v2

    #@df
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e2
    .line 301
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@e4
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/bogons-empty"

    #@e7
    sget-boolean v2, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_BOGONS_EMPTY:Z

    #@e9
    invoke-static {v2}, Lorg/ccil/cowan/tagsoup/Parser;->truthValue(Z)Ljava/lang/Boolean;

    #@ec
    move-result-object v2

    #@ed
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f0
    .line 302
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@f2
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/root-bogons"

    #@f5
    sget-boolean v2, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_ROOT_BOGONS:Z

    #@f7
    invoke-static {v2}, Lorg/ccil/cowan/tagsoup/Parser;->truthValue(Z)Ljava/lang/Boolean;

    #@fa
    move-result-object v2

    #@fb
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fe
    .line 303
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@100
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/default-attributes"

    #@103
    sget-boolean v2, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_DEFAULT_ATTRIBUTES:Z

    #@105
    invoke-static {v2}, Lorg/ccil/cowan/tagsoup/Parser;->truthValue(Z)Ljava/lang/Boolean;

    #@108
    move-result-object v2

    #@109
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10c
    .line 304
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@10e
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/translate-colons"

    #@111
    sget-boolean v2, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_TRANSLATE_COLONS:Z

    #@113
    invoke-static {v2}, Lorg/ccil/cowan/tagsoup/Parser;->truthValue(Z)Ljava/lang/Boolean;

    #@116
    move-result-object v2

    #@117
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11a
    .line 305
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@11c
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/restart-elements"

    #@11f
    sget-boolean v2, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_RESTART_ELEMENTS:Z

    #@121
    invoke-static {v2}, Lorg/ccil/cowan/tagsoup/Parser;->truthValue(Z)Ljava/lang/Boolean;

    #@124
    move-result-object v2

    #@125
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@128
    .line 306
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@12a
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/ignorable-whitespace"

    #@12d
    sget-boolean v2, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_IGNORABLE_WHITESPACE:Z

    #@12f
    invoke-static {v2}, Lorg/ccil/cowan/tagsoup/Parser;->truthValue(Z)Ljava/lang/Boolean;

    #@132
    move-result-object v2

    #@133
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@136
    .line 307
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@138
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/cdata-elements"

    #@13b
    sget-boolean v2, Lorg/ccil/cowan/tagsoup/Parser;->DEFAULT_CDATA_ELEMENTS:Z

    #@13d
    invoke-static {v2}, Lorg/ccil/cowan/tagsoup/Parser;->truthValue(Z)Ljava/lang/Boolean;

    #@140
    move-result-object v2

    #@141
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@144
    .line 517
    iput-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    #@146
    .line 518
    iput-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAttributeName:Ljava/lang/String;

    #@148
    .line 519
    iput-boolean v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeIsPresent:Z

    #@14a
    .line 520
    iput-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypePublicId:Ljava/lang/String;

    #@14c
    .line 521
    iput-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeSystemId:Ljava/lang/String;

    #@14e
    .line 522
    iput-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeName:Ljava/lang/String;

    #@150
    .line 523
    iput-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->thePITarget:Ljava/lang/String;

    #@152
    .line 524
    iput-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@154
    .line 525
    iput-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSaved:Lorg/ccil/cowan/tagsoup/Element;

    #@156
    .line 526
    iput-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->thePCDATA:Lorg/ccil/cowan/tagsoup/Element;

    #@158
    .line 527
    iput v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->theEntity:I

    #@15a
    .line 766
    const/4 v0, 0x1

    #@15b
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->virginStack:Z

    #@15d
    .line 1033
    const/16 v0, 0x7d0

    #@15f
    new-array v0, v0, [C

    #@161
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theCommentBuffer:[C

    #@163
    .line 32
    return-void
.end method

.method private cleanPublicid(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "src"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 933
    if-nez p1, :cond_0

    #@3
    return-object v5

    #@4
    .line 934
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v3

    #@8
    .line 935
    .local v3, "len":I
    new-instance v1, Ljava/lang/StringBuffer;

    #@a
    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    #@d
    .line 936
    .local v1, "dst":Ljava/lang/StringBuffer;
    const/4 v4, 0x1

    #@e
    .line 937
    .local v4, "suppressSpace":Z
    const/4 v2, 0x0

    #@f
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    #@11
    .line 938
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v0

    #@15
    .line 939
    .local v0, "ch":C
    sget-object v5, Lorg/ccil/cowan/tagsoup/Parser;->legal:Ljava/lang/String;

    #@17
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    #@1a
    move-result v5

    #@1b
    const/4 v6, -0x1

    #@1c
    if-eq v5, v6, :cond_2

    #@1e
    .line 940
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@21
    .line 941
    const/4 v4, 0x0

    #@22
    .line 937
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 943
    :cond_2
    if-nez v4, :cond_1

    #@27
    .line 947
    const/16 v5, 0x20

    #@29
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2c
    .line 948
    const/4 v4, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 952
    .end local v0    # "ch":C
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    return-object v5
.end method

.method private expandEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "src"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const/4 v11, -0x1

    #@2
    .line 557
    const/4 v7, -0x1

    #@3
    .line 558
    .local v7, "refStart":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v6

    #@7
    .line 559
    .local v6, "len":I
    new-array v1, v6, [C

    #@9
    .line 560
    .local v1, "dst":[C
    const/4 v2, 0x0

    #@a
    .line 561
    .local v2, "dstlen":I
    const/4 v5, 0x0

    #@b
    .local v5, "i":I
    move v3, v2

    #@c
    .end local v2    # "dstlen":I
    .local v3, "dstlen":I
    :goto_0
    if-ge v5, v6, :cond_5

    #@e
    .line 562
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v0

    #@12
    .line 563
    .local v0, "ch":C
    add-int/lit8 v2, v3, 0x1

    #@14
    .end local v3    # "dstlen":I
    .restart local v2    # "dstlen":I
    aput-char v0, v1, v3

    #@16
    .line 565
    const/16 v8, 0x26

    #@18
    if-ne v0, v8, :cond_1

    #@1a
    if-ne v7, v11, :cond_1

    #@1c
    .line 567
    move v7, v2

    #@1d
    .line 561
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@1f
    move v3, v2

    #@20
    .end local v2    # "dstlen":I
    .restart local v3    # "dstlen":I
    goto :goto_0

    #@21
    .line 570
    .end local v3    # "dstlen":I
    .restart local v2    # "dstlen":I
    :cond_1
    if-eq v7, v11, :cond_0

    #@23
    .line 574
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    #@26
    move-result v8

    #@27
    if-nez v8, :cond_0

    #@29
    .line 575
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    #@2c
    move-result v8

    #@2d
    .line 574
    if-nez v8, :cond_0

    #@2f
    .line 576
    const/16 v8, 0x23

    #@31
    if-eq v0, v8, :cond_0

    #@33
    .line 580
    const/16 v8, 0x3b

    #@35
    if-ne v0, v8, :cond_4

    #@37
    .line 583
    sub-int v8, v2, v7

    #@39
    add-int/lit8 v8, v8, -0x1

    #@3b
    invoke-direct {p0, v1, v7, v8}, Lorg/ccil/cowan/tagsoup/Parser;->lookupEntity([CII)I

    #@3e
    move-result v4

    #@3f
    .line 585
    .local v4, "ent":I
    const v8, 0xffff

    #@42
    if-le v4, v8, :cond_3

    #@44
    .line 586
    const/high16 v8, 0x10000

    #@46
    sub-int/2addr v4, v8

    #@47
    .line 587
    add-int/lit8 v8, v7, -0x1

    #@49
    shr-int/lit8 v9, v4, 0xa

    #@4b
    const v10, 0xd800

    #@4e
    add-int/2addr v9, v10

    #@4f
    int-to-char v9, v9

    #@50
    aput-char v9, v1, v8

    #@52
    .line 588
    and-int/lit16 v8, v4, 0x3ff

    #@54
    const v9, 0xdc00

    #@57
    add-int/2addr v8, v9

    #@58
    int-to-char v8, v8

    #@59
    aput-char v8, v1, v7

    #@5b
    .line 589
    add-int/lit8 v2, v7, 0x1

    #@5d
    .line 595
    :cond_2
    :goto_2
    const/4 v7, -0x1

    #@5e
    goto :goto_1

    #@5f
    .line 591
    :cond_3
    if-eqz v4, :cond_2

    #@61
    .line 592
    add-int/lit8 v8, v7, -0x1

    #@63
    int-to-char v9, v4

    #@64
    aput-char v9, v1, v8

    #@66
    .line 593
    move v2, v7

    #@67
    goto :goto_2

    #@68
    .line 600
    .end local v4    # "ent":I
    :cond_4
    const/4 v7, -0x1

    #@69
    goto :goto_1

    #@6a
    .line 603
    .end local v0    # "ch":C
    .end local v2    # "dstlen":I
    .restart local v3    # "dstlen":I
    :cond_5
    new-instance v8, Ljava/lang/String;

    #@6c
    invoke-direct {v8, v1, v12, v3}, Ljava/lang/String;-><init>([CII)V

    #@6f
    return-object v8
.end method

.method private foreign(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    #@0
    .prologue
    .line 816
    const-string/jumbo v1, ""

    #@3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    const-string/jumbo v1, ""

    #@c
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 817
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    #@14
    invoke-virtual {v1}, Lorg/ccil/cowan/tagsoup/Schema;->getURI()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    .line 816
    if-eqz v1, :cond_1

    #@1e
    :cond_0
    const/4 v0, 0x0

    #@1f
    .line 819
    .local v0, "foreign":Z
    :goto_0
    return v0

    #@20
    .line 816
    .end local v0    # "foreign":Z
    :cond_1
    const/4 v0, 0x1

    #@21
    .restart local v0    # "foreign":Z
    goto :goto_0
.end method

.method private getInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .param p1, "publicid"    # Ljava/lang/String;
    .param p2, "systemid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 508
    new-instance v0, Ljava/net/URL;

    #@2
    const-string/jumbo v3, "file"

    #@5
    const-string/jumbo v4, ""

    #@8
    new-instance v5, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v6, "user.dir"

    #@10
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    const-string/jumbo v6, "/."

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    invoke-direct {v0, v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@26
    .line 509
    .local v0, "basis":Ljava/net/URL;
    new-instance v2, Ljava/net/URL;

    #@28
    invoke-direct {v2, v0, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    #@2b
    .line 510
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@2e
    move-result-object v1

    #@2f
    .line 511
    .local v1, "c":Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@32
    move-result-object v3

    #@33
    return-object v3
.end method

.method private getReader(Lorg/xml/sax/InputSource;)Ljava/io/Reader;
    .locals 7
    .param p1, "s"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 482
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    #@3
    move-result-object v4

    #@4
    .line 483
    .local v4, "r":Ljava/io/Reader;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    #@7
    move-result-object v2

    #@8
    .line 484
    .local v2, "i":Ljava/io/InputStream;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 485
    .local v1, "encoding":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    .line 486
    .local v3, "publicid":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    .line 487
    .local v5, "systemid":Ljava/lang/String;
    if-nez v4, :cond_1

    #@16
    .line 488
    if-nez v2, :cond_0

    #@18
    invoke-direct {p0, v3, v5}, Lorg/ccil/cowan/tagsoup/Parser;->getInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    #@1b
    move-result-object v2

    #@1c
    .line 490
    :cond_0
    if-nez v1, :cond_2

    #@1e
    .line 491
    iget-object v6, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAutoDetector:Lorg/ccil/cowan/tagsoup/AutoDetector;

    #@20
    invoke-interface {v6, v2}, Lorg/ccil/cowan/tagsoup/AutoDetector;->autoDetectingReader(Ljava/io/InputStream;)Ljava/io/Reader;

    #@23
    move-result-object v4

    #@24
    .line 503
    :cond_1
    :goto_0
    return-object v4

    #@25
    .line 495
    :cond_2
    :try_start_0
    new-instance v4, Ljava/io/InputStreamReader;

    #@27
    .end local v4    # "r":Ljava/io/Reader;
    invoke-direct {v4, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .restart local v4    # "r":Ljava/io/Reader;
    goto :goto_0

    #@2b
    .line 497
    .end local v4    # "r":Ljava/io/Reader;
    :catch_0
    move-exception v0

    #@2c
    .line 498
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/io/InputStreamReader;

    #@2e
    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@31
    .restart local v4    # "r":Ljava/io/Reader;
    goto :goto_0
.end method

.method private lookupEntity([CII)I
    .locals 6
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 613
    const/4 v1, 0x0

    #@3
    .line 614
    .local v1, "result":I
    if-ge p3, v4, :cond_0

    #@5
    return v1

    #@6
    .line 617
    :cond_0
    aget-char v2, p1, p2

    #@8
    const/16 v3, 0x23

    #@a
    if-ne v2, v3, :cond_3

    #@c
    .line 618
    if-le p3, v4, :cond_2

    #@e
    add-int/lit8 v2, p2, 0x1

    #@10
    aget-char v2, p1, v2

    #@12
    const/16 v3, 0x78

    #@14
    if-eq v2, v3, :cond_1

    #@16
    .line 619
    add-int/lit8 v2, p2, 0x1

    #@18
    aget-char v2, p1, v2

    #@1a
    const/16 v3, 0x58

    #@1c
    if-ne v2, v3, :cond_2

    #@1e
    .line 621
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    #@20
    add-int/lit8 v3, p2, 0x2

    #@22
    add-int/lit8 v4, p3, -0x2

    #@24
    invoke-direct {v2, p1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    #@27
    const/16 v3, 0x10

    #@29
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    move-result v2

    #@2d
    return v2

    #@2e
    .line 623
    :catch_0
    move-exception v0

    #@2f
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v5

    #@30
    .line 626
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/String;

    #@32
    add-int/lit8 v3, p2, 0x1

    #@34
    add-int/lit8 v4, p3, -0x1

    #@36
    invoke-direct {v2, p1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    #@39
    const/16 v3, 0xa

    #@3b
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@3e
    move-result v2

    #@3f
    return v2

    #@40
    .line 628
    :catch_1
    move-exception v0

    #@41
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    return v5

    #@42
    .line 630
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    #@44
    new-instance v3, Ljava/lang/String;

    #@46
    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    #@49
    invoke-virtual {v2, v3}, Lorg/ccil/cowan/tagsoup/Schema;->getEntity(Ljava/lang/String;)I

    #@4c
    move-result v2

    #@4d
    return v2
.end method

.method private makeName([CII)Ljava/lang/String;
    .locals 9
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    const/16 v8, 0x3a

    #@2
    const/16 v6, 0x5f

    #@4
    .line 1077
    new-instance v1, Ljava/lang/StringBuffer;

    #@6
    add-int/lit8 v7, p3, 0x2

    #@8
    invoke-direct {v1, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    #@b
    .line 1078
    .local v1, "dst":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    #@c
    .line 1079
    .local v4, "seenColon":Z
    const/4 v5, 0x1

    #@d
    .local v5, "start":Z
    move v3, p3

    #@e
    .line 1081
    .end local p3    # "length":I
    .local v3, "length":I
    :goto_0
    add-int/lit8 p3, v3, -0x1

    #@10
    .end local v3    # "length":I
    .restart local p3    # "length":I
    if-lez v3, :cond_8

    #@12
    .line 1082
    aget-char v0, p1, p2

    #@14
    .line 1083
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    #@17
    move-result v7

    #@18
    if-nez v7, :cond_0

    #@1a
    if-ne v0, v6, :cond_2

    #@1c
    .line 1084
    :cond_0
    const/4 v5, 0x0

    #@1d
    .line 1085
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@20
    .line 1081
    .end local v0    # "ch":C
    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    #@22
    move v3, p3

    #@23
    .end local p3    # "length":I
    .restart local v3    # "length":I
    goto :goto_0

    #@24
    .line 1087
    .end local v3    # "length":I
    .restart local v0    # "ch":C
    .restart local p3    # "length":I
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    #@27
    move-result v7

    #@28
    if-nez v7, :cond_3

    #@2a
    const/16 v7, 0x2d

    #@2c
    if-ne v0, v7, :cond_5

    #@2e
    .line 1088
    :cond_3
    if-eqz v5, :cond_4

    #@30
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@33
    .line 1089
    :cond_4
    const/4 v5, 0x0

    #@34
    .line 1090
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@37
    goto :goto_1

    #@38
    .line 1087
    :cond_5
    const/16 v7, 0x2e

    #@3a
    if-eq v0, v7, :cond_3

    #@3c
    .line 1092
    if-ne v0, v8, :cond_1

    #@3e
    if-nez v4, :cond_1

    #@40
    .line 1093
    const/4 v4, 0x1

    #@41
    .line 1094
    if-eqz v5, :cond_6

    #@43
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@46
    .line 1095
    :cond_6
    const/4 v5, 0x1

    #@47
    .line 1096
    iget-boolean v7, p0, Lorg/ccil/cowan/tagsoup/Parser;->translateColons:Z

    #@49
    if-eqz v7, :cond_7

    #@4b
    move v0, v6

    #@4c
    .end local v0    # "ch":C
    :cond_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@4f
    goto :goto_1

    #@50
    .line 1099
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    #@53
    move-result v2

    #@54
    .line 1100
    .local v2, "dstLength":I
    if-eqz v2, :cond_9

    #@56
    add-int/lit8 v7, v2, -0x1

    #@58
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    #@5b
    move-result v7

    #@5c
    if-ne v7, v8, :cond_a

    #@5e
    :cond_9
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@61
    .line 1102
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@64
    move-result-object v6

    #@65
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@68
    move-result-object v6

    #@69
    return-object v6
.end method

.method private pop()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 729
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@2
    if-nez v8, :cond_0

    #@4
    return-void

    #@5
    .line 730
    :cond_0
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@7
    invoke-virtual {v8}, Lorg/ccil/cowan/tagsoup/Element;->name()Ljava/lang/String;

    #@a
    move-result-object v5

    #@b
    .line 731
    .local v5, "name":Ljava/lang/String;
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@d
    invoke-virtual {v8}, Lorg/ccil/cowan/tagsoup/Element;->localName()Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    .line 732
    .local v4, "localName":Ljava/lang/String;
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@13
    invoke-virtual {v8}, Lorg/ccil/cowan/tagsoup/Element;->namespace()Ljava/lang/String;

    #@16
    move-result-object v6

    #@17
    .line 733
    .local v6, "namespace":Ljava/lang/String;
    invoke-direct {p0, v5}, Lorg/ccil/cowan/tagsoup/Parser;->prefixOf(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v7

    #@1b
    .line 736
    .local v7, "prefix":Ljava/lang/String;
    iget-boolean v8, p0, Lorg/ccil/cowan/tagsoup/Parser;->namespaces:Z

    #@1d
    if-nez v8, :cond_1

    #@1f
    const-string/jumbo v4, ""

    #@22
    move-object v6, v4

    #@23
    .line 737
    :cond_1
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    #@25
    invoke-interface {v8, v6, v4, v5}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@28
    .line 738
    invoke-direct {p0, v7, v6}, Lorg/ccil/cowan/tagsoup/Parser;->foreign(Ljava/lang/String;Ljava/lang/String;)Z

    #@2b
    move-result v8

    #@2c
    if-eqz v8, :cond_2

    #@2e
    .line 739
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    #@30
    invoke-interface {v8, v7}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    #@33
    .line 742
    :cond_2
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@35
    invoke-virtual {v8}, Lorg/ccil/cowan/tagsoup/Element;->atts()Lorg/ccil/cowan/tagsoup/AttributesImpl;

    #@38
    move-result-object v2

    #@39
    .line 743
    .local v2, "atts":Lorg/xml/sax/Attributes;
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    #@3c
    move-result v8

    #@3d
    add-int/lit8 v3, v8, -0x1

    #@3f
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    #@41
    .line 744
    invoke-interface {v2, v3}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    .line 745
    .local v0, "attNamespace":Ljava/lang/String;
    invoke-interface {v2, v3}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@48
    move-result-object v8

    #@49
    invoke-direct {p0, v8}, Lorg/ccil/cowan/tagsoup/Parser;->prefixOf(Ljava/lang/String;)Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    .line 746
    .local v1, "attPrefix":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lorg/ccil/cowan/tagsoup/Parser;->foreign(Ljava/lang/String;Ljava/lang/String;)Z

    #@50
    move-result v8

    #@51
    if-eqz v8, :cond_3

    #@53
    .line 747
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    #@55
    invoke-interface {v8, v1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    #@58
    .line 743
    :cond_3
    add-int/lit8 v3, v3, -0x1

    #@5a
    goto :goto_0

    #@5b
    .line 751
    .end local v0    # "attNamespace":Ljava/lang/String;
    .end local v1    # "attPrefix":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@5d
    invoke-virtual {v8}, Lorg/ccil/cowan/tagsoup/Element;->next()Lorg/ccil/cowan/tagsoup/Element;

    #@60
    move-result-object v8

    #@61
    iput-object v8, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@63
    .line 728
    return-void
.end method

.method private prefixOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 806
    const/16 v2, 0x3a

    #@2
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@5
    move-result v0

    #@6
    .line 807
    .local v0, "i":I
    const-string/jumbo v1, ""

    #@9
    .line 808
    .local v1, "prefix":Ljava/lang/String;
    const/4 v2, -0x1

    #@a
    if-eq v0, v2, :cond_0

    #@c
    const/4 v2, 0x0

    #@d
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 810
    :cond_0
    return-object v1
.end method

.method private push(Lorg/ccil/cowan/tagsoup/Element;)V
    .locals 14
    .param p1, "e"    # Lorg/ccil/cowan/tagsoup/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 768
    invoke-virtual {p1}, Lorg/ccil/cowan/tagsoup/Element;->name()Ljava/lang/String;

    #@4
    move-result-object v7

    #@5
    .line 769
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/ccil/cowan/tagsoup/Element;->localName()Ljava/lang/String;

    #@8
    move-result-object v6

    #@9
    .line 770
    .local v6, "localName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/ccil/cowan/tagsoup/Element;->namespace()Ljava/lang/String;

    #@c
    move-result-object v8

    #@d
    .line 771
    .local v8, "namespace":Ljava/lang/String;
    invoke-direct {p0, v7}, Lorg/ccil/cowan/tagsoup/Parser;->prefixOf(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v9

    #@11
    .line 774
    .local v9, "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/ccil/cowan/tagsoup/Element;->clean()V

    #@14
    .line 775
    iget-boolean v10, p0, Lorg/ccil/cowan/tagsoup/Parser;->namespaces:Z

    #@16
    if-nez v10, :cond_0

    #@18
    const-string/jumbo v6, ""

    #@1b
    move-object v8, v6

    #@1c
    .line 776
    :cond_0
    iget-boolean v10, p0, Lorg/ccil/cowan/tagsoup/Parser;->virginStack:Z

    #@1e
    if-eqz v10, :cond_1

    #@20
    iget-object v10, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeName:Ljava/lang/String;

    #@22
    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@25
    move-result v10

    #@26
    if-eqz v10, :cond_1

    #@28
    .line 778
    :try_start_0
    iget-object v10, p0, Lorg/ccil/cowan/tagsoup/Parser;->theEntityResolver:Lorg/xml/sax/EntityResolver;

    #@2a
    iget-object v11, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypePublicId:Ljava/lang/String;

    #@2c
    iget-object v12, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeSystemId:Ljava/lang/String;

    #@2e
    invoke-interface {v10, v11, v12}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 781
    :cond_1
    :goto_0
    invoke-direct {p0, v9, v8}, Lorg/ccil/cowan/tagsoup/Parser;->foreign(Ljava/lang/String;Ljava/lang/String;)Z

    #@34
    move-result v10

    #@35
    if-eqz v10, :cond_2

    #@37
    .line 782
    iget-object v10, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    #@39
    invoke-interface {v10, v9, v8}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    .line 785
    :cond_2
    invoke-virtual {p1}, Lorg/ccil/cowan/tagsoup/Element;->atts()Lorg/ccil/cowan/tagsoup/AttributesImpl;

    #@3f
    move-result-object v2

    #@40
    .line 786
    .local v2, "atts":Lorg/xml/sax/Attributes;
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    #@43
    move-result v5

    #@44
    .line 787
    .local v5, "len":I
    const/4 v4, 0x0

    #@45
    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_4

    #@47
    .line 788
    invoke-interface {v2, v4}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    .line 789
    .local v0, "attNamespace":Ljava/lang/String;
    invoke-interface {v2, v4}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@4e
    move-result-object v10

    #@4f
    invoke-direct {p0, v10}, Lorg/ccil/cowan/tagsoup/Parser;->prefixOf(Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    .line 790
    .local v1, "attPrefix":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lorg/ccil/cowan/tagsoup/Parser;->foreign(Ljava/lang/String;Ljava/lang/String;)Z

    #@56
    move-result v10

    #@57
    if-eqz v10, :cond_3

    #@59
    .line 791
    iget-object v10, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    #@5b
    invoke-interface {v10, v1, v0}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    #@5e
    .line 787
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@60
    goto :goto_1

    #@61
    .line 795
    .end local v0    # "attNamespace":Ljava/lang/String;
    .end local v1    # "attPrefix":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    #@63
    invoke-virtual {p1}, Lorg/ccil/cowan/tagsoup/Element;->atts()Lorg/ccil/cowan/tagsoup/AttributesImpl;

    #@66
    move-result-object v11

    #@67
    invoke-interface {v10, v8, v6, v7, v11}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@6a
    .line 796
    iget-object v10, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@6c
    invoke-virtual {p1, v10}, Lorg/ccil/cowan/tagsoup/Element;->setNext(Lorg/ccil/cowan/tagsoup/Element;)V

    #@6f
    .line 797
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@71
    .line 798
    iput-boolean v13, p0, Lorg/ccil/cowan/tagsoup/Parser;->virginStack:Z

    #@73
    .line 799
    iget-boolean v10, p0, Lorg/ccil/cowan/tagsoup/Parser;->CDATAElements:Z

    #@75
    if-eqz v10, :cond_5

    #@77
    iget-object v10, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@79
    invoke-virtual {v10}, Lorg/ccil/cowan/tagsoup/Element;->flags()I

    #@7c
    move-result v10

    #@7d
    and-int/lit8 v10, v10, 0x2

    #@7f
    if-eqz v10, :cond_5

    #@81
    .line 800
    iget-object v10, p0, Lorg/ccil/cowan/tagsoup/Parser;->theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

    #@83
    invoke-interface {v10}, Lorg/ccil/cowan/tagsoup/Scanner;->startCDATA()V

    #@86
    .line 767
    :cond_5
    return-void

    #@87
    .line 779
    .end local v2    # "atts":Lorg/xml/sax/Attributes;
    .end local v4    # "i":I
    .end local v5    # "len":I
    :catch_0
    move-exception v3

    #@88
    .local v3, "ew":Ljava/io/IOException;
    goto :goto_0
.end method

.method private rectify(Lorg/ccil/cowan/tagsoup/Element;)V
    .locals 7
    .param p1, "e"    # Lorg/ccil/cowan/tagsoup/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1043
    :goto_0
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@3
    .local v3, "sp":Lorg/ccil/cowan/tagsoup/Element;
    :goto_1
    if-eqz v3, :cond_0

    #@5
    .line 1044
    invoke-virtual {v3, p1}, Lorg/ccil/cowan/tagsoup/Element;->canContain(Lorg/ccil/cowan/tagsoup/Element;)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_2

    #@b
    .line 1046
    :cond_0
    if-eqz v3, :cond_3

    #@d
    .line 1054
    :cond_1
    if-nez v3, :cond_5

    #@f
    return-void

    #@10
    .line 1043
    :cond_2
    invoke-virtual {v3}, Lorg/ccil/cowan/tagsoup/Element;->next()Lorg/ccil/cowan/tagsoup/Element;

    #@13
    move-result-object v3

    #@14
    goto :goto_1

    #@15
    .line 1047
    :cond_3
    invoke-virtual {p1}, Lorg/ccil/cowan/tagsoup/Element;->parent()Lorg/ccil/cowan/tagsoup/ElementType;

    #@18
    move-result-object v2

    #@19
    .line 1048
    .local v2, "parentType":Lorg/ccil/cowan/tagsoup/ElementType;
    if-eqz v2, :cond_1

    #@1b
    .line 1049
    new-instance v1, Lorg/ccil/cowan/tagsoup/Element;

    #@1d
    iget-boolean v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->defaultAttributes:Z

    #@1f
    invoke-direct {v1, v2, v4}, Lorg/ccil/cowan/tagsoup/Element;-><init>(Lorg/ccil/cowan/tagsoup/ElementType;Z)V

    #@22
    .line 1051
    .local v1, "parent":Lorg/ccil/cowan/tagsoup/Element;
    invoke-virtual {v1, p1}, Lorg/ccil/cowan/tagsoup/Element;->setNext(Lorg/ccil/cowan/tagsoup/Element;)V

    #@25
    .line 1052
    move-object p1, v1

    #@26
    goto :goto_0

    #@27
    .line 1058
    .end local v1    # "parent":Lorg/ccil/cowan/tagsoup/Element;
    .end local v2    # "parentType":Lorg/ccil/cowan/tagsoup/ElementType;
    :cond_4
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/Parser;->restartablyPop()V

    #@2a
    .line 1055
    :cond_5
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@2c
    if-eq v4, v3, :cond_6

    #@2e
    .line 1056
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@30
    if-eqz v4, :cond_6

    #@32
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@34
    invoke-virtual {v4}, Lorg/ccil/cowan/tagsoup/Element;->next()Lorg/ccil/cowan/tagsoup/Element;

    #@37
    move-result-object v4

    #@38
    if-nez v4, :cond_8

    #@3a
    .line 1060
    :cond_6
    :goto_2
    if-eqz p1, :cond_9

    #@3c
    .line 1061
    invoke-virtual {p1}, Lorg/ccil/cowan/tagsoup/Element;->next()Lorg/ccil/cowan/tagsoup/Element;

    #@3f
    move-result-object v0

    #@40
    .line 1062
    .local v0, "nexte":Lorg/ccil/cowan/tagsoup/Element;
    invoke-virtual {p1}, Lorg/ccil/cowan/tagsoup/Element;->name()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    const-string/jumbo v5, "<pcdata>"

    #@47
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v4

    #@4b
    if-nez v4, :cond_7

    #@4d
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/Parser;->push(Lorg/ccil/cowan/tagsoup/Element;)V

    #@50
    .line 1063
    :cond_7
    move-object p1, v0

    #@51
    .line 1064
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/Parser;->restart(Lorg/ccil/cowan/tagsoup/Element;)V

    #@54
    goto :goto_2

    #@55
    .line 1057
    .end local v0    # "nexte":Lorg/ccil/cowan/tagsoup/Element;
    :cond_8
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@57
    invoke-virtual {v4}, Lorg/ccil/cowan/tagsoup/Element;->next()Lorg/ccil/cowan/tagsoup/Element;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v4}, Lorg/ccil/cowan/tagsoup/Element;->next()Lorg/ccil/cowan/tagsoup/Element;

    #@5e
    move-result-object v4

    #@5f
    if-nez v4, :cond_4

    #@61
    goto :goto_2

    #@62
    .line 1066
    :cond_9
    iput-object v6, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    #@64
    .line 1040
    return-void
.end method

.method private restart(Lorg/ccil/cowan/tagsoup/Element;)V
    .locals 3
    .param p1, "e"    # Lorg/ccil/cowan/tagsoup/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 719
    :goto_0
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSaved:Lorg/ccil/cowan/tagsoup/Element;

    #@2
    if-eqz v1, :cond_1

    #@4
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@6
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSaved:Lorg/ccil/cowan/tagsoup/Element;

    #@8
    invoke-virtual {v1, v2}, Lorg/ccil/cowan/tagsoup/Element;->canContain(Lorg/ccil/cowan/tagsoup/Element;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 720
    if-eqz p1, :cond_0

    #@10
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSaved:Lorg/ccil/cowan/tagsoup/Element;

    #@12
    invoke-virtual {v1, p1}, Lorg/ccil/cowan/tagsoup/Element;->canContain(Lorg/ccil/cowan/tagsoup/Element;)Z

    #@15
    move-result v1

    #@16
    .line 719
    if-eqz v1, :cond_1

    #@18
    .line 721
    :cond_0
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSaved:Lorg/ccil/cowan/tagsoup/Element;

    #@1a
    invoke-virtual {v1}, Lorg/ccil/cowan/tagsoup/Element;->next()Lorg/ccil/cowan/tagsoup/Element;

    #@1d
    move-result-object v0

    #@1e
    .line 722
    .local v0, "next":Lorg/ccil/cowan/tagsoup/Element;
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSaved:Lorg/ccil/cowan/tagsoup/Element;

    #@20
    invoke-direct {p0, v1}, Lorg/ccil/cowan/tagsoup/Parser;->push(Lorg/ccil/cowan/tagsoup/Element;)V

    #@23
    .line 723
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSaved:Lorg/ccil/cowan/tagsoup/Element;

    #@25
    goto :goto_0

    #@26
    .line 718
    .end local v0    # "next":Lorg/ccil/cowan/tagsoup/Element;
    :cond_1
    return-void
.end method

.method private restartablyPop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 756
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@2
    .line 757
    .local v0, "popped":Lorg/ccil/cowan/tagsoup/Element;
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/Parser;->pop()V

    #@5
    .line 758
    iget-boolean v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->restartElements:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/Element;->flags()I

    #@c
    move-result v1

    #@d
    and-int/lit8 v1, v1, 0x1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 759
    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/Element;->anonymize()V

    #@14
    .line 760
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSaved:Lorg/ccil/cowan/tagsoup/Element;

    #@16
    invoke-virtual {v0, v1}, Lorg/ccil/cowan/tagsoup/Element;->setNext(Lorg/ccil/cowan/tagsoup/Element;)V

    #@19
    .line 761
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSaved:Lorg/ccil/cowan/tagsoup/Element;

    #@1b
    .line 755
    :cond_0
    return-void
.end method

.method private setup()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 459
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    #@3
    if-nez v0, :cond_0

    #@5
    new-instance v0, Lorg/ccil/cowan/tagsoup/HTMLSchema;

    #@7
    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/HTMLSchema;-><init>()V

    #@a
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    #@c
    .line 460
    :cond_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

    #@e
    if-nez v0, :cond_1

    #@10
    new-instance v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;

    #@12
    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;-><init>()V

    #@15
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

    #@17
    .line 461
    :cond_1
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAutoDetector:Lorg/ccil/cowan/tagsoup/AutoDetector;

    #@19
    if-nez v0, :cond_2

    #@1b
    .line 462
    new-instance v0, Lorg/ccil/cowan/tagsoup/Parser$1;

    #@1d
    invoke-direct {v0, p0}, Lorg/ccil/cowan/tagsoup/Parser$1;-><init>(Lorg/ccil/cowan/tagsoup/Parser;)V

    #@20
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAutoDetector:Lorg/ccil/cowan/tagsoup/AutoDetector;

    #@22
    .line 468
    :cond_2
    new-instance v0, Lorg/ccil/cowan/tagsoup/Element;

    #@24
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    #@26
    const-string/jumbo v2, "<root>"

    #@29
    invoke-virtual {v1, v2}, Lorg/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;

    #@2c
    move-result-object v1

    #@2d
    iget-boolean v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->defaultAttributes:Z

    #@2f
    invoke-direct {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/Element;-><init>(Lorg/ccil/cowan/tagsoup/ElementType;Z)V

    #@32
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@34
    .line 469
    new-instance v0, Lorg/ccil/cowan/tagsoup/Element;

    #@36
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    #@38
    const-string/jumbo v2, "<pcdata>"

    #@3b
    invoke-virtual {v1, v2}, Lorg/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;

    #@3e
    move-result-object v1

    #@3f
    iget-boolean v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->defaultAttributes:Z

    #@41
    invoke-direct {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/Element;-><init>(Lorg/ccil/cowan/tagsoup/ElementType;Z)V

    #@44
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->thePCDATA:Lorg/ccil/cowan/tagsoup/Element;

    #@46
    .line 470
    iput-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    #@48
    .line 471
    iput-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAttributeName:Ljava/lang/String;

    #@4a
    .line 472
    iput-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->thePITarget:Ljava/lang/String;

    #@4c
    .line 473
    iput-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSaved:Lorg/ccil/cowan/tagsoup/Element;

    #@4e
    .line 474
    const/4 v0, 0x0

    #@4f
    iput v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theEntity:I

    #@51
    .line 475
    const/4 v0, 0x1

    #@52
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->virginStack:Z

    #@54
    .line 476
    iput-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeSystemId:Ljava/lang/String;

    #@56
    iput-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypePublicId:Ljava/lang/String;

    #@58
    iput-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeName:Ljava/lang/String;

    #@5a
    .line 458
    return-void
.end method

.method private static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v10, 0x5c

    #@2
    const/4 v9, 0x0

    #@3
    .line 890
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@6
    move-result-object p0

    #@7
    .line 891
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@a
    move-result v8

    #@b
    if-nez v8, :cond_0

    #@d
    .line 892
    new-array v8, v9, [Ljava/lang/String;

    #@f
    return-object v8

    #@10
    .line 895
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    #@12
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@15
    .line 896
    .local v3, "l":Ljava/util/ArrayList;
    const/4 v6, 0x0

    #@16
    .line 897
    .local v6, "s":I
    const/4 v2, 0x0

    #@17
    .line 898
    .local v2, "e":I
    const/4 v7, 0x0

    #@18
    .line 899
    .local v7, "sq":Z
    const/4 v1, 0x0

    #@19
    .line 900
    .local v1, "dq":Z
    const/4 v4, 0x0

    #@1a
    .line 901
    .local v4, "lastc":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@1d
    move-result v5

    #@1e
    .line 902
    .local v5, "len":I
    const/4 v2, 0x0

    #@1f
    .end local v4    # "lastc":C
    :goto_0
    if-ge v2, v5, :cond_8

    #@21
    .line 903
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@24
    move-result v0

    #@25
    .line 904
    .local v0, "c":C
    if-nez v1, :cond_3

    #@27
    const/16 v8, 0x27

    #@29
    if-ne v0, v8, :cond_3

    #@2b
    if-eq v4, v10, :cond_3

    #@2d
    .line 905
    if-eqz v7, :cond_2

    #@2f
    const/4 v7, 0x0

    #@30
    .line 906
    :goto_1
    if-gez v6, :cond_1

    #@32
    move v6, v2

    #@33
    .line 921
    :cond_1
    :goto_2
    move v4, v0

    #@34
    .line 902
    .local v4, "lastc":C
    add-int/lit8 v2, v2, 0x1

    #@36
    goto :goto_0

    #@37
    .line 905
    .end local v4    # "lastc":C
    :cond_2
    const/4 v7, 0x1

    #@38
    goto :goto_1

    #@39
    .line 908
    :cond_3
    if-nez v7, :cond_5

    #@3b
    const/16 v8, 0x22

    #@3d
    if-ne v0, v8, :cond_5

    #@3f
    if-eq v4, v10, :cond_5

    #@41
    .line 909
    if-eqz v1, :cond_4

    #@43
    const/4 v1, 0x0

    #@44
    .line 910
    :goto_3
    if-gez v6, :cond_1

    #@46
    move v6, v2

    #@47
    goto :goto_2

    #@48
    .line 909
    :cond_4
    const/4 v1, 0x1

    #@49
    goto :goto_3

    #@4a
    .line 912
    :cond_5
    if-nez v7, :cond_1

    #@4c
    if-nez v1, :cond_1

    #@4e
    .line 913
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    #@51
    move-result v8

    #@52
    if-eqz v8, :cond_7

    #@54
    .line 914
    if-ltz v6, :cond_6

    #@56
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@59
    move-result-object v8

    #@5a
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5d
    .line 915
    :cond_6
    const/4 v6, -0x1

    #@5e
    goto :goto_2

    #@5f
    .line 917
    :cond_7
    if-gez v6, :cond_1

    #@61
    const/16 v8, 0x20

    #@63
    if-eq v0, v8, :cond_1

    #@65
    .line 918
    move v6, v2

    #@66
    goto :goto_2

    #@67
    .line 923
    .end local v0    # "c":C
    :cond_8
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6a
    move-result-object v8

    #@6b
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6e
    .line 924
    new-array v8, v9, [Ljava/lang/String;

    #@70
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@73
    move-result-object v8

    #@74
    check-cast v8, [Ljava/lang/String;

    #@76
    return-object v8
.end method

.method private static trimquotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "in"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 876
    if-nez p0, :cond_0

    #@3
    return-object p0

    #@4
    .line 877
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    .line 878
    .local v1, "length":I
    if-nez v1, :cond_1

    #@a
    return-object p0

    #@b
    .line 879
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v2

    #@f
    .line 880
    .local v2, "s":C
    add-int/lit8 v3, v1, -0x1

    #@11
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v0

    #@15
    .line 881
    .local v0, "e":C
    if-ne v2, v0, :cond_3

    #@17
    const/16 v3, 0x27

    #@19
    if-eq v2, v3, :cond_2

    #@1b
    const/16 v3, 0x22

    #@1d
    if-ne v2, v3, :cond_3

    #@1f
    .line 882
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@22
    move-result v3

    #@23
    add-int/lit8 v3, v3, -0x1

    #@25
    const/4 v4, 0x1

    #@26
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@29
    move-result-object p0

    #@2a
    .line 884
    :cond_3
    return-object p0
.end method

.method private static truthValue(Z)Ljava/lang/Boolean;
    .locals 1
    .param p0, "b"    # Z

    #@0
    .prologue
    .line 313
    if-eqz p0, :cond_0

    #@2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@4
    :goto_0
    return-object v0

    #@5
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@7
    goto :goto_0
.end method


# virtual methods
.method public adup([CII)V
    .locals 4
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 530
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAttributeName:Ljava/lang/String;

    #@7
    if-nez v0, :cond_1

    #@9
    :cond_0
    return-void

    #@a
    .line 531
    :cond_1
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    #@c
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAttributeName:Ljava/lang/String;

    #@e
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAttributeName:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1, v3, v2}, Lorg/ccil/cowan/tagsoup/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@13
    .line 532
    iput-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAttributeName:Ljava/lang/String;

    #@15
    .line 529
    return-void
.end method

.method public aname([CII)V
    .locals 2
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 536
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 539
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/Parser;->makeName([CII)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAttributeName:Ljava/lang/String;

    #@11
    .line 535
    return-void
.end method

.method public aval([CII)V
    .locals 4
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 544
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAttributeName:Ljava/lang/String;

    #@7
    if-nez v1, :cond_1

    #@9
    :cond_0
    return-void

    #@a
    .line 545
    :cond_1
    new-instance v0, Ljava/lang/String;

    #@c
    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    #@f
    .line 547
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/Parser;->expandEntities(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 548
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    #@15
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAttributeName:Ljava/lang/String;

    #@17
    invoke-virtual {v1, v2, v3, v0}, Lorg/ccil/cowan/tagsoup/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 549
    iput-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAttributeName:Ljava/lang/String;

    #@1c
    .line 543
    return-void
.end method

.method public cdsect([CII)V
    .locals 1
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 976
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@2
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    #@5
    .line 977
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/Parser;->pcdata([CII)V

    #@8
    .line 978
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@a
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    #@d
    .line 975
    return-void
.end method

.method public cmnt([CII)V
    .locals 1
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1035
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    #@5
    .line 1034
    return-void
.end method

.method public comment([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1107
    return-void
.end method

.method public decl([CII)V
    .locals 12
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x4

    #@1
    const/4 v10, 0x2

    #@2
    const/4 v7, 0x0

    #@3
    const/4 v9, 0x1

    #@4
    const/4 v8, 0x3

    #@5
    .line 833
    new-instance v3, Ljava/lang/String;

    #@7
    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    #@a
    .line 834
    .local v3, "s":Ljava/lang/String;
    const/4 v1, 0x0

    #@b
    .line 835
    .local v1, "name":Ljava/lang/String;
    const/4 v4, 0x0

    #@c
    .line 836
    .local v4, "systemid":Ljava/lang/String;
    const/4 v2, 0x0

    #@d
    .line 837
    .local v2, "publicid":Ljava/lang/String;
    invoke-static {v3}, Lorg/ccil/cowan/tagsoup/Parser;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    .line 838
    .local v5, "v":[Ljava/lang/String;
    array-length v6, v5

    #@12
    if-lez v6, :cond_1

    #@14
    const-string/jumbo v6, "DOCTYPE"

    #@17
    aget-object v7, v5, v7

    #@19
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_1

    #@1f
    .line 839
    iget-boolean v6, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeIsPresent:Z

    #@21
    if-eqz v6, :cond_0

    #@23
    return-void

    #@24
    .line 840
    :cond_0
    iput-boolean v9, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeIsPresent:Z

    #@26
    .line 841
    array-length v6, v5

    #@27
    if-le v6, v9, :cond_1

    #@29
    .line 842
    aget-object v1, v5, v9

    #@2b
    .line 843
    .local v1, "name":Ljava/lang/String;
    array-length v6, v5

    #@2c
    if-le v6, v8, :cond_3

    #@2e
    const-string/jumbo v6, "SYSTEM"

    #@31
    aget-object v7, v5, v10

    #@33
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v6

    #@37
    if-eqz v6, :cond_3

    #@39
    .line 844
    aget-object v4, v5, v8

    #@3b
    .line 857
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "publicid":Ljava/lang/String;
    .end local v4    # "systemid":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {v2}, Lorg/ccil/cowan/tagsoup/Parser;->trimquotes(Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    .line 858
    .local v2, "publicid":Ljava/lang/String;
    invoke-static {v4}, Lorg/ccil/cowan/tagsoup/Parser;->trimquotes(Ljava/lang/String;)Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    .line 859
    .local v4, "systemid":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@45
    .line 860
    invoke-direct {p0, v2}, Lorg/ccil/cowan/tagsoup/Parser;->cleanPublicid(Ljava/lang/String;)Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    .line 861
    iget-object v6, p0, Lorg/ccil/cowan/tagsoup/Parser;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@4b
    invoke-interface {v6, v1, v2, v4}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@4e
    .line 862
    iget-object v6, p0, Lorg/ccil/cowan/tagsoup/Parser;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@50
    invoke-interface {v6}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    #@53
    .line 863
    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeName:Ljava/lang/String;

    #@55
    .line 864
    iput-object v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypePublicId:Ljava/lang/String;

    #@57
    .line 865
    iget-object v6, p0, Lorg/ccil/cowan/tagsoup/Parser;->theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

    #@59
    instance-of v6, v6, Lorg/xml/sax/Locator;

    #@5b
    if-eqz v6, :cond_2

    #@5d
    .line 866
    iget-object v6, p0, Lorg/ccil/cowan/tagsoup/Parser;->theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

    #@5f
    check-cast v6, Lorg/xml/sax/Locator;

    #@61
    invoke-interface {v6}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    #@64
    move-result-object v6

    #@65
    iput-object v6, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeSystemId:Ljava/lang/String;

    #@67
    .line 868
    :try_start_0
    new-instance v6, Ljava/net/URL;

    #@69
    new-instance v7, Ljava/net/URL;

    #@6b
    iget-object v8, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeSystemId:Ljava/lang/String;

    #@6d
    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@70
    invoke-direct {v6, v7, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    #@73
    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@76
    move-result-object v6

    #@77
    iput-object v6, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDoctypeSystemId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@79
    .line 832
    :cond_2
    :goto_1
    return-void

    #@7a
    .line 846
    .restart local v1    # "name":Ljava/lang/String;
    .local v2, "publicid":Ljava/lang/String;
    .local v4, "systemid":Ljava/lang/String;
    :cond_3
    array-length v6, v5

    #@7b
    if-le v6, v8, :cond_1

    #@7d
    const-string/jumbo v6, "PUBLIC"

    #@80
    aget-object v7, v5, v10

    #@82
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@85
    move-result v6

    #@86
    if-eqz v6, :cond_1

    #@88
    .line 847
    aget-object v2, v5, v8

    #@8a
    .line 848
    .local v2, "publicid":Ljava/lang/String;
    array-length v6, v5

    #@8b
    if-le v6, v11, :cond_4

    #@8d
    .line 849
    aget-object v4, v5, v11

    #@8f
    .local v4, "systemid":Ljava/lang/String;
    goto :goto_0

    #@90
    .line 852
    .local v4, "systemid":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, ""

    #@93
    .local v4, "systemid":Ljava/lang/String;
    goto :goto_0

    #@94
    .line 869
    .end local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@95
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public endCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1108
    return-void
.end method

.method public endDTD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1109
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1110
    return-void
.end method

.method public entity([CII)V
    .locals 1
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 607
    invoke-direct {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/Parser;->lookupEntity([CII)I

    #@3
    move-result v0

    #@4
    iput v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theEntity:I

    #@6
    .line 606
    return-void
.end method

.method public eof([CII)V
    .locals 2
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 634
    iget-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->virginStack:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->thePCDATA:Lorg/ccil/cowan/tagsoup/Element;

    #@6
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/Parser;->rectify(Lorg/ccil/cowan/tagsoup/Element;)V

    #@9
    .line 635
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@b
    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/Element;->next()Lorg/ccil/cowan/tagsoup/Element;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 636
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/Parser;->pop()V

    #@14
    goto :goto_0

    #@15
    .line 638
    :cond_1
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    #@17
    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/Schema;->getURI()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    const-string/jumbo v1, ""

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v0

    #@22
    if-nez v0, :cond_2

    #@24
    .line 639
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    #@26
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    #@28
    invoke-virtual {v1}, Lorg/ccil/cowan/tagsoup/Schema;->getPrefix()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    #@2f
    .line 640
    :cond_2
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    #@31
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    #@34
    .line 633
    return-void
.end method

.method public etag([CII)V
    .locals 1
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 644
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/Parser;->etag_cdata([CII)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    return-void

    #@7
    .line 645
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/Parser;->etag_basic([CII)V

    #@a
    .line 643
    return-void
.end method

.method public etag_basic([CII)V
    .locals 6
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 676
    iput-object v5, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    #@3
    .line 678
    if-eqz p3, :cond_2

    #@5
    .line 680
    invoke-direct {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/Parser;->makeName([CII)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 682
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    #@b
    invoke-virtual {v4, v1}, Lorg/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;

    #@e
    move-result-object v3

    #@f
    .line 683
    .local v3, "type":Lorg/ccil/cowan/tagsoup/ElementType;
    if-nez v3, :cond_0

    #@11
    return-void

    #@12
    .line 684
    :cond_0
    invoke-virtual {v3}, Lorg/ccil/cowan/tagsoup/ElementType;->name()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 692
    .end local v3    # "type":Lorg/ccil/cowan/tagsoup/ElementType;
    :goto_0
    const/4 v0, 0x0

    #@17
    .line 693
    .local v0, "inNoforce":Z
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@19
    .local v2, "sp":Lorg/ccil/cowan/tagsoup/Element;
    :goto_1
    if-eqz v2, :cond_1

    #@1b
    .line 694
    invoke-virtual {v2}, Lorg/ccil/cowan/tagsoup/Element;->name()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_3

    #@25
    .line 698
    :cond_1
    if-nez v2, :cond_5

    #@27
    return-void

    #@28
    .line 687
    .end local v0    # "inNoforce":Z
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "sp":Lorg/ccil/cowan/tagsoup/Element;
    :cond_2
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@2a
    invoke-virtual {v4}, Lorg/ccil/cowan/tagsoup/Element;->name()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_0

    #@2f
    .line 695
    .restart local v0    # "inNoforce":Z
    .restart local v2    # "sp":Lorg/ccil/cowan/tagsoup/Element;
    :cond_3
    invoke-virtual {v2}, Lorg/ccil/cowan/tagsoup/Element;->flags()I

    #@32
    move-result v4

    #@33
    and-int/lit8 v4, v4, 0x4

    #@35
    if-eqz v4, :cond_4

    #@37
    const/4 v0, 0x1

    #@38
    .line 693
    :cond_4
    invoke-virtual {v2}, Lorg/ccil/cowan/tagsoup/Element;->next()Lorg/ccil/cowan/tagsoup/Element;

    #@3b
    move-result-object v2

    #@3c
    goto :goto_1

    #@3d
    .line 699
    :cond_5
    invoke-virtual {v2}, Lorg/ccil/cowan/tagsoup/Element;->next()Lorg/ccil/cowan/tagsoup/Element;

    #@40
    move-result-object v4

    #@41
    if-eqz v4, :cond_6

    #@43
    invoke-virtual {v2}, Lorg/ccil/cowan/tagsoup/Element;->next()Lorg/ccil/cowan/tagsoup/Element;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4}, Lorg/ccil/cowan/tagsoup/Element;->next()Lorg/ccil/cowan/tagsoup/Element;

    #@4a
    move-result-object v4

    #@4b
    if-nez v4, :cond_7

    #@4d
    :cond_6
    return-void

    #@4e
    .line 700
    :cond_7
    if-eqz v0, :cond_8

    #@50
    .line 701
    invoke-virtual {v2}, Lorg/ccil/cowan/tagsoup/Element;->preclose()V

    #@53
    .line 710
    :goto_2
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@55
    invoke-virtual {v4}, Lorg/ccil/cowan/tagsoup/Element;->isPreclosed()Z

    #@58
    move-result v4

    #@59
    if-eqz v4, :cond_a

    #@5b
    .line 711
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/Parser;->pop()V

    #@5e
    goto :goto_2

    #@5f
    .line 704
    :cond_8
    :goto_3
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@61
    if-eq v4, v2, :cond_9

    #@63
    .line 705
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/Parser;->restartablyPop()V

    #@66
    goto :goto_3

    #@67
    .line 707
    :cond_9
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/Parser;->pop()V

    #@6a
    goto :goto_2

    #@6b
    .line 713
    :cond_a
    invoke-direct {p0, v5}, Lorg/ccil/cowan/tagsoup/Parser;->restart(Lorg/ccil/cowan/tagsoup/Element;)V

    #@6e
    .line 675
    return-void
.end method

.method public etag_cdata([CII)Z
    .locals 8
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 650
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@5
    invoke-virtual {v3}, Lorg/ccil/cowan/tagsoup/Element;->name()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 654
    .local v0, "currentName":Ljava/lang/String;
    iget-boolean v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->CDATAElements:Z

    #@b
    if-eqz v3, :cond_3

    #@d
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@f
    invoke-virtual {v3}, Lorg/ccil/cowan/tagsoup/Element;->flags()I

    #@12
    move-result v3

    #@13
    and-int/lit8 v3, v3, 0x2

    #@15
    if-eqz v3, :cond_3

    #@17
    .line 655
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@1a
    move-result v3

    #@1b
    if-ne p3, v3, :cond_1

    #@1d
    const/4 v2, 0x1

    #@1e
    .line 656
    .local v2, "realTag":Z
    :goto_0
    if-eqz v2, :cond_0

    #@20
    .line 657
    const/4 v1, 0x0

    #@21
    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_0

    #@23
    .line 658
    add-int v3, p2, v1

    #@25
    aget-char v3, p1, v3

    #@27
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    #@2a
    move-result v3

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@2e
    move-result v4

    #@2f
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    #@32
    move-result v4

    #@33
    if-eq v3, v4, :cond_2

    #@35
    .line 659
    const/4 v2, 0x0

    #@36
    .line 664
    .end local v1    # "i":I
    :cond_0
    if-nez v2, :cond_3

    #@38
    .line 665
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    #@3a
    sget-object v4, Lorg/ccil/cowan/tagsoup/Parser;->etagchars:[C

    #@3c
    invoke-interface {v3, v4, v5, v7}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@3f
    .line 666
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    #@41
    invoke-interface {v3, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@44
    .line 667
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    #@46
    sget-object v4, Lorg/ccil/cowan/tagsoup/Parser;->etagchars:[C

    #@48
    invoke-interface {v3, v4, v7, v6}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@4b
    .line 668
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

    #@4d
    invoke-interface {v3}, Lorg/ccil/cowan/tagsoup/Scanner;->startCDATA()V

    #@50
    .line 669
    return v6

    #@51
    .line 655
    .end local v2    # "realTag":Z
    :cond_1
    const/4 v2, 0x0

    #@52
    .restart local v2    # "realTag":Z
    goto :goto_0

    #@53
    .line 657
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@55
    goto :goto_1

    #@56
    .line 672
    .end local v1    # "i":I
    .end local v2    # "realTag":Z
    :cond_3
    return v5
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    #@0
    .prologue
    .line 428
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    #@8
    goto :goto_0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    #@0
    .prologue
    .line 420
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDTDHandler:Lorg/xml/sax/DTDHandler;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDTDHandler:Lorg/xml/sax/DTDHandler;

    #@8
    goto :goto_0
.end method

.method public getEntity()I
    .locals 1

    #@0
    .prologue
    .line 1070
    iget v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theEntity:I

    #@2
    return v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    #@0
    .prologue
    .line 412
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theEntityResolver:Lorg/xml/sax/EntityResolver;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theEntityResolver:Lorg/xml/sax/EntityResolver;

    #@8
    goto :goto_0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    #@0
    .prologue
    .line 436
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theErrorHandler:Lorg/xml/sax/ErrorHandler;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theErrorHandler:Lorg/xml/sax/ErrorHandler;

    #@8
    goto :goto_0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 319
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Boolean;

    #@8
    .line 320
    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    #@a
    .line 321
    new-instance v1, Lorg/xml/sax/SAXNotRecognizedException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Unknown feature "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 323
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@27
    move-result v1

    #@28
    return v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 348
    const-string/jumbo v0, "http://xml.org/sax/properties/lexical-handler"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 349
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@b
    if-ne v0, p0, :cond_0

    #@d
    const/4 v0, 0x0

    #@e
    :goto_0
    return-object v0

    #@f
    :cond_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@11
    goto :goto_0

    #@12
    .line 351
    :cond_1
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/properties/scanner"

    #@15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 352
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

    #@1d
    return-object v0

    #@1e
    .line 354
    :cond_2
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    #@21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_3

    #@27
    .line 355
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    #@29
    return-object v0

    #@2a
    .line 357
    :cond_3
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/properties/auto-detector"

    #@2d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_4

    #@33
    .line 358
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAutoDetector:Lorg/ccil/cowan/tagsoup/AutoDetector;

    #@35
    return-object v0

    #@36
    .line 361
    :cond_4
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    #@38
    new-instance v1, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v2, "Unknown property "

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v0
.end method

.method public gi([CII)V
    .locals 6
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 957
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    #@2
    if-eqz v4, :cond_0

    #@4
    return-void

    #@5
    .line 958
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/Parser;->makeName([CII)Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 959
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_1

    #@b
    return-void

    #@c
    .line 960
    :cond_1
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    #@e
    invoke-virtual {v4, v2}, Lorg/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;

    #@11
    move-result-object v3

    #@12
    .line 961
    .local v3, "type":Lorg/ccil/cowan/tagsoup/ElementType;
    if-nez v3, :cond_4

    #@14
    .line 963
    iget-boolean v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->ignoreBogons:Z

    #@16
    if-eqz v4, :cond_2

    #@18
    return-void

    #@19
    .line 964
    :cond_2
    iget-boolean v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->bogonsEmpty:Z

    #@1b
    if-eqz v4, :cond_5

    #@1d
    const/4 v1, 0x0

    #@1e
    .line 965
    .local v1, "bogonModel":I
    :goto_0
    iget-boolean v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->rootBogons:Z

    #@20
    if-eqz v4, :cond_6

    #@22
    const/4 v0, -0x1

    #@23
    .line 966
    .local v0, "bogonMemberOf":I
    :goto_1
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    #@25
    const/4 v5, 0x0

    #@26
    invoke-virtual {v4, v2, v1, v0, v5}, Lorg/ccil/cowan/tagsoup/Schema;->elementType(Ljava/lang/String;III)V

    #@29
    .line 967
    iget-boolean v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->rootBogons:Z

    #@2b
    if-nez v4, :cond_3

    #@2d
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    #@2f
    iget-object v5, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    #@31
    invoke-virtual {v5}, Lorg/ccil/cowan/tagsoup/Schema;->rootElementType()Lorg/ccil/cowan/tagsoup/ElementType;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v5}, Lorg/ccil/cowan/tagsoup/ElementType;->name()Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v4, v2, v5}, Lorg/ccil/cowan/tagsoup/Schema;->parent(Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    .line 968
    :cond_3
    iget-object v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    #@3e
    invoke-virtual {v4, v2}, Lorg/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;

    #@41
    move-result-object v3

    #@42
    .line 971
    .end local v0    # "bogonMemberOf":I
    .end local v1    # "bogonModel":I
    :cond_4
    new-instance v4, Lorg/ccil/cowan/tagsoup/Element;

    #@44
    iget-boolean v5, p0, Lorg/ccil/cowan/tagsoup/Parser;->defaultAttributes:Z

    #@46
    invoke-direct {v4, v3, v5}, Lorg/ccil/cowan/tagsoup/Element;-><init>(Lorg/ccil/cowan/tagsoup/ElementType;Z)V

    #@49
    iput-object v4, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    #@4b
    .line 956
    return-void

    #@4c
    .line 964
    :cond_5
    const/4 v1, -0x1

    #@4d
    .restart local v1    # "bogonModel":I
    goto :goto_0

    #@4e
    .line 965
    :cond_6
    const v0, 0x7fffffff

    #@51
    .restart local v0    # "bogonMemberOf":I
    goto :goto_1
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .param p1, "systemid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 454
    new-instance v0, Lorg/xml/sax/InputSource;

    #@2
    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {p0, v0}, Lorg/ccil/cowan/tagsoup/Parser;->parse(Lorg/xml/sax/InputSource;)V

    #@8
    .line 453
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 4
    .param p1, "input"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 440
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/Parser;->setup()V

    #@3
    .line 441
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/Parser;->getReader(Lorg/xml/sax/InputSource;)Ljava/io/Reader;

    #@6
    move-result-object v0

    #@7
    .line 442
    .local v0, "r":Ljava/io/Reader;
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    #@9
    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    #@c
    .line 443
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

    #@e
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-interface {v1, v2, v3}, Lorg/ccil/cowan/tagsoup/Scanner;->resetDocumentLocator(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 444
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

    #@1b
    instance-of v1, v1, Lorg/xml/sax/Locator;

    #@1d
    if-eqz v1, :cond_0

    #@1f
    .line 445
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    #@21
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

    #@23
    check-cast v1, Lorg/xml/sax/Locator;

    #@25
    invoke-interface {v2, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    #@28
    .line 447
    :cond_0
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    #@2a
    invoke-virtual {v1}, Lorg/ccil/cowan/tagsoup/Schema;->getURI()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, ""

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    if-nez v1, :cond_1

    #@37
    .line 448
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    #@39
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    #@3b
    invoke-virtual {v2}, Lorg/ccil/cowan/tagsoup/Schema;->getPrefix()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    .line 449
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    #@41
    invoke-virtual {v3}, Lorg/ccil/cowan/tagsoup/Schema;->getURI()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    .line 448
    invoke-interface {v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    #@48
    .line 450
    :cond_1
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

    #@4a
    invoke-interface {v1, v0, p0}, Lorg/ccil/cowan/tagsoup/Scanner;->scan(Ljava/io/Reader;Lorg/ccil/cowan/tagsoup/ScanHandler;)V

    #@4d
    .line 439
    return-void
.end method

.method public pcdata([CII)V
    .locals 4
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 981
    if-nez p3, :cond_0

    #@2
    return-void

    #@3
    .line 982
    :cond_0
    const/4 v0, 0x1

    #@4
    .line 983
    .local v0, "allWhite":Z
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    #@7
    .line 984
    add-int v2, p2, v1

    #@9
    aget-char v2, p1, v2

    #@b
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_1

    #@11
    .line 985
    const/4 v0, 0x0

    #@12
    .line 983
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 988
    :cond_2
    if-eqz v0, :cond_3

    #@17
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@19
    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->thePCDATA:Lorg/ccil/cowan/tagsoup/Element;

    #@1b
    invoke-virtual {v2, v3}, Lorg/ccil/cowan/tagsoup/Element;->canContain(Lorg/ccil/cowan/tagsoup/Element;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_5

    #@21
    .line 994
    :cond_3
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->thePCDATA:Lorg/ccil/cowan/tagsoup/Element;

    #@23
    invoke-direct {p0, v2}, Lorg/ccil/cowan/tagsoup/Parser;->rectify(Lorg/ccil/cowan/tagsoup/Element;)V

    #@26
    .line 995
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    #@28
    invoke-interface {v2, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@2b
    .line 980
    :cond_4
    :goto_1
    return-void

    #@2c
    .line 989
    :cond_5
    iget-boolean v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->ignorableWhitespace:Z

    #@2e
    if-eqz v2, :cond_4

    #@30
    .line 990
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    #@32
    invoke-interface {v2, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    #@35
    goto :goto_1
.end method

.method public pi([CII)V
    .locals 4
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1005
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    #@3
    if-nez v0, :cond_0

    #@5
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->thePITarget:Ljava/lang/String;

    #@7
    if-nez v0, :cond_1

    #@9
    :cond_0
    return-void

    #@a
    .line 1006
    :cond_1
    const-string/jumbo v0, "xml"

    #@d
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->thePITarget:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_2

    #@15
    return-void

    #@16
    .line 1008
    :cond_2
    if-lez p3, :cond_3

    #@18
    add-int/lit8 v0, p3, -0x1

    #@1a
    aget-char v0, p1, v0

    #@1c
    const/16 v1, 0x3f

    #@1e
    if-ne v0, v1, :cond_3

    #@20
    add-int/lit8 p3, p3, -0x1

    #@22
    .line 1009
    :cond_3
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    #@24
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->thePITarget:Ljava/lang/String;

    #@26
    .line 1010
    new-instance v2, Ljava/lang/String;

    #@28
    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    #@2b
    .line 1009
    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    .line 1011
    iput-object v3, p0, Lorg/ccil/cowan/tagsoup/Parser;->thePITarget:Ljava/lang/String;

    #@30
    .line 1004
    return-void
.end method

.method public pitarget([CII)V
    .locals 3
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1000
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    #@2
    if-eqz v0, :cond_0

    #@4
    return-void

    #@5
    .line 1001
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/Parser;->makeName([CII)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    const/16 v1, 0x3a

    #@b
    const/16 v2, 0x5f

    #@d
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->thePITarget:Ljava/lang/String;

    #@13
    .line 999
    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    #@0
    .prologue
    .line 424
    if-nez p1, :cond_0

    #@2
    move-object p1, p0

    #@3
    .end local p1    # "handler":Lorg/xml/sax/ContentHandler;
    :cond_0
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theContentHandler:Lorg/xml/sax/ContentHandler;

    #@5
    .line 423
    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/DTDHandler;

    #@0
    .prologue
    .line 416
    if-nez p1, :cond_0

    #@2
    move-object p1, p0

    #@3
    .end local p1    # "handler":Lorg/xml/sax/DTDHandler;
    :cond_0
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theDTDHandler:Lorg/xml/sax/DTDHandler;

    #@5
    .line 415
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0
    .param p1, "resolver"    # Lorg/xml/sax/EntityResolver;

    #@0
    .prologue
    .line 408
    if-nez p1, :cond_0

    #@2
    move-object p1, p0

    #@3
    .end local p1    # "resolver":Lorg/xml/sax/EntityResolver;
    :cond_0
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theEntityResolver:Lorg/xml/sax/EntityResolver;

    #@5
    .line 407
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ErrorHandler;

    #@0
    .prologue
    .line 432
    if-nez p1, :cond_0

    #@2
    move-object p1, p0

    #@3
    .end local p1    # "handler":Lorg/xml/sax/ErrorHandler;
    :cond_0
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theErrorHandler:Lorg/xml/sax/ErrorHandler;

    #@5
    .line 431
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 328
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Boolean;

    #@8
    .line 329
    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    #@a
    .line 330
    new-instance v1, Lorg/xml/sax/SAXNotRecognizedException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Unknown feature "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 332
    :cond_0
    if-eqz p2, :cond_2

    #@26
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@28
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@2a
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    .line 335
    :goto_0
    const-string/jumbo v1, "http://xml.org/sax/features/namespaces"

    #@30
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_3

    #@36
    iput-boolean p2, p0, Lorg/ccil/cowan/tagsoup/Parser;->namespaces:Z

    #@38
    .line 327
    :cond_1
    :goto_1
    return-void

    #@39
    .line 333
    :cond_2
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Parser;->theFeatures:Ljava/util/HashMap;

    #@3b
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@3d
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    goto :goto_0

    #@41
    .line 336
    :cond_3
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/ignore-bogons"

    #@44
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_4

    #@4a
    iput-boolean p2, p0, Lorg/ccil/cowan/tagsoup/Parser;->ignoreBogons:Z

    #@4c
    goto :goto_1

    #@4d
    .line 337
    :cond_4
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/bogons-empty"

    #@50
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v1

    #@54
    if-eqz v1, :cond_5

    #@56
    iput-boolean p2, p0, Lorg/ccil/cowan/tagsoup/Parser;->bogonsEmpty:Z

    #@58
    goto :goto_1

    #@59
    .line 338
    :cond_5
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/root-bogons"

    #@5c
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v1

    #@60
    if-eqz v1, :cond_6

    #@62
    iput-boolean p2, p0, Lorg/ccil/cowan/tagsoup/Parser;->rootBogons:Z

    #@64
    goto :goto_1

    #@65
    .line 339
    :cond_6
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/default-attributes"

    #@68
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v1

    #@6c
    if-eqz v1, :cond_7

    #@6e
    iput-boolean p2, p0, Lorg/ccil/cowan/tagsoup/Parser;->defaultAttributes:Z

    #@70
    goto :goto_1

    #@71
    .line 340
    :cond_7
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/translate-colons"

    #@74
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v1

    #@78
    if-eqz v1, :cond_8

    #@7a
    iput-boolean p2, p0, Lorg/ccil/cowan/tagsoup/Parser;->translateColons:Z

    #@7c
    goto :goto_1

    #@7d
    .line 341
    :cond_8
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/restart-elements"

    #@80
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@83
    move-result v1

    #@84
    if-eqz v1, :cond_9

    #@86
    iput-boolean p2, p0, Lorg/ccil/cowan/tagsoup/Parser;->restartElements:Z

    #@88
    goto :goto_1

    #@89
    .line 342
    :cond_9
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/ignorable-whitespace"

    #@8c
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8f
    move-result v1

    #@90
    if-eqz v1, :cond_a

    #@92
    iput-boolean p2, p0, Lorg/ccil/cowan/tagsoup/Parser;->ignorableWhitespace:Z

    #@94
    goto :goto_1

    #@95
    .line 343
    :cond_a
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/cdata-elements"

    #@98
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v1

    #@9c
    if-eqz v1, :cond_1

    #@9e
    iput-boolean p2, p0, Lorg/ccil/cowan/tagsoup/Parser;->CDATAElements:Z

    #@a0
    goto :goto_1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 367
    const-string/jumbo v0, "http://xml.org/sax/properties/lexical-handler"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_2

    #@9
    .line 368
    if-nez p2, :cond_0

    #@b
    .line 369
    iput-object p0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@d
    .line 366
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    #@e
    .line 371
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p2, Lorg/xml/sax/ext/LexicalHandler;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 372
    check-cast p2, Lorg/xml/sax/ext/LexicalHandler;

    #@14
    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lorg/ccil/cowan/tagsoup/Parser;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@16
    goto :goto_0

    #@17
    .line 375
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    #@19
    const-string/jumbo v1, "Your lexical handler is not a LexicalHandler"

    #@1c
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 378
    :cond_2
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/properties/scanner"

    #@23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_4

    #@29
    .line 379
    instance-of v0, p2, Lorg/ccil/cowan/tagsoup/Scanner;

    #@2b
    if-eqz v0, :cond_3

    #@2d
    .line 380
    check-cast p2, Lorg/ccil/cowan/tagsoup/Scanner;

    #@2f
    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lorg/ccil/cowan/tagsoup/Parser;->theScanner:Lorg/ccil/cowan/tagsoup/Scanner;

    #@31
    goto :goto_0

    #@32
    .line 383
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    #@34
    const-string/jumbo v1, "Your scanner is not a Scanner"

    #@37
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 386
    :cond_4
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    #@3e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_6

    #@44
    .line 387
    instance-of v0, p2, Lorg/ccil/cowan/tagsoup/Schema;

    #@46
    if-eqz v0, :cond_5

    #@48
    .line 388
    check-cast p2, Lorg/ccil/cowan/tagsoup/Schema;

    #@4a
    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lorg/ccil/cowan/tagsoup/Parser;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    #@4c
    goto :goto_0

    #@4d
    .line 391
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    #@4f
    const-string/jumbo v1, "Your schema is not a Schema"

    #@52
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    #@55
    throw v0

    #@56
    .line 394
    :cond_6
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/properties/auto-detector"

    #@59
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v0

    #@5d
    if-eqz v0, :cond_8

    #@5f
    .line 395
    instance-of v0, p2, Lorg/ccil/cowan/tagsoup/AutoDetector;

    #@61
    if-eqz v0, :cond_7

    #@63
    .line 396
    check-cast p2, Lorg/ccil/cowan/tagsoup/AutoDetector;

    #@65
    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lorg/ccil/cowan/tagsoup/Parser;->theAutoDetector:Lorg/ccil/cowan/tagsoup/AutoDetector;

    #@67
    goto :goto_0

    #@68
    .line 399
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    #@6a
    const-string/jumbo v1, "Your auto-detector is not an AutoDetector"

    #@6d
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    #@70
    throw v0

    #@71
    .line 403
    :cond_8
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    #@73
    new-instance v1, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v2, "Unknown property "

    #@7b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v1

    #@87
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    #@8a
    throw v0
.end method

.method public stagc([CII)V
    .locals 1
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1016
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1017
    :cond_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    #@7
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/Parser;->rectify(Lorg/ccil/cowan/tagsoup/Element;)V

    #@a
    .line 1018
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theStack:Lorg/ccil/cowan/tagsoup/Element;

    #@c
    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/Element;->model()I

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 1020
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/Parser;->etag_basic([CII)V

    #@15
    .line 1014
    :cond_1
    return-void
.end method

.method public stage([CII)V
    .locals 1
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1026
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 1027
    :cond_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Parser;->theNewElement:Lorg/ccil/cowan/tagsoup/Element;

    #@7
    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/Parser;->rectify(Lorg/ccil/cowan/tagsoup/Element;)V

    #@a
    .line 1029
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/Parser;->etag_basic([CII)V

    #@d
    .line 1024
    return-void
.end method

.method public startCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1111
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicid"    # Ljava/lang/String;
    .param p3, "systemid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1112
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1113
    return-void
.end method
