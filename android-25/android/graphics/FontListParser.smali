.class public Landroid/graphics/FontListParser;
.super Ljava/lang/Object;
.source "FontListParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/FontListParser$Alias;,
        Landroid/graphics/FontListParser$Axis;,
        Landroid/graphics/FontListParser$Config;,
        Landroid/graphics/FontListParser$Family;,
        Landroid/graphics/FontListParser$Font;
    }
.end annotation


# static fields
.field private static final FILENAME_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

.field private static final STYLE_VALUE_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 140
    const-string/jumbo v0, "^[ \\n\\r\\t]+|[ \\n\\r\\t]+$"

    #@3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    .line 139
    sput-object v0, Landroid/graphics/FontListParser;->FILENAME_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    #@9
    .line 169
    const-string/jumbo v0, "[\\x00-\\xFF]{4}"

    #@c
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@f
    move-result-object v0

    #@10
    sput-object v0, Landroid/graphics/FontListParser;->TAG_PATTERN:Ljava/util/regex/Pattern;

    #@12
    .line 175
    const-string/jumbo v0, "-?(([0-9]+(\\.[0-9]+)?)|(\\.[0-9]+))"

    #@15
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@18
    move-result-object v0

    #@19
    .line 174
    sput-object v0, Landroid/graphics/FontListParser;->STYLE_VALUE_PATTERN:Ljava/util/regex/Pattern;

    #@1b
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Landroid/graphics/FontListParser$Config;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@3
    move-result-object v0

    #@4
    .line 94
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    #@5
    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@8
    .line 95
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@b
    .line 96
    invoke-static {v0}, Landroid/graphics/FontListParser;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v1

    #@f
    .line 98
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    #@12
    .line 96
    return-object v1

    #@13
    .line 97
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v1

    #@14
    .line 98
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    #@17
    .line 97
    throw v1
.end method

.method private static readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Alias;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 204
    new-instance v0, Landroid/graphics/FontListParser$Alias;

    #@3
    invoke-direct {v0}, Landroid/graphics/FontListParser$Alias;-><init>()V

    #@6
    .line 205
    .local v0, "alias":Landroid/graphics/FontListParser$Alias;
    const-string/jumbo v2, "name"

    #@9
    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    iput-object v2, v0, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    #@f
    .line 206
    const-string/jumbo v2, "to"

    #@12
    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    iput-object v2, v0, Landroid/graphics/FontListParser$Alias;->toName:Ljava/lang/String;

    #@18
    .line 207
    const-string/jumbo v2, "weight"

    #@1b
    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 208
    .local v1, "weightStr":Ljava/lang/String;
    if-nez v1, :cond_0

    #@21
    .line 209
    const/16 v2, 0x190

    #@23
    iput v2, v0, Landroid/graphics/FontListParser$Alias;->weight:I

    #@25
    .line 213
    :goto_0
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    #@28
    .line 214
    return-object v0

    #@29
    .line 211
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2c
    move-result v2

    #@2d
    iput v2, v0, Landroid/graphics/FontListParser$Alias;->weight:I

    #@2f
    goto :goto_0
.end method

