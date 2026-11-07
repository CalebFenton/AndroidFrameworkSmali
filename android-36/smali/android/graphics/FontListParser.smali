.class public Landroid/graphics/FontListParser;
.super Ljava/lang/Object;
.source "FontListParser.java"


# static fields
.field public static final blacklist ATTR_FALLBACK_FOR:Ljava/lang/String; = "fallbackFor"

.field public static final blacklist ATTR_INDEX:Ljava/lang/String; = "index"

.field private static final blacklist ATTR_LANG:Ljava/lang/String; = "lang"

.field private static final blacklist ATTR_NAME:Ljava/lang/String; = "name"

.field public static final blacklist ATTR_POSTSCRIPT_NAME:Ljava/lang/String; = "postScriptName"

.field public static final blacklist ATTR_STYLE:Ljava/lang/String; = "style"

.field public static final blacklist ATTR_STYLEVALUE:Ljava/lang/String; = "stylevalue"

.field public static final blacklist ATTR_SUPPORTED_AXES:Ljava/lang/String; = "supportedAxes"

.field public static final blacklist ATTR_TAG:Ljava/lang/String; = "tag"

.field private static final blacklist ATTR_VARIANT:Ljava/lang/String; = "variant"

.field public static final blacklist ATTR_WEIGHT:Ljava/lang/String; = "weight"

.field private static final greylist-max-o FILENAME_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

.field public static final blacklist STYLE_ITALIC:Ljava/lang/String; = "italic"

.field public static final blacklist STYLE_NORMAL:Ljava/lang/String; = "normal"

.field private static final blacklist TAG:Ljava/lang/String; = "FontListParser"

.field public static final blacklist TAG_AXIS:Ljava/lang/String; = "axis"

.field private static final blacklist TAG_FONT:Ljava/lang/String; = "font"

.field private static final blacklist TAG_ITAL:Ljava/lang/String; = "ital"

.field private static final blacklist TAG_WGHT:Ljava/lang/String; = "wght"

.field private static final blacklist VARIANT_COMPACT:Ljava/lang/String; = "compact"

