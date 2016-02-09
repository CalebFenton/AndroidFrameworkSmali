.class public Landroid/text/style/SuggestionSpan;
.super Landroid/text/style/CharacterStyle;
.source "SuggestionSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/style/SuggestionSpan$1;
    }
.end annotation


# static fields
.field public static final ACTION_SUGGESTION_PICKED:Ljava/lang/String; = "android.text.style.SUGGESTION_PICKED"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_AUTO_CORRECTION:I = 0x4

.field public static final FLAG_EASY_CORRECT:I = 0x1

.field public static final FLAG_MISSPELLED:I = 0x2

.field public static final SUGGESTIONS_MAX_SIZE:I = 0x5

.field public static final SUGGESTION_SPAN_PICKED_AFTER:Ljava/lang/String; = "after"

.field public static final SUGGESTION_SPAN_PICKED_BEFORE:Ljava/lang/String; = "before"

.field public static final SUGGESTION_SPAN_PICKED_HASHCODE:Ljava/lang/String; = "hashcode"

.field private static final TAG:Ljava/lang/String; = "SuggestionSpan"


# instance fields
.field private mAutoCorrectionUnderlineColor:I

.field private mAutoCorrectionUnderlineThickness:F

.field private mEasyCorrectUnderlineColor:I

.field private mEasyCorrectUnderlineThickness:F

.field private mFlags:I

.field private final mHashCode:I

.field private final mLocaleString:Ljava/lang/String;

.field private mMisspelledUnderlineColor:I

.field private mMisspelledUnderlineThickness:F

.field private final mNotificationTargetClassName:Ljava/lang/String;

.field private final mNotificationTargetPackageName:Ljava/lang/String;

