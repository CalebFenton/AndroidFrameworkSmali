.class final Landroid/view/ViewRootImpl$ViewPostImeInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewPostImeInputStage"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 7976
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 7977
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 7978
    return-void
.end method

.method private greylist-max-o maybeUpdatePointerIcon(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 8271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    .line 8272
    return-void

    .line 8274
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 8275
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isStylusPointer()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 8276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isHoverEvent()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmIsStylusPointerIconEnabled(Landroid/view/ViewRootImpl;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    .line 8278
    .local v1, "needsStylusPointerIcon":Z
    :goto_22
    if-nez v1, :cond_2d

    const/16 v2, 0x2002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 8279
    return-void

    .line 8282
    :cond_2d
    const/16 v2, 0x9

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-eq v0, v2, :cond_36

    if-ne v0, v3, :cond_3b

    .line 8286
    :cond_36
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2, v4}, Landroid/view/ViewRootImpl;->-$$Nest$fputmResolvedPointerIcon(Landroid/view/ViewRootImpl;Landroid/view/PointerIcon;)V

    .line 8289
    :cond_3b
    if-eq v0, v3, :cond_4d

    .line 8291
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2, p1}, Landroid/view/ViewRootImpl;->-$$Nest$mupdatePointerIcon(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_4d

    const/4 v2, 0x7

    if-ne v0, v2, :cond_4d

    .line 8292
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2, v4}, Landroid/view/ViewRootImpl;->-$$Nest$fputmResolvedPointerIcon(Landroid/view/ViewRootImpl;Landroid/view/PointerIcon;)V

    .line 8297
    :cond_4d
    sparse-switch v0, :sswitch_data_72

    .line 8308
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/view/ViewRootImpl;->-$$Nest$fputmPointerIconEvent(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V

    goto :goto_71

    .line 8302
    :sswitch_5a
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPointerIconEvent(Landroid/view/ViewRootImpl;)Landroid/view/MotionEvent;

    move-result-object v2

    if-eqz v2, :cond_6b

    .line 8303
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPointerIconEvent(Landroid/view/ViewRootImpl;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 8305
    :cond_6b
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2, v4}, Landroid/view/ViewRootImpl;->-$$Nest$fputmPointerIconEvent(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V

    .line 8306
    nop

    .line 8311
    :goto_71
    return-void

    :sswitch_data_72
    .sparse-switch
        0x1 -> :sswitch_5a
        0x3 -> :sswitch_5a
        0x6 -> :sswitch_5a
        0xa -> :sswitch_5a
    .end sparse-switch
.end method

.method private blacklist moveFocusToAdjacentWindow(I)Z
    .registers 6
    .param p1, "direction"    # I

    .line 8091
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mgetConfiguration(Landroid/view/ViewRootImpl;)Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 8092
    .local v0, "windowingMode":I
    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_14

    const/4 v1, 0x5

    if-eq v0, v1, :cond_14

    .line 8094
    return v2

    .line 8097
    :cond_14
    :try_start_14
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v3, p1}, Landroid/view/IWindowSession;->moveFocusToAdjacentWindow(Landroid/view/IWindow;I)Z

    move-result v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_20} :catch_21

    return v1

    .line 8098
    :catch_21
    move-exception v1

    .line 8099
    .local v1, "e":Landroid/os/RemoteException;
    return v2
.end method

