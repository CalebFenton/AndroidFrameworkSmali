.class public Landroid/text/Selection;
.super Ljava/lang/Object;
.source "Selection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Selection$PositionIterator;,
        Landroid/text/Selection$START;,
        Landroid/text/Selection$END;
    }
.end annotation


# static fields
.field public static final SELECTION_END:Ljava/lang/Object;

.field public static final SELECTION_START:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 474
    new-instance v0, Landroid/text/Selection$START;

    #@3
    invoke-direct {v0, v1}, Landroid/text/Selection$START;-><init>(Landroid/text/Selection$START;)V

    #@6
    sput-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    #@8
    .line 475
    new-instance v0, Landroid/text/Selection$END;

    #@a
    invoke-direct {v0, v1}, Landroid/text/Selection$END;-><init>(Landroid/text/Selection$END;)V

    #@d
    sput-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    #@f
    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static chooseHorizontal(Landroid/text/Layout;III)I
    .locals 7
    .param p0, "layout"    # Landroid/text/Layout;
    .param p1, "direction"    # I
    .param p2, "off1"    # I
    .param p3, "off2"    # I

    #@0
    .prologue
    .line 426
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    #@3
    move-result v3

    #@4
    .line 427
    .local v3, "line1":I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    #@7
    move-result v4

    #@8
    .line 429
    .local v4, "line2":I
    if-ne v3, v4, :cond_3

    #@a
    .line 432
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@d
    move-result v0

    #@e
    .line 433
    .local v0, "h1":F
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@11
    move-result v1

    #@12
    .line 435
    .local v1, "h2":F
    if-gez p1, :cond_1

    #@14
    .line 438
    cmpg-float v6, v0, v1

    #@16
    if-gez v6, :cond_0

    #@18
    .line 439
    return p2

    #@19
    .line 441
    :cond_0
    return p3

    #@1a
    .line 445
    :cond_1
    cmpl-float v6, v0, v1

    #@1c
    if-lez v6, :cond_2

    #@1e
    .line 446
    return p2

    #@1f
    .line 448
    :cond_2
    return p3

    #@20
    .line 457
    .end local v0    # "h1":F
    .end local v1    # "h2":F
    :cond_3
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    #@23
    move-result v2

    #@24
    .line 458
    .local v2, "line":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@27
    move-result v5

    #@28
    .line 460
    .local v5, "textdir":I
    if-ne v5, p1, :cond_4

    #@2a
    .line 461
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    #@2d
    move-result v6

    #@2e
    return v6

    #@2f
    .line 463
    :cond_4
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    #@32
    move-result v6

    #@33
    return v6
.end method

