.class public abstract Lcom/android/internal/app/AlertActivity;
.super Landroid/app/Activity;
.source "AlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field protected mAlert:Lcom/android/internal/app/AlertController;

.field protected mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    #@0
    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    #@3
    .line 56
    return-void
.end method

.method public dismiss()V
    .locals 1

    #@0
    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->isFinishing()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 64
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    #@9
    .line 60
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 70
    const-class v2, Landroid/app/Dialog;

    #@3
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    #@a
    .line 71
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageName()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    #@11
    .line 73
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@18
    move-result-object v1

    #@19
    .line 74
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@1b
    if-ne v2, v3, :cond_1

    #@1d
    .line 75
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@1f
    if-ne v2, v3, :cond_0

    #@21
    const/4 v0, 0x1

    #@22
    .line 76
    .local v0, "isFullScreen":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    #@25
    .line 78
    const/4 v2, 0x0

    #@26
    return v2

    #@27
    .line 75
    .end local v0    # "isFullScreen":Z
    :cond_0
    const/4 v0, 0x0

    #@28
    .restart local v0    # "isFullScreen":Z
    goto :goto_0

    #@29
    .line 74
    .end local v0    # "isFullScreen":Z
    :cond_1
    const/4 v0, 0x0

    #@2a
    .restart local v0    # "isFullScreen":Z
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 52
    new-instance v0, Lcom/android/internal/app/AlertController;

    #@5
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, p0, p0, v1}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    #@c
    iput-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    #@e
    .line 53
    new-instance v0, Lcom/android/internal/app/AlertController$AlertParams;

    #@10
    invoke-direct {v0, p0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    #@13
    iput-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    #@15
    .line 49
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 96
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 102
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method protected setupAlert()V
    .locals 2

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    #@7
    .line 90
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    #@9
    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->installContent()V

    #@c
    .line 88
    return-void
.end method
