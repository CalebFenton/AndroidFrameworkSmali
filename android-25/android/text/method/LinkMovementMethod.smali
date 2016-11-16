.class public Landroid/text/method/LinkMovementMethod;
.super Landroid/text/method/ScrollingMovementMethod;
.source "LinkMovementMethod.java"


# static fields
.field private static final CLICK:I = 0x1

.field private static final DOWN:I = 0x3

.field private static FROM_BELOW:Ljava/lang/Object; = null

.field private static final UP:I = 0x2

.field private static sInstance:Landroid/text/method/LinkMovementMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 258
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    #@2
    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    #@5
    sput-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    #@7
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    #@3
    return-void
.end method

.method private action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 25
    .param p1, "what"    # I
    .param p2, "widget"    # Landroid/widget/TextView;
    .param p3, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3
    move-result-object v15

    #@4
    .line 99
    .local v15, "layout":Landroid/text/Layout;
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getTotalPaddingTop()I

    #@7
    move-result v23

    #@8
    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    #@b
    move-result v24

    #@c
    .line 99
    add-int v19, v23, v24

    #@e
    .line 101
    .local v19, "padding":I
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getScrollY()I

    #@11
    move-result v6

    #@12
    .line 102
    .local v6, "areatop":I
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getHeight()I

    #@15
    move-result v23

    #@16
    add-int v23, v23, v6

    #@18
    sub-int v5, v23, v19

    #@1a
    .line 104
    .local v5, "areabot":I
    invoke-virtual {v15, v6}, Landroid/text/Layout;->getLineForVertical(I)I

    #@1d
    move-result v17

    #@1e
    .line 105
    .local v17, "linetop":I
    invoke-virtual {v15, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    #@21
    move-result v16

    #@22
    .line 107
    .local v16, "linebot":I
    move/from16 v0, v17

    #@24
    invoke-virtual {v15, v0}, Landroid/text/Layout;->getLineStart(I)I

    #@27
    move-result v12

    #@28
    .line 108
    .local v12, "first":I
    invoke-virtual/range {v15 .. v16}, Landroid/text/Layout;->getLineEnd(I)I

    #@2b
    move-result v14

    #@2c
    .line 110
    .local v14, "last":I
    const-class v23, Landroid/text/style/ClickableSpan;

    #@2e
    move-object/from16 v0, p3

    #@30
    move-object/from16 v1, v23

    #@32
    invoke-interface {v0, v12, v14, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@35
    move-result-object v10

    #@36
    check-cast v10, [Landroid/text/style/ClickableSpan;

    #@38
    .line 112
    .local v10, "candidates":[Landroid/text/style/ClickableSpan;
    invoke-static/range {p3 .. p3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@3b
    move-result v4

    #@3c
    .line 113
    .local v4, "a":I
    invoke-static/range {p3 .. p3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@3f
    move-result v7

    #@40
    .line 115
    .local v7, "b":I
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    #@43
    move-result v21

    #@44
    .line 116
    .local v21, "selStart":I
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    #@47
    move-result v20

    #@48
    .line 118
    .local v20, "selEnd":I
    if-gez v21, :cond_0

    #@4a
    .line 119
    sget-object v23, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    #@4c
    move-object/from16 v0, p3

    #@4e
    move-object/from16 v1, v23

    #@50
    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    #@53
    move-result v23

    #@54
    if-ltz v23, :cond_0

    #@56
    .line 120
    invoke-interface/range {p3 .. p3}, Landroid/text/Spannable;->length()I

    #@59
    move-result v20

    #@5a
    move/from16 v21, v20

    #@5c
    .line 124
    :cond_0
    move/from16 v0, v21

    #@5e
    if-le v0, v14, :cond_1

    #@60
    .line 125
    const v20, 0x7fffffff

    #@63
    const v21, 0x7fffffff

    #@66
    .line 126
    :cond_1
    move/from16 v0, v20

    #@68
    if-ge v0, v12, :cond_2

    #@6a
    .line 127
    const/16 v20, -0x1

    #@6c
    const/16 v21, -0x1

    #@6e
    .line 129
    :cond_2
    packed-switch p1, :pswitch_data_0

    #@71
    .line 190
    :cond_3
    :goto_0
    const/16 v23, 0x0

    #@73
    return v23

    #@74
    .line 131
    :pswitch_0
    move/from16 v0, v21

    #@76
    move/from16 v1, v20

    #@78
    if-ne v0, v1, :cond_4

    #@7a
    .line 132
    const/16 v23, 0x0

    #@7c
    return v23

    #@7d
    .line 135
    :cond_4
    const-class v23, Landroid/text/style/ClickableSpan;

    #@7f
    move-object/from16 v0, p3

    #@81
    move/from16 v1, v21

    #@83
    move/from16 v2, v20

    #@85
    move-object/from16 v3, v23

    #@87
    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@8a
    move-result-object v18

    #@8b
    check-cast v18, [Landroid/text/style/ClickableSpan;

    #@8d
    .line 137
    .local v18, "link":[Landroid/text/style/ClickableSpan;
    move-object/from16 v0, v18

    #@8f
    array-length v0, v0

    #@90
    move/from16 v23, v0

    #@92
    const/16 v24, 0x1

    #@94
    move/from16 v0, v23

    #@96
    move/from16 v1, v24

    #@98
    if-eq v0, v1, :cond_5

    #@9a
    .line 138
    const/16 v23, 0x0

    #@9c
    return v23

    #@9d
    .line 140
    :cond_5
    const/16 v23, 0x0

    #@9f
    aget-object v23, v18, v23

    #@a1
    move-object/from16 v0, v23

    #@a3
    move-object/from16 v1, p2

    #@a5
    invoke-virtual {v0, v1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    #@a8
    goto :goto_0

    #@a9
    .line 146
    .end local v18    # "link":[Landroid/text/style/ClickableSpan;
    :pswitch_1
    const/4 v9, -0x1

    #@aa
    .line 147
    .local v9, "beststart":I
    const/4 v8, -0x1

    #@ab
    .line 149
    .local v8, "bestend":I
    const/4 v13, 0x0

    #@ac
    .local v13, "i":I
    :goto_1
    array-length v0, v10

    #@ad
    move/from16 v23, v0

    #@af
    move/from16 v0, v23

    #@b1
    if-ge v13, v0, :cond_8

    #@b3
    .line 150
    aget-object v23, v10, v13

    #@b5
    move-object/from16 v0, p3

    #@b7
    move-object/from16 v1, v23

    #@b9
    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    #@bc
    move-result v11

    #@bd
    .line 152
    .local v11, "end":I
    move/from16 v0, v20

    #@bf
    if-lt v11, v0, :cond_6

    #@c1
    move/from16 v0, v21

    #@c3
    move/from16 v1, v20

    #@c5
    if-ne v0, v1, :cond_7

    #@c7
    .line 153
    :cond_6
    if-le v11, v8, :cond_7

    #@c9
    .line 154
    aget-object v23, v10, v13

    #@cb
    move-object/from16 v0, p3

    #@cd
    move-object/from16 v1, v23

    #@cf
    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    #@d2
    move-result v9

    #@d3
    .line 155
    move v8, v11

    #@d4
    .line 149
    :cond_7
    add-int/lit8 v13, v13, 0x1

    #@d6
    goto :goto_1

    #@d7
    .line 160
    .end local v11    # "end":I
    :cond_8
    if-ltz v9, :cond_3

    #@d9
    .line 161
    move-object/from16 v0, p3

    #@db
    invoke-static {v0, v8, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@de
    .line 162
    const/16 v23, 0x1

    #@e0
    return v23

    #@e1
    .line 168
    .end local v8    # "bestend":I
    .end local v9    # "beststart":I
    .end local v13    # "i":I
    :pswitch_2
    const v9, 0x7fffffff

    #@e4
    .line 169
    .restart local v9    # "beststart":I
    const v8, 0x7fffffff

    #@e7
    .line 171
    .restart local v8    # "bestend":I
    const/4 v13, 0x0

    #@e8
    .restart local v13    # "i":I
    :goto_2
    array-length v0, v10

    #@e9
    move/from16 v23, v0

    #@eb
    move/from16 v0, v23

    #@ed
    if-ge v13, v0, :cond_b

    #@ef
    .line 172
    aget-object v23, v10, v13

    #@f1
    move-object/from16 v0, p3

    #@f3
    move-object/from16 v1, v23

    #@f5
    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    #@f8
    move-result v22

    #@f9
    .line 174
    .local v22, "start":I
    move/from16 v0, v22

    #@fb
    move/from16 v1, v21

    #@fd
    if-gt v0, v1, :cond_9

    #@ff
    move/from16 v0, v21

    #@101
    move/from16 v1, v20

    #@103
    if-ne v0, v1, :cond_a

    #@105
    .line 175
    :cond_9
    move/from16 v0, v22

    #@107
    if-ge v0, v9, :cond_a

    #@109
    .line 176
    move/from16 v9, v22

    #@10b
    .line 177
    aget-object v23, v10, v13

    #@10d
    move-object/from16 v0, p3

    #@10f
    move-object/from16 v1, v23

    #@111
    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    #@114
    move-result v8

    #@115
    .line 171
    :cond_a
    add-int/lit8 v13, v13, 0x1

    #@117
    goto :goto_2

    #@118
    .line 182
    .end local v22    # "start":I
    :cond_b
    const v23, 0x7fffffff

    #@11b
    move/from16 v0, v23

    #@11d
    if-ge v8, v0, :cond_3

    #@11f
    .line 183
    move-object/from16 v0, p3

    #@121
    invoke-static {v0, v9, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@124
    .line 184
    const/16 v23, 0x1

    #@126
    return v23

    #@127
    .line 129
    nop

    #@128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    #@0
    .prologue
    .line 251
    sget-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 252
    new-instance v0, Landroid/text/method/LinkMovementMethod;

    #@6
    invoke-direct {v0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    #@9
    sput-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    #@b
    .line 254
    :cond_0
    sget-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    #@d
    return-object v0
.end method


# virtual methods
.method public canSelectArbitrarily()Z
    .locals 1

    #@0
    .prologue
    .line 40
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 71
    const/4 v0, 0x3

    #@1
    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 72
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 75
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method protected handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "keyCode"    # I
    .param p4, "movementMetaState"    # I
    .param p5, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 46
    sparse-switch p3, :sswitch_data_0

    #@4
    .line 57
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/text/method/ScrollingMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 49
    :sswitch_0
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 50
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_0

    #@15
    .line 51
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_0

    #@1b
    invoke-direct {p0, v1, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    #@1e
    move-result v0

    #@1f
    .line 50
    if-eqz v0, :cond_0

    #@21
    .line 52
    return v1

    #@22
    .line 46
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 235
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    #@3
    .line 236
    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    #@5
    invoke-interface {p2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@8
    .line 234
    return-void
.end method

.method protected left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 80
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 81
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 84
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "dir"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 241
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    #@4
    .line 243
    and-int/lit8 v0, p3, 0x1

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 244
    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    #@a
    const/16 v1, 0x22

    #@c
    invoke-interface {p2, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@f
    .line 240
    :goto_0
    return-void

    #@10
    .line 246
    :cond_0
    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    #@12
    invoke-interface {p2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@15
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 196
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    #@5
    move-result v0

    #@6
    .line 198
    .local v0, "action":I
    if-eq v0, v9, :cond_0

    #@8
    .line 199
    if-nez v0, :cond_4

    #@a
    .line 200
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    #@d
    move-result v7

    #@e
    float-to-int v5, v7

    #@f
    .line 201
    .local v5, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    #@12
    move-result v7

    #@13
    float-to-int v6, v7

    #@14
    .line 203
    .local v6, "y":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    #@17
    move-result v7

    #@18
    sub-int/2addr v5, v7

    #@19
    .line 204
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    #@1c
    move-result v7

    #@1d
    sub-int/2addr v6, v7

    #@1e
    .line 206
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    #@21
    move-result v7

    #@22
    add-int/2addr v5, v7

    #@23
    .line 207
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    #@26
    move-result v7

    #@27
    add-int/2addr v6, v7

    #@28
    .line 209
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@2b
    move-result-object v1

    #@2c
    .line 210
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineForVertical(I)I

    #@2f
    move-result v2

    #@30
    .line 211
    .local v2, "line":I
    int-to-float v7, v5

    #@31
    invoke-virtual {v1, v2, v7}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    #@34
    move-result v4

    #@35
    .line 213
    .local v4, "off":I
    const-class v7, Landroid/text/style/ClickableSpan;

    #@37
    invoke-interface {p2, v4, v4, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@3a
    move-result-object v3

    #@3b
    check-cast v3, [Landroid/text/style/ClickableSpan;

    #@3d
    .line 215
    .local v3, "link":[Landroid/text/style/ClickableSpan;
    array-length v7, v3

    #@3e
    if-eqz v7, :cond_3

    #@40
    .line 216
    if-ne v0, v9, :cond_2

    #@42
    .line 217
    aget-object v7, v3, v8

    #@44
    invoke-virtual {v7, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    #@47
    .line 224
    :cond_1
    :goto_0
    return v9

    #@48
    .line 218
    :cond_2
    if-nez v0, :cond_1

    #@4a
    .line 220
    aget-object v7, v3, v8

    #@4c
    invoke-interface {p2, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    #@4f
    move-result v7

    #@50
    .line 221
    aget-object v8, v3, v8

    #@52
    invoke-interface {p2, v8}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    #@55
    move-result v8

    #@56
    .line 219
    invoke-static {p2, v7, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@59
    goto :goto_0

    #@5a
    .line 226
    :cond_3
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    #@5d
    .line 230
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "link":[Landroid/text/style/ClickableSpan;
    .end local v4    # "off":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/ScrollingMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    #@60
    move-result v7

    #@61
    return v7
.end method

.method protected right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 89
    const/4 v0, 0x3

    #@1
    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 90
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 93
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method protected up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 62
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 63
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 66
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    #@c
    move-result v0

    #@d
    return v0
.end method
