.class public Landroid/text/method/LinkMovementMethod;
.super Landroid/text/method/ScrollingMovementMethod;
.source "LinkMovementMethod.java"


# static fields
.field private static final greylist-max-o CLICK:I = 0x1

.field private static final greylist-max-o DOWN:I = 0x3

.field private static greylist-max-o FROM_BELOW:Ljava/lang/Object; = null

.field private static final greylist-max-o HIDE_FLOATING_TOOLBAR_DELAY_MS:I = 0xc8

.field private static final greylist-max-o UP:I = 0x2

.field private static greylist sInstance:Landroid/text/method/LinkMovementMethod;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 293
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    return-void
.end method

.method private greylist-max-o action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 27
    .param p1, "what"    # I
    .param p2, "widget"    # Landroid/widget/TextView;
    .param p3, "buffer"    # Landroid/text/Spannable;

    .line 103
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 104
    .local v2, "layout":Landroid/text/Layout;
    invoke-virtual {v0}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_10

    .line 106
    return v4

    .line 109
    :cond_10
    invoke-virtual {v0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    .line 110
    invoke-virtual {v0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    .line 111
    .local v3, "padding":I
    invoke-virtual {v0}, Landroid/widget/TextView;->getScrollY()I

    move-result v5

    .line 112
    .local v5, "areaTop":I
    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    sub-int/2addr v6, v3

    .line 114
    .local v6, "areaBot":I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v7

    .line 115
    .local v7, "lineTop":I
    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    .line 117
    .local v8, "lineBot":I
    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    .line 118
    .local v9, "first":I
    invoke-virtual {v2, v8}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v10

    .line 120
    .local v10, "last":I
    const-class v11, Landroid/text/style/ClickableSpan;

    invoke-interface {v1, v9, v10, v11}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/ClickableSpan;

    .line 122
    .local v11, "candidates":[Landroid/text/style/ClickableSpan;
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v12

    .line 123
    .local v12, "a":I
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v13

    .line 125
    .local v13, "b":I
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 126
    .local v14, "selStart":I
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 128
    .local v15, "selEnd":I
    if-gez v14, :cond_5e

    .line 129
    move/from16 v16, v4

    sget-object v4, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {v1, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_60

    .line 130
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v4

    move v15, v4

    move v14, v4

    goto :goto_60

    .line 128
    :cond_5e
    move/from16 v16, v4

    .line 134
    :cond_60
    :goto_60
    const v4, 0x7fffffff

    if-le v14, v10, :cond_67

    .line 135
    move v15, v4

    move v14, v4

    .line 136
    :cond_67
    if-ge v15, v9, :cond_6f

    .line 137
    const/16 v17, -0x1

    move/from16 v15, v17

    move/from16 v14, v17

    .line 139
    :cond_6f
    packed-switch p1, :pswitch_data_120

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v5

    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "padding":I
    .end local v5    # "areaTop":I
    .local v18, "layout":Landroid/text/Layout;
    .local v19, "padding":I
    .local v20, "areaTop":I
    goto/16 :goto_11e

    .line 184
    .end local v18    # "layout":Landroid/text/Layout;
    .end local v19    # "padding":I
    .end local v20    # "areaTop":I
    .restart local v2    # "layout":Landroid/text/Layout;
    .restart local v3    # "padding":I
    .restart local v5    # "areaTop":I
    :pswitch_7a
    const v18, 0x7fffffff

    .line 185
    .local v18, "bestStart":I
    const v19, 0x7fffffff

    .line 187
    .local v19, "bestEnd":I
    const/16 v20, 0x0

    move/from16 v4, v18

    const/16 v21, 0x1

    move-object/from16 v18, v2

    move/from16 v2, v19

    move/from16 v19, v3

    move/from16 v3, v20

    .local v2, "bestEnd":I
    .local v3, "i":I
    .local v4, "bestStart":I
    .local v18, "layout":Landroid/text/Layout;
    .local v19, "padding":I
    :goto_8e
    move/from16 v20, v5

    .end local v5    # "areaTop":I
    .restart local v20    # "areaTop":I
    array-length v5, v11

    if-ge v3, v5, :cond_b4

    .line 188
    aget-object v5, v11, v3

    invoke-interface {v1, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 190
    .local v5, "start":I
    if-gt v5, v14, :cond_a1

    if-ne v14, v15, :cond_9e

    goto :goto_a1

    :cond_9e
    move/from16 v22, v3

    goto :goto_af

    .line 191
    :cond_a1
    :goto_a1
    if-ge v5, v4, :cond_ad

    .line 192
    move v4, v5

    .line 193
    move/from16 v22, v3

    .end local v3    # "i":I
    .local v22, "i":I
    aget-object v3, v11, v22

    invoke-interface {v1, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    goto :goto_af

    .line 191
    .end local v22    # "i":I
    .restart local v3    # "i":I
    :cond_ad
    move/from16 v22, v3

    .line 187
    .end local v3    # "i":I
    .end local v5    # "start":I
    .restart local v22    # "i":I
    :goto_af
    add-int/lit8 v3, v22, 0x1

    move/from16 v5, v20

    .end local v22    # "i":I
    .restart local v3    # "i":I
    goto :goto_8e

    :cond_b4
    move/from16 v22, v3

    .line 198
    .end local v3    # "i":I
    const v3, 0x7fffffff

    if-ge v2, v3, :cond_11e

    .line 199
    invoke-static {v1, v4, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 200
    return v21

    .line 162
    .end local v4    # "bestStart":I
    .end local v18    # "layout":Landroid/text/Layout;
    .end local v19    # "padding":I
    .end local v20    # "areaTop":I
    .local v2, "layout":Landroid/text/Layout;
    .local v3, "padding":I
    .local v5, "areaTop":I
    :pswitch_bf
    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v5

    const/16 v21, 0x1

    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "padding":I
    .end local v5    # "areaTop":I
    .restart local v18    # "layout":Landroid/text/Layout;
    .restart local v19    # "padding":I
    .restart local v20    # "areaTop":I
    const/4 v2, -0x1

    .line 163
    .local v2, "bestStart":I
    const/4 v3, -0x1

    .line 165
    .local v3, "bestEnd":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_ca
    array-length v5, v11

    if-ge v4, v5, :cond_ec

    .line 166
    aget-object v5, v11, v4

    invoke-interface {v1, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 168
    .local v5, "end":I
    if-lt v5, v15, :cond_db

    if-ne v14, v15, :cond_d8

    goto :goto_db

    :cond_d8
    move/from16 v17, v4

    goto :goto_e9

    .line 169
    :cond_db
    :goto_db
    if-le v5, v3, :cond_e7

    .line 170
    move/from16 v17, v4

    .end local v4    # "i":I
    .local v17, "i":I
    aget-object v4, v11, v17

    invoke-interface {v1, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 171
    move v3, v5

    goto :goto_e9

    .line 169
    .end local v17    # "i":I
    .restart local v4    # "i":I
    :cond_e7
    move/from16 v17, v4

    .line 165
    .end local v4    # "i":I
    .end local v5    # "end":I
    .restart local v17    # "i":I
    :goto_e9
    add-int/lit8 v4, v17, 0x1

    .end local v17    # "i":I
    .restart local v4    # "i":I
    goto :goto_ca

    :cond_ec
    move/from16 v17, v4

    .line 176
    .end local v4    # "i":I
    if-ltz v2, :cond_11e

    .line 177
    invoke-static {v1, v3, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 178
    return v21

    .line 141
    .end local v18    # "layout":Landroid/text/Layout;
    .end local v19    # "padding":I
    .end local v20    # "areaTop":I
    .local v2, "layout":Landroid/text/Layout;
    .local v3, "padding":I
    .local v5, "areaTop":I
    :pswitch_f4
    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v5

    const/16 v21, 0x1

    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "padding":I
    .end local v5    # "areaTop":I
    .restart local v18    # "layout":Landroid/text/Layout;
    .restart local v19    # "padding":I
    .restart local v20    # "areaTop":I
    if-ne v14, v15, :cond_ff

    .line 142
    return v16

    .line 145
    :cond_ff
    const-class v2, Landroid/text/style/ClickableSpan;

    invoke-interface {v1, v14, v15, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ClickableSpan;

    .line 147
    .local v2, "links":[Landroid/text/style/ClickableSpan;
    array-length v3, v2

    move/from16 v4, v21

    if-eq v3, v4, :cond_10d

    .line 148
    return v16

    .line 151
    :cond_10d
    aget-object v3, v2, v16

    .line 152
    .local v3, "link":Landroid/text/style/ClickableSpan;
    instance-of v5, v3, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    if-eqz v5, :cond_11a

    .line 153
    move-object v5, v3

    check-cast v5, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    invoke-virtual {v5, v0, v4}, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->onClick(Landroid/view/View;I)V

    goto :goto_11e

    .line 155
    :cond_11a
    invoke-virtual {v3, v0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 157
    nop

    .line 206
    .end local v2    # "links":[Landroid/text/style/ClickableSpan;
    .end local v3    # "link":Landroid/text/style/ClickableSpan;
    :cond_11e
    :goto_11e
    return v16

    nop

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_f4
        :pswitch_bf
        :pswitch_7a
    .end packed-switch
.end method

.method public static whitelist getInstance()Landroid/text/method/MovementMethod;
    .registers 1

    .line 285
    sget-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_b

    .line 286
    new-instance v0, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    sput-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    .line 288
    :cond_b
    sget-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    return-object v0
.end method


# virtual methods
.method public whitelist canSelectArbitrarily()Z
    .registers 2

    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 77
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 78
    const/4 v0, 0x1

    return v0

    .line 81
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected whitelist handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "keyCode"    # I
    .param p4, "movementMetaState"    # I
    .param p5, "event"    # Landroid/view/KeyEvent;

    .line 52
    sparse-switch p3, :sswitch_data_24

    goto :goto_1e

    .line 55
    :sswitch_4
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 56
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1e

    .line 57
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 58
    return v0

    .line 63
    :cond_1e
    :goto_1e
    invoke-super/range {p0 .. p5}, Landroid/text/method/ScrollingMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_24
    .sparse-switch
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method public whitelist initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;

    .line 269
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 270
    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method protected whitelist left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 86
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 87
    const/4 v0, 0x1

    return v0

    .line 90
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method public whitelist onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .registers 7
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "dir"    # I

    .line 275
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 277
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_10

    .line 278
    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    const/16 v1, 0x22

    const/4 v2, 0x0

    invoke-interface {p2, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_15

    .line 280
    :cond_10
    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 282
    :goto_15
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 212
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 214
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    if-nez v0, :cond_9a

    .line 215
    :cond_9
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 216
    .local v2, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 218
    .local v3, "y":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    .line 219
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 221
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    add-int/2addr v2, v4

    .line 222
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    .line 224
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 226
    .local v4, "layout":Landroid/text/Layout;
    if-ltz v3, :cond_5b

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v5

    if-le v3, v5, :cond_34

    goto :goto_5b

    .line 229
    :cond_34
    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    .line 230
    .local v5, "line":I
    int-to-float v6, v2

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_59

    int-to-float v6, v2

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4b

    goto :goto_59

    .line 233
    :cond_4b
    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v6

    .line 234
    .local v6, "off":I
    const-class v7, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v6, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ClickableSpan;

    .local v7, "links":[Landroid/text/style/ClickableSpan;
    goto :goto_5c

    .line 231
    .end local v6    # "off":I
    .end local v7    # "links":[Landroid/text/style/ClickableSpan;
    :cond_59
    :goto_59
    const/4 v7, 0x0

    .restart local v7    # "links":[Landroid/text/style/ClickableSpan;
    goto :goto_5c

    .line 227
    .end local v5    # "line":I
    .end local v7    # "links":[Landroid/text/style/ClickableSpan;
    :cond_5b
    :goto_5b
    const/4 v7, 0x0

    .line 238
    .restart local v7    # "links":[Landroid/text/style/ClickableSpan;
    :goto_5c
    if-eqz v7, :cond_97

    array-length v5, v7

    if-eqz v5, :cond_97

    .line 239
    const/4 v5, 0x0

    aget-object v6, v7, v5

    .line 240
    .local v6, "link":Landroid/text/style/ClickableSpan;
    if-ne v0, v1, :cond_75

    .line 241
    instance-of v8, v6, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    if-eqz v8, :cond_71

    .line 242
    move-object v8, v6

    check-cast v8, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    invoke-virtual {v8, p1, v5}, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->onClick(Landroid/view/View;I)V

    goto :goto_96

    .line 245
    :cond_71
    invoke-virtual {v6, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_96

    .line 247
    :cond_75
    if-nez v0, :cond_96

    .line 248
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x1c

    if-lt v5, v8, :cond_8a

    .line 252
    const/16 v5, 0xc8

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->hideFloatingToolbar(I)V

    .line 254
    :cond_8a
    nop

    .line 255
    invoke-interface {p2, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 256
    invoke-interface {p2, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 254
    invoke-static {p2, v5, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 258
    :cond_96
    :goto_96
    return v1

    .line 260
    .end local v6    # "link":Landroid/text/style/ClickableSpan;
    :cond_97
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 264
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "layout":Landroid/text/Layout;
    .end local v7    # "links":[Landroid/text/style/ClickableSpan;
    :cond_9a
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/ScrollingMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected whitelist right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 95
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 96
    const/4 v0, 0x1

    return v0

    .line 99
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected whitelist up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .line 68
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 69
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method