.field private static final blacklist VARIANT_ELEGANT:Ljava/lang/String; = "elegant"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 359
    nop

    .line 360
    const-string v0, "^[ \\n\\r\\t]+|[ \\n\\r\\t]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/graphics/FontListParser;->FILENAME_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    .line 359
    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist findUpdatedFontFile(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .param p0, "psName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 451
    .local p1, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    if-eqz p1, :cond_f

    .line 452
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 453
    .local v0, "updatedFile":Ljava/io/File;
    if-eqz v0, :cond_f

    .line 454
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 457
    .end local v0    # "updatedFile":Ljava/io/File;
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 249
    .local v0, "next":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method public static greylist-max-r parse(Ljava/io/InputStream;)Landroid/text/FontConfig;
    .registers 9
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 86
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 87
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 88
    new-instance v2, Landroid/graphics/fonts/FontCustomizationParser$Result;

    invoke-direct {v2}, Landroid/graphics/fonts/FontCustomizationParser$Result;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v1, "/system/fonts/"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v7}, Landroid/graphics/FontListParser;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/graphics/fonts/FontCustomizationParser$Result;Ljava/util/Map;JIZ)Landroid/text/FontConfig;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;
    .registers 18
    .param p0, "fontsXmlPath"    # Ljava/lang/String;
    .param p1, "systemFontDir"    # Ljava/lang/String;
    .param p2, "oemCustomizationXmlPath"    # Ljava/lang/String;
    .param p3, "productFontDir"    # Ljava/lang/String;
    .param p5, "lastModifiedDate"    # J
    .param p7, "configVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;JI)",
            "Landroid/text/FontConfig;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 114
    .local p4, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    if-eqz p2, :cond_24

    .line 115
    :try_start_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_1b

    move-object v1, v0

    .line 116
    .local v1, "is":Ljava/io/InputStream;
    :try_start_8
    invoke-static {v1, p3, p4}, Landroid/graphics/fonts/FontCustomizationParser;->parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/fonts/FontCustomizationParser$Result;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_10

    .line 118
    .local v0, "oemCustomization":Landroid/graphics/fonts/FontCustomizationParser$Result;
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_1b

    goto :goto_22

    .line 115
    .end local v0    # "oemCustomization":Landroid/graphics/fonts/FontCustomizationParser$Result;
    :catchall_10
    move-exception v0

    move-object v2, v0

    :try_start_12
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v0

    :try_start_17
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "fontsXmlPath":Ljava/lang/String;
    .end local p1    # "systemFontDir":Ljava/lang/String;
    .end local p2    # "oemCustomizationXmlPath":Ljava/lang/String;
    .end local p3    # "productFontDir":Ljava/lang/String;
    .end local p4    # "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    .end local p5    # "lastModifiedDate":J
    .end local p7    # "configVersion":I
    :goto_1a
    throw v2
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1b} :catch_1b

    .line 118
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local p0    # "fontsXmlPath":Ljava/lang/String;
    .restart local p1    # "systemFontDir":Ljava/lang/String;
    .restart local p2    # "oemCustomizationXmlPath":Ljava/lang/String;
    .restart local p3    # "productFontDir":Ljava/lang/String;
    .restart local p4    # "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    .restart local p5    # "lastModifiedDate":J
    .restart local p7    # "configVersion":I
    :catch_1b
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/graphics/fonts/FontCustomizationParser$Result;

    invoke-direct {v1}, Landroid/graphics/fonts/FontCustomizationParser$Result;-><init>()V

    move-object v0, v1

    .line 121
    .local v0, "oemCustomization":Landroid/graphics/fonts/FontCustomizationParser$Result;
    :goto_22
    move-object v4, v0

    goto :goto_2a

    .line 123
    .end local v0    # "oemCustomization":Landroid/graphics/fonts/FontCustomizationParser$Result;
    :cond_24
    new-instance v0, Landroid/graphics/fonts/FontCustomizationParser$Result;

    invoke-direct {v0}, Landroid/graphics/fonts/FontCustomizationParser$Result;-><init>()V

    move-object v4, v0

    .line 126
    .local v4, "oemCustomization":Landroid/graphics/fonts/FontCustomizationParser$Result;
    :goto_2a
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 127
    .restart local v1    # "is":Ljava/io/InputStream;
    :try_start_30
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 128
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v0, 0x0

    invoke-interface {v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 129
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 130
    const/4 v9, 0x0

    move-object v3, p1

    move-object v5, p4

    move-wide v6, p5

    move/from16 v8, p7

    invoke-static/range {v2 .. v9}, Landroid/graphics/FontListParser;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/graphics/fonts/FontCustomizationParser$Result;Ljava/util/Map;JIZ)Landroid/text/FontConfig;

    move-result-object v0
    :try_end_45
    .catchall {:try_start_30 .. :try_end_45} :catchall_49

    .line 132
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 130
    return-object v0

    .line 126
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_49
    move-exception v0

    move-object v2, v0

    :try_start_4b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_53

    :catchall_4f
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_53
    throw v2
.end method

.method public static greylist-max-o readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/text/FontConfig$Alias;
    .registers 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v2, "to"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, "toName":Ljava/lang/String;
    const-string/jumbo v3, "weight"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, "weightStr":Ljava/lang/String;
    if-nez v1, :cond_1b

    .line 478
    const/16 v3, 0x190

    .local v3, "weight":I
    goto :goto_1f

    .line 480
    .end local v3    # "weight":I
    :cond_1b
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 482
    .restart local v3    # "weight":I
    :goto_1f
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 483
    new-instance v4, Landroid/text/FontConfig$Alias;

    invoke-direct {v4, v0, v2, v3}, Landroid/text/FontConfig$Alias;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v4
.end method