.method public static extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 7
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 291
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@4
    move-result v0

    #@5
    .line 292
    .local v0, "end":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    #@8
    move-result v2

    #@9
    .line 294
    .local v2, "line":I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    #@c
    move-result v4

    #@d
    add-int/lit8 v4, v4, -0x1

    #@f
    if-ge v2, v4, :cond_1

    #@11
    .line 297
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@14
    move-result v4

    #@15
    .line 298
    add-int/lit8 v5, v2, 0x1

    #@17
    invoke-virtual {p1, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@1a
    move-result v5

    #@1b
    .line 297
    if-ne v4, v5, :cond_0

    #@1d
    .line 299
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@20
    move-result v1

    #@21
    .line 300
    .local v1, "h":F
    add-int/lit8 v4, v2, 0x1

    #@23
    invoke-virtual {p1, v4, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    #@26
    move-result v3

    #@27
    .line 305
    .end local v1    # "h":F
    .local v3, "move":I
    :goto_0
    invoke-static {p0, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    #@2a
    .line 306
    return v6

    #@2b
    .line 302
    .end local v3    # "move":I
    :cond_0
    add-int/lit8 v4, v2, 0x1

    #@2d
    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineStart(I)I

    #@30
    move-result v3

    #@31
    .restart local v3    # "move":I
    goto :goto_0

    #@32
    .line 307
    .end local v3    # "move":I
    :cond_1
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    #@35
    move-result v4

    #@36
    if-eq v0, v4, :cond_2

    #@38
    .line 308
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    #@3b
    move-result v4

    #@3c
    invoke-static {p0, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    #@3f
    .line 309
    return v6

    #@40
    .line 312
    :cond_2
    return v6
.end method

.method public static extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 3
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 320
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@4
    move-result v0

    #@5
    .line 321
    .local v0, "end":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    #@8
    move-result v1

    #@9
    .line 323
    .local v1, "to":I
    if-eq v1, v0, :cond_0

    #@b
    .line 324
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    #@e
    .line 325
    return v2

    #@f
    .line 328
    :cond_0
    return v2
.end method

.method public static extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 3
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 336
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@4
    move-result v0

    #@5
    .line 337
    .local v0, "end":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    #@8
    move-result v1

    #@9
    .line 339
    .local v1, "to":I
    if-eq v1, v0, :cond_0

    #@b
    .line 340
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    #@e
    .line 341
    return v2

    #@f
    .line 344
    :cond_0
    return v2
.end method

.method public static final extendSelection(Landroid/text/Spannable;I)V
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "index"    # I

    #@0
    .prologue
    .line 101
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    #@2
    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    if-eq v0, p1, :cond_0

    #@8
    .line 102
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    #@a
    const/16 v1, 0x22

    #@c
    invoke-interface {p0, v0, p1, p1, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@f
    .line 100
    :cond_0
    return-void
.end method

.method public static extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    #@0
    .prologue
    .line 348
    const/4 v1, -0x1

    #@1
    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    #@4
    move-result v0

    #@5
    .line 349
    .local v0, "where":I
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    #@8
    .line 350
    const/4 v1, 0x1

    #@9
    return v1
.end method

.method public static extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 354
    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    #@4
    move-result v0

    #@5
    .line 355
    .local v0, "where":I
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    #@8
    .line 356
    return v1
.end method

.method public static extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 7
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 262
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@5
    move-result v0

    #@6
    .line 263
    .local v0, "end":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    #@9
    move-result v2

    #@a
    .line 265
    .local v2, "line":I
    if-lez v2, :cond_1

    #@c
    .line 268
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@f
    move-result v4

    #@10
    .line 269
    add-int/lit8 v5, v2, -0x1

    #@12
    invoke-virtual {p1, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@15
    move-result v5

    #@16
    .line 268
    if-ne v4, v5, :cond_0

    #@18
    .line 270
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@1b
    move-result v1

    #@1c
    .line 271
    .local v1, "h":F
    add-int/lit8 v4, v2, -0x1

    #@1e
    invoke-virtual {p1, v4, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    #@21
    move-result v3

    #@22
    .line 276
    .end local v1    # "h":F
    .local v3, "move":I
    :goto_0
    invoke-static {p0, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    #@25
    .line 277
    return v6

    #@26
    .line 273
    .end local v3    # "move":I
    :cond_0
    add-int/lit8 v4, v2, -0x1

    #@28
    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineStart(I)I

    #@2b
    move-result v3

    #@2c
    .restart local v3    # "move":I
    goto :goto_0

    #@2d
    .line 278
    .end local v3    # "move":I
    :cond_1
    if-eqz v0, :cond_2

    #@2f
    .line 279
    invoke-static {p0, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    #@32
    .line 280
    return v6

    #@33
    .line 283
    :cond_2
    return v6
.end method

.method private static findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I
    .locals 5
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "dir"    # I

    #@0
    .prologue
    .line 408
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@3
    move-result v3

    #@4
    .line 409
    .local v3, "pt":I
    invoke-virtual {p1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    #@7
    move-result v1

    #@8
    .line 410
    .local v1, "line":I
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@b
    move-result v2

    #@c
    .line 412
    .local v2, "pdir":I
    mul-int v4, p2, v2

    #@e
    if-gez v4, :cond_0

    #@10
    .line 413
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineStart(I)I

    #@13
    move-result v4

    #@14
    return v4

    #@15
    .line 415
    :cond_0
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineEnd(I)I

    #@18
    move-result v0

    #@19
    .line 417
    .local v0, "end":I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    #@1c
    move-result v4

    #@1d
    add-int/lit8 v4, v4, -0x1

    #@1f
    if-ne v1, v4, :cond_1

    #@21
    .line 418
    return v0

    #@22
    .line 420
    :cond_1
    add-int/lit8 v4, v0, -0x1

    #@24
    return v4
.end method

.method public static final getSelectionEnd(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 49
    instance-of v0, p0, Landroid/text/Spanned;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 50
    check-cast p0, Landroid/text/Spanned;

    #@6
    .end local p0    # "text":Ljava/lang/CharSequence;
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    #@8
    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 52
    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_0
    const/4 v0, -0x1

    #@e
    return v0
.end method

.method public static final getSelectionStart(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 38
    instance-of v0, p0, Landroid/text/Spanned;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 39
    check-cast p0, Landroid/text/Spanned;

    #@6
    .end local p0    # "text":Ljava/lang/CharSequence;
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    #@8
    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 41
    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_0
    const/4 v0, -0x1

    #@e
    return v0
.end method

.method public static moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 10
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 169
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@5
    move-result v6

    #@6
    .line 170
    .local v6, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@9
    move-result v0

    #@a
    .line 172
    .local v0, "end":I
    if-eq v6, v0, :cond_1

    #@c
    .line 173
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    #@f
    move-result v4

    #@10
    .line 174
    .local v4, "min":I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    #@13
    move-result v3

    #@14
    .line 176
    .local v3, "max":I
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@17
    .line 178
    if-nez v4, :cond_0

    #@19
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    #@1c
    move-result v7

    #@1d
    if-ne v3, v7, :cond_0

    #@1f
    .line 179
    return v8

    #@20
    .line 182
    :cond_0
    return v9

    #@21
    .line 184
    .end local v3    # "max":I
    .end local v4    # "min":I
    :cond_1
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    #@24
    move-result v2

    #@25
    .line 186
    .local v2, "line":I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    #@28
    move-result v7

    #@29
    add-int/lit8 v7, v7, -0x1

    #@2b
    if-ge v2, v7, :cond_3

    #@2d
    .line 189
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@30
    move-result v7

    #@31
    .line 190
    add-int/lit8 v8, v2, 0x1

    #@33
    invoke-virtual {p1, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@36
    move-result v8

    #@37
    .line 189
    if-ne v7, v8, :cond_2

    #@39
    .line 191
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@3c
    move-result v1

    #@3d
    .line 192
    .local v1, "h":F
    add-int/lit8 v7, v2, 0x1

    #@3f
    invoke-virtual {p1, v7, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    #@42
    move-result v5

    #@43
    .line 197
    .end local v1    # "h":F
    .local v5, "move":I
    :goto_0
    invoke-static {p0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@46
    .line 198
    return v9

    #@47
    .line 194
    .end local v5    # "move":I
    :cond_2
    add-int/lit8 v7, v2, 0x1

    #@49
    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineStart(I)I

    #@4c
    move-result v5

    #@4d
    .restart local v5    # "move":I
    goto :goto_0

    #@4e
    .line 199
    .end local v5    # "move":I
    :cond_3
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    #@51
    move-result v7

    #@52
    if-eq v0, v7, :cond_4

    #@54
    .line 200
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    #@57
    move-result v7

    #@58
    invoke-static {p0, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@5b
    .line 201
    return v9

    #@5c
    .line 205
    :cond_4
    return v8
.end method

.method public static moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 5
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 214
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@4
    move-result v1

    #@5
    .line 215
    .local v1, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@8
    move-result v0

    #@9
    .line 217
    .local v0, "end":I
    if-eq v1, v0, :cond_0

    #@b
    .line 218
    const/4 v3, -0x1

    #@c
    invoke-static {p1, v3, v1, v0}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    #@f
    move-result v3

    #@10
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@13
    .line 219
    return v4

    #@14
    .line 221
    :cond_0
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    #@17
    move-result v2

    #@18
    .line 223
    .local v2, "to":I
    if-eq v2, v0, :cond_1

    #@1a
    .line 224
    invoke-static {p0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@1d
    .line 225
    return v4

    #@1e
    .line 229
    :cond_1
    const/4 v3, 0x0

    #@1f
    return v3
.end method

.method public static moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 5
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 239
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@4
    move-result v1

    #@5
    .line 240
    .local v1, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@8
    move-result v0

    #@9
    .line 242
    .local v0, "end":I
    if-eq v1, v0, :cond_0

    #@b
    .line 243
    invoke-static {p1, v4, v1, v0}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    #@e
    move-result v3

    #@f
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@12
    .line 244
    return v4

    #@13
    .line 246
    :cond_0
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    #@16
    move-result v2

    #@17
    .line 248
    .local v2, "to":I
    if-eq v2, v0, :cond_1

    #@19
    .line 249
    invoke-static {p0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@1c
    .line 250
    return v4

    #@1d
    .line 254
    :cond_1
    const/4 v3, 0x0

    #@1e
    return v3
.end method

.method public static moveToFollowing(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "iter"    # Landroid/text/Selection$PositionIterator;
    .param p2, "extendSelection"    # Z

    #@0
    .prologue
    .line 396
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@3
    move-result v1

    #@4
    invoke-interface {p1, v1}, Landroid/text/Selection$PositionIterator;->following(I)I

    #@7
    move-result v0

    #@8
    .line 397
    .local v0, "offset":I
    const/4 v1, -0x1

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 398
    if-eqz p2, :cond_1

    #@d
    .line 399
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    #@10
    .line 404
    :cond_0
    :goto_0
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 401
    :cond_1
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@15
    goto :goto_0
.end method

.method public static moveToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    #@0
    .prologue
    .line 360
    const/4 v1, -0x1

    #@1
    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    #@4
    move-result v0

    #@5
    .line 361
    .local v0, "where":I
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@8
    .line 362
    const/4 v1, 0x1

    #@9
    return v1
.end method

.method public static moveToPreceding(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "iter"    # Landroid/text/Selection$PositionIterator;
    .param p2, "extendSelection"    # Z

    #@0
    .prologue
    .line 382
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@3
    move-result v1

    #@4
    invoke-interface {p1, v1}, Landroid/text/Selection$PositionIterator;->preceding(I)I

    #@7
    move-result v0

    #@8
    .line 383
    .local v0, "offset":I
    const/4 v1, -0x1

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 384
    if-eqz p2, :cond_1

    #@d
    .line 385
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    #@10
    .line 390
    :cond_0
    :goto_0
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 387
    :cond_1
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@15
    goto :goto_0
.end method

.method public static moveToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 366
    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    #@4
    move-result v0

    #@5
    .line 367
    .local v0, "where":I
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@8
    .line 368
    return v1
.end method

.method public static moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 10
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 123
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@5
    move-result v6

    #@6
    .line 124
    .local v6, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@9
    move-result v0

    #@a
    .line 126
    .local v0, "end":I
    if-eq v6, v0, :cond_1

    #@c
    .line 127
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    #@f
    move-result v4

    #@10
    .line 128
    .local v4, "min":I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    #@13
    move-result v3

    #@14
    .line 130
    .local v3, "max":I
    invoke-static {p0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@17
    .line 132
    if-nez v4, :cond_0

    #@19
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    #@1c
    move-result v7

    #@1d
    if-ne v3, v7, :cond_0

    #@1f
    .line 133
    return v8

    #@20
    .line 136
    :cond_0
    return v9

    #@21
    .line 138
    .end local v3    # "max":I
    .end local v4    # "min":I
    :cond_1
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    #@24
    move-result v2

    #@25
    .line 140
    .local v2, "line":I
    if-lez v2, :cond_3

    #@27
    .line 143
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@2a
    move-result v7

    #@2b
    .line 144
    add-int/lit8 v8, v2, -0x1

    #@2d
    invoke-virtual {p1, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@30
    move-result v8

    #@31
    .line 143
    if-ne v7, v8, :cond_2

    #@33
    .line 145
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@36
    move-result v1

    #@37
    .line 146
    .local v1, "h":F
    add-int/lit8 v7, v2, -0x1

    #@39
    invoke-virtual {p1, v7, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    #@3c
    move-result v5

    #@3d
    .line 151
    .end local v1    # "h":F
    .local v5, "move":I
    :goto_0
    invoke-static {p0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@40
    .line 152
    return v9

    #@41
    .line 148
    .end local v5    # "move":I
    :cond_2
    add-int/lit8 v7, v2, -0x1

    #@43
    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineStart(I)I

    #@46
    move-result v5

    #@47
    .restart local v5    # "move":I
    goto :goto_0

    #@48
    .line 153
    .end local v5    # "move":I
    :cond_3
    if-eqz v0, :cond_4

    #@4a
    .line 154
    invoke-static {p0, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@4d
    .line 155
    return v9

    #@4e
    .line 159
    :cond_4
    return v8
.end method

.method public static final removeSelection(Landroid/text/Spannable;)V
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 109
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    #@2
    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@5
    .line 110
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    #@7
    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@a
    .line 108
    return-void
.end method

.method public static final selectAll(Landroid/text/Spannable;)V
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 94
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {p0, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@8
    .line 93
    return-void
.end method

.method public static final setSelection(Landroid/text/Spannable;I)V
    .locals 0
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "index"    # I

    #@0
    .prologue
    .line 87
    invoke-static {p0, p1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@3
    .line 86
    return-void
.end method

.method public static setSelection(Landroid/text/Spannable;II)V
    .locals 4
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "stop"    # I

    #@0
    .prologue
    .line 72
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@3
    move-result v1

    #@4
    .line 73
    .local v1, "ostart":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@7
    move-result v0

    #@8
    .line 75
    .local v0, "oend":I
    if-ne v1, p1, :cond_0

    #@a
    if-eq v0, p2, :cond_1

    #@c
    .line 76
    :cond_0
    sget-object v2, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    #@e
    .line 77
    const/16 v3, 0x222

    #@10
    .line 76
    invoke-interface {p0, v2, p1, p1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@13
    .line 78
    sget-object v2, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    #@15
    .line 79
    const/16 v3, 0x22

    #@17
    .line 78
    invoke-interface {p0, v2, p2, p2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@1a
    .line 67
    :cond_1
    return-void
.end method
