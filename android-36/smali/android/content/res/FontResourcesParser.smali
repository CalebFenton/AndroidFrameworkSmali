.class public Landroid/content/res/FontResourcesParser;
.super Ljava/lang/Object;
.source "FontResourcesParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/FontResourcesParser$FamilyResourceEntry;,
        Landroid/content/res/FontResourcesParser$ProviderResourceEntry;,
        Landroid/content/res/FontResourcesParser$FontFileResourceEntry;,
        Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "FontResourcesParser"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    nop

    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    const/4 v0, 0x1

    if-eq v1, v0, :cond_d

    goto :goto_1

    .line 150
    :cond_d
    if-ne v1, v2, :cond_14

    .line 153
    invoke-static {p0, p1}, Landroid/content/res/FontResourcesParser;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;

    move-result-object v0

    return-object v0

    .line 151
    :cond_14
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    .registers 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "font-family"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "tag":Ljava/lang/String;
    const/4 v3, 0x0

    .line 161
    .local v3, "result":Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 162
    invoke-static {p0, p1}, Landroid/content/res/FontResourcesParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;

    move-result-object v1

    return-object v1

    .line 164
    :cond_17
    invoke-static {p0}, Landroid/content/res/FontResourcesParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 165
    const-string v2, "FontResourcesParser"

    const-string v4, "Failed to find font-family tag"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-object v1
.end method

.method private static greylist-max-o readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    .registers 18
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    move-object/from16 v0, p1

    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 173
    .local v1, "attrs":Landroid/util/AttributeSet;
    sget-object v2, Lcom/android/internal/R$styleable;->FontFamily:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 174
    .local v2, "array":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, "authority":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, "providerPackage":Ljava/lang/String;
    const/4 v7, 0x1

    move v8, v7

    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 177
    .local v7, "query":Ljava/lang/String;
    const/4 v9, 0x3

    invoke-virtual {v2, v9, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 178
    .local v10, "certsId":I
    const/4 v11, 0x4

    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 180
    .local v11, "systemFontFamilyName":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 181
    if-eqz v5, :cond_89

    if-eqz v6, :cond_89

    if-eqz v7, :cond_89

    .line 182
    :goto_2f
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-eq v4, v9, :cond_39

    .line 183
    invoke-static/range {p0 .. p0}, Landroid/content/res/FontResourcesParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2f

    .line 185
    :cond_39
    const/4 v4, 0x0

    .line 186
    .local v4, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v10, :cond_80

    .line 187
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 188
    .local v9, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->length()I

    move-result v12

    if-lez v12, :cond_7b

    .line 189
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .end local v4    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .local v12, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v9, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_52

    goto :goto_53

    :cond_52
    move v8, v3

    .line 191
    .local v8, "isArrayOfArrays":Z
    :goto_53
    if-eqz v8, :cond_6f

    .line 192
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_56
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->length()I

    move-result v13

    if-ge v4, v13, :cond_6e

    .line 193
    invoke-virtual {v9, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 194
    .local v13, "certId":I
    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 195
    .local v14, "certsArray":[Ljava/lang/String;
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 196
    .local v15, "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .end local v13    # "certId":I
    .end local v14    # "certsArray":[Ljava/lang/String;
    .end local v15    # "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_56

    .end local v4    # "i":I
    :cond_6e
    goto :goto_7a

    .line 199
    :cond_6f
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "certsArray":[Ljava/lang/String;
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 201
    .local v4, "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .end local v3    # "certsArray":[Ljava/lang/String;
    .end local v4    # "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "isArrayOfArrays":Z
    :goto_7a
    move-object v4, v12

    .end local v12    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .local v4, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_7b
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    move-object v8, v4

    goto :goto_81

    .line 186
    .end local v9    # "typedArray":Landroid/content/res/TypedArray;
    :cond_80
    move-object v8, v4

    .line 206
    .end local v4    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .local v8, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_81
    new-instance v4, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    move-object v9, v11

    .end local v11    # "systemFontFamilyName":Ljava/lang/String;
    .local v9, "systemFontFamilyName":Ljava/lang/String;
    invoke-direct/range {v4 .. v9}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    move-object v3, v9

    .end local v9    # "systemFontFamilyName":Ljava/lang/String;
    .local v3, "systemFontFamilyName":Ljava/lang/String;
    return-object v4

    .line 181
    .end local v3    # "systemFontFamilyName":Ljava/lang/String;
    .end local v8    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v11    # "systemFontFamilyName":Ljava/lang/String;
    :cond_89
    move-object v3, v11

    .line 214
    .end local v11    # "systemFontFamilyName":Ljava/lang/String;
    .restart local v3    # "systemFontFamilyName":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v8, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/FontResourcesParser$FontFileResourceEntry;>;"
    :goto_8f
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    if-eq v11, v9, :cond_b6

    .line 216
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    if-eq v11, v4, :cond_9c

    goto :goto_8f

    .line 217
    :cond_9c
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 218
    .local v11, "tag":Ljava/lang/String;
    const-string v12, "font"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b2

    .line 219
    invoke-static/range {p0 .. p1}, Landroid/content/res/FontResourcesParser;->readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    move-result-object v12

    .line 220
    .local v12, "entry":Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
    if-eqz v12, :cond_b1

    .line 221
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    .end local v12    # "entry":Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
    :cond_b1
    goto :goto_b5

    .line 224
    :cond_b2
    invoke-static/range {p0 .. p0}, Landroid/content/res/FontResourcesParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 226
    .end local v11    # "tag":Ljava/lang/String;
    :goto_b5
    goto :goto_8f

    .line 227
    :cond_b6
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_be

    .line 228
    const/4 v4, 0x0

    return-object v4

    .line 230
    :cond_be
    new-instance v4, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;

    .line 231
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    .line 230
    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    invoke-direct {v4, v9}, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;-><init>([Landroid/content/res/FontResourcesParser$FontFileResourceEntry;)V

    return-object v4
.end method

.method private static greylist-max-o readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
    .registers 12
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 237
    .local v0, "attrs":Landroid/util/AttributeSet;
    sget-object v1, Lcom/android/internal/R$styleable;->FontFamilyFont:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 238
    .local v1, "array":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 240
    .local v6, "weight":I
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 242
    .local v7, "italic":I
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 244
    .local v8, "variationSettings":Ljava/lang/String;
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 245
    .local v9, "ttcIndex":I
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 246
    .local v5, "filename":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 247
    :goto_27
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v2, :cond_31

    .line 248
    invoke-static {p0}, Landroid/content/res/FontResourcesParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_27

    .line 250
    :cond_31
    if-nez v5, :cond_35

    .line 251
    const/4 v2, 0x0

    return-object v2

    .line 253
    :cond_35
    new-instance v4, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    invoke-direct/range {v4 .. v9}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    return-object v4
.end method

.method private static greylist-max-o skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    const/4 v0, 0x1

    .line 258
    .local v0, "depth":I
    :goto_1
    if-lez v0, :cond_12

    .line 259
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_14

    goto :goto_11

    .line 264
    :pswitch_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 261
    :pswitch_e
    add-int/lit8 v0, v0, 0x1

    .line 262
    nop

    .line 265
    :goto_11
    goto :goto_1

    .line 268
    :cond_12
    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method
