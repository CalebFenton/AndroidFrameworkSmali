.class public Landroid/text/style/SuggestionSpan;
.super Landroid/text/style/CharacterStyle;
.source "SuggestionSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final whitelist ACTION_SUGGESTION_PICKED:Ljava/lang/String; = "android.text.style.SUGGESTION_PICKED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_AUTO_CORRECTION:I = 0x4

.field public static final whitelist FLAG_EASY_CORRECT:I = 0x1

.field public static final whitelist FLAG_GRAMMAR_ERROR:I = 0x8

.field public static final whitelist FLAG_MISSPELLED:I = 0x2

.field public static final whitelist SUGGESTIONS_MAX_SIZE:I = 0x5

.field public static final whitelist SUGGESTION_SPAN_PICKED_AFTER:Ljava/lang/String; = "after"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SUGGESTION_SPAN_PICKED_BEFORE:Ljava/lang/String; = "before"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SUGGESTION_SPAN_PICKED_HASHCODE:Ljava/lang/String; = "hashcode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SuggestionSpan"


# instance fields
.field private greylist-max-o mAutoCorrectionUnderlineColor:I

.field private greylist-max-o mAutoCorrectionUnderlineThickness:F

.field private greylist-max-r mEasyCorrectUnderlineColor:I

.field private greylist-max-r mEasyCorrectUnderlineThickness:F

.field private greylist-max-o mFlags:I

.field private blacklist mGrammarErrorUnderlineColor:I

.field private blacklist mGrammarErrorUnderlineThickness:F

.field private final greylist-max-o mHashCode:I

.field private final greylist-max-o mLanguageTag:Ljava/lang/String;

.field private final greylist-max-o mLocaleStringForCompatibility:Ljava/lang/String;

.field private greylist-max-o mMisspelledUnderlineColor:I

.field private greylist-max-o mMisspelledUnderlineThickness:F

