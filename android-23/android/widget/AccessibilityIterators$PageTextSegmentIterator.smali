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
.field private static sPageInstance:Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;


# instance fields
.field private final mTempRect:Landroid/graphics/Rect;

.field private mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 116
    invoke-direct {p0}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;-><init>()V

    #@3
    .line 121
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mTempRect:Landroid/graphics/Rect;

    #@a
    .line 116
    return-void
.end method

.method public static getInstance()Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;
    .locals 1

    #@0
    .prologue
    .line 124
    sget-object v0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->sPageInstance:Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 125
    new-instance v0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    #@6
    invoke-direct {v0}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;-><init>()V

    #@9
    sput-object v0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->sPageInstance:Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    #@b
    .line 127
    :cond_0
    sget-object v0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->sPageInstance:Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    #@d
    return-object v0
.end method


# virtual methods
.method public following(I)[I
    .locals 13
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const/4 v11, 0x0

    #@2
    .line 137
    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mText:Ljava/lang/String;

    #@4
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@7
    move-result v8

    #@8
    .line 138
    .local v8, "textLegth":I
    if-gtz v8, :cond_0

    #@a
    .line 139
    return-object v11

    #@b
    .line 141
    :cond_0
    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mText:Ljava/lang/String;

    #@d
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@10
    move-result v9

    #@11
    if-lt p1, v9, :cond_1

    #@13
    .line 142
    return-object v11

    #@14
    .line 144
    :cond_1
    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    #@16
    iget-object v10, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mTempRect:Landroid/graphics/Rect;

    #@18
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    #@1b
    move-result v9

    #@1c
    if-nez v9, :cond_2

    #@1e
    .line 145
    return-object v11

    #@1f
    .line 148
    :cond_2
    invoke-static {v12, p1}, Ljava/lang/Math;->max(II)I

    #@22
    move-result v7

    #@23
    .line 150
    .local v7, "start":I
    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    #@25
    invoke-virtual {v9, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    #@28
    move-result v0

    #@29
    .line 151
    .local v0, "currentLine":I
    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    #@2b
    invoke-virtual {v9, v0}, Landroid/text/Layout;->getLineTop(I)I

    #@2e
    move-result v1

    #@2f
    .line 152
    .local v1, "currentLineTop":I
    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mTempRect:Landroid/graphics/Rect;

    #@31
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    #@34
    move-result v9

    #@35
    iget-object v10, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    #@37
    invoke-virtual {v10}, Landroid/widget/TextView;->getTotalPaddingTop()I

    #@3a
    move-result v10

    #@3b
    sub-int/2addr v9, v10

    #@3c
    .line 153
    iget-object v10, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    #@3e
    invoke-virtual {v10}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    #@41
    move-result v10

    #@42
    .line 152
    sub-int v6, v9, v10

    #@44
    .line 154
    .local v6, "pageHeight":I
    add-int v5, v1, v6

    #@46
    .line 155
    .local v5, "nextPageStartY":I
    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    #@48
    iget-object v10, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    #@4a
    invoke-virtual {v10}, Landroid/text/Layout;->getLineCount()I

    #@4d
    move-result v10

    #@4e
    add-int/lit8 v10, v10, -0x1

    #@50
    invoke-virtual {v9, v10}, Landroid/text/Layout;->getLineTop(I)I

    #@53
    move-result v4

    #@54
    .line 156
    .local v4, "lastLineTop":I
    if-ge v5, v4, :cond_3

    #@56
    .line 157
    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    #@58
    invoke-virtual {v9, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    #@5b
    move-result v9

    #@5c
    :goto_0
    add-int/lit8 v2, v9, -0x1

    #@5e
    .line 159
    .local v2, "currentPageEndLine":I
    const/4 v9, 0x1

    #@5f
    invoke-virtual {p0, v2, v9}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getLineEdgeIndex(II)I

    #@62
    move-result v9

    #@63
    add-int/lit8 v3, v9, 0x1

    #@65
    .line 161
    .local v3, "end":I
    invoke-virtual {p0, v7, v3}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getRange(II)[I

    #@68
    move-result-object v9

    #@69
    return-object v9

    #@6a
    .line 157
    .end local v2    # "currentPageEndLine":I
    .end local v3    # "end":I
    :cond_3
    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    #@6c
    invoke-virtual {v9}, Landroid/text/Layout;->getLineCount()I

    #@6f
    move-result v9

    #@70
    goto :goto_0
.end method

.method public initialize(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;

    #@0
    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/text/Spannable;

    #@6
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@9
    move-result-object v1

    #@a
    invoke-super {p0, v0, v1}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->initialize(Landroid/text/Spannable;Landroid/text/Layout;)V

    #@d
    .line 132
    iput-object p1, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    #@f
    .line 130
    return-void
.end method

.method public preceding(I)[I
    .locals 11
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 166
    iget-object v8, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mText:Ljava/lang/String;

    #@3
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@6
    move-result v7

    #@7
    .line 167
    .local v7, "textLegth":I
    if-gtz v7, :cond_0

    #@9
    .line 168
    return-object v10

    #@a
    .line 170
    :cond_0
    if-gtz p1, :cond_1

    #@c
    .line 171
    return-object v10

    #@d
    .line 173
    :cond_1
    iget-object v8, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    #@f
    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mTempRect:Landroid/graphics/Rect;

    #@11
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    #@14
    move-result v8

    #@15
    if-nez v8, :cond_2

    #@17
    .line 174
    return-object v10

    #@18
    .line 177
    :cond_2
    iget-object v8, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mText:Ljava/lang/String;

    #@1a
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@1d
    move-result v8

    #@1e
    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    #@21
    move-result v3

    #@22
    .line 179
    .local v3, "end":I
    iget-object v8, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    #@24
    invoke-virtual {v8, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    #@27
    move-result v0

    #@28
    .line 180
    .local v0, "currentLine":I
    iget-object v8, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    #@2a
    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineTop(I)I

    #@2d
    move-result v1

    #@2e
    .line 181
    .local v1, "currentLineTop":I
    iget-object v8, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mTempRect:Landroid/graphics/Rect;

    #@30
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    #@33
    move-result v8

    #@34
    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    #@36
    invoke-virtual {v9}, Landroid/widget/TextView;->getTotalPaddingTop()I

    #@39
    move-result v9

    #@3a
    sub-int/2addr v8, v9

    #@3b
    .line 182
    iget-object v9, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    #@3d
    invoke-virtual {v9}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    #@40
    move-result v9

    #@41
    .line 181
    sub-int v4, v8, v9

    #@43
    .line 183
    .local v4, "pageHeight":I
    sub-int v5, v1, v4

    #@45
    .line 184
    .local v5, "previousPageEndY":I
    if-lez v5, :cond_3

    #@47
    .line 185
    iget-object v8, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    #@49
    invoke-virtual {v8, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    #@4c
    move-result v8

    #@4d
    add-int/lit8 v2, v8, 0x1

    #@4f
    .line 187
    .local v2, "currentPageStartLine":I
    :goto_0
    const/4 v8, -0x1

    #@50
    invoke-virtual {p0, v2, v8}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getLineEdgeIndex(II)I

    #@53
    move-result v6

    #@54
    .line 189
    .local v6, "start":I
    invoke-virtual {p0, v6, v3}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getRange(II)[I

    #@57
    move-result-object v8

    #@58
    return-object v8

    #@59
    .line 185
    .end local v2    # "currentPageStartLine":I
    .end local v6    # "start":I
    :cond_3
    const/4 v2, 0x0

    #@5a
    .restart local v2    # "currentPageStartLine":I
    goto :goto_0
.end method
