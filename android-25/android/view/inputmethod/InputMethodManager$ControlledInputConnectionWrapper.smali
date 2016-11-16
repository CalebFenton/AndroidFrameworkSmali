.class Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;
.super Lcom/android/internal/view/IInputConnectionWrapper;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ControlledInputConnectionWrapper"
.end annotation


# instance fields
.field private final mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .param p1, "mainLooper"    # Landroid/os/Looper;
    .param p2, "conn"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "inputMethodManager"    # Landroid/view/inputmethod/InputMethodManager;

    #@0
    .prologue
    .line 536
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V

    #@3
    .line 537
    iput-object p3, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    #@5
    .line 535
    return-void
.end method


# virtual methods
.method deactivate()V
    .locals 1

    #@0
    .prologue
    .line 546
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->isFinished()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 549
    return-void

    #@7
    .line 551
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->closeConnection()V

    #@a
    .line 545
    return-void
.end method

.method public isActive()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 542
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    #@3
    iget-boolean v1, v1, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->isFinished()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method protected onReportFullscreenMode(ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "calledInBackground"    # Z

    #@0
    .prologue
    .line 561
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    #@2
    .line 562
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->getInputMethodId()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 561
    invoke-virtual {v0, p1, p2, v1}, Landroid/view/inputmethod/InputMethodManager;->onReportFullscreenMode(ZZLjava/lang/String;)V

    #@9
    .line 560
    return-void
.end method

.method protected onUserAction()V
    .locals 1

    #@0
    .prologue
    .line 556
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    #@2
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->notifyUserAction()V

    #@5
    .line 555
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ControlledInputConnectionWrapper{connection="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 568
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    #@f
    move-result-object v1

    #@10
    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 569
    const-string/jumbo v1, " finished="

    #@17
    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 569
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->isFinished()Z

    #@1e
    move-result v1

    #@1f
    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 570
    const-string/jumbo v1, " mParentInputMethodManager.mActive="

    #@26
    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 570
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    #@2c
    iget-boolean v1, v1, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    #@2e
    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 571
    const-string/jumbo v1, " mInputMethodId="

    #@35
    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 571
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->getInputMethodId()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    .line 572
    const-string/jumbo v1, "}"

    #@44
    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    return-object v0
.end method
