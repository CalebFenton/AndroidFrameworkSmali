.class Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;
.super Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;
.source "AccessibilityIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParagraphTextSegmentIterator"
.end annotation


# static fields
.field private static greylist-max-o sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 259
    invoke-direct {p0}, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    return-void
.end method

.method public static greylist-max-o getInstance()Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;
    .registers 1

    .line 263
    sget-object v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    if-nez v0, :cond_b

    .line 264
    new-instance v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    invoke-direct {v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;-><init>()V

    sput-object v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    .line 266
    :cond_b
    sget-object v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    return-object v0
.end method

.method private greylist-max-o isEndBoundary(I)Z
    .registers 4
    .param p1, "index"    # I

    .line 328
    if-lez p1, :cond_20

    iget-object v0, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_20

    iget-object v0, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    .line 329
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p1, v0, :cond_1e

    iget-object v0, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_20

    :cond_1e
    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 328
    :goto_21
    return v0
.end method

.method private greylist-max-o isStartBoundary(I)Z
    .registers 5
    .param p1, "index"    # I

    .line 323
    iget-object v0, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_18

    if-eqz p1, :cond_16

    iget-object v0, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    .line 324
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 323
    :goto_19
    return v0
.end method


# virtual methods
.method public greylist-max-o following(I)[I
    .registers 7
    .param p1, "offset"    # I

    .line 271
    iget-object v0, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 272
    .local v0, "textLength":I
    const/4 v1, 0x0

    if-gtz v0, :cond_a

    .line 273
    return-object v1

    .line 275
    :cond_a
    if-lt p1, v0, :cond_d

    .line 276
    return-object v1

    .line 278
    :cond_d
    move v2, p1

    .line 279
    .local v2, "start":I
    if-gez v2, :cond_11

    .line 280
    const/4 v2, 0x0

    .line 282
    :cond_11
    :goto_11
    if-ge v2, v0, :cond_26

    iget-object v3, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_26

    .line 283
    invoke-direct {p0, v2}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isStartBoundary(I)Z

    move-result v3

    if-nez v3, :cond_26

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 286
    :cond_26
    if-lt v2, v0, :cond_29

    .line 287
    return-object v1

    .line 289
    :cond_29
    add-int/lit8 v1, v2, 0x1

    .line 290
    .local v1, "end":I
    :goto_2b
    if-ge v1, v0, :cond_36

    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isEndBoundary(I)Z

    move-result v3

    if-nez v3, :cond_36

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 293
    :cond_36
    invoke-virtual {p0, v2, v1}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    return-object v3
.end method

.method public greylist-max-o preceding(I)[I
    .registers 7
    .param p1, "offset"    # I

    .line 298
    iget-object v0, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 299
    .local v0, "textLength":I
    const/4 v1, 0x0

    if-gtz v0, :cond_a

    .line 300
    return-object v1

    .line 302
    :cond_a
    if-gtz p1, :cond_d

    .line 303
    return-object v1

    .line 305
    :cond_d
    move v2, p1

    .line 306
    .local v2, "end":I
    if-le v2, v0, :cond_11

    .line 307
    move v2, v0

    .line 309
    :cond_11
    :goto_11
    if-lez v2, :cond_28

    iget-object v3, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_28

    invoke-direct {p0, v2}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isEndBoundary(I)Z

    move-result v3

    if-nez v3, :cond_28

    .line 310
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 312
    :cond_28
    if-gtz v2, :cond_2b

    .line 313
    return-object v1

    .line 315
    :cond_2b
    add-int/lit8 v1, v2, -0x1

    .line 316
    .local v1, "start":I
    :goto_2d
    if-lez v1, :cond_38

    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isStartBoundary(I)Z

    move-result v3

    if-nez v3, :cond_38

    .line 317
    add-int/lit8 v1, v1, -0x1

    goto :goto_2d

    .line 319
    :cond_38
    invoke-virtual {p0, v1, v2}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    return-object v3
.end method