.field private final greylist-max-o mSuggestions:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 397
    new-instance v0, Landroid/text/style/SuggestionSpan$1;

    invoke-direct {v0}, Landroid/text/style/SuggestionSpan$1;-><init>()V

    sput-object v0, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "suggestions"    # [Ljava/lang/String;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 180
    .local p5, "notificationTargetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 181
    const/4 v0, 0x5

    array-length v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 182
    .local v0, "N":I
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    .line 183
    iput p4, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    .line 185
    if-eqz p2, :cond_17

    .line 186
    move-object v1, p2

    .local v1, "sourceLocale":Ljava/util/Locale;
    goto :goto_2c

    .line 187
    .end local v1    # "sourceLocale":Ljava/util/Locale;
    :cond_17
    if-eqz p1, :cond_24

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .restart local v1    # "sourceLocale":Ljava/util/Locale;
    goto :goto_2c

    .line 191
    .end local v1    # "sourceLocale":Ljava/util/Locale;
    :cond_24
    const-string v1, "SuggestionSpan"

    const-string v2, "No locale or context specified in SuggestionSpan constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v1, 0x0

    .line 194
    .restart local v1    # "sourceLocale":Ljava/util/Locale;
    :goto_2c
    const-string v2, ""

    if-nez v1, :cond_32

    move-object v3, v2

    goto :goto_36

    :cond_32
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_36
    iput-object v3, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    .line 195
    if-nez v1, :cond_3b

    goto :goto_3f

    :cond_3b
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    :goto_3f
    iput-object v2, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    .line 196
    iget-object v2, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    iget-object v3, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/text/style/SuggestionSpan;->hashCodeInternal([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    .line 198
    invoke-direct {p0, p1}, Landroid/text/style/SuggestionSpan;->initStyle(Landroid/content/Context;)V

    .line 199
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;[Ljava/lang/String;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "suggestions"    # [Ljava/lang/String;
    .param p3, "flags"    # I

    .line 156
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "suggestions":[Ljava/lang/String;
    .end local p3    # "flags":I
    .local v1, "context":Landroid/content/Context;
    .local v3, "suggestions":[Ljava/lang/String;
    .local v4, "flags":I
    invoke-direct/range {v0 .. v5}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V

    .line 157
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 16
    .param p1, "src"    # Landroid/os/Parcel;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v13

    .line 252
    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Landroid/text/style/SuggestionSpan;-><init>([Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIFIFIFIF)V

    .line 263
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Locale;[Ljava/lang/String;I)V
    .registers 10
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "suggestions"    # [Ljava/lang/String;
    .param p3, "flags"    # I

    .line 165
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .end local p1    # "locale":Ljava/util/Locale;
    .end local p2    # "suggestions":[Ljava/lang/String;
    .end local p3    # "flags":I
    .local v2, "locale":Ljava/util/Locale;
    .local v3, "suggestions":[Ljava/lang/String;
    .local v4, "flags":I
    invoke-direct/range {v0 .. v5}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V

    .line 166
    return-void
.end method

.method public constructor blacklist <init>([Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIFIFIFIF)V
    .registers 14
    .param p1, "suggestions"    # [Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "localeStringForCompatibility"    # Ljava/lang/String;
    .param p4, "languageTag"    # Ljava/lang/String;
    .param p5, "hashCode"    # I
    .param p6, "easyCorrectUnderlineColor"    # I
    .param p7, "easyCorrectUnderlineThickness"    # F
    .param p8, "misspelledUnderlineColor"    # I
    .param p9, "misspelledUnderlineThickness"    # F
    .param p10, "autoCorrectionUnderlineColor"    # I
    .param p11, "autoCorrectionUnderlineThickness"    # F
    .param p12, "grammarErrorUnderlineColor"    # I
    .param p13, "grammarErrorUnderlineThickness"    # F

    .line 271
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 272
    iput-object p1, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    .line 273
    iput p2, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    .line 274
    iput-object p3, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    .line 275
    iput-object p4, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    .line 276
    iput p5, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    .line 277
    iput p6, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    .line 278
    iput p7, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    .line 279
    iput p8, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    .line 280
    iput p9, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    .line 281
    iput p10, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    .line 282
    iput p11, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    .line 283
    iput p12, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    .line 284
    iput p13, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    .line 285
    return-void
.end method

.method private static blacklist hashCodeInternal([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p0, "suggestions"    # [Ljava/lang/String;
    .param p1, "languageTag"    # Ljava/lang/String;
    .param p2, "localeStringForCompatibility"    # Ljava/lang/String;

    .line 393
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0, p0, p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private greylist-max-o initStyle(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 202
    const/high16 v0, -0x1000000

    const/4 v1, 0x0

    if-nez p1, :cond_16

    .line 203
    iput v1, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    .line 204
    iput v1, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    .line 205
    iput v1, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    .line 206
    iput v1, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    .line 207
    iput v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    .line 208
    iput v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    .line 209
    iput v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    .line 210
    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    .line 211
    return-void

    .line 214
    :cond_16
    const v2, 0x1120104

    .line 215
    .local v2, "defStyleAttr":I
    sget-object v3, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v3, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 217
    .local v3, "typedArray":Landroid/content/res/TypedArray;
    const/4 v6, 0x1

    invoke-virtual {v3, v6, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    .line 219
    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    .line 221
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 223
    const v2, 0x1120103

    .line 224
    sget-object v7, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    invoke-virtual {p1, v4, v7, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 226
    invoke-virtual {v3, v6, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    .line 228
    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    .line 230
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 232
    const v2, 0x1120102

    .line 233
    sget-object v7, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    invoke-virtual {p1, v4, v7, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 235
    invoke-virtual {v3, v6, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    .line 237
    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    .line 239
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 241
    const v2, 0x1120101

    .line 242
    sget-object v7, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    invoke-virtual {p1, v4, v7, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 244
    invoke-virtual {v3, v6, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    .line 246
    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    .line 248
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 249
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 380
    instance-of v0, p1, Landroid/text/style/SuggestionSpan;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 381
    move-object v0, p1

    check-cast v0, Landroid/text/style/SuggestionSpan;

    invoke-virtual {v0}, Landroid/text/style/SuggestionSpan;->hashCode()I

    move-result v0

    iget v2, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    if-ne v0, v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1

    .line 383
    :cond_12
    return v1
.end method

.method public blacklist getAutoCorrectionUnderlineColor()I
    .registers 2

    .line 505
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    return v0
.end method

.method public blacklist getAutoCorrectionUnderlineThickness()F
    .registers 2

    .line 500
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    return v0
.end method

.method public blacklist getEasyCorrectUnderlineColor()I
    .registers 2

    .line 485
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    return v0
.end method

.method public blacklist getEasyCorrectUnderlineThickness()F
    .registers 2

    .line 480
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    return v0
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 334
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    return v0
.end method

.method public blacklist getGrammarErrorUnderlineColor()I
    .registers 2

    .line 515
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    return v0
.end method

.method public blacklist getGrammarErrorUnderlineThickness()F
    .registers 2

    .line 510
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    return v0
.end method

.method public whitelist getLocale()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLocaleObject()Ljava/util/Locale;
    .registers 2

    .line 318
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    :cond_a
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public blacklist getMisspelledUnderlineColor()I
    .registers 2

    .line 495
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    return v0
.end method

.method public blacklist getMisspelledUnderlineThickness()F
    .registers 2

    .line 490
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    return v0
.end method

.method public greylist getNotificationTargetClassName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 370
    invoke-virtual {p0}, Landroid/text/style/SuggestionSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .registers 2

    .line 375
    const/16 v0, 0x13

    return v0
.end method

.method public whitelist getSuggestions()[Ljava/lang/String;
    .registers 2

    .line 292
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUnderlineColor()I
    .registers 7

    .line 444
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 445
    .local v0, "misspelled":Z
    :goto_b
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_12

    move v3, v1

    goto :goto_13

    :cond_12
    move v3, v2

    .line 446
    .local v3, "easy":Z
    :goto_13
    iget v4, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1b

    move v4, v1

    goto :goto_1c

    :cond_1b
    move v4, v2

    .line 447
    .local v4, "autoCorrection":Z
    :goto_1c
    iget v5, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    .line 448
    .local v1, "grammarError":Z
    :goto_24
    if-eqz v3, :cond_33

    .line 449
    if-eqz v1, :cond_2b

    .line 450
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    return v2

    .line 451
    :cond_2b
    if-eqz v0, :cond_30

    .line 452
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    return v2

    .line 454
    :cond_30
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    return v2

    .line 456
    :cond_33
    if-eqz v4, :cond_38

    .line 457
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    return v2

    .line 458
    :cond_38
    if-eqz v0, :cond_3d

    .line 459
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    return v2

    .line 460
    :cond_3d
    if-eqz v1, :cond_42

    .line 461
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    return v2

    .line 463
    :cond_42
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 388
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    return v0
.end method

.method public greylist-max-r notifySelection(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "original"    # Ljava/lang/String;
    .param p3, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 475
    const-string v0, "SuggestionSpan"

    const-string v1, "notifySelection() is deprecated.  Does nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return-void
.end method

.method public whitelist setFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 338
    iput p1, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    .line 339
    return-void
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .registers 8
    .param p1, "tp"    # Landroid/text/TextPaint;

    .line 412
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 413
    .local v0, "misspelled":Z
    :goto_b
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_12

    move v3, v2

    goto :goto_13

    :cond_12
    move v3, v1

    .line 414
    .local v3, "easy":Z
    :goto_13
    iget v4, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1b

    move v4, v2

    goto :goto_1c

    :cond_1b
    move v4, v1

    .line 415
    .local v4, "autoCorrection":Z
    :goto_1c
    iget v5, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_23

    move v1, v2

    .line 416
    .local v1, "grammarError":Z
    :cond_23
    if-eqz v3, :cond_47

    .line 417
    if-nez v0, :cond_31

    if-nez v1, :cond_31

    .line 418
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    iget v5, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {p1, v2, v5}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_64

    .line 419
    :cond_31
    iget v2, p1, Landroid/text/TextPaint;->underlineColor:I

    if-nez v2, :cond_64

    .line 422
    if-eqz v1, :cond_3f

    .line 423
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    iget v5, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    invoke-virtual {p1, v2, v5}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_64

    .line 426
    :cond_3f
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    iget v5, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v2, v5}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_64

    .line 429
    :cond_47
    if-eqz v4, :cond_51

    .line 430
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    iget v5, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-virtual {p1, v2, v5}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_64

    .line 431
    :cond_51
    if-eqz v0, :cond_5b

    .line 432
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    iget v5, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v2, v5}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_64

    .line 433
    :cond_5b
    if-eqz v1, :cond_64

    .line 434
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    iget v5, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    invoke-virtual {p1, v2, v5}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    .line 436
    :cond_64
    :goto_64
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 348
    invoke-virtual {p0, p1, p2}, Landroid/text/style/SuggestionSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 349
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 353
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 354
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 360
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 362
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 364
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 366
    return-void
.end method
