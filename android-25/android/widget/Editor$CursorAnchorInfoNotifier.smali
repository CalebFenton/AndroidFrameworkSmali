.class final Landroid/widget/Editor$CursorAnchorInfoNotifier;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CursorAnchorInfoNotifier"
.end annotation


# instance fields
.field final mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field final mTmpIntOffset:[I

.field final mViewToScreenMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/Editor;

    #@0
    .prologue
    .line 3872
    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 3873
    new-instance v0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    #@7
    invoke-direct {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    #@a
    iput-object v0, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    #@c
    .line 3874
    const/4 v0, 0x2

    #@d
    new-array v0, v0, [I

    #@f
    iput-object v0, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    #@11
    .line 3875
    new-instance v0, Landroid/graphics/Matrix;

    #@13
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@16
    iput-object v0, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    #@18
    .line 3872
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$CursorAnchorInfoNotifier;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Editor;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;)V

    #@3
    return-void
.end method


# virtual methods
.method public updatePosition(IIZZ)V
    .locals 54
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    #@0
    .prologue
    .line 3880
    move-object/from16 v0, p0

    #@2
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    #@4
    iget-object v0, v11, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@6
    move-object/from16 v24, v0

    #@8
    .line 3881
    .local v24, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v24, :cond_0

    #@a
    move-object/from16 v0, v24

    #@c
    iget v11, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@e
    if-lez v11, :cond_1

    #@10
    .line 3882
    :cond_0
    return-void

    #@11
    .line 3884
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@14
    move-result-object v23

    #@15
    .line 3885
    .local v23, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v23, :cond_2

    #@17
    .line 3886
    return-void

    #@18
    .line 3888
    :cond_2
    move-object/from16 v0, p0

    #@1a
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    #@1c
    invoke-static {v11}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@1f
    move-result-object v11

    #@20
    move-object/from16 v0, v23

    #@22
    invoke-virtual {v0, v11}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    #@25
    move-result v11

    #@26
    if-nez v11, :cond_3

    #@28
    .line 3889
    return-void

    #@29
    .line 3892
    :cond_3
    invoke-virtual/range {v23 .. v23}, Landroid/view/inputmethod/InputMethodManager;->isCursorAnchorInfoEnabled()Z

    #@2c
    move-result v11

    #@2d
    if-nez v11, :cond_4

    #@2f
    .line 3893
    return-void

    #@30
    .line 3895
    :cond_4
    move-object/from16 v0, p0

    #@32
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    #@34
    invoke-static {v11}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@37
    move-result-object v11

    #@38
    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3b
    move-result-object v30

    #@3c
    .line 3896
    .local v30, "layout":Landroid/text/Layout;
    if-nez v30, :cond_5

    #@3e
    .line 3897
    return-void

    #@3f
    .line 3900
    :cond_5
    move-object/from16 v0, p0

    #@41
    iget-object v4, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    #@43
    .line 3901
    .local v4, "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    invoke-virtual {v4}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    #@46
    .line 3903
    move-object/from16 v0, p0

    #@48
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    #@4a
    invoke-static {v11}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@4d
    move-result-object v11

    #@4e
    invoke-virtual {v11}, Landroid/widget/TextView;->getSelectionStart()I

    #@51
    move-result v43

    #@52
    .line 3904
    .local v43, "selectionStart":I
    move-object/from16 v0, p0

    #@54
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    #@56
    invoke-static {v11}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@59
    move-result-object v11

    #@5a
    invoke-virtual {v11}, Landroid/widget/TextView;->getSelectionEnd()I

    #@5d
    move-result v11

    #@5e
    move/from16 v0, v43

    #@60
    invoke-virtual {v4, v0, v11}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    #@63
    .line 3907
    move-object/from16 v0, p0

    #@65
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    #@67
    move-object/from16 v0, p0

    #@69
    iget-object v0, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    #@6b
    move-object/from16 v51, v0

    #@6d
    invoke-static/range {v51 .. v51}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@70
    move-result-object v51

    #@71
    invoke-virtual/range {v51 .. v51}, Landroid/widget/TextView;->getMatrix()Landroid/graphics/Matrix;

    #@74
    move-result-object v51

    #@75
    move-object/from16 v0, v51

    #@77
    invoke-virtual {v11, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@7a
    .line 3908
    move-object/from16 v0, p0

    #@7c
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    #@7e
    invoke-static {v11}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@81
    move-result-object v11

    #@82
    move-object/from16 v0, p0

    #@84
    iget-object v0, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    #@86
    move-object/from16 v51, v0

    #@88
    move-object/from16 v0, v51

    #@8a
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    #@8d
    .line 3909
    move-object/from16 v0, p0

    #@8f
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    #@91
    move-object/from16 v0, p0

    #@93
    iget-object v0, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    #@95
    move-object/from16 v51, v0

    #@97
    const/16 v52, 0x0

    #@99
    aget v51, v51, v52

    #@9b
    move/from16 v0, v51

    #@9d
    int-to-float v0, v0

    #@9e
    move/from16 v51, v0

    #@a0
    move-object/from16 v0, p0

    #@a2
    iget-object v0, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    #@a4
    move-object/from16 v52, v0

    #@a6
    const/16 v53, 0x1

    #@a8
    aget v52, v52, v53

    #@aa
    move/from16 v0, v52

    #@ac
    int-to-float v0, v0

    #@ad
    move/from16 v52, v0

    #@af
    move/from16 v0, v51

    #@b1
    move/from16 v1, v52

    #@b3
    invoke-virtual {v11, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@b6
    .line 3910
    move-object/from16 v0, p0

    #@b8
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    #@ba
    invoke-virtual {v4, v11}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    #@bd
    .line 3913
    move-object/from16 v0, p0

    #@bf
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    #@c1
    invoke-static {v11}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@c4
    move-result-object v11

    #@c5
    invoke-virtual {v11}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    #@c8
    move-result v11

    #@c9
    int-to-float v0, v11

    #@ca
    move/from16 v48, v0

    #@cc
    .line 3915
    .local v48, "viewportToContentHorizontalOffset":F
    move-object/from16 v0, p0

    #@ce
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    #@d0
    invoke-static {v11}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@d3
    move-result-object v11

    #@d4
    invoke-virtual {v11}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    #@d7
    move-result v11

    #@d8
    int-to-float v0, v11

    #@d9
    move/from16 v49, v0

    #@db
    .line 3917
    .local v49, "viewportToContentVerticalOffset":F
    move-object/from16 v0, p0

    #@dd
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    #@df
    invoke-static {v11}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@e2
    move-result-object v11

    #@e3
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@e6
    move-result-object v46

    #@e7
    .line 3918
    .local v46, "text":Ljava/lang/CharSequence;
    move-object/from16 v0, v46

    #@e9
    instance-of v11, v0, Landroid/text/Spannable;

    #@eb
    if-eqz v11, :cond_11

    #@ed
    move-object/from16 v44, v46

    #@ef
    .line 3919
    check-cast v44, Landroid/text/Spannable;

    #@f1
    .line 3920
    .local v44, "sp":Landroid/text/Spannable;
    invoke-static/range {v44 .. v44}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    #@f4
    move-result v21

    #@f5
    .line 3921
    .local v21, "composingTextStart":I
    invoke-static/range {v44 .. v44}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    #@f8
    move-result v20

    #@f9
    .line 3922
    .local v20, "composingTextEnd":I
    move/from16 v0, v20

    #@fb
    move/from16 v1, v21

    #@fd
    if-ge v0, v1, :cond_6

    #@ff
    .line 3923
    move/from16 v45, v20

    #@101
    .line 3924
    .local v45, "temp":I
    move/from16 v20, v21

    #@103
    .line 3925
    move/from16 v21, v45

    #@105
    .line 3928
    .end local v45    # "temp":I
    :cond_6
    if-ltz v21, :cond_a

    #@107
    move/from16 v0, v21

    #@109
    move/from16 v1, v20

    #@10b
    if-ge v0, v1, :cond_a

    #@10d
    const/16 v22, 0x1

    #@10f
    .line 3929
    .local v22, "hasComposingText":Z
    :goto_0
    if-eqz v22, :cond_11

    #@111
    .line 3930
    move-object/from16 v0, v46

    #@113
    move/from16 v1, v21

    #@115
    move/from16 v2, v20

    #@117
    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@11a
    move-result-object v19

    #@11b
    .line 3932
    .local v19, "composingText":Ljava/lang/CharSequence;
    move/from16 v0, v21

    #@11d
    move-object/from16 v1, v19

    #@11f
    invoke-virtual {v4, v0, v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    #@122
    .line 3934
    move-object/from16 v0, v30

    #@124
    move/from16 v1, v21

    #@126
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    #@129
    move-result v37

    #@12a
    .line 3935
    .local v37, "minLine":I
    add-int/lit8 v11, v20, -0x1

    #@12c
    move-object/from16 v0, v30

    #@12e
    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineForOffset(I)I

    #@131
    move-result v36

    #@132
    .line 3936
    .local v36, "maxLine":I
    move/from16 v32, v37

    #@134
    .local v32, "line":I
    :goto_1
    move/from16 v0, v32

    #@136
    move/from16 v1, v36

    #@138
    if-gt v0, v1, :cond_11

    #@13a
    .line 3937
    move-object/from16 v0, v30

    #@13c
    move/from16 v1, v32

    #@13e
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    #@141
    move-result v34

    #@142
    .line 3938
    .local v34, "lineStart":I
    move-object/from16 v0, v30

    #@144
    move/from16 v1, v32

    #@146
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    #@149
    move-result v33

    #@14a
    .line 3939
    .local v33, "lineEnd":I
    move/from16 v0, v34

    #@14c
    move/from16 v1, v21

    #@14e
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@151
    move-result v39

    #@152
    .line 3940
    .local v39, "offsetStart":I
    move/from16 v0, v33

    #@154
    move/from16 v1, v20

    #@156
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@159
    move-result v38

    #@15a
    .line 3942
    .local v38, "offsetEnd":I
    move-object/from16 v0, v30

    #@15c
    move/from16 v1, v32

    #@15e
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@161
    move-result v11

    #@162
    const/16 v51, 0x1

    #@164
    move/from16 v0, v51

    #@166
    if-ne v11, v0, :cond_b

    #@168
    const/16 v35, 0x1

    #@16a
    .line 3943
    .local v35, "ltrLine":Z
    :goto_2
    sub-int v11, v38, v39

    #@16c
    new-array v0, v11, [F

    #@16e
    move-object/from16 v50, v0

    #@170
    .line 3944
    .local v50, "widths":[F
    invoke-virtual/range {v30 .. v30}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    #@173
    move-result-object v11

    #@174
    move-object/from16 v0, v46

    #@176
    move/from16 v1, v39

    #@178
    move/from16 v2, v38

    #@17a
    move-object/from16 v3, v50

    #@17c
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    #@17f
    .line 3945
    move-object/from16 v0, v30

    #@181
    move/from16 v1, v32

    #@183
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    #@186
    move-result v11

    #@187
    int-to-float v0, v11

    #@188
    move/from16 v47, v0

    #@18a
    .line 3946
    .local v47, "top":F
    move-object/from16 v0, v30

    #@18c
    move/from16 v1, v32

    #@18e
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    #@191
    move-result v11

    #@192
    int-to-float v0, v11

    #@193
    move/from16 v17, v0

    #@195
    .line 3947
    .local v17, "bottom":F
    move/from16 v5, v39

    #@197
    .local v5, "offset":I
    :goto_3
    move/from16 v0, v38

    #@199
    if-ge v5, v0, :cond_10

    #@19b
    .line 3948
    sub-int v11, v5, v39

    #@19d
    aget v18, v50, v11

    #@19f
    .line 3949
    .local v18, "charWidth":F
    move-object/from16 v0, v30

    #@1a1
    invoke-virtual {v0, v5}, Landroid/text/Layout;->isRtlCharAt(I)Z

    #@1a4
    move-result v27

    #@1a5
    .line 3950
    .local v27, "isRtl":Z
    move-object/from16 v0, v30

    #@1a7
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@1aa
    move-result v40

    #@1ab
    .line 3951
    .local v40, "primary":F
    move-object/from16 v0, v30

    #@1ad
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    #@1b0
    move-result v42

    #@1b1
    .line 3956
    .local v42, "secondary":F
    if-eqz v35, :cond_d

    #@1b3
    .line 3957
    if-eqz v27, :cond_c

    #@1b5
    .line 3958
    sub-float v31, v42, v18

    #@1b7
    .line 3959
    .local v31, "left":F
    move/from16 v41, v42

    #@1b9
    .line 3974
    .local v41, "right":F
    :goto_4
    add-float v6, v31, v48

    #@1bb
    .line 3975
    .local v6, "localLeft":F
    add-float v8, v41, v48

    #@1bd
    .line 3976
    .local v8, "localRight":F
    add-float v7, v47, v49

    #@1bf
    .line 3977
    .local v7, "localTop":F
    add-float v9, v17, v49

    #@1c1
    .line 3978
    .local v9, "localBottom":F
    move-object/from16 v0, p0

    #@1c3
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    #@1c5
    invoke-static {v11, v6, v7}, Landroid/widget/Editor;->-wrap6(Landroid/widget/Editor;FF)Z

    #@1c8
    move-result v28

    #@1c9
    .line 3980
    .local v28, "isTopLeftVisible":Z
    move-object/from16 v0, p0

    #@1cb
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    #@1cd
    invoke-static {v11, v8, v9}, Landroid/widget/Editor;->-wrap6(Landroid/widget/Editor;FF)Z

    #@1d0
    move-result v25

    #@1d1
    .line 3981
    .local v25, "isBottomRightVisible":Z
    const/4 v10, 0x0

    #@1d2
    .line 3982
    .local v10, "characterBoundsFlags":I
    if-nez v28, :cond_7

    #@1d4
    if-eqz v25, :cond_8

    #@1d6
    .line 3983
    :cond_7
    const/4 v10, 0x1

    #@1d7
    .line 3985
    :cond_8
    if-eqz v28, :cond_f

    #@1d9
    if-eqz v25, :cond_f

    #@1db
    .line 3988
    :goto_5
    if-eqz v27, :cond_9

    #@1dd
    .line 3989
    or-int/lit8 v10, v10, 0x4

    #@1df
    .line 3992
    :cond_9
    invoke-virtual/range {v4 .. v10}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    #@1e2
    .line 3947
    add-int/lit8 v5, v5, 0x1

    #@1e4
    goto :goto_3

    #@1e5
    .line 3928
    .end local v5    # "offset":I
    .end local v6    # "localLeft":F
    .end local v7    # "localTop":F
    .end local v8    # "localRight":F
    .end local v9    # "localBottom":F
    .end local v10    # "characterBoundsFlags":I
    .end local v17    # "bottom":F
    .end local v18    # "charWidth":F
    .end local v19    # "composingText":Ljava/lang/CharSequence;
    .end local v22    # "hasComposingText":Z
    .end local v25    # "isBottomRightVisible":Z
    .end local v27    # "isRtl":Z
    .end local v28    # "isTopLeftVisible":Z
    .end local v31    # "left":F
    .end local v32    # "line":I
    .end local v33    # "lineEnd":I
    .end local v34    # "lineStart":I
    .end local v35    # "ltrLine":Z
    .end local v36    # "maxLine":I
    .end local v37    # "minLine":I
    .end local v38    # "offsetEnd":I
    .end local v39    # "offsetStart":I
    .end local v40    # "primary":F
    .end local v41    # "right":F
    .end local v42    # "secondary":F
    .end local v47    # "top":F
    .end local v50    # "widths":[F
    :cond_a
    const/16 v22, 0x0

    #@1e7
    goto/16 :goto_0

    #@1e9
    .line 3942
    .restart local v19    # "composingText":Ljava/lang/CharSequence;
    .restart local v22    # "hasComposingText":Z
    .restart local v32    # "line":I
    .restart local v33    # "lineEnd":I
    .restart local v34    # "lineStart":I
    .restart local v36    # "maxLine":I
    .restart local v37    # "minLine":I
    .restart local v38    # "offsetEnd":I
    .restart local v39    # "offsetStart":I
    :cond_b
    const/16 v35, 0x0

    #@1eb
    .restart local v35    # "ltrLine":Z
    goto/16 :goto_2

    #@1ed
    .line 3961
    .restart local v5    # "offset":I
    .restart local v17    # "bottom":F
    .restart local v18    # "charWidth":F
    .restart local v27    # "isRtl":Z
    .restart local v40    # "primary":F
    .restart local v42    # "secondary":F
    .restart local v47    # "top":F
    .restart local v50    # "widths":[F
    :cond_c
    move/from16 v31, v40

    #@1ef
    .line 3962
    .restart local v31    # "left":F
    add-float v41, v40, v18

    #@1f1
    .restart local v41    # "right":F
    goto :goto_4

    #@1f2
    .line 3965
    .end local v31    # "left":F
    .end local v41    # "right":F
    :cond_d
    if-nez v27, :cond_e

    #@1f4
    .line 3966
    move/from16 v31, v42

    #@1f6
    .line 3967
    .restart local v31    # "left":F
    add-float v41, v42, v18

    #@1f8
    .restart local v41    # "right":F
    goto :goto_4

    #@1f9
    .line 3969
    .end local v31    # "left":F
    .end local v41    # "right":F
    :cond_e
    sub-float v31, v40, v18

    #@1fb
    .line 3970
    .restart local v31    # "left":F
    move/from16 v41, v40

    #@1fd
    .restart local v41    # "right":F
    goto :goto_4

    #@1fe
    .line 3986
    .restart local v6    # "localLeft":F
    .restart local v7    # "localTop":F
    .restart local v8    # "localRight":F
    .restart local v9    # "localBottom":F
    .restart local v10    # "characterBoundsFlags":I
    .restart local v25    # "isBottomRightVisible":Z
    .restart local v28    # "isTopLeftVisible":Z
    :cond_f
    or-int/lit8 v10, v10, 0x2

    #@200
    goto :goto_5

    #@201
    .line 3936
    .end local v6    # "localLeft":F
    .end local v7    # "localTop":F
    .end local v8    # "localRight":F
    .end local v9    # "localBottom":F
    .end local v10    # "characterBoundsFlags":I
    .end local v18    # "charWidth":F
    .end local v25    # "isBottomRightVisible":Z
    .end local v27    # "isRtl":Z
    .end local v28    # "isTopLeftVisible":Z
    .end local v31    # "left":F
    .end local v40    # "primary":F
    .end local v41    # "right":F
    .end local v42    # "secondary":F
    :cond_10
    add-int/lit8 v32, v32, 0x1

    #@203
    goto/16 :goto_1

    #@205
    .line 4000
    .end local v5    # "offset":I
    .end local v17    # "bottom":F
    .end local v19    # "composingText":Ljava/lang/CharSequence;
    .end local v20    # "composingTextEnd":I
    .end local v21    # "composingTextStart":I
    .end local v22    # "hasComposingText":Z
    .end local v32    # "line":I
    .end local v33    # "lineEnd":I
    .end local v34    # "lineStart":I
    .end local v35    # "ltrLine":Z
    .end local v36    # "maxLine":I
    .end local v37    # "minLine":I
    .end local v38    # "offsetEnd":I
    .end local v39    # "offsetStart":I
    .end local v44    # "sp":Landroid/text/Spannable;
    .end local v47    # "top":F
    .end local v50    # "widths":[F
    :cond_11
    if-ltz v43, :cond_15

    #@207
    .line 4001
    move/from16 v5, v43

    #@209
    .line 4002
    .restart local v5    # "offset":I
    move-object/from16 v0, v30

    #@20b
    move/from16 v1, v43

    #@20d
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    #@210
    move-result v32

    #@211
    .line 4003
    .restart local v32    # "line":I
    move-object/from16 v0, v30

    #@213
    move/from16 v1, v43

    #@215
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@218
    move-result v11

    #@219
    add-float v12, v11, v48

    #@21b
    .line 4005
    .local v12, "insertionMarkerX":F
    move-object/from16 v0, v30

    #@21d
    move/from16 v1, v32

    #@21f
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    #@222
    move-result v11

    #@223
    int-to-float v11, v11

    #@224
    add-float v13, v11, v49

    #@226
    .line 4007
    .local v13, "insertionMarkerTop":F
    move-object/from16 v0, v30

    #@228
    move/from16 v1, v32

    #@22a
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    #@22d
    move-result v11

    #@22e
    int-to-float v11, v11

    #@22f
    add-float v14, v11, v49

    #@231
    .line 4009
    .local v14, "insertionMarkerBaseline":F
    move-object/from16 v0, v30

    #@233
    move/from16 v1, v32

    #@235
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    #@238
    move-result v11

    #@239
    int-to-float v11, v11

    #@23a
    add-float v15, v11, v49

    #@23c
    .line 4012
    .local v15, "insertionMarkerBottom":F
    move-object/from16 v0, p0

    #@23e
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    #@240
    invoke-static {v11, v12, v13}, Landroid/widget/Editor;->-wrap6(Landroid/widget/Editor;FF)Z

    #@243
    move-result v29

    #@244
    .line 4014
    .local v29, "isTopVisible":Z
    move-object/from16 v0, p0

    #@246
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    #@248
    invoke-static {v11, v12, v15}, Landroid/widget/Editor;->-wrap6(Landroid/widget/Editor;FF)Z

    #@24b
    move-result v26

    #@24c
    .line 4015
    .local v26, "isBottomVisible":Z
    const/16 v16, 0x0

    #@24e
    .line 4016
    .local v16, "insertionMarkerFlags":I
    if-nez v29, :cond_12

    #@250
    if-eqz v26, :cond_13

    #@252
    .line 4017
    :cond_12
    const/16 v16, 0x1

    #@254
    .line 4019
    :cond_13
    if-eqz v29, :cond_16

    #@256
    if-eqz v26, :cond_16

    #@258
    .line 4022
    :goto_6
    move-object/from16 v0, v30

    #@25a
    move/from16 v1, v43

    #@25c
    invoke-virtual {v0, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    #@25f
    move-result v11

    #@260
    if-eqz v11, :cond_14

    #@262
    .line 4023
    or-int/lit8 v16, v16, 0x4

    #@264
    :cond_14
    move-object v11, v4

    #@265
    .line 4025
    invoke-virtual/range {v11 .. v16}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    #@268
    .line 4029
    .end local v5    # "offset":I
    .end local v12    # "insertionMarkerX":F
    .end local v13    # "insertionMarkerTop":F
    .end local v14    # "insertionMarkerBaseline":F
    .end local v15    # "insertionMarkerBottom":F
    .end local v16    # "insertionMarkerFlags":I
    .end local v26    # "isBottomVisible":Z
    .end local v29    # "isTopVisible":Z
    .end local v32    # "line":I
    :cond_15
    move-object/from16 v0, p0

    #@26a
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    #@26c
    invoke-static {v11}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@26f
    move-result-object v11

    #@270
    invoke-virtual {v4}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    #@273
    move-result-object v51

    #@274
    move-object/from16 v0, v23

    #@276
    move-object/from16 v1, v51

    #@278
    invoke-virtual {v0, v11, v1}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    #@27b
    .line 3879
    return-void

    #@27c
    .line 4020
    .restart local v5    # "offset":I
    .restart local v12    # "insertionMarkerX":F
    .restart local v13    # "insertionMarkerTop":F
    .restart local v14    # "insertionMarkerBaseline":F
    .restart local v15    # "insertionMarkerBottom":F
    .restart local v16    # "insertionMarkerFlags":I
    .restart local v26    # "isBottomVisible":Z
    .restart local v29    # "isTopVisible":Z
    .restart local v32    # "line":I
    :cond_16
    or-int/lit8 v16, v16, 0x2

    #@27e
    goto :goto_6
.end method
