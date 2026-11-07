.class Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;
.super Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
.source "AccessibilityIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PageTextSegmentIterator"
.end annotation


# static fields
.field private static blacklist sPageInstance:Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;


# instance fields
.field private final blacklist mTempRect:Landroid/graphics/Rect;

.field private blacklist mView:Landroid/widget/TextView;


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 116
    invoke-direct {p0}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;-><init>()V

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static blacklist getInstance()Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;
    .registers 1

    .line 124
    sget-object v0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->sPageInstance:Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    if-nez v0, :cond_b

    .line 125
    new-instance v0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    invoke-direct {v0}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;-><init>()V

    sput-object v0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->sPageInstance:Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    .line 127
    :cond_b
    sget-object v0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->sPageInstance:Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    return-object v0
.end method


# virtual methods
.method public blacklist following(I)[I
    .registers 12
    .param p1, "offset"    # I

    .line 137
    iget-object v0, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 138
    .local v0, "textLength":I
    const/4 v1, 0x0

    if-gtz v0, :cond_a

    .line 139
    return-object v1

    .line 141
    :cond_a
    iget-object v2, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p1, v2, :cond_13

    .line 142
    return-object v1

    .line 144
    :cond_13
    iget-object v2, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 145
    return-object v1

    .line 148
    :cond_1e
    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 150
    .local v1, "start":I
    iget-object v2, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 151
    .local v2, "currentLine":I
    iget-object v3, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    .line 152
    .local v3, "currentLineTop":I
    iget-object v4, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    .line 153
    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 154
    .local v4, "pageHeight":I
    add-int v5, v3, v4

    .line 155
    .local v5, "nextPageStartY":I
    iget-object v6, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    iget-object v7, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7}, Landroid/text/Layout;->getLineCount()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 156
    .local v6, "lastLineTop":I
    if-ge v5, v6, :cond_5c

    .line 157
    iget-object v7, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v7

    goto :goto_62

    :cond_5c
    iget-object v7, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7}, Landroid/text/Layout;->getLineCount()I

    move-result v7

    :goto_62
    sub-int/2addr v7, v8

    .line 159
    .local v7, "currentPageEndLine":I
    invoke-virtual {p0, v7, v8}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v9

    add-int/2addr v9, v8

    .line 161
    .local v9, "end":I
    invoke-virtual {p0, v1, v9}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getRange(II)[I

    move-result-object v8

    return-object v8
.end method

.method public blacklist initialize(Landroid/widget/TextView;)V
    .registers 4
    .param p1, "view"    # Landroid/widget/TextView;

    .line 131
    invoke-virtual {p1}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-super {p0, v0, v1}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->initialize(Landroid/text/Spannable;Landroid/text/Layout;)V

    .line 132
    iput-object p1, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    .line 133
    return-void
.end method

.method public blacklist preceding(I)[I
    .registers 11
    .param p1, "offset"    # I

    .line 166
    iget-object v0, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 167
    .local v0, "textLength":I
    const/4 v1, 0x0

    if-gtz v0, :cond_a

    .line 168
    return-object v1

    .line 170
    :cond_a
    if-gtz p1, :cond_d

    .line 171
    return-object v1

    .line 173
    :cond_d
    iget-object v2, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 174
    return-object v1

    .line 177
    :cond_18
    iget-object v1, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 179
    .local v1, "end":I
    iget-object v2, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 180
    .local v2, "currentLine":I
    iget-object v3, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    .line 181
    .local v3, "currentLineTop":I
    iget-object v4, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    .line 182
    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 183
    .local v4, "pageHeight":I
    sub-int v5, v3, v4

    .line 184
    .local v5, "previousPageEndY":I
    if-lez v5, :cond_4d

    .line 185
    iget-object v6, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v6

    goto :goto_4e

    :cond_4d
    const/4 v6, 0x0

    .line 188
    .local v6, "currentPageStartLine":I
    :goto_4e
    iget-object v7, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v1, v7, :cond_5a

    if-ge v6, v2, :cond_5a

    .line 189
    add-int/lit8 v6, v6, 0x1

    .line 192
    :cond_5a
    const/4 v7, -0x1

    invoke-virtual {p0, v6, v7}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v7

    .line 194
    .local v7, "start":I
    invoke-virtual {p0, v7, v1}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getRange(II)[I

    move-result-object v8

    return-object v8
.end method
