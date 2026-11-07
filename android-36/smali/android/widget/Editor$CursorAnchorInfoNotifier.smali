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
.field final blacklist mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field final greylist-max-o mViewToScreenMatrix:Landroid/graphics/Matrix;

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/Editor;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 4927
    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4928
    new-instance p1, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4929
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Editor;Landroid/widget/Editor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o updatePosition(IIZZ)V
    .registers 12
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .line 4934
    iget-object v0, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 4935
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_4f

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-lez v1, :cond_b

    goto :goto_4f

    .line 4938
    :cond_b
    iget-object v1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$mgetInputMethodManager(Landroid/widget/Editor;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 4939
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v1, :cond_14

    .line 4940
    return-void

    .line 4942
    :cond_14
    iget-object v2, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hasActiveInputConnection(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 4943
    return-void

    .line 4946
    :cond_21
    const/4 v2, 0x3

    .line 4948
    .local v2, "knownCursorAnchorInfoModes":I
    iget v3, v0, Landroid/widget/Editor$InputMethodState;->mUpdateCursorAnchorInfoMode:I

    and-int/lit8 v3, v3, 0x3

    if-nez v3, :cond_29

    .line 4949
    return-void

    .line 4952
    :cond_29
    iget-object v3, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget v4, v0, Landroid/widget/Editor$InputMethodState;->mUpdateCursorAnchorInfoFilter:I

    iget-object v5, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v6, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    .line 4953
    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/TextView;->getCursorAnchorInfo(ILandroid/view/inputmethod/CursorAnchorInfo$Builder;Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v3

    .line 4956
    .local v3, "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    if-eqz v3, :cond_4e

    .line 4957
    iget-object v4, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 4960
    iget-object v4, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    iget v5, v4, Landroid/widget/Editor$InputMethodState;->mUpdateCursorAnchorInfoMode:I

    and-int/lit8 v5, v5, -0x2

    iput v5, v4, Landroid/widget/Editor$InputMethodState;->mUpdateCursorAnchorInfoMode:I

    .line 4963
    :cond_4e
    return-void

    .line 4936
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "knownCursorAnchorInfoModes":I
    .end local v3    # "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    :cond_4f
    :goto_4f
    return-void
.end method
