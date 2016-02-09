.class final Lcom/android/server/am/FactoryErrorDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "FactoryErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/FactoryErrorDialog$1;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msg"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    #@4
    .line 42
    new-instance v1, Lcom/android/server/am/FactoryErrorDialog$1;

    #@6
    invoke-direct {v1, p0}, Lcom/android/server/am/FactoryErrorDialog$1;-><init>(Lcom/android/server/am/FactoryErrorDialog;)V

    #@9
    iput-object v1, p0, Lcom/android/server/am/FactoryErrorDialog;->mHandler:Landroid/os/Handler;

    #@b
    .line 28
    invoke-virtual {p0, v3}, Lcom/android/server/am/FactoryErrorDialog;->setCancelable(Z)V

    #@e
    .line 29
    const v1, 0x10402b8

    #@11
    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p0, v1}, Lcom/android/server/am/FactoryErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    #@18
    .line 30
    invoke-virtual {p0, p2}, Lcom/android/server/am/FactoryErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@1b
    .line 32
    const v1, 0x10402bb

    #@1e
    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@21
    move-result-object v1

    #@22
    .line 33
    iget-object v2, p0, Lcom/android/server/am/FactoryErrorDialog;->mHandler:Landroid/os/Handler;

    #@24
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@27
    move-result-object v2

    #@28
    .line 31
    const/4 v3, -0x1

    #@29
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/am/FactoryErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    #@2c
    .line 34
    invoke-virtual {p0}, Lcom/android/server/am/FactoryErrorDialog;->getWindow()Landroid/view/Window;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@33
    move-result-object v0

    #@34
    .line 35
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v1, "Factory Error"

    #@37
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@3a
    .line 36
    invoke-virtual {p0}, Lcom/android/server/am/FactoryErrorDialog;->getWindow()Landroid/view/Window;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@41
    .line 26
    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 0

    #@0
    .prologue
    .line 39
    return-void
.end method
