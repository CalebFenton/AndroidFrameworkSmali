.class public Landroid/text/style/TextAppearanceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "TextAppearanceSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final blacklist mElegantTextHeight:Z

.field private final greylist-max-o mFamilyName:Ljava/lang/String;

.field private final blacklist mFontFeatureSettings:Ljava/lang/String;

.field private final blacklist mFontVariationSettings:Ljava/lang/String;

.field private final blacklist mHasElegantTextHeight:Z

.field private final blacklist mHasLetterSpacing:Z

.field private final blacklist mLetterSpacing:F

.field private final blacklist mShadowColor:I

.field private final blacklist mShadowDx:F

.field private final blacklist mShadowDy:F

.field private final blacklist mShadowRadius:F

.field private final greylist-max-o mStyle:I

.field private final greylist-max-o mTextColor:Landroid/content/res/ColorStateList;

.field private final greylist-max-o mTextColorLink:Landroid/content/res/ColorStateList;

.field private final blacklist mTextFontWeight:I

.field private final blacklist mTextLocales:Landroid/os/LocaleList;

.field private final greylist-max-o mTextSize:I

.field private final greylist-max-o mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appearance"    # I

    .line 92
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;II)V

    .line 93
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;II)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appearance"    # I
    .param p3, "colorList"    # I

    .line 103
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 106
    sget-object v0, Lcom/android/internal/R$styleable;->TextAppearance:[I

    .line 107
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 110
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 112
    .local v1, "textColor":Landroid/content/res/ColorStateList;
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    .line 114
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    .line 117
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v4

    const/16 v5, 0xc

    const/4 v6, 0x0

    if-nez v4, :cond_3a

    invoke-virtual {p1}, Landroid/content/Context;->canLoadUnsafeResources()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 119
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_3c

    .line 121
    :cond_3a
    iput-object v6, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    .line 123
    :goto_3c
    iget-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v4, :cond_43

    .line 124
    iput-object v6, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_68

    .line 126
    :cond_43
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "family":Ljava/lang/String;
    if-eqz v4, :cond_4c

    .line 128
    iput-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_68

    .line 130
    :cond_4c
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 132
    .local v5, "tf":I
    packed-switch v5, :pswitch_data_ee

    .line 146
    iput-object v6, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_68

    .line 142
    :pswitch_57
    const-string v7, "monospace"

    iput-object v7, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    .line 143
    goto :goto_68

    .line 138
    :pswitch_5c
    const-string/jumbo v7, "serif"

    iput-object v7, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    .line 139
    goto :goto_68

    .line 134
    :pswitch_62
    const-string/jumbo v7, "sans"

    iput-object v7, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    .line 135
    nop

    .line 152
    .end local v4    # "family":Ljava/lang/String;
    .end local v5    # "tf":I
    :goto_68
    const/16 v4, 0x12

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    .line 155
    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "localeString":Ljava/lang/String;
    if-eqz v3, :cond_88

    .line 158
    invoke-static {v3}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v4

    .line 159
    .local v4, "localeList":Landroid/os/LocaleList;
    invoke-virtual {v4}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_85

    .line 160
    iput-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    goto :goto_87

    .line 162
    :cond_85
    iput-object v6, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    .line 164
    .end local v4    # "localeList":Landroid/os/LocaleList;
    :goto_87
    goto :goto_8a

    .line 165
    :cond_88
    iput-object v6, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    .line 168
    :goto_8a
    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    .line 170
    const/16 v4, 0x8

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    .line 172
    const/16 v4, 0x9

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    .line 174
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    .line 177
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    iput-boolean v6, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    .line 179
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    .line 182
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    iput-boolean v4, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    .line 184
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    .line 187
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    .line 190
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    .line 193
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 195
    if-ltz p3, :cond_eb

    .line 196
    const v2, 0x1030005

    sget-object v4, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 199
    invoke-virtual {v0, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 200
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 203
    :cond_eb
    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    .line 204
    return-void

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_62
        :pswitch_5c
        :pswitch_57
    .end packed-switch
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 22
    .param p1, "src"    # Landroid/os/Parcel;

    .line 237
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_1e

    .line 241
    sget-object v1, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    goto :goto_1f

    :cond_1e
    move-object v1, v5

    .line 242
    :goto_1f
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    .line 243
    sget-object v5, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ColorStateList;

    goto :goto_2f

    :cond_2e
    nop

    :goto_2f
    move-object v6, v5

    .line 244
    invoke-static {v0}, Landroid/graphics/LeakyTypefaceStorage;->readTypefaceFromParcel(Landroid/os/Parcel;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    const-class v5, Landroid/os/LocaleList;

    .line 247
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-class v9, Landroid/os/LocaleList;

    invoke-virtual {v0, v5, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Landroid/os/LocaleList;

    .line 248
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .line 249
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v12

    .line 251
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 252
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 254
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 255
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v17

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 257
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 237
    move-object v5, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v19}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/graphics/Typeface;ILandroid/os/LocaleList;FFFIZZZFLjava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .registers 9
    .param p1, "family"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "size"    # I
    .param p4, "color"    # Landroid/content/res/ColorStateList;
    .param p5, "linkColor"    # Landroid/content/res/ColorStateList;

    .line 211
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 212
    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    .line 213
    iput p2, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    .line 214
    iput p3, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    .line 215
    iput-object p4, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    .line 216
    iput-object p5, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    .line 219
    const/4 v1, -0x1

    iput v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    .line 220
    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    .line 222
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    .line 223
    iput v1, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    .line 224
    iput v1, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    .line 225
    const/4 v2, 0x0

    iput v2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    .line 227
    iput-boolean v2, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    .line 228
    iput-boolean v2, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    .line 229
    iput-boolean v2, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    .line 230
    iput v1, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    .line 232
    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    .line 233
    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/graphics/Typeface;ILandroid/os/LocaleList;FFFIZZZFLjava/lang/String;Ljava/lang/String;)V
    .registers 35
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "textSize"    # I
    .param p4, "textColor"    # Landroid/content/res/ColorStateList;
    .param p5, "textColorLink"    # Landroid/content/res/ColorStateList;
    .param p6, "typeface"    # Landroid/graphics/Typeface;
    .param p7, "textFontWeight"    # I
    .param p8, "textLocales"    # Landroid/os/LocaleList;
    .param p9, "shadowRadius"    # F
    .param p10, "shadowDx"    # F
    .param p11, "shadowDy"    # F
    .param p12, "shadowColor"    # I
    .param p13, "hasElegantTextHeight"    # Z
    .param p14, "elegantTextHeight"    # Z
    .param p15, "hasLetterSpacing"    # Z
    .param p16, "letterSpacing"    # F
    .param p17, "fontFeatureSettings"    # Ljava/lang/String;
    .param p18, "fontVariationSettings"    # Ljava/lang/String;

    .line 267
    move-object/from16 v0, p0

    invoke-direct {v0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 268
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    .line 269
    move/from16 v2, p2

    iput v2, v0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    .line 270
    move/from16 v3, p3

    iput v3, v0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    .line 271
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    .line 272
    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    .line 273
    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    .line 275
    move/from16 v7, p7

    iput v7, v0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    .line 276
    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    .line 278
    move/from16 v9, p9

    iput v9, v0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    .line 279
    move/from16 v10, p10

    iput v10, v0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    .line 280
    move/from16 v11, p11

    iput v11, v0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    .line 281
    move/from16 v12, p12

    iput v12, v0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    .line 283
    move/from16 v13, p13

    iput-boolean v13, v0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    .line 284
    move/from16 v14, p14

    iput-boolean v14, v0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    .line 285
    move/from16 v15, p15

    iput-boolean v15, v0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    .line 286
    move/from16 v1, p16

    iput v1, v0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    .line 288
    move-object/from16 v1, p17

    iput-object v1, v0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    .line 289
    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    .line 290
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFamily()Ljava/lang/String;
    .registers 2

    .line 350
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFontFeatureSettings()Ljava/lang/String;
    .registers 2

    .line 449
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFontVariationSettings()Ljava/lang/String;
    .registers 2

    .line 458
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLetterSpacing()F
    .registers 2

    .line 474
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    return v0
.end method

.method public whitelist getLinkTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 366
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getShadowColor()I
    .registers 2

    .line 416
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    return v0
.end method

.method public whitelist getShadowDx()F
    .registers 2

    .line 424
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    return v0
.end method

.method public whitelist getShadowDy()F
    .registers 2

    .line 432
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    return v0
.end method

.method public whitelist getShadowRadius()F
    .registers 2

    .line 440
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    return v0
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 293
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .registers 2

    .line 298
    const/16 v0, 0x11

    return v0
.end method

.method public whitelist getTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 358
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getTextFontWeight()I
    .registers 2

    .line 390
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    return v0
.end method

.method public whitelist getTextLocales()Landroid/os/LocaleList;
    .registers 2

    .line 399
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist getTextSize()I
    .registers 2

    .line 374
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    return v0
.end method

.method public whitelist getTextStyle()I
    .registers 2

    .line 382
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    return v0
.end method

.method public whitelist getTypeface()Landroid/graphics/Typeface;
    .registers 2

    .line 408
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public blacklist hasElegantTextHeight()Z
    .registers 2

    .line 594
    iget-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    return v0
.end method

.method public blacklist hasLetterSpacing()Z
    .registers 2

    .line 599
    iget-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    return v0
.end method

.method public whitelist isElegantTextHeight()Z
    .registers 2

    .line 466
    iget-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextAppearanceSpan{familyName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 573
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", style="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 574
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 575
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 576
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textColorLink="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 577
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", typeface="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 578
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textFontWeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 579
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getTextFontWeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textLocales="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 580
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", shadowRadius="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 581
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getShadowRadius()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", shadowDx="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 582
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getShadowDx()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", shadowDy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 583
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getShadowDy()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", shadowColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 584
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getShadowColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "#%08X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", elegantTextHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 585
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->isElegantTextHeight()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", letterSpacing="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 586
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getLetterSpacing()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", fontFeatureSettings=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 587
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", fontVariationSettings=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 588
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    return-object v0
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .registers 6
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 479
    invoke-virtual {p0, p1}, Landroid/text/style/TextAppearanceSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 481
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 482
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    iget-object v2, p1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 485
    :cond_13
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_21

    .line 486
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    iget-object v2, p1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p1, Landroid/text/TextPaint;->linkColor:I

    .line 489
    :cond_21
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    if-eqz v0, :cond_30

    .line 490
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    iget v1, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    iget v2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    iget v3, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 492
    :cond_30
    return-void
.end method

.method public whitelist updateMeasureState(Landroid/text/TextPaint;)V
    .registers 8
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 497
    const/4 v0, 0x0

    .line 499
    .local v0, "style":I
    iget-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_e

    .line 500
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    .line 501
    iget-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    .local v1, "styledTypeface":Landroid/graphics/Typeface;
    goto :goto_40

    .line 502
    .end local v1    # "styledTypeface":Landroid/graphics/Typeface;
    :cond_e
    iget-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    if-nez v1, :cond_19

    iget v1, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    if-eqz v1, :cond_17

    goto :goto_19

    .line 519
    :cond_17
    const/4 v1, 0x0

    .restart local v1    # "styledTypeface":Landroid/graphics/Typeface;
    goto :goto_40

    .line 503
    .end local v1    # "styledTypeface":Landroid/graphics/Typeface;
    :cond_19
    :goto_19
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 505
    .local v1, "tf":Landroid/graphics/Typeface;
    if-eqz v1, :cond_23

    .line 506
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    .line 509
    :cond_23
    iget v2, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    or-int/2addr v0, v2

    .line 511
    iget-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    if-eqz v2, :cond_32

    .line 512
    iget-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    move-object v1, v2

    .local v2, "styledTypeface":Landroid/graphics/Typeface;
    goto :goto_3f

    .line 513
    .end local v2    # "styledTypeface":Landroid/graphics/Typeface;
    :cond_32
    if-nez v1, :cond_3a

    .line 514
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    move-object v1, v2

    .restart local v2    # "styledTypeface":Landroid/graphics/Typeface;
    goto :goto_3f

    .line 516
    .end local v2    # "styledTypeface":Landroid/graphics/Typeface;
    :cond_3a
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    move-object v1, v2

    .line 518
    .local v1, "styledTypeface":Landroid/graphics/Typeface;
    :goto_3f
    nop

    .line 522
    :goto_40
    if-eqz v1, :cond_79

    .line 524
    iget v2, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    const/4 v3, 0x1

    if-ltz v2, :cond_5f

    .line 525
    const/16 v2, 0x3e8

    iget v4, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 526
    .local v2, "weight":I
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_55

    move v4, v3

    goto :goto_56

    :cond_55
    const/4 v4, 0x0

    .line 527
    .local v4, "italic":Z
    :goto_56
    invoke-static {v1, v2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 528
    .end local v4    # "italic":Z
    .local v2, "readyTypeface":Landroid/graphics/Typeface;
    goto :goto_60

    .line 529
    .end local v2    # "readyTypeface":Landroid/graphics/Typeface;
    :cond_5f
    move-object v2, v1

    .line 532
    .restart local v2    # "readyTypeface":Landroid/graphics/Typeface;
    :goto_60
    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v4

    not-int v4, v4

    and-int/2addr v4, v0

    .line 534
    .local v4, "fake":I
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_6d

    .line 535
    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 538
    :cond_6d
    and-int/lit8 v3, v4, 0x2

    if-eqz v3, :cond_76

    .line 539
    const/high16 v3, -0x41800000    # -0.25f

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 542
    :cond_76
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 545
    .end local v2    # "readyTypeface":Landroid/graphics/Typeface;
    .end local v4    # "fake":I
    :cond_79
    iget v2, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    if-lez v2, :cond_83

    .line 546
    iget v2, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 549
    :cond_83
    iget-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    if-eqz v2, :cond_8c

    .line 550
    iget-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTextLocales(Landroid/os/LocaleList;)V

    .line 553
    :cond_8c
    iget-boolean v2, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    if-eqz v2, :cond_95

    .line 554
    iget-boolean v2, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setElegantTextHeight(Z)V

    .line 557
    :cond_95
    iget-boolean v2, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    if-eqz v2, :cond_9e

    .line 558
    iget v2, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 561
    :cond_9e
    iget-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    if-eqz v2, :cond_a7

    .line 562
    iget-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 565
    :cond_a7
    iget-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    if-eqz v2, :cond_b0

    .line 566
    iget-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 568
    :cond_b0
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 306
    invoke-virtual {p0, p1, p2}, Landroid/text/style/TextAppearanceSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 307
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 311
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    .line 315
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    .line 318
    :cond_1e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    :goto_21
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2e

    .line 321
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_31

    .line 324
    :cond_2e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    :goto_31
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/LeakyTypefaceStorage;->writeTypefaceToParcel(Landroid/graphics/Typeface;Landroid/os/Parcel;)V

    .line 328
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 331
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 332
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 333
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 334
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 337
    iget-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 338
    iget-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 339
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 341
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    return-void
.end method