.method private static readAxis(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Axis;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 179
    const/4 v2, 0x0

    #@2
    .line 180
    .local v2, "tag":I
    const-string/jumbo v4, "tag"

    #@5
    invoke-interface {p0, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    .line 181
    .local v3, "tagStr":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@b
    sget-object v4, Landroid/graphics/FontListParser;->TAG_PATTERN:Ljava/util/regex/Pattern;

    #@d
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_0

    #@17
    .line 182
    const/4 v4, 0x0

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v4

    #@1c
    shl-int/lit8 v4, v4, 0x18

    #@1e
    .line 183
    const/4 v5, 0x1

    #@1f
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    #@22
    move-result v5

    #@23
    shl-int/lit8 v5, v5, 0x10

    #@25
    .line 182
    add-int/2addr v4, v5

    #@26
    .line 184
    const/4 v5, 0x2

    #@27
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v5

    #@2b
    shl-int/lit8 v5, v5, 0x8

    #@2d
    .line 182
    add-int/2addr v4, v5

    #@2e
    .line 185
    const/4 v5, 0x3

    #@2f
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    #@32
    move-result v5

    #@33
    .line 182
    add-int v2, v4, v5

    #@35
    .line 190
    const/4 v0, 0x0

    #@36
    .line 191
    .local v0, "styleValue":F
    const-string/jumbo v4, "stylevalue"

    #@39
    invoke-interface {p0, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    .line 192
    .local v1, "styleValueStr":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@3f
    sget-object v4, Landroid/graphics/FontListParser;->STYLE_VALUE_PATTERN:Ljava/util/regex/Pattern;

    #@41
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    #@48
    move-result v4

    #@49
    if-eqz v4, :cond_1

    #@4b
    .line 193
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@4e
    move-result v0

    #@4f
    .line 198
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    #@52
    .line 199
    new-instance v4, Landroid/graphics/FontListParser$Axis;

    #@54
    invoke-direct {v4, v2, v0}, Landroid/graphics/FontListParser$Axis;-><init>(IF)V

    #@57
    return-object v4

    #@58
    .line 187
    .end local v0    # "styleValue":F
    .end local v1    # "styleValueStr":Ljava/lang/String;
    :cond_0
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    #@5a
    const-string/jumbo v5, "Invalid tag attribute value."

    #@5d
    invoke-direct {v4, v5, p0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@60
    throw v4

    #@61
    .line 195
    .restart local v0    # "styleValue":F
    .restart local v1    # "styleValueStr":Ljava/lang/String;
    :cond_1
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    #@63
    const-string/jumbo v5, "Invalid styleValue attribute value."

    #@66
    invoke-direct {v4, v5, p0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@69
    throw v4
.end method

.method private static readFamilies(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Config;
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    .line 104
    new-instance v0, Landroid/graphics/FontListParser$Config;

    #@3
    invoke-direct {v0}, Landroid/graphics/FontListParser$Config;-><init>()V

    #@6
    .line 105
    .local v0, "config":Landroid/graphics/FontListParser$Config;
    const-string/jumbo v2, "familyset"

    #@9
    const/4 v3, 0x0

    #@a
    invoke-interface {p0, v4, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@d
    .line 106
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@10
    move-result v2

    #@11
    const/4 v3, 0x3

    #@12
    if-eq v2, v3, :cond_3

    #@14
    .line 107
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@17
    move-result v2

    #@18
    if-ne v2, v4, :cond_0

    #@1a
    .line 108
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 109
    .local v1, "tag":Ljava/lang/String;
    const-string/jumbo v2, "family"

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_1

    #@27
    .line 110
    iget-object v2, v0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    #@29
    invoke-static {p0}, Landroid/graphics/FontListParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Family;

    #@2c
    move-result-object v3

    #@2d
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@30
    goto :goto_0

    #@31
    .line 111
    :cond_1
    const-string/jumbo v2, "alias"

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_2

    #@3a
    .line 112
    iget-object v2, v0, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    #@3c
    invoke-static {p0}, Landroid/graphics/FontListParser;->readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Alias;

    #@3f
    move-result-object v3

    #@40
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@43
    goto :goto_0

    #@44
    .line 114
    :cond_2
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    #@47
    goto :goto_0

    #@48
    .line 117
    .end local v1    # "tag":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method private static readFamily(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Family;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 122
    const-string/jumbo v5, "name"

    #@4
    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 123
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v5, "lang"

    #@b
    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 124
    .local v1, "lang":Ljava/lang/String;
    const-string/jumbo v5, "variant"

    #@12
    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    .line 125
    .local v4, "variant":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    .line 126
    .local v0, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Font;>;"
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1e
    move-result v5

    #@1f
    const/4 v6, 0x3

    #@20
    if-eq v5, v6, :cond_2

    #@22
    .line 127
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@25
    move-result v5

    #@26
    const/4 v6, 0x2

    #@27
    if-ne v5, v6, :cond_0

    #@29
    .line 128
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    .line 129
    .local v3, "tag":Ljava/lang/String;
    const-string/jumbo v5, "font"

    #@30
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v5

    #@34
    if-eqz v5, :cond_1

    #@36
    .line 130
    invoke-static {p0}, Landroid/graphics/FontListParser;->readFont(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Font;

    #@39
    move-result-object v5

    #@3a
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3d
    goto :goto_0

    #@3e
    .line 132
    :cond_1
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    #@41
    goto :goto_0

    #@42
    .line 135
    .end local v3    # "tag":Ljava/lang/String;
    :cond_2
    new-instance v5, Landroid/graphics/FontListParser$Family;

    #@44
    invoke-direct {v5, v2, v0, v1, v4}, Landroid/graphics/FontListParser$Family;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    #@47
    return-object v5
.end method

.method private static readFont(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Font;
    .locals 12
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 144
    const-string/jumbo v0, "index"

    #@4
    invoke-interface {p0, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v7

    #@8
    .line 145
    .local v7, "indexStr":Ljava/lang/String;
    if-nez v7, :cond_2

    #@a
    const/4 v2, 0x0

    #@b
    .line 146
    .local v2, "index":I
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    #@d
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 147
    .local v3, "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Axis;>;"
    const-string/jumbo v0, "weight"

    #@13
    invoke-interface {p0, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v9

    #@17
    .line 148
    .local v9, "weightStr":Ljava/lang/String;
    if-nez v9, :cond_3

    #@19
    const/16 v4, 0x190

    #@1b
    .line 149
    .local v4, "weight":I
    :goto_1
    const-string/jumbo v0, "italic"

    #@1e
    const-string/jumbo v10, "style"

    #@21
    invoke-interface {p0, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v10

    #@25
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v5

    #@29
    .line 150
    .local v5, "isItalic":Z
    new-instance v6, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    .line 151
    .local v6, "filename":Ljava/lang/StringBuilder;
    :cond_0
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@31
    move-result v0

    #@32
    const/4 v10, 0x3

    #@33
    if-eq v0, v10, :cond_5

    #@35
    .line 152
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@38
    move-result v0

    #@39
    const/4 v10, 0x4

    #@3a
    if-ne v0, v10, :cond_1

    #@3c
    .line 153
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 155
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@46
    move-result v0

    #@47
    const/4 v10, 0x2

    #@48
    if-ne v0, v10, :cond_0

    #@4a
    .line 156
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@4d
    move-result-object v8

    #@4e
    .line 157
    .local v8, "tag":Ljava/lang/String;
    const-string/jumbo v0, "axis"

    #@51
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v0

    #@55
    if-eqz v0, :cond_4

    #@57
    .line 158
    invoke-static {p0}, Landroid/graphics/FontListParser;->readAxis(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Axis;

    #@5a
    move-result-object v0

    #@5b
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5e
    goto :goto_2

    #@5f
    .line 145
    .end local v2    # "index":I
    .end local v3    # "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Axis;>;"
    .end local v4    # "weight":I
    .end local v5    # "isItalic":Z
    .end local v6    # "filename":Ljava/lang/StringBuilder;
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "weightStr":Ljava/lang/String;
    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@62
    move-result v2

    #@63
    .restart local v2    # "index":I
    goto :goto_0

    #@64
    .line 148
    .restart local v3    # "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Axis;>;"
    .restart local v9    # "weightStr":Ljava/lang/String;
    :cond_3
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@67
    move-result v4

    #@68
    .restart local v4    # "weight":I
    goto :goto_1

    #@69
    .line 160
    .restart local v5    # "isItalic":Z
    .restart local v6    # "filename":Ljava/lang/StringBuilder;
    .restart local v8    # "tag":Ljava/lang/String;
    :cond_4
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    #@6c
    goto :goto_2

    #@6d
    .line 163
    .end local v8    # "tag":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v10, "/system/fonts/"

    #@75
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v0

    #@79
    .line 164
    sget-object v10, Landroid/graphics/FontListParser;->FILENAME_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    #@7b
    invoke-virtual {v10, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@7e
    move-result-object v10

    #@7f
    const-string/jumbo v11, ""

    #@82
    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    #@85
    move-result-object v10

    #@86
    .line 163
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v0

    #@8a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v1

    #@8e
    .line 165
    .local v1, "fullFilename":Ljava/lang/String;
    new-instance v0, Landroid/graphics/FontListParser$Font;

    #@90
    invoke-direct/range {v0 .. v5}, Landroid/graphics/FontListParser$Font;-><init>(Ljava/lang/String;ILjava/util/List;IZ)V

    #@93
    return-object v0
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 218
    const/4 v0, 0x1

    #@1
    .line 219
    .local v0, "depth":I
    :goto_0
    if-lez v0, :cond_0

    #@3
    .line 220
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@6
    move-result v1

    #@7
    packed-switch v1, :pswitch_data_0

    #@a
    goto :goto_0

    #@b
    .line 222
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    #@d
    .line 223
    goto :goto_0

    #@e
    .line 225
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    #@10
    .line 226
    goto :goto_0

    #@11
    .line 217
    :cond_0
    return-void

    #@12
    .line 220
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
