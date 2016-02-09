.class Lcom/android/server/am/BaseErrorDialog;
.super Landroid/app/AlertDialog;
.source "BaseErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BaseErrorDialog$1;
    }
.end annotation


# static fields
.field private static final DISABLE_BUTTONS:I = 0x1

.field private static final ENABLE_BUTTONS:I


# instance fields
.field private mConsuming:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -set0(Lcom/android/server/am/BaseErrorDialog;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/am/BaseErrorDialog;->mConsuming:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/am/BaseErrorDialog;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;->setEnabled(Z)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/high16 v3, 0x20000

    #@2
    .line 36
    const v1, 0x1030478

    #@5
    invoke-direct {p0, p1, v1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    #@8
    .line 33
    const/4 v1, 0x1

    #@9
    iput-boolean v1, p0, Lcom/android/server/am/BaseErrorDialog;->mConsuming:Z

    #@b
    .line 76
    new-instance v1, Lcom/android/server/am/BaseErrorDialog$1;

    #@d
    invoke-direct {v1, p0}, Lcom/android/server/am/BaseErrorDialog$1;-><init>(Lcom/android/server/am/BaseErrorDialog;)V

    #@10
    iput-object v1, p0, Lcom/android/server/am/BaseErrorDialog;->mHandler:Landroid/os/Handler;

    #@12
    .line 38
    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    #@15
    move-result-object v1

    #@16
    const/16 v2, 0x7d3

    #@18
    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    #@1b
    .line 39
    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    #@22
    .line 41
    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@29
    move-result-object v0

    #@2a
    .line 42
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v1, "Error Dialog"

    #@2d
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@30
    .line 43
    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@37
    .line 35
    return-void
.end method

.method private setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 62
    const v1, 0x1020019

    #@3
    invoke-virtual {p0, v1}, Lcom/android/server/am/BaseErrorDialog;->findViewById(I)Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/widget/Button;

    #@9
    .line 63
    .local v0, "b":Landroid/widget/Button;
    if-eqz v0, :cond_0

    #@b
    .line 64
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    #@e
    .line 66
    :cond_0
    const v1, 0x102001a

    #@11
    invoke-virtual {p0, v1}, Lcom/android/server/am/BaseErrorDialog;->findViewById(I)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    .end local v0    # "b":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    #@17
    .line 67
    .restart local v0    # "b":Landroid/widget/Button;
    if-eqz v0, :cond_1

    #@19
    .line 68
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    #@1c
    .line 70
    :cond_1
    const v1, 0x102001b

    #@1f
    invoke-virtual {p0, v1}, Lcom/android/server/am/BaseErrorDialog;->findViewById(I)Landroid/view/View;

    #@22
    move-result-object v0

    #@23
    .end local v0    # "b":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    #@25
    .line 71
    .restart local v0    # "b":Landroid/widget/Button;
    if-eqz v0, :cond_2

    #@27
    .line 72
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    #@2a
    .line 61
    :cond_2
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/am/BaseErrorDialog;->mConsuming:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 55
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 58
    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public onStart()V
    .locals 4

    #@0
    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    #@3
    .line 48
    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mHandler:Landroid/os/Handler;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@9
    .line 49
    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mHandler:Landroid/os/Handler;

    #@b
    iget-object v1, p0, Lcom/android/server/am/BaseErrorDialog;->mHandler:Landroid/os/Handler;

    #@d
    const/4 v2, 0x0

    #@e
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@11
    move-result-object v1

    #@12
    const-wide/16 v2, 0x3e8

    #@14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@17
    .line 46
    return-void
.end method
