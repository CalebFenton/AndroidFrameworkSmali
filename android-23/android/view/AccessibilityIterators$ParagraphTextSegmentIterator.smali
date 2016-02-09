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
.field private static sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 255
    invoke-direct {p0}, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;
    .locals 1

    #@0
    .prologue
    .line 259
    sget-object v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 260
    new-instance v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    #@6
    invoke-direct {v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;-><init>()V

    #@9
    sput-object v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    #@b
    .line 262
    :cond_0
    sget-object v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    #@d
    return-object v0
.end method

.method private isEndBoundary(I)Z
    .locals 5
    .param p1, "index"    # I

    #@0
    .prologue
    const/16 v4, 0xa

    #@2
    const/4 v0, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 324
    if-lez p1, :cond_2

    #@6
    iget-object v2, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    #@8
    add-int/lit8 v3, p1, -0x1

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v2

    #@e
    if-eq v2, v4, :cond_2

    #@10
    .line 325
    iget-object v2, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    #@12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@15
    move-result v2

    #@16
    if-eq p1, v2, :cond_0

    #@18
    iget-object v2, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    #@1a
    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v2

    #@1e
    if-ne v2, v4, :cond_1

    #@20
    .line 324
    :cond_0
    :goto_0
    return v0

    #@21
    :cond_1
    move v0, v1

    #@22
    .line 325
    goto :goto_0

    #@23
    :cond_2
    move v0, v1

    #@24
    .line 324
    goto :goto_0
.end method

.method private isStartBoundary(I)Z
    .locals 5
    .param p1, "index"    # I

    #@0
    .prologue
    const/16 v4, 0xa

    #@2
    const/4 v0, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 319
    iget-object v2, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    #@6
    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    #@9
    move-result v2

    #@a
    if-eq v2, v4, :cond_2

    #@c
    .line 320
    if-eqz p1, :cond_0

    #@e
    iget-object v2, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    #@10
    add-int/lit8 v3, p1, -0x1

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v2

    #@16
    if-ne v2, v4, :cond_1

    #@18
    .line 319
    :cond_0
    :goto_0
    return v0

    #@19
    :cond_1
    move v0, v1

    #@1a
    .line 320
    goto :goto_0

    #@1b
    :cond_2
    move v0, v1

    #@1c
    .line 319
    goto :goto_0
.end method


# virtual methods
.method public following(I)[I
    .locals 6
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 267
    iget-object v3, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    #@3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@6
    move-result v2

    #@7
    .line 268
    .local v2, "textLength":I
    if-gtz v2, :cond_0

    #@9
    .line 269
    return-object v5

    #@a
    .line 271
    :cond_0
    if-lt p1, v2, :cond_1

    #@c
    .line 272
    return-object v5

    #@d
    .line 274
    :cond_1
    move v1, p1

    #@e
    .line 275
    .local v1, "start":I
    if-gez v1, :cond_2

    #@10
    .line 276
    const/4 v1, 0x0

    #@11
    .line 278
    :cond_2
    :goto_0
    if-ge v1, v2, :cond_3

    #@13
    iget-object v3, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    #@15
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v3

    #@19
    const/16 v4, 0xa

    #@1b
    if-ne v3, v4, :cond_3

    #@1d
    .line 279
    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isStartBoundary(I)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_4

    #@23
    .line 282
    :cond_3
    if-lt v1, v2, :cond_5

    #@25
    .line 283
    return-object v5

    #@26
    .line 280
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 285
    :cond_5
    add-int/lit8 v0, v1, 0x1

    #@2b
    .line 286
    .local v0, "end":I
    :goto_1
    if-ge v0, v2, :cond_6

    #@2d
    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isEndBoundary(I)Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_7

    #@33
    .line 289
    :cond_6
    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->getRange(II)[I

    #@36
    move-result-object v3

    #@37
    return-object v3

    #@38
    .line 287
    :cond_7
    add-int/lit8 v0, v0, 0x1

    #@3a
    goto :goto_1
.end method

.method public preceding(I)[I
    .locals 6
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 294
    iget-object v3, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    #@3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@6
    move-result v2

    #@7
    .line 295
    .local v2, "textLength":I
    if-gtz v2, :cond_0

    #@9
    .line 296
    return-object v5

    #@a
    .line 298
    :cond_0
    if-gtz p1, :cond_1

    #@c
    .line 299
    return-object v5

    #@d
    .line 301
    :cond_1
    move v0, p1

    #@e
    .line 302
    .local v0, "end":I
    if-le v0, v2, :cond_2

    #@10
    .line 303
    move v0, v2

    #@11
    .line 305
    :cond_2
    :goto_0
    if-lez v0, :cond_3

    #@13
    iget-object v3, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    #@15
    add-int/lit8 v4, v0, -0x1

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v3

    #@1b
    const/16 v4, 0xa

    #@1d
    if-ne v3, v4, :cond_3

    #@1f
    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isEndBoundary(I)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_4

    #@25
    .line 308
    :cond_3
    if-gtz v0, :cond_5

    #@27
    .line 309
    return-object v5

    #@28
    .line 306
    :cond_4
    add-int/lit8 v0, v0, -0x1

    #@2a
    goto :goto_0

    #@2b
    .line 311
    :cond_5
    add-int/lit8 v1, v0, -0x1

    #@2d
    .line 312
    .local v1, "start":I
    :goto_1
    if-lez v1, :cond_6

    #@2f
    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isStartBoundary(I)Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_7

    #@35
    .line 315
    :cond_6
    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->getRange(II)[I

    #@38
    move-result-object v3

    #@39
    return-object v3

    #@3a
    .line 313
    :cond_7
    add-int/lit8 v1, v1, -0x1

    #@3c
    goto :goto_1
.end method
