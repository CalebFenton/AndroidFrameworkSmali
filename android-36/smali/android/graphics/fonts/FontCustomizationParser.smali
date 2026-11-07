.class public Landroid/graphics/fonts/FontCustomizationParser;
.super Ljava/lang/Object;
.source "FontCustomizationParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/fonts/FontCustomizationParser$Result;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FontCustomizationParser"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/fonts/FontCustomizationParser$Result;
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "fontDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)",
            "Landroid/graphics/fonts/FontCustomizationParser$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    .local p2, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 98
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 99
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 100
    invoke-static {v0, p1, p2}, Landroid/graphics/fonts/FontCustomizationParser;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/fonts/FontCustomizationParser$Result;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist readFamilies(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/fonts/FontCustomizationParser$Result;
    .registers 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "fontDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)",
            "Landroid/graphics/fonts/FontCustomizationParser$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    .local p2, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v0, "families":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$NamedFamilyList;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v1, "aliases":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Alias;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v2, "outLocaleFamilies":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Customization$LocaleFallback;>;"
    const/4 v3, 0x0

    const-string v4, "fonts-modification"

    const/4 v5, 0x2

    invoke-interface {p0, v5, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_16
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_54

    .line 135
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v5, :cond_24

    goto :goto_16

    .line 136
    :cond_24
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "tag":Ljava/lang/String;
    const-string v4, "family"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 138
    invoke-static {p0, p1, v0, v2, p2}, Landroid/graphics/fonts/FontCustomizationParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_53

    .line 139
    :cond_34
    const-string v4, "family-list"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 140
    invoke-static {p0, p1, v0, p2}, Landroid/graphics/fonts/FontCustomizationParser;->readFamilyList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_53

    .line 141
    :cond_40
    const-string v4, "alias"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 142
    invoke-static {p0}, Landroid/graphics/FontListParser;->readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/text/FontConfig$Alias;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 144
    :cond_50
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 146
    .end local v3    # "tag":Ljava/lang/String;
    :goto_53
    goto :goto_16

    .line 147
    :cond_54
    invoke-static {v0, v2, v1}, Landroid/graphics/fonts/FontCustomizationParser;->validateAndTransformToResult(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Landroid/graphics/fonts/FontCustomizationParser$Result;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .registers 12
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "fontDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$NamedFamilyList;",
            ">;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Customization$LocaleFallback;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$NamedFamilyList;>;"
    .local p3, "outCustomization":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Customization$LocaleFallback;>;"
    .local p4, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    const-string v0, "customizationType"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "customizationType":Ljava/lang/String;
    if-eqz v0, :cond_97

    .line 161
    const-string/jumbo v2, "new-named-family"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1d

    .line 162
    invoke-static {p0, p1, p4, v3}, Landroid/graphics/FontListParser;->readNamedFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$NamedFamilyList;

    move-result-object v1

    .line 164
    .local v1, "fontFamily":Landroid/text/FontConfig$NamedFamilyList;
    if-eqz v1, :cond_1c

    .line 165
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .end local v1    # "fontFamily":Landroid/text/FontConfig$NamedFamilyList;
    :cond_1c
    goto :goto_64

    :cond_1d
    const-string/jumbo v2, "new-locale-family"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 168
    const-string/jumbo v2, "lang"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "lang":Ljava/lang/String;
    const-string/jumbo v4, "operation"

    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "op":Ljava/lang/String;
    const-string v4, "append"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 172
    const/4 v4, 0x1

    .local v4, "intOp":I
    goto :goto_53

    .line 173
    .end local v4    # "intOp":I
    :cond_3e
    const-string/jumbo v4, "prepend"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 174
    const/4 v4, 0x0

    .restart local v4    # "intOp":I
    goto :goto_53

    .line 175
    .end local v4    # "intOp":I
    :cond_49
    const-string/jumbo v4, "replace"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 176
    const/4 v4, 0x2

    .line 181
    .restart local v4    # "intOp":I
    :goto_53
    invoke-static {p0, p1, p4, v3}, Landroid/graphics/FontListParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$FontFamily;

    move-result-object v3

    .line 186
    .local v3, "family":Landroid/text/FontConfig$FontFamily;
    new-instance v5, Landroid/text/FontConfig$Customization$LocaleFallback;

    .line 187
    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v5, v6, v4, v3}, Landroid/text/FontConfig$Customization$LocaleFallback;-><init>(Ljava/util/Locale;ILandroid/text/FontConfig$FontFamily;)V

    .line 186
    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v1    # "op":Ljava/lang/String;
    .end local v2    # "lang":Ljava/lang/String;
    .end local v3    # "family":Landroid/text/FontConfig$FontFamily;
    .end local v4    # "intOp":I
    nop

    .line 191
    :goto_64
    return-void

    .line 178
    .restart local v1    # "op":Ljava/lang/String;
    .restart local v2    # "lang":Ljava/lang/String;
    :cond_65
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown operation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 189
    .end local v1    # "op":Ljava/lang/String;
    .end local v2    # "lang":Ljava/lang/String;
    :cond_7e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown customizationType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_97
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "customizationType must be specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist readFamilyList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .registers 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "fontDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$NamedFamilyList;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$NamedFamilyList;>;"
    .local p3, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    const/4 v0, 0x0

    const-string v1, "customizationType"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "customizationType":Ljava/lang/String;
    if-eqz v0, :cond_37

    .line 203
    const-string/jumbo v1, "new-named-family"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 204
    const/4 v1, 0x0

    invoke-static {p0, p1, p3, v1}, Landroid/graphics/FontListParser;->readNamedFamilyList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$NamedFamilyList;

    move-result-object v1

    .line 206
    .local v1, "fontFamily":Landroid/text/FontConfig$NamedFamilyList;
    if-eqz v1, :cond_1c

    .line 207
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    .end local v1    # "fontFamily":Landroid/text/FontConfig$NamedFamilyList;
    :cond_1c
    nop

    .line 212
    return-void

    .line 210
    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown customizationType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "customizationType must be specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist validateAndTransformToResult(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Landroid/graphics/fonts/FontCustomizationParser$Result;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$NamedFamilyList;",
            ">;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Customization$LocaleFallback;",
            ">;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Alias;",
            ">;)",
            "Landroid/graphics/fonts/FontCustomizationParser$Result;"
        }
    .end annotation

    .line 107
    .local p0, "families":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$NamedFamilyList;>;"
    .local p1, "outLocaleFamilies":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Customization$LocaleFallback;>;"
    .local p2, "aliases":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Alias;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 108
    .local v0, "namedFamily":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/text/FontConfig$NamedFamilyList;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 109
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/FontConfig$NamedFamilyList;

    .line 110
    .local v2, "family":Landroid/text/FontConfig$NamedFamilyList;
    invoke-virtual {v2}, Landroid/text/FontConfig$NamedFamilyList;->getName()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_2a

    .line 112
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_21

    .line 108
    .end local v2    # "family":Landroid/text/FontConfig$NamedFamilyList;
    .end local v3    # "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 113
    .restart local v2    # "family":Landroid/text/FontConfig$NamedFamilyList;
    .restart local v3    # "name":Ljava/lang/String;
    :cond_21
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "new-named-family requires unique name attribute"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 117
    :cond_2a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "new-named-family requires name attribute or new-default-fallback-familyrequires fallackTarget attribute"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 122
    .end local v1    # "i":I
    .end local v2    # "family":Landroid/text/FontConfig$NamedFamilyList;
    .end local v3    # "name":Ljava/lang/String;
    :cond_33
    new-instance v1, Landroid/graphics/fonts/FontCustomizationParser$Result;

    invoke-direct {v1, v0, p1, p2}, Landroid/graphics/fonts/FontCustomizationParser$Result;-><init>(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method