.method private static greylist-max-o readAxis(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/fonts/FontVariationAxis;
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    const-string/jumbo v0, "tag"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "tagStr":Ljava/lang/String;
    const-string/jumbo v2, "stylevalue"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "styleValueStr":Ljava/lang/String;
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 465
    new-instance v2, Landroid/graphics/fonts/FontVariationAxis;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    return-object v2
.end method

.method public static blacklist readFamilies(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/graphics/fonts/FontCustomizationParser$Result;Ljava/util/Map;JIZ)Landroid/text/FontConfig;
    .registers 24
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "fontDir"    # Ljava/lang/String;
    .param p2, "customization"    # Landroid/graphics/fonts/FontCustomizationParser$Result;
    .param p4, "lastModifiedDate"    # J
    .param p6, "configVersion"    # I
    .param p7, "allowNonExistingFile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Landroid/graphics/fonts/FontCustomizationParser$Result;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;JIZ)",
            "Landroid/text/FontConfig;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    .local p3, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v4

    .line 161
    .local v6, "families":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$FontFamily;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v8, "resultNamedFamilies":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$NamedFamilyList;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/fonts/FontCustomizationParser$Result;->getAdditionalAliases()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 164
    .local v4, "aliases":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Alias;>;"
    nop

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/fonts/FontCustomizationParser$Result;->getAdditionalNamedFamilies()Ljava/util/Map;

    move-result-object v13

    .line 167
    .local v13, "oemNamedFamilies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/text/FontConfig$NamedFamilyList;>;"
    const/4 v5, 0x1

    .line 168
    .local v5, "firstFamily":Z
    const-string v7, "familyset"

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-interface {v0, v9, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    move v14, v5

    .line 169
    .end local v5    # "firstFamily":Z
    .local v14, "firstFamily":Z
    :goto_2a
    invoke-static {v0}, Landroid/graphics/FontListParser;->keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 170
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v9, :cond_37

    goto :goto_2a

    .line 171
    :cond_37
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "tag":Ljava/lang/String;
    const-string v7, "family"

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 173
    const-string/jumbo v7, "name"

    invoke-interface {v0, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 174
    .local v7, "name":Ljava/lang/String;
    if-nez v7, :cond_57

    .line 175
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/FontListParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$FontFamily;

    move-result-object v11

    .line 177
    .local v11, "family":Landroid/text/FontConfig$FontFamily;
    if-nez v11, :cond_53

    .line 178
    goto :goto_2a

    .line 180
    :cond_53
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v11    # "family":Landroid/text/FontConfig$FontFamily;
    goto :goto_70

    .line 183
    :cond_57
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/FontListParser;->readNamedFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$NamedFamilyList;

    move-result-object v11

    .line 185
    .local v11, "namedFamilyList":Landroid/text/FontConfig$NamedFamilyList;
    if-nez v11, :cond_5e

    .line 186
    goto :goto_2a

    .line 188
    :cond_5e
    invoke-interface {v13, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_67

    .line 191
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_67
    if-eqz v14, :cond_70

    .line 195
    invoke-virtual {v11}, Landroid/text/FontConfig$NamedFamilyList;->getFamilies()Ljava/util/List;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 198
    .end local v11    # "namedFamilyList":Landroid/text/FontConfig$NamedFamilyList;
    :cond_70
    :goto_70
    const/4 v7, 0x0

    .line 199
    .end local v14    # "firstFamily":Z
    .local v7, "firstFamily":Z
    move v14, v7

    goto :goto_ae

    .end local v7    # "firstFamily":Z
    .restart local v14    # "firstFamily":Z
    :cond_73
    const-string v7, "family-list"

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9b

    .line 200
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/FontListParser;->readNamedFamilyList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$NamedFamilyList;

    move-result-object v7

    .line 202
    .local v7, "namedFamilyList":Landroid/text/FontConfig$NamedFamilyList;
    if-nez v7, :cond_82

    .line 203
    goto :goto_2a

    .line 205
    :cond_82
    invoke-virtual {v7}, Landroid/text/FontConfig$NamedFamilyList;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v13, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8f

    .line 208
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_8f
    if-eqz v14, :cond_98

    .line 212
    invoke-virtual {v7}, Landroid/text/FontConfig$NamedFamilyList;->getFamilies()Ljava/util/List;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    :cond_98
    const/4 v7, 0x0

    .line 215
    .end local v14    # "firstFamily":Z
    .local v7, "firstFamily":Z
    move v14, v7

    goto :goto_ae

    .end local v7    # "firstFamily":Z
    .restart local v14    # "firstFamily":Z
    :cond_9b
    const-string v7, "alias"

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ab

    .line 216
    invoke-static {v0}, Landroid/graphics/FontListParser;->readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/text/FontConfig$Alias;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ae

    .line 218
    :cond_ab
    invoke-static {v0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 220
    .end local v5    # "tag":Ljava/lang/String;
    :goto_ae
    goto/16 :goto_2a

    .line 222
    :cond_b0
    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v15, v5

    .line 226
    .local v15, "namedFamilies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_be
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_d6

    .line 227
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/FontConfig$NamedFamilyList;

    invoke-virtual {v7}, Landroid/text/FontConfig$NamedFamilyList;->getName()Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "name":Ljava/lang/String;
    if-eqz v7, :cond_d3

    .line 229
    invoke-interface {v15, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    .end local v7    # "name":Ljava/lang/String;
    :cond_d3
    add-int/lit8 v5, v5, 0x1

    goto :goto_be

    .line 232
    .end local v5    # "i":I
    :cond_d6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v7, "filtered":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Alias;>;"
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_dc
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_f8

    .line 234
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/text/FontConfig$Alias;

    .line 235
    .local v9, "alias":Landroid/text/FontConfig$Alias;
    invoke-virtual {v9}, Landroid/text/FontConfig$Alias;->getOriginal()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v15, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f5

    .line 236
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v9    # "alias":Landroid/text/FontConfig$Alias;
    :cond_f5
    add-int/lit8 v5, v5, 0x1

    goto :goto_dc

    .line 240
    .end local v5    # "i":I
    :cond_f8
    new-instance v5, Landroid/text/FontConfig;

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/fonts/FontCustomizationParser$Result;->getLocaleFamilyCustomizations()Ljava/util/List;

    move-result-object v9

    move-wide/from16 v10, p4

    move/from16 v12, p6

    invoke-direct/range {v5 .. v12}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JI)V

    .line 240
    return-object v5
.end method

.method public static blacklist readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$FontFamily;
    .registers 12
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "fontDir"    # Ljava/lang/String;
    .param p3, "allowNonExistingFile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;Z)",
            "Landroid/text/FontConfig$FontFamily;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    .local p2, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    const-string v0, ""

    const-string/jumbo v1, "lang"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "lang":Ljava/lang/String;
    const-string/jumbo v1, "variant"

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "variant":Ljava/lang/String;
    const-string/jumbo v3, "ignore"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, "ignore":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v4, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Font;>;"
    :goto_1d
    invoke-static {p0}, Landroid/graphics/FontListParser;->keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 269
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2b

    goto :goto_1d

    .line 270
    :cond_2b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 271
    .local v5, "tag":Ljava/lang/String;
    const-string v6, "font"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 272
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/FontListParser;->readFont(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$Font;

    move-result-object v6

    .line 274
    .local v6, "font":Landroid/text/FontConfig$Font;
    if-eqz v6, :cond_40

    .line 275
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v6    # "font":Landroid/text/FontConfig$Font;
    :cond_40
    goto :goto_44

    .line 278
    :cond_41
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 280
    .end local v5    # "tag":Ljava/lang/String;
    :goto_44
    goto :goto_1d

    .line 281
    :cond_45
    const/4 v5, 0x0

    .line 282
    .local v5, "intVariant":I
    if-eqz v1, :cond_5b

    .line 283
    const-string v6, "compact"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 284
    const/4 v5, 0x1

    goto :goto_5b

    .line 285
    :cond_52
    const-string v6, "elegant"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 286
    const/4 v5, 0x2

    .line 290
    :cond_5b
    :goto_5b
    if-eqz v3, :cond_70

    const-string/jumbo v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6e

    const-string v6, "1"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    :cond_6e
    const/4 v6, 0x1

    goto :goto_71

    :cond_70
    const/4 v6, 0x0

    .line 291
    .local v6, "skip":Z
    :goto_71
    if-nez v6, :cond_84

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7a

    goto :goto_84

    .line 294
    :cond_7a
    new-instance v2, Landroid/text/FontConfig$FontFamily;

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v7

    invoke-direct {v2, v4, v7, v5}, Landroid/text/FontConfig$FontFamily;-><init>(Ljava/util/List;Landroid/os/LocaleList;I)V

    return-object v2

    .line 292
    :cond_84
    :goto_84
    return-object v2
.end method

.method private static blacklist readFont(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$Font;
    .registers 27
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "fontDir"    # Ljava/lang/String;
    .param p3, "allowNonExistingFile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;Z)",
            "Landroid/text/FontConfig$Font;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    .local p2, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "index"

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "indexStr":Ljava/lang/String;
    if-nez v2, :cond_10

    const/4 v5, 0x0

    goto :goto_14

    :cond_10
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :goto_14
    move v11, v5

    .line 371
    .local v11, "index":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v5, "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontVariationAxis;>;"
    const-string/jumbo v6, "weight"

    invoke-interface {v0, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 373
    .local v15, "weightStr":Ljava/lang/String;
    if-nez v15, :cond_26

    const/16 v6, 0x190

    goto :goto_2a

    :cond_26
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 374
    .local v6, "weight":I
    :goto_2a
    const-string/jumbo v7, "style"

    invoke-interface {v0, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "italic"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 375
    .local v7, "isItalic":Z
    const-string v8, "fallbackFor"

    invoke-interface {v0, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 376
    .local v13, "fallbackFor":Ljava/lang/String;
    const-string/jumbo v8, "postScriptName"

    invoke-interface {v0, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 377
    .local v8, "postScriptName":Ljava/lang/String;
    const-string/jumbo v9, "supportedAxes"

    invoke-interface {v0, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 378
    .local v9, "supportedAxes":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .local v10, "filename":Ljava/lang/StringBuilder;
    :goto_51
    invoke-static {v0}, Landroid/graphics/FontListParser;->keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v12

    const/4 v14, 0x4

    if-eqz v12, :cond_85

    .line 380
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    if-ne v12, v14, :cond_65

    .line 381
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_65
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    const/4 v14, 0x2

    if-eq v12, v14, :cond_6d

    goto :goto_51

    .line 384
    :cond_6d
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 385
    .local v12, "tag":Ljava/lang/String;
    const-string v14, "axis"

    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_81

    .line 386
    invoke-static {v0}, Landroid/graphics/FontListParser;->readAxis(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84

    .line 388
    :cond_81
    invoke-static {v0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 390
    .end local v12    # "tag":Ljava/lang/String;
    :goto_84
    goto :goto_51

    .line 391
    :cond_85
    sget-object v12, Landroid/graphics/FontListParser;->FILENAME_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    move-object/from16 v16, v3

    const-string v3, ""

    invoke-virtual {v12, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, "sanitizedName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 394
    .local v12, "varTypeAxes":I
    if-eqz v9, :cond_ce

    .line 395
    move/from16 v17, v14

    const-string v14, ","

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v4, v14

    const/4 v0, 0x0

    :goto_a0
    if-ge v0, v4, :cond_ca

    aget-object v19, v14, v0

    .line 396
    .local v19, "tag":Ljava/lang/String;
    move/from16 v20, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->strip()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "strippedTag":Ljava/lang/String;
    move-object/from16 v21, v2

    .end local v2    # "indexStr":Ljava/lang/String;
    .local v21, "indexStr":Ljava/lang/String;
    const-string/jumbo v2, "wght"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 398
    or-int/lit8 v2, v12, 0x1

    move v12, v2

    .end local v12    # "varTypeAxes":I
    .local v2, "varTypeAxes":I
    goto :goto_c5

    .line 399
    .end local v2    # "varTypeAxes":I
    .restart local v12    # "varTypeAxes":I
    :cond_b9
    const-string/jumbo v2, "ital"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 400
    or-int/lit8 v2, v12, 0x2

    move v12, v2

    .line 395
    .end local v0    # "strippedTag":Ljava/lang/String;
    .end local v19    # "tag":Ljava/lang/String;
    :cond_c5
    :goto_c5
    add-int/lit8 v0, v20, 0x1

    move-object/from16 v2, v21

    goto :goto_a0

    .end local v21    # "indexStr":Ljava/lang/String;
    .local v2, "indexStr":Ljava/lang/String;
    :cond_ca
    move-object/from16 v21, v2

    .end local v2    # "indexStr":Ljava/lang/String;
    .restart local v21    # "indexStr":Ljava/lang/String;
    move v14, v12

    goto :goto_d3

    .line 394
    .end local v21    # "indexStr":Ljava/lang/String;
    .restart local v2    # "indexStr":Ljava/lang/String;
    :cond_ce
    move-object/from16 v21, v2

    move/from16 v17, v14

    .end local v2    # "indexStr":Ljava/lang/String;
    .restart local v21    # "indexStr":Ljava/lang/String;
    move v14, v12

    .line 405
    .end local v12    # "varTypeAxes":I
    .local v14, "varTypeAxes":I
    :goto_d3
    if-nez v8, :cond_e0

    .line 408
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 411
    :cond_e0
    move-object/from16 v0, p2

    invoke-static {v8, v0}, Landroid/graphics/FontListParser;->findUpdatedFontFile(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, "updatedName":Ljava/lang/String;
    if-eqz v2, :cond_fb

    .line 415
    move-object v4, v2

    .line 416
    .local v4, "filePath":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .local v12, "originalPath":Ljava/lang/String;
    goto :goto_10d

    .line 418
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v12    # "originalPath":Ljava/lang/String;
    :cond_fb
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 419
    .restart local v4    # "filePath":Ljava/lang/String;
    const/4 v12, 0x0

    .line 423
    .restart local v12    # "originalPath":Ljava/lang/String;
    :goto_10d
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_116

    .line 424
    const-string v17, ""

    .local v17, "varSettings":Ljava/lang/String;
    goto :goto_123

    .line 426
    .end local v17    # "varSettings":Ljava/lang/String;
    :cond_116
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/graphics/fonts/FontVariationAxis;

    .line 427
    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/fonts/FontVariationAxis;

    .line 426
    invoke-static {v0}, Landroid/graphics/fonts/FontVariationAxis;->toFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Ljava/lang/String;

    move-result-object v17

    .line 430
    .restart local v17    # "varSettings":Ljava/lang/String;
    :goto_123
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 432
    .local v0, "file":Ljava/io/File;
    if-nez p3, :cond_131

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v18

    if-nez v18, :cond_131

    .line 433
    return-object v16

    .line 436
    :cond_131
    new-instance v18, Landroid/text/FontConfig$Font;

    .line 437
    if-nez v12, :cond_13c

    move-object/from16 v22, v16

    move-object/from16 v16, v0

    move-object/from16 v0, v22

    goto :goto_143

    :cond_13c
    move-object/from16 v16, v0

    .end local v0    # "file":Ljava/io/File;
    .local v16, "file":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_143
    move-object/from16 v19, v10

    .end local v10    # "filename":Ljava/lang/StringBuilder;
    .local v19, "filename":Ljava/lang/StringBuilder;
    new-instance v10, Landroid/graphics/fonts/FontStyle;

    .line 441
    invoke-direct {v10, v6, v7}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    move-object/from16 v22, v8

    move-object v8, v0

    move v0, v6

    move-object/from16 v6, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v17

    move-object/from16 v17, v9

    move-object/from16 v9, v22

    move-object/from16 v22, v16

    move/from16 v16, v7

    move-object/from16 v7, v22

    .end local v6    # "weight":I
    .end local v8    # "postScriptName":Ljava/lang/String;
    .local v0, "weight":I
    .local v7, "file":Ljava/io/File;
    .local v9, "postScriptName":Ljava/lang/String;
    .local v12, "varSettings":Ljava/lang/String;
    .local v16, "isItalic":Z
    .local v17, "supportedAxes":Ljava/lang/String;
    .local v18, "originalPath":Ljava/lang/String;
    invoke-direct/range {v6 .. v14}, Landroid/text/FontConfig$Font;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;Ljava/lang/String;I)V

    .line 436
    return-object v6
.end method

.method public static blacklist readNamedFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$NamedFamilyList;
    .registers 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "fontDir"    # Ljava/lang/String;
    .param p3, "allowNonExistingFile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;Z)",
            "Landroid/text/FontConfig$NamedFamilyList;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    .local p2, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v2, "lang"

    invoke-static {v2, p0}, Landroid/graphics/FontListParser;->throwIfAttributeExists(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 313
    const-string/jumbo v2, "variant"

    invoke-static {v2, p0}, Landroid/graphics/FontListParser;->throwIfAttributeExists(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 314
    const-string/jumbo v2, "ignore"

    invoke-static {v2, p0}, Landroid/graphics/FontListParser;->throwIfAttributeExists(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 316
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/FontListParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$FontFamily;

    move-result-object v2

    .line 318
    .local v2, "family":Landroid/text/FontConfig$FontFamily;
    if-nez v2, :cond_21

    .line 319
    return-object v1

    .line 321
    :cond_21
    new-instance v1, Landroid/text/FontConfig$NamedFamilyList;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/text/FontConfig$NamedFamilyList;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v1
.end method

.method public static blacklist readNamedFamilyList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$NamedFamilyList;
    .registers 10
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "fontDir"    # Ljava/lang/String;
    .param p3, "allowNonExistingFile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;Z)",
            "Landroid/text/FontConfig$NamedFamilyList;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    .local p2, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v3, "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$FontFamily;>;"
    :goto_d
    invoke-static {p0}, Landroid/graphics/FontListParser;->keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 334
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1b

    goto :goto_d

    .line 335
    :cond_1b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 336
    .local v4, "tag":Ljava/lang/String;
    const-string v5, "family"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 337
    invoke-static {v1, p0}, Landroid/graphics/FontListParser;->throwIfAttributeExists(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 338
    const-string/jumbo v5, "lang"

    invoke-static {v5, p0}, Landroid/graphics/FontListParser;->throwIfAttributeExists(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 339
    const-string/jumbo v5, "variant"

    invoke-static {v5, p0}, Landroid/graphics/FontListParser;->throwIfAttributeExists(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 340
    const-string/jumbo v5, "ignore"

    invoke-static {v5, p0}, Landroid/graphics/FontListParser;->throwIfAttributeExists(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 342
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/FontListParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$FontFamily;

    move-result-object v5

    .line 344
    .local v5, "family":Landroid/text/FontConfig$FontFamily;
    if-eqz v5, :cond_45

    .line 345
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v5    # "family":Landroid/text/FontConfig$FontFamily;
    :cond_45
    goto :goto_49

    .line 348
    :cond_46
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 350
    .end local v4    # "tag":Ljava/lang/String;
    :goto_49
    goto :goto_d

    .line 352
    :cond_4a
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 353
    return-object v0

    .line 355
    :cond_51
    new-instance v0, Landroid/text/FontConfig$NamedFamilyList;

    invoke-direct {v0, v3, v2}, Landroid/text/FontConfig$NamedFamilyList;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-o skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    const/4 v0, 0x1

    .line 491
    .local v0, "depth":I
    :goto_1
    if-lez v0, :cond_13

    .line 492
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_14

    goto :goto_12

    .line 497
    :pswitch_b
    add-int/lit8 v0, v0, -0x1

    .line 498
    goto :goto_12

    .line 494
    :pswitch_e
    add-int/lit8 v0, v0, 0x1

    .line 495
    goto :goto_12

    .line 500
    :pswitch_11
    return-void

    :goto_12
    goto :goto_1

    .line 503
    :cond_13
    return-void

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method private static blacklist throwIfAttributeExists(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .param p0, "attrName"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 298
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 302
    return-void

    .line 299
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be used in FontFamily inside  family or family-list with name attribute."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
