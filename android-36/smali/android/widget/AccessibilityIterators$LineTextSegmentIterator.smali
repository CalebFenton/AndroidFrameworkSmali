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
.field protected static final blacklist DIRECTION_END:I = 0x1

.field protected static final blacklist DIRECTION_START:I = -0x1

.field private static blacklist sLineInstance:Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;


# instance fields
.field protected blacklist mLayout:Landroid/text/Layout;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
    .registers 1

    .line 39
    sget-object v0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->sLineInstance:Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    if-nez v0, :cond_b

    .line 40
    new-instance v0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    invoke-direct {v0}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;-><init>()V

    sput-object v0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->sLineInstance:Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    .line 42
    :cond_b
    sget-object v0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->sLineInstance:Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    return-object v0
.end method


# virtual methods
.method public blacklist following(I)[I
    .registers 7
    .param p1, "offset"    # I

    .line 52
    iget-object v0, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 53
    .local v0, "textLegth":I
    const/4 v1, 0x0

    if-gtz v0, :cond_a

    .line 54
    return-object v1

    .line 56
    :cond_a
    iget-object v2, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p1, v2, :cond_13

    .line 57
    return-object v1

    .line 60
    :cond_13
    const/4 v2, -0x1

    if-gez p1, :cond_1e

    .line 61
    iget-object v3, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .local v3, "nextLine":I
    goto :goto_2f

    .line 63
    .end local v3    # "nextLine":I
    :cond_1e
    iget-object v3, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 64
    .local v3, "currentLine":I
    invoke-virtual {p0, v3, v2}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v4

    if-ne v4, p1, :cond_2c

    .line 65
    move v4, v3

    .local v4, "nextLine":I
    goto :goto_2f

    .line 67
    .end local v4    # "nextLine":I
    :cond_2c
    add-int/lit8 v4, v3, 0x1

    move v3, v4

    .line 70
    .local v3, "nextLine":I
    :goto_2f
    iget-object v4, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    if-lt v3, v4, :cond_38

    .line 71
    return-object v1

    .line 73
    :cond_38
    invoke-virtual {p0, v3, v2}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v1

    .line 74
    .local v1, "start":I
    const/4 v2, 0x1

    invoke-virtual {p0, v3, v2}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v4

    add-int/2addr v4, v2

    .line 75
    .local v4, "end":I
    invoke-virtual {p0, v1, v4}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getRange(II)[I

    move-result-object v2

    return-object v2
.end method

.method protected blacklist getLineEdgeIndex(II)I
    .registers 5
    .param p1, "lineNumber"    # I
    .param p2, "direction"    # I

    .line 107
    iget-object v0, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 108
    .local v0, "paragraphDirection":I
    mul-int v1, p2, v0

    if-gez v1, :cond_11

    .line 109
    iget-object v1, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    return v1

    .line 111
    :cond_11
    iget-object v1, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public blacklist initialize(Landroid/text/Spannable;Landroid/text/Layout;)V
    .registers 4
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "layout"    # Landroid/text/Layout;

    .line 46
    invoke-interface {p1}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mText:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    .line 48
    return-void
.end method

.method public blacklist preceding(I)[I
    .registers 7
    .param p1, "offset"    # I

    .line 80
    iget-object v0, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 81
    .local v0, "textLegth":I
    const/4 v1, 0x0

    if-gtz v0, :cond_a

    .line 82
    return-object v1

    .line 84
    :cond_a
    if-gtz p1, :cond_d

    .line 85
    return-object v1

    .line 88
    :cond_d
    iget-object v2, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le p1, v2, :cond_23

    .line 89
    iget-object v2, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    iget-object v4, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .local v2, "previousLine":I
    goto :goto_35

    .line 91
    .end local v2    # "previousLine":I
    :cond_23
    iget-object v2, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 92
    .local v2, "currentLine":I
    invoke-virtual {p0, v2, v3}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v4

    add-int/2addr v4, v3

    if-ne v4, p1, :cond_32

    .line 93
    move v4, v2

    .local v4, "previousLine":I
    goto :goto_35

    .line 95
    .end local v4    # "previousLine":I
    :cond_32
    add-int/lit8 v4, v2, -0x1

    move v2, v4

    .line 98
    .local v2, "previousLine":I
    :goto_35
    if-gez v2, :cond_38

    .line 99
    return-object v1

    .line 101
    :cond_38
    const/4 v1, -0x1

    invoke-virtual {p0, v2, v1}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v1

    .line 102
    .local v1, "start":I
    invoke-virtual {p0, v2, v3}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v4

    add-int/2addr v4, v3

    .line 103
    .local v4, "end":I
    invoke-virtual {p0, v1, v4}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    return-object v3
.end method