.field private final mSuggestions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 300
    new-instance v0, Landroid/text/style/SuggestionSpan$1;

    #@2
    invoke-direct {v0}, Landroid/text/style/SuggestionSpan$1;-><init>()V

    #@5
    .line 299
    sput-object v0, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V
    .locals 4
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
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p5, "notificationTargetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    #@1
    .line 128
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    #@4
    .line 130
    array-length v1, p3

    #@5
    const/4 v2, 0x5

    #@6
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    #@9
    move-result v0

    #@a
    .line 131
    .local v0, "N":I
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, [Ljava/lang/String;

    #@10
    iput-object v1, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    #@12
    .line 132
    iput p4, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    #@14
    .line 133
    if-eqz p2, :cond_0

    #@16
    .line 134
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    iput-object v1, p0, Landroid/text/style/SuggestionSpan;->mLocaleString:Ljava/lang/String;

    #@1c
    .line 142
    :goto_0
    if-eqz p1, :cond_2

    #@1e
    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    iput-object v1, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    #@24
    .line 148
    :goto_1
    if-eqz p5, :cond_3

    #@26
    .line 149
    invoke-virtual {p5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    iput-object v1, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    #@2c
    .line 153
    :goto_2
    iget-object v1, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    #@2e
    iget-object v2, p0, Landroid/text/style/SuggestionSpan;->mLocaleString:Ljava/lang/String;

    #@30
    iget-object v3, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    #@32
    invoke-static {v1, v2, v3}, Landroid/text/style/SuggestionSpan;->hashCodeInternal([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@35
    move-result v1

    #@36
    iput v1, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    #@38
    .line 155
    invoke-direct {p0, p1}, Landroid/text/style/SuggestionSpan;->initStyle(Landroid/content/Context;)V

    #@3b
    .line 129
    return-void

    #@3c
    .line 135
    :cond_0
    if-eqz p1, :cond_1

    #@3e
    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@45
    move-result-object v1

    #@46
    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@48
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    iput-object v1, p0, Landroid/text/style/SuggestionSpan;->mLocaleString:Ljava/lang/String;

    #@4e
    goto :goto_0

    #@4f
    .line 138
    :cond_1
    const-string/jumbo v1, "SuggestionSpan"

    #@52
    const-string/jumbo v2, "No locale or context specified in SuggestionSpan constructor"

    #@55
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    .line 139
    const-string/jumbo v1, ""

    #@5b
    iput-object v1, p0, Landroid/text/style/SuggestionSpan;->mLocaleString:Ljava/lang/String;

    #@5d
    goto :goto_0

    #@5e
    .line 145
    :cond_2
    iput-object v3, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    #@60
    goto :goto_1

    #@61
    .line 151
    :cond_3
    const-string/jumbo v1, ""

    #@64
    iput-object v1, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    #@66
    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "suggestions"    # [Ljava/lang/String;
    .param p3, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v3, p2

    #@4
    move v4, p3

    #@5
    move-object v5, v2

    #@6
    .line 107
    invoke-direct/range {v0 .. v5}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V

    #@9
    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 194
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    #@3
    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    #@9
    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    #@f
    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleString:Ljava/lang/String;

    #@15
    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    #@1b
    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    #@21
    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    #@27
    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v0

    #@2b
    iput v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    #@2d
    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@30
    move-result v0

    #@31
    iput v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    #@33
    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v0

    #@37
    iput v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    #@39
    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@3c
    move-result v0

    #@3d
    iput v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    #@3f
    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v0

    #@43
    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    #@45
    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@48
    move-result v0

    #@49
    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    #@4b
    .line 194
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;[Ljava/lang/String;I)V
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "suggestions"    # [Ljava/lang/String;
    .param p3, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v2, p1

    #@3
    move-object v3, p2

    #@4
    move v4, p3

    #@5
    move-object v5, v1

    #@6
    .line 116
    invoke-direct/range {v0 .. v5}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V

    #@9
    .line 115
    return-void
.end method

.method private static hashCodeInternal([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "suggestions"    # [Ljava/lang/String;
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "notificationTargetClassName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 295
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6
    move-result-wide v2

    #@7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@a
    move-result-object v1

    #@b
    const/4 v2, 0x0

    #@c
    aput-object v1, v0, v2

    #@e
    const/4 v1, 0x1

    #@f
    aput-object p0, v0, v1

    #@11
    .line 296
    const/4 v1, 0x2

    #@12
    aput-object p1, v0, v1

    #@14
    const/4 v1, 0x3

    #@15
    aput-object p2, v0, v1

    #@17
    .line 295
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@1a
    move-result v0

    #@1b
    return v0
.end method

.method private initStyle(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    const/high16 v4, -0x1000000

    #@5
    const/4 v3, 0x0

    #@6
    .line 159
    if-nez p1, :cond_0

    #@8
    .line 160
    iput v3, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    #@a
    .line 161
    iput v3, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    #@c
    .line 162
    iput v3, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    #@e
    .line 163
    iput v4, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    #@10
    .line 164
    iput v4, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    #@12
    .line 165
    iput v4, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    #@14
    .line 166
    return-void

    #@15
    .line 169
    :cond_0
    const v0, 0x1160006

    #@18
    .line 171
    .local v0, "defStyleAttr":I
    sget-object v2, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    #@1a
    .line 170
    invoke-virtual {p1, v6, v2, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@1d
    move-result-object v1

    #@1e
    .line 172
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v7, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@21
    move-result v2

    #@22
    iput v2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    #@24
    .line 174
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    #@27
    move-result v2

    #@28
    iput v2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    #@2a
    .line 177
    const v0, 0x1160005

    #@2d
    .line 179
    sget-object v2, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    #@2f
    .line 178
    invoke-virtual {p1, v6, v2, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@32
    move-result-object v1

    #@33
    .line 180
    invoke-virtual {v1, v7, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@36
    move-result v2

    #@37
    iput v2, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    #@39
    .line 182
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    #@3c
    move-result v2

    #@3d
    iput v2, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    #@3f
    .line 185
    const v0, 0x1160007

    #@42
    .line 187
    sget-object v2, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    #@44
    .line 186
    invoke-virtual {p1, v6, v2, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@47
    move-result-object v1

    #@48
    .line 188
    invoke-virtual {v1, v7, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@4b
    move-result v2

    #@4c
    iput v2, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    #@4e
    .line 190
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    #@51
    move-result v2

    #@52
    iput v2, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    #@54
    .line 158
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 246
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 282
    instance-of v1, p1, Landroid/text/style/SuggestionSpan;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 283
    check-cast p1, Landroid/text/style/SuggestionSpan;

    #@7
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->hashCode()I

    #@a
    move-result v1

    #@b
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    #@d
    if-ne v1, v2, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0

    #@11
    .line 285
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public getFlags()I
    .locals 1

    #@0
    .prologue
    .line 237
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    #@2
    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleString:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNotificationTargetClassName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSpanTypeId()I
    .locals 1

    #@0
    .prologue
    .line 272
    invoke-virtual {p0}, Landroid/text/style/SuggestionSpan;->getSpanTypeIdInternal()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    #@0
    .prologue
    .line 277
    const/16 v0, 0x13

    #@2
    return v0
.end method

.method public getSuggestions()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 213
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUnderlineColor()I
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 337
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    #@3
    and-int/lit8 v3, v3, 0x2

    #@5
    if-eqz v3, :cond_0

    #@7
    const/4 v2, 0x1

    #@8
    .line 338
    .local v2, "misspelled":Z
    :goto_0
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    #@a
    and-int/lit8 v3, v3, 0x1

    #@c
    if-eqz v3, :cond_1

    #@e
    const/4 v1, 0x1

    #@f
    .line 339
    .local v1, "easy":Z
    :goto_1
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    #@11
    and-int/lit8 v3, v3, 0x4

    #@13
    if-eqz v3, :cond_2

    #@15
    const/4 v0, 0x1

    #@16
    .line 340
    .local v0, "autoCorrection":Z
    :goto_2
    if-eqz v1, :cond_4

    #@18
    .line 341
    if-nez v2, :cond_3

    #@1a
    .line 342
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    #@1c
    return v3

    #@1d
    .line 337
    .end local v0    # "autoCorrection":Z
    .end local v1    # "easy":Z
    .end local v2    # "misspelled":Z
    :cond_0
    const/4 v2, 0x0

    #@1e
    .restart local v2    # "misspelled":Z
    goto :goto_0

    #@1f
    .line 338
    :cond_1
    const/4 v1, 0x0

    #@20
    .restart local v1    # "easy":Z
    goto :goto_1

    #@21
    .line 339
    :cond_2
    const/4 v0, 0x0

    #@22
    .restart local v0    # "autoCorrection":Z
    goto :goto_2

    #@23
    .line 344
    :cond_3
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    #@25
    return v3

    #@26
    .line 346
    :cond_4
    if-eqz v0, :cond_5

    #@28
    .line 347
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    #@2a
    return v3

    #@2b
    .line 349
    :cond_5
    return v4
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 290
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    #@2
    return v0
.end method

.method public notifySelection(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "original"    # Ljava/lang/String;
    .param p3, "index"    # I

    #@0
    .prologue
    .line 358
    new-instance v1, Landroid/content/Intent;

    #@2
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@5
    .line 360
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    #@7
    iget-object v2, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    #@9
    if-nez v2, :cond_1

    #@b
    .line 361
    :cond_0
    return-void

    #@c
    .line 365
    :cond_1
    iget-object v2, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    #@e
    if-eqz v2, :cond_2

    #@10
    if-gez p3, :cond_3

    #@12
    .line 366
    :cond_2
    const-string/jumbo v2, "SuggestionSpan"

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "Unable to notify the suggestion as the index is out of range index="

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    .line 367
    const-string/jumbo v4, " length="

    #@28
    .line 366
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    .line 367
    iget-object v4, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    #@2e
    array-length v4, v4

    #@2f
    .line 366
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 368
    return-void

    #@3b
    .line 365
    :cond_3
    iget-object v2, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    #@3d
    array-length v2, v2

    #@3e
    if-ge p3, v2, :cond_2

    #@40
    .line 373
    iget-object v2, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    #@42
    if-eqz v2, :cond_5

    #@44
    .line 374
    iget-object v2, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    #@46
    iget-object v3, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    #@48
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@4b
    .line 375
    const-string/jumbo v2, "android.text.style.SUGGESTION_PICKED"

    #@4e
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@51
    .line 376
    const-string/jumbo v2, "before"

    #@54
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@57
    .line 377
    const-string/jumbo v2, "after"

    #@5a
    iget-object v3, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    #@5c
    aget-object v3, v3, p3

    #@5e
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@61
    .line 378
    const-string/jumbo v2, "hashcode"

    #@64
    invoke-virtual {p0}, Landroid/text/style/SuggestionSpan;->hashCode()I

    #@67
    move-result v3

    #@68
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@6b
    .line 379
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@6e
    .line 357
    :cond_4
    :goto_0
    return-void

    #@6f
    .line 381
    :cond_5
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@72
    move-result-object v0

    #@73
    .line 382
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_4

    #@75
    .line 383
    invoke-virtual {v0, p0, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)V

    #@78
    goto :goto_0
.end method

.method public setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 241
    iput p1, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    #@2
    .line 240
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 5
    .param p1, "tp"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 314
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    #@2
    and-int/lit8 v3, v3, 0x2

    #@4
    if-eqz v3, :cond_1

    #@6
    const/4 v2, 0x1

    #@7
    .line 315
    .local v2, "misspelled":Z
    :goto_0
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    #@9
    and-int/lit8 v3, v3, 0x1

    #@b
    if-eqz v3, :cond_2

    #@d
    const/4 v1, 0x1

    #@e
    .line 316
    .local v1, "easy":Z
    :goto_1
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    #@10
    and-int/lit8 v3, v3, 0x4

    #@12
    if-eqz v3, :cond_3

    #@14
    const/4 v0, 0x1

    #@15
    .line 317
    .local v0, "autoCorrection":Z
    :goto_2
    if-eqz v1, :cond_5

    #@17
    .line 318
    if-nez v2, :cond_4

    #@19
    .line 319
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    #@1b
    iget v4, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    #@1d
    invoke-virtual {p1, v3, v4}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    #@20
    .line 313
    :cond_0
    :goto_3
    return-void

    #@21
    .line 314
    .end local v0    # "autoCorrection":Z
    .end local v1    # "easy":Z
    .end local v2    # "misspelled":Z
    :cond_1
    const/4 v2, 0x0

    #@22
    .restart local v2    # "misspelled":Z
    goto :goto_0

    #@23
    .line 315
    :cond_2
    const/4 v1, 0x0

    #@24
    .restart local v1    # "easy":Z
    goto :goto_1

    #@25
    .line 316
    :cond_3
    const/4 v0, 0x0

    #@26
    .restart local v0    # "autoCorrection":Z
    goto :goto_2

    #@27
    .line 320
    :cond_4
    iget v3, p1, Landroid/text/TextPaint;->underlineColor:I

    #@29
    if-nez v3, :cond_0

    #@2b
    .line 323
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    #@2d
    iget v4, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    #@2f
    invoke-virtual {p1, v3, v4}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    #@32
    goto :goto_3

    #@33
    .line 325
    :cond_5
    if-eqz v0, :cond_0

    #@35
    .line 326
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    #@37
    iget v4, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    #@39
    invoke-virtual {p1, v3, v4}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    #@3c
    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 251
    invoke-virtual {p0, p1, p2}, Landroid/text/style/SuggestionSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    #@3
    .line 250
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@5
    .line 257
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 258
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleString:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 259
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 260
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 261
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 262
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 263
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@28
    .line 264
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 265
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@32
    .line 266
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 267
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@3c
    .line 255
    return-void
.end method
