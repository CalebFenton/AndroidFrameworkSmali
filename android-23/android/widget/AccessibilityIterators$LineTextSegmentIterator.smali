.class Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
.super Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;
.source "AccessibilityIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LineTextSegmentIterator"
.end annotation


# static fields
.field protected static final DIRECTION_END:I = 0x1

.field protected static final DIRECTION_START:I = -0x1

.field private static sLineInstance:Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;


# instance fields
.field protected mLayout:Landroid/text/Layout;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
    .locals 1

    #@0
    .prologue
    .line 39
    sget-object v0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->sLineInstance:Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 40
    new-instance v0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    #@6
    invoke-direct {v0}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;-><init>()V

    #@9
    sput-object v0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->sLineInstance:Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    #@b
    .line 42
    :cond_0
    sget-object v0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->sLineInstance:Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    #@d
    return-object v0
.end method


# virtual methods
.method public following(I)[I
    .locals 9
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 52
    iget-object v5, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mText:Ljava/lang/String;

    #@5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@8
    move-result v4

    #@9
    .line 53
    .local v4, "textLegth":I
    if-gtz v4, :cond_0

    #@b
    .line 54
    return-object v7

    #@c
    .line 56
    :cond_0
    iget-object v5, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mText:Ljava/lang/String;

    #@e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@11
    move-result v5

    #@12
    if-lt p1, v5, :cond_1

    #@14
    .line 57
    return-object v7

    #@15
    .line 60
    :cond_1
    if-gez p1, :cond_2

    #@17
    .line 61
    iget-object v5, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    #@19
    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    #@1c
    move-result v2

    #@1d
    .line 70
    .local v2, "nextLine":I
    :goto_0
    iget-object v5, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    #@1f
    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    #@22
    move-result v5

    #@23
    if-lt v2, v5, :cond_4

    #@25
    .line 71
    return-object v7

    #@26
    .line 63
    .end local v2    # "nextLine":I
    :cond_2
    iget-object v5, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    #@28
    invoke-virtual {v5, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    #@2b
    move-result v0

    #@2c
    .line 64
    .local v0, "currentLine":I
    invoke-virtual {p0, v0, v8}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(II)I

    #@2f
    move-result v5

    #@30
    if-ne v5, p1, :cond_3

    #@32
    .line 65
    move v2, v0

    #@33
    .restart local v2    # "nextLine":I
    goto :goto_0

    #@34
    .line 67
    .end local v2    # "nextLine":I
    :cond_3
    add-int/lit8 v2, v0, 0x1

    #@36
    .restart local v2    # "nextLine":I
    goto :goto_0

    #@37
    .line 73
    .end local v0    # "currentLine":I
    :cond_4
    invoke-virtual {p0, v2, v8}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(II)I

    #@3a
    move-result v3

    #@3b
    .line 74
    .local v3, "start":I
    const/4 v5, 0x1

    #@3c
    invoke-virtual {p0, v2, v5}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(II)I

    #@3f
    move-result v5

    #@40
    add-int/lit8 v1, v5, 0x1

    #@42
    .line 75
    .local v1, "end":I
    invoke-virtual {p0, v3, v1}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getRange(II)[I

    #@45
    move-result-object v5

    #@46
    return-object v5
.end method

.method protected getLineEdgeIndex(II)I
    .locals 2
    .param p1, "lineNumber"    # I
    .param p2, "direction"    # I

    #@0
    .prologue
    .line 107
    iget-object v1, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    #@2
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@5
    move-result v0

    #@6
    .line 108
    .local v0, "paragraphDirection":I
    mul-int v1, p2, v0

    #@8
    if-gez v1, :cond_0

    #@a
    .line 109
    iget-object v1, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    #@c
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineStart(I)I

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 111
    :cond_0
    iget-object v1, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    #@13
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineEnd(I)I

    #@16
    move-result v1

    #@17
    add-int/lit8 v1, v1, -0x1

    #@19
    return v1
.end method

.method public initialize(Landroid/text/Spannable;Landroid/text/Layout;)V
    .locals 1
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "layout"    # Landroid/text/Layout;

    #@0
    .prologue
    .line 46
    invoke-interface {p1}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mText:Ljava/lang/String;

    #@6
    .line 47
    iput-object p2, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    #@8
    .line 45
    return-void
.end method

.method public preceding(I)[I
    .locals 9
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 80
    iget-object v5, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mText:Ljava/lang/String;

    #@4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@7
    move-result v4

    #@8
    .line 81
    .local v4, "textLegth":I
    if-gtz v4, :cond_0

    #@a
    .line 82
    return-object v7

    #@b
    .line 84
    :cond_0
    if-gtz p1, :cond_1

    #@d
    .line 85
    return-object v7

    #@e
    .line 88
    :cond_1
    iget-object v5, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mText:Ljava/lang/String;

    #@10
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@13
    move-result v5

    #@14
    if-le p1, v5, :cond_2

    #@16
    .line 89
    iget-object v5, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    #@18
    iget-object v6, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mText:Ljava/lang/String;

    #@1a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@1d
    move-result v6

    #@1e
    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    #@21
    move-result v2

    #@22
    .line 98
    .local v2, "previousLine":I
    :goto_0
    if-gez v2, :cond_4

    #@24
    .line 99
    return-object v7

    #@25
    .line 91
    .end local v2    # "previousLine":I
    :cond_2
    iget-object v5, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    #@27
    invoke-virtual {v5, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    #@2a
    move-result v0

    #@2b
    .line 92
    .local v0, "currentLine":I
    invoke-virtual {p0, v0, v8}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(II)I

    #@2e
    move-result v5

    #@2f
    add-int/lit8 v5, v5, 0x1

    #@31
    if-ne v5, p1, :cond_3

    #@33
    .line 93
    move v2, v0

    #@34
    .restart local v2    # "previousLine":I
    goto :goto_0

    #@35
    .line 95
    .end local v2    # "previousLine":I
    :cond_3
    add-int/lit8 v2, v0, -0x1

    #@37
    .restart local v2    # "previousLine":I
    goto :goto_0

    #@38
    .line 101
    .end local v0    # "currentLine":I
    :cond_4
    const/4 v5, -0x1

    #@39
    invoke-virtual {p0, v2, v5}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(II)I

    #@3c
    move-result v3

    #@3d
    .line 102
    .local v3, "start":I
    invoke-virtual {p0, v2, v8}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(II)I

    #@40
    move-result v5

    #@41
    add-int/lit8 v1, v5, 0x1

    #@43
    .line 103
    .local v1, "end":I
    invoke-virtual {p0, v3, v1}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getRange(II)[I

    #@46
    move-result-object v5

    #@47
    return-object v5
.end method
