.class Landroid/view/AccessibilityIterators$WordTextSegmentIterator;
.super Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
.source "AccessibilityIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WordTextSegmentIterator"
.end annotation


# static fields
.field private static sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;


# direct methods
.method private constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 176
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;-><init>(Ljava/util/Locale;Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;)V

    #@4
    .line 175
    return-void
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$WordTextSegmentIterator;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 169
    sget-object v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 170
    new-instance v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    #@6
    invoke-direct {v0, p0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;-><init>(Ljava/util/Locale;)V

    #@9
    sput-object v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    #@b
    .line 172
    :cond_0
    sget-object v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    #@d
    return-object v0
.end method

.method private isEndBoundary(I)Z
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 242
    if-lez p1, :cond_1

    #@4
    add-int/lit8 v2, p1, -0x1

    #@6
    invoke-direct {p0, v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 243
    iget-object v2, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    #@e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@11
    move-result v2

    #@12
    if-eq p1, v2, :cond_0

    #@14
    invoke-direct {p0, p1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    move v0, v1

    #@1b
    .line 242
    :cond_0
    :goto_0
    return v0

    #@1c
    :cond_1
    move v0, v1

    #@1d
    goto :goto_0
.end method

.method private isLetterOrDigit(I)Z
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 247
    if-ltz p1, :cond_0

    #@3
    iget-object v1, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    #@5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    if-ge p1, v1, :cond_0

    #@b
    .line 248
    iget-object v1, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/String;->codePointAt(I)I

    #@10
    move-result v0

    #@11
    .line 249
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    #@14
    move-result v1

    #@15
    return v1

    #@16
    .line 251
    .end local v0    # "codePoint":I
    :cond_0
    return v2
.end method

.method private isStartBoundary(I)Z
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 237
    invoke-direct {p0, p1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 238
    if-eqz p1, :cond_0

    #@a
    add-int/lit8 v2, p1, -0x1

    #@c
    invoke-direct {p0, v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    move v0, v1

    #@13
    .line 237
    :cond_0
    :goto_0
    return v0

    #@14
    :cond_1
    move v0, v1

    #@15
    goto :goto_0
.end method


# virtual methods
.method public following(I)[I
    .locals 6
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 186
    iget-object v3, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    #@4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@7
    move-result v2

    #@8
    .line 187
    .local v2, "textLegth":I
    if-gtz v2, :cond_0

    #@a
    .line 188
    return-object v4

    #@b
    .line 190
    :cond_0
    iget-object v3, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    #@d
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@10
    move-result v3

    #@11
    if-lt p1, v3, :cond_1

    #@13
    .line 191
    return-object v4

    #@14
    .line 193
    :cond_1
    move v1, p1

    #@15
    .line 194
    .local v1, "start":I
    if-gez v1, :cond_2

    #@17
    .line 195
    const/4 v1, 0x0

    #@18
    .line 197
    :cond_2
    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_3

    #@1e
    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isStartBoundary(I)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_4

    #@24
    .line 203
    :cond_3
    iget-object v3, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    #@26
    invoke-virtual {v3, v1}, Ljava/text/BreakIterator;->following(I)I

    #@29
    move-result v0

    #@2a
    .line 204
    .local v0, "end":I
    if-eq v0, v5, :cond_5

    #@2c
    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isEndBoundary(I)Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_5

    #@32
    .line 207
    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->getRange(II)[I

    #@35
    move-result-object v3

    #@36
    return-object v3

    #@37
    .line 198
    .end local v0    # "end":I
    :cond_4
    iget-object v3, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    #@39
    invoke-virtual {v3, v1}, Ljava/text/BreakIterator;->following(I)I

    #@3c
    move-result v1

    #@3d
    .line 199
    if-ne v1, v5, :cond_2

    #@3f
    .line 200
    return-object v4

    #@40
    .line 205
    .restart local v0    # "end":I
    :cond_5
    return-object v4
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 181
    invoke-static {p1}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    #@6
    .line 180
    return-void
.end method

.method public preceding(I)[I
    .locals 6
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 212
    iget-object v3, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    #@4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@7
    move-result v2

    #@8
    .line 213
    .local v2, "textLegth":I
    if-gtz v2, :cond_0

    #@a
    .line 214
    return-object v4

    #@b
    .line 216
    :cond_0
    if-gtz p1, :cond_1

    #@d
    .line 217
    return-object v4

    #@e
    .line 219
    :cond_1
    move v0, p1

    #@f
    .line 220
    .local v0, "end":I
    if-le v0, v2, :cond_2

    #@11
    .line 221
    move v0, v2

    #@12
    .line 223
    :cond_2
    if-lez v0, :cond_3

    #@14
    add-int/lit8 v3, v0, -0x1

    #@16
    invoke-direct {p0, v3}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_4

    #@1c
    .line 229
    :cond_3
    iget-object v3, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    #@1e
    invoke-virtual {v3, v0}, Ljava/text/BreakIterator;->preceding(I)I

    #@21
    move-result v1

    #@22
    .line 230
    .local v1, "start":I
    if-eq v1, v5, :cond_5

    #@24
    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isStartBoundary(I)Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_5

    #@2a
    .line 233
    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->getRange(II)[I

    #@2d
    move-result-object v3

    #@2e
    return-object v3

    #@2f
    .line 223
    .end local v1    # "start":I
    :cond_4
    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isEndBoundary(I)Z

    #@32
    move-result v3

    #@33
    if-nez v3, :cond_3

    #@35
    .line 224
    iget-object v3, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    #@37
    invoke-virtual {v3, v0}, Ljava/text/BreakIterator;->preceding(I)I

    #@3a
    move-result v0

    #@3b
    .line 225
    if-ne v0, v5, :cond_2

    #@3d
    .line 226
    return-object v4

    #@3e
    .line 231
    .restart local v1    # "start":I
    :cond_5
    return-object v4
.end method