.method private greylist-max-o performFocusNavigation(Landroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 8009
    const/4 v0, 0x0

    .line 8010
    .local v0, "direction":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_d6

    goto :goto_3d

    .line 8032
    :sswitch_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 8033
    const/4 v0, 0x2

    goto :goto_3d

    .line 8034
    :cond_12
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 8035
    const/4 v0, 0x1

    goto :goto_3d

    .line 8017
    :sswitch_1a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 8018
    const/16 v0, 0x42

    goto :goto_3d

    .line 8012
    :sswitch_23
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 8013
    const/16 v0, 0x11

    goto :goto_3d

    .line 8027
    :sswitch_2c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 8028
    const/16 v0, 0x82

    goto :goto_3d

    .line 8022
    :sswitch_35
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 8023
    const/16 v0, 0x21

    .line 8039
    :cond_3d
    :goto_3d
    const/4 v1, 0x0

    if-eqz v0, :cond_d4

    .line 8040
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    .line 8041
    .local v3, "focused":Landroid/view/View;
    if-eqz v3, :cond_c2

    .line 8042
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v4, Landroid/view/View$AttachInfo;->mNextFocusLooped:Z

    .line 8043
    invoke-virtual {v3, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    .line 8044
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_af

    if-eq v4, v3, :cond_af

    .line 8045
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mNextFocusLooped:Z

    if-eqz v5, :cond_63

    .line 8051
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->moveFocusToAdjacentWindow(I)Z

    .line 8057
    :cond_63
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTempRect(Landroid/view/ViewRootImpl;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 8058
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_92

    .line 8059
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTempRect(Landroid/view/ViewRootImpl;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 8061
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTempRect(Landroid/view/ViewRootImpl;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 8064
    :cond_92
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTempRect(Landroid/view/ViewRootImpl;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 8065
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_a5

    move v1, v2

    .line 8066
    .local v1, "isFastScrolling":Z
    :cond_a5
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 8067
    invoke-static {v0, v1}, Landroid/view/SoundEffectConstants;->getConstantForFocusDirection(IZ)I

    move-result v6

    .line 8066
    invoke-virtual {v5, v6}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    .line 8069
    return v2

    .line 8071
    .end local v1    # "isFastScrolling":Z
    :cond_af
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->moveFocusToAdjacentWindow(I)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 8072
    return v2

    .line 8076
    :cond_b6
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5, v3, v0}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_c1

    .line 8077
    return v2

    .line 8079
    .end local v4    # "v":Landroid/view/View;
    :cond_c1
    goto :goto_d4

    .line 8080
    :cond_c2
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v4

    if-eqz v4, :cond_cd

    .line 8081
    return v2

    .line 8082
    :cond_cd
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->moveFocusToAdjacentWindow(I)Z

    move-result v4

    if-eqz v4, :cond_d4

    .line 8083
    return v2

    .line 8087
    .end local v3    # "focused":Landroid/view/View;
    :cond_d4
    :goto_d4
    return v1

    nop

    :sswitch_data_d6
    .sparse-switch
        0x13 -> :sswitch_35
        0x14 -> :sswitch_2c
        0x15 -> :sswitch_23
        0x16 -> :sswitch_1a
        0x3d -> :sswitch_a
    .end sparse-switch
.end method

.method private greylist-max-o performKeyboardGroupNavigation(I)Z
    .registers 8
    .param p1, "direction"    # I

    .line 8104
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 8105
    .local v0, "focused":Landroid/view/View;
    const/4 v1, 0x1

    if-nez v0, :cond_16

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 8106
    return v1

    .line 8108
    :cond_16
    const/4 v2, 0x0

    if-nez v0, :cond_20

    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3, v2, p1}, Landroid/view/ViewRootImpl;->keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    goto :goto_24

    .line 8109
    :cond_20
    invoke-virtual {v0, v2, p1}, Landroid/view/View;->keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    :goto_24
    nop

    .line 8113
    .local v3, "cluster":Landroid/view/View;
    move v4, p1

    .line 8114
    .local v4, "realDirection":I
    const/4 v5, 0x2

    if-eq p1, v5, :cond_2b

    if-ne p1, v1, :cond_2d

    .line 8115
    :cond_2b
    const/16 v4, 0x82

    .line 8118
    :cond_2d
    if-eqz v3, :cond_4b

    invoke-virtual {v3}, Landroid/view/View;->isRootNamespace()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 8120
    invoke-virtual {v3}, Landroid/view/View;->restoreFocusNotInCluster()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 8121
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    .line 8122
    return v1

    .line 8125
    :cond_45
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v5, v2, p1}, Landroid/view/ViewRootImpl;->keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 8128
    :cond_4b
    if-eqz v3, :cond_5d

    invoke-virtual {v3, v4}, Landroid/view/View;->restoreFocusInCluster(I)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 8129
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    .line 8130
    return v1

    .line 8133
    :cond_5d
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o processGenericMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .registers 5
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 8329
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 8331
    .local v0, "event":Landroid/view/MotionEvent;
    const v1, 0x100008

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_21

    .line 8332
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->hasPointerCapture()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 8333
    return v2

    .line 8338
    :cond_21
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 8339
    return v2

    .line 8341
    :cond_2c
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .registers 8
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 8137
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/KeyEvent;

    .line 8139
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmUnhandledKeyManager(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$UnhandledKeyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$UnhandledKeyManager;->preViewDispatch(Landroid/view/KeyEvent;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    .line 8140
    return v2

    .line 8144
    :cond_12
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 8145
    return v2

    .line 8148
    :cond_1d
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_25

    .line 8149
    return v3

    .line 8155
    :cond_25
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmUnhandledKeyManager(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$UnhandledKeyManager;

    move-result-object v1

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v4, v0}, Landroid/view/ViewRootImpl$UnhandledKeyManager;->dispatch(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 8156
    return v2

    .line 8159
    :cond_36
    const/4 v1, 0x0

    .line 8161
    .local v1, "groupNavigationDirection":I
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_60

    .line 8162
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_60

    .line 8163
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    const/16 v5, 0x1000

    invoke-static {v4, v5}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 8164
    const/4 v1, 0x2

    goto :goto_60

    .line 8165
    :cond_53
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    const/16 v5, 0x1001

    invoke-static {v4, v5}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 8167
    const/4 v1, 0x1

    .line 8172
    :cond_60
    :goto_60
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_94

    .line 8173
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v4

    if-nez v4, :cond_94

    .line 8174
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_94

    .line 8175
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v4

    if-nez v4, :cond_94

    if-nez v1, :cond_94

    .line 8177
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 8178
    return v2

    .line 8180
    :cond_8d
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v4

    if-eqz v4, :cond_94

    .line 8181
    return v3

    .line 8186
    :cond_94
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v4, v0}, Landroid/view/FallbackEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 8187
    return v2

    .line 8189
    :cond_9f
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 8190
    return v3

    .line 8194
    :cond_a6
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_bc

    .line 8195
    if-eqz v1, :cond_b5

    .line 8196
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->performKeyboardGroupNavigation(I)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 8197
    return v2

    .line 8200
    :cond_b5
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->performFocusNavigation(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 8201
    return v2

    .line 8205
    :cond_bc
    const/4 v2, 0x0

    return v2
.end method

.method private greylist-max-o processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .registers 11
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 8209
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 8210
    .local v0, "event":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 8211
    .local v1, "action":I
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_f

    if-ne v1, v2, :cond_14

    .line 8212
    :cond_f
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5, v3}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsPressedGesture(Landroid/view/ViewRootImpl;Z)V

    .line 8214
    :cond_14
    const/4 v5, 0x0

    .line 8215
    .local v5, "handled":Z
    invoke-static {}, Lcom/android/text/flags/Flags;->disableHandwritingInitiatorForIme()Z

    move-result v6

    if-eqz v6, :cond_25

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7db

    if-eq v6, v7, :cond_2f

    .line 8217
    :cond_25
    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmHandwritingInitiator(Landroid/view/ViewRootImpl;)Landroid/view/HandwritingInitiator;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/HandwritingInitiator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 8219
    :cond_2f
    if-eqz v5, :cond_3e

    .line 8221
    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v7

    invoke-static {v6, v7}, Landroid/view/ViewRootImpl;->-$$Nest$fputmLastClickToolType(Landroid/view/ViewRootImpl;I)V

    .line 8224
    :cond_3e
    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v3, v6, Landroid/view/View$AttachInfo;->mUnbufferedDispatchRequested:Z

    .line 8225
    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v6, Landroid/view/View$AttachInfo;->mHandlingPointerEvent:Z

    .line 8228
    if-nez v5, :cond_59

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_57

    goto :goto_59

    :cond_57
    move v6, v3

    goto :goto_5a

    :cond_59
    :goto_59
    move v6, v4

    .line 8229
    .end local v5    # "handled":Z
    .local v6, "handled":Z
    :goto_5a
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->maybeUpdatePointerIcon(Landroid/view/MotionEvent;)V

    .line 8230
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5, v0}, Landroid/view/ViewRootImpl;->-$$Nest$mmaybeUpdateTooltip(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V

    .line 8231
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v3, v5, Landroid/view/View$AttachInfo;->mHandlingPointerEvent:Z

    .line 8232
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mUnbufferedDispatchRequested:Z

    if-eqz v5, :cond_85

    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v5, v5, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-nez v5, :cond_85

    .line 8233
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v4, v5, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    .line 8234
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v5, v5, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v5, :cond_85

    .line 8235
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInputImmediately()V

    .line 8240
    :cond_85
    if-eqz v6, :cond_ae

    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    and-int/lit16 v7, v1, 0xff

    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v5, v7, v8}, Landroid/view/ViewRootImpl;->-$$Nest$mshouldTouchBoost(Landroid/view/ViewRootImpl;II)Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 8243
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5, v4}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsTouchBoosting(Landroid/view/ViewRootImpl;Z)V

    .line 8244
    if-nez v1, :cond_a3

    .line 8245
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5, v4}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsPressedGesture(Landroid/view/ViewRootImpl;Z)V

    .line 8247
    :cond_a3
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastPreferredFrameRateCategory(Landroid/view/ViewRootImpl;)I

    move-result v7

    invoke-static {v5, v7}, Landroid/view/ViewRootImpl;->-$$Nest$msetPreferredFrameRateCategory(Landroid/view/ViewRootImpl;I)V

    .line 8254
    :cond_ae
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmIsTouchBoosting(Landroid/view/ViewRootImpl;)Z

    move-result v5

    if-eqz v5, :cond_e5

    if-eq v1, v4, :cond_ba

    if-ne v1, v2, :cond_e5

    .line 8257
    :cond_ba
    invoke-static {}, Landroid/view/ViewRootImpl;->-$$Nest$sfgetsToolkitInitialTouchBoostFlagValue()Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 8258
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 8259
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const-wide/16 v7, 0x1e

    invoke-virtual {v2, v5, v7, v8}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_e5

    .line 8262
    :cond_d3
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v5, 0x27

    invoke-virtual {v2, v5}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 8263
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const-wide/16 v7, 0xbb8

    invoke-virtual {v2, v5, v7, v8}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 8267
    :cond_e5
    :goto_e5
    if-eqz v6, :cond_e8

    move v3, v4

    :cond_e8
    return v3
.end method

.method private greylist-max-o processTrackballEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .registers 5
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 8314
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 8316
    .local v0, "event":Landroid/view/MotionEvent;
    const v1, 0x20004

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_21

    .line 8317
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->hasPointerCapture()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 8318
    :cond_20
    return v2

    .line 8322
    :cond_21
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 8323
    return v2

    .line 8325
    :cond_2c
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected greylist-max-o onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 4
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7998
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-eqz v0, :cond_28

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_28

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 8000
    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 8001
    invoke-static {v0}, Landroid/view/ViewRootImpl;->isTerminalInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 8002
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    .line 8003
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 8005
    :cond_28
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 8006
    return-void
.end method

.method protected greylist-max-o onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .registers 4
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7982
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_b

    .line 7983
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v0

    return v0

    .line 7985
    :cond_b
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    .line 7986
    .local v0, "source":I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1a

    .line 7987
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1

    .line 7988
    :cond_1a
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_23

    .line 7989
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processTrackballEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1

    .line 7991
    :cond_23
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processGenericMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1
.end method
