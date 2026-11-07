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
.field private static greylist-max-o sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;


# direct methods
.method private constructor greylist-max-o <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;-><init>(Ljava/util/Locale;Landroid/view/AccessibilityIterators-IA;)V

    .line 181
    return-void
.end method

.method public static greylist-max-o getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$WordTextSegmentIterator;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 173
    sget-object v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    if-nez v0, :cond_b

    .line 174
    new-instance v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;-><init>(Ljava/util/Locale;)V

    sput-object v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    .line 176
    :cond_b
    sget-object v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    return-object v0
.end method

.method private greylist-max-o isEndBoundary(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 246
    if-lez p1, :cond_1a

    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    .line 247
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p1, v0, :cond_18

    invoke-direct {p0, p1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 246
    :goto_1b
    return v0
.end method

.method private greylist-max-o isLetterOrDigit(I)Z
    .registers 4
    .param p1, "index"    # I

    .line 251
    if-ltz p1, :cond_15

    iget-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 252
    iget-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 253
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    return v1

    .line 255
    .end local v0    # "codePoint":I
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o isStartBoundary(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 241
    invoke-direct {p0, p1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p1, :cond_10

    add-int/lit8 v0, p1, -0x1

    .line 242
    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 241
    :goto_13
    return v0
.end method


# virtual methods
.method public greylist-max-o following(I)[I
    .registers 7
    .param p1, "offset"    # I

    .line 190
    iget-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 191
    .local v0, "textLegth":I
    const/4 v1, 0x0

    if-gtz v0, :cond_a

    .line 192
    return-object v1

    .line 194
    :cond_a
    iget-object v2, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p1, v2, :cond_13

    .line 195
    return-object v1

    .line 197
    :cond_13
    move v2, p1

    .line 198
    .local v2, "start":I
    if-gez v2, :cond_17

    .line 199
    const/4 v2, 0x0

    .line 201
    :cond_17
    invoke-direct {p0, v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_2d

    invoke-direct {p0, v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isStartBoundary(I)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 202
    iget-object v3, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v2}, Ljava/text/BreakIterator;->following(I)I

    move-result v2

    .line 203
    if-ne v2, v4, :cond_17

    .line 204
    return-object v1

    .line 207
    :cond_2d
    iget-object v3, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v2}, Ljava/text/BreakIterator;->following(I)I

    move-result v3

    .line 208
    .local v3, "end":I
    if-eq v3, v4, :cond_41

    invoke-direct {p0, v3}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isEndBoundary(I)Z

    move-result v4

    if-nez v4, :cond_3c

    goto :goto_41

    .line 211
    :cond_3c
    invoke-virtual {p0, v2, v3}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->getRange(II)[I

    move-result-object v1

    return-object v1

    .line 209
    :cond_41
    :goto_41
    return-object v1
.end method

.method protected greylist-max-o onLocaleChanged(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 185
    invoke-static {p1}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    .line 186
    return-void
.end method

.method public greylist-max-o preceding(I)[I
    .registers 7
    .param p1, "offset"    # I

    .line 216
    iget-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 217
    .local v0, "textLegth":I
    const/4 v1, 0x0

    if-gtz v0, :cond_a

    .line 218
    return-object v1

    .line 220
    :cond_a
    if-gtz p1, :cond_d

    .line 221
    return-object v1

    .line 223
    :cond_d
    move v2, p1

    .line 224
    .local v2, "end":I
    if-le v2, v0, :cond_11

    .line 225
    move v2, v0

    .line 227
    :cond_11
    const/4 v3, -0x1

    if-lez v2, :cond_2b

    add-int/lit8 v4, v2, -0x1

    invoke-direct {p0, v4}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-direct {p0, v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isEndBoundary(I)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 228
    iget-object v4, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v4, v2}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v2

    .line 229
    if-ne v2, v3, :cond_11

    .line 230
    return-object v1

    .line 233
    :cond_2b
    iget-object v4, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v4, v2}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v4

    .line 234
    .local v4, "start":I
    if-eq v4, v3, :cond_3f

    invoke-direct {p0, v4}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isStartBoundary(I)Z

    move-result v3

    if-nez v3, :cond_3a

    goto :goto_3f

    .line 237
    :cond_3a
    invoke-virtual {p0, v4, v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->getRange(II)[I

    move-result-object v1

    return-object v1

    .line 235
    :cond_3f
    :goto_3f
    return-object v1
.end method
