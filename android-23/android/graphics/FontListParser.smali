.class public Landroid/graphics/FontListParser;
.super Ljava/lang/Object;
.source "FontListParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/FontListParser$Config;,
        Landroid/graphics/FontListParser$Font;,
        Landroid/graphics/FontListParser$Alias;,
        Landroid/graphics/FontListParser$Family;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
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
    .line 79
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@3
    move-result-object v0

    #@4
    .line 80
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    #@5
    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@8
    .line 81
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@b
    .line 82
    invoke-static {v0}, Landroid/graphics/FontListParser;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v1

    #@f
    .line 84
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    #@12
    .line 82
    return-object v1

    #@13
    .line 83
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v1

    #@14
    .line 84
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    #@17
    .line 83
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
    .line 130
    new-instance v0, Landroid/graphics/FontListParser$Alias;

    #@3
    invoke-direct {v0}, Landroid/graphics/FontListParser$Alias;-><init>()V

    #@6
    .line 131
    .local v0, "alias":Landroid/graphics/FontListParser$Alias;
    const-string/jumbo v2, "name"

    #@9
    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    iput-object v2, v0, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    #@f
    .line 132
    const-string/jumbo v2, "to"

    #@12
    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    iput-object v2, v0, Landroid/graphics/FontListParser$Alias;->toName:Ljava/lang/String;

    #@18
    .line 133
    const-string/jumbo v2, "weight"

    #@1b
    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 134
    .local v1, "weightStr":Ljava/lang/String;
    if-nez v1, :cond_0

    #@21
    .line 135
    const/16 v2, 0x190

    #@23
    iput v2, v0, Landroid/graphics/FontListParser$Alias;->weight:I

    #@25
    .line 139
    :goto_0
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    #@28
    .line 140
    return-object v0

    #@29
    .line 137
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2c
    move-result v2

    #@2d
    iput v2, v0, Landroid/graphics/FontListParser$Alias;->weight:I

    #@2f
    goto :goto_0
.end method

.method private static readFamilies(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Config;
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
    const/4 v3, 0x2

    #@1
    .line 90
    new-instance v0, Landroid/graphics/FontListParser$Config;

    #@3
    invoke-direct {v0}, Landroid/graphics/FontListParser$Config;-><init>()V

    #@6
    .line 91
    .local v0, "config":Landroid/graphics/FontListParser$Config;
    const-string/jumbo v1, "familyset"

    #@9
    const/4 v2, 0x0

    #@a
    invoke-interface {p0, v3, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@d
    .line 92
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@10
    move-result v1

    #@11
    const/4 v2, 0x3

    #@12
    if-eq v1, v2, :cond_3

    #@14
    .line 93
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@17
    move-result v1

    #@18
    if-ne v1, v3, :cond_0

    #@1a
    .line 94
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, "family"

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_1

    #@27
    .line 95
    iget-object v1, v0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    #@29
    invoke-static {p0}, Landroid/graphics/FontListParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Family;

    #@2c
    move-result-object v2

    #@2d
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@30
    goto :goto_0

    #@31
    .line 96
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    const-string/jumbo v2, "alias"

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v1

    #@3c
    if-eqz v1, :cond_2

    #@3e
    .line 97
    iget-object v1, v0, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    #@40
    invoke-static {p0}, Landroid/graphics/FontListParser;->readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Alias;

    #@43
    move-result-object v2

    #@44
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@47
    goto :goto_0

    #@48
    .line 99
    :cond_2
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    #@4b
    goto :goto_0

    #@4c
    .line 102
    :cond_3
    return-object v0
.end method

.method private static readFamily(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Family;
    .locals 13
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 107
    const-string/jumbo v10, "name"

    #@4
    invoke-interface {p0, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v5

    #@8
    .line 108
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v10, "lang"

    #@b
    invoke-interface {p0, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v4

    #@f
    .line 109
    .local v4, "lang":Ljava/lang/String;
    const-string/jumbo v10, "variant"

    #@12
    invoke-interface {p0, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v7

    #@16
    .line 110
    .local v7, "variant":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    #@18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1b
    .line 111
    .local v1, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Font;>;"
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1e
    move-result v10

    #@1f
    const/4 v11, 0x3

    #@20
    if-eq v10, v11, :cond_3

    #@22
    .line 112
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@25
    move-result v10

    #@26
    const/4 v11, 0x2

    #@27
    if-ne v10, v11, :cond_0

    #@29
    .line 113
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    .line 114
    .local v6, "tag":Ljava/lang/String;
    const-string/jumbo v10, "font"

    #@30
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v10

    #@34
    if-eqz v10, :cond_2

    #@36
    .line 115
    const-string/jumbo v10, "weight"

    #@39
    invoke-interface {p0, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v9

    #@3d
    .line 116
    .local v9, "weightStr":Ljava/lang/String;
    if-nez v9, :cond_1

    #@3f
    const/16 v8, 0x190

    #@41
    .line 117
    .local v8, "weight":I
    :goto_1
    const-string/jumbo v10, "italic"

    #@44
    const-string/jumbo v11, "style"

    #@47
    invoke-interface {p0, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4a
    move-result-object v11

    #@4b
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v3

    #@4f
    .line 118
    .local v3, "isItalic":Z
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    .line 119
    .local v0, "filename":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v11, "/system/fonts/"

    #@5b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v10

    #@5f
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v10

    #@63
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    .line 120
    .local v2, "fullFilename":Ljava/lang/String;
    new-instance v10, Landroid/graphics/FontListParser$Font;

    #@69
    invoke-direct {v10, v2, v8, v3}, Landroid/graphics/FontListParser$Font;-><init>(Ljava/lang/String;IZ)V

    #@6c
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6f
    goto :goto_0

    #@70
    .line 116
    .end local v0    # "filename":Ljava/lang/String;
    .end local v2    # "fullFilename":Ljava/lang/String;
    .end local v3    # "isItalic":Z
    .end local v8    # "weight":I
    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@73
    move-result v8

    #@74
    .restart local v8    # "weight":I
    goto :goto_1

    #@75
    .line 122
    .end local v8    # "weight":I
    .end local v9    # "weightStr":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    #@78
    goto :goto_0

    #@79
    .line 125
    .end local v6    # "tag":Ljava/lang/String;
    :cond_3
    new-instance v10, Landroid/graphics/FontListParser$Family;

    #@7b
    invoke-direct {v10, v5, v1, v4, v7}, Landroid/graphics/FontListParser$Family;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    #@7e
    return-object v10
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
    .line 144
    const/4 v0, 0x1

    #@1
    .line 145
    .local v0, "depth":I
    :goto_0
    if-lez v0, :cond_0

    #@3
    .line 146
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@6
    move-result v1

    #@7
    packed-switch v1, :pswitch_data_0

    #@a
    goto :goto_0

    #@b
    .line 148
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    #@d
    .line 149
    goto :goto_0

    #@e
    .line 151
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    #@10
    .line 152
    goto :goto_0

    #@11
    .line 143
    :cond_0
    return-void

    #@12
    .line 146
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
