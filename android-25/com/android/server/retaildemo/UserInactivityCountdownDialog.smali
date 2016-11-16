.class public Lcom/android/server/retaildemo/UserInactivityCountdownDialog;
.super Landroid/app/AlertDialog;
.source "UserInactivityCountdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/retaildemo/UserInactivityCountdownDialog$OnCountDownExpiredListener;
    }
.end annotation


# instance fields
.field private mCountDownDuration:J

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mOnCountDownExpiredListener:Lcom/android/server/retaildemo/UserInactivityCountdownDialog$OnCountDownExpiredListener;

.field private mRefreshInterval:J


# direct methods
.method static synthetic -get0(Lcom/android/server/retaildemo/UserInactivityCountdownDialog;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->mCountDownDuration:J

    #@2
    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/server/retaildemo/UserInactivityCountdownDialog;)Lcom/android/server/retaildemo/UserInactivityCountdownDialog$OnCountDownExpiredListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->mOnCountDownExpiredListener:Lcom/android/server/retaildemo/UserInactivityCountdownDialog$OnCountDownExpiredListener;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/retaildemo/UserInactivityCountdownDialog;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->mRefreshInterval:J

    #@2
    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/retaildemo/UserInactivityCountdownDialog;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->mCountDownTimer:Landroid/os/CountDownTimer;

    #@2
    return-object p1
.end method

.method constructor <init>(Landroid/content/Context;JJ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "duration"    # J
    .param p4, "refreshInterval"    # J

    #@0
    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    #@3
    .line 37
    iput-wide p2, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->mCountDownDuration:J

    #@5
    .line 38
    iput-wide p4, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->mRefreshInterval:J

    #@7
    .line 40
    invoke-virtual {p0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->getWindow()Landroid/view/Window;

    #@a
    move-result-object v1

    #@b
    const/16 v2, 0x7da

    #@d
    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    #@10
    .line 41
    invoke-virtual {p0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->getWindow()Landroid/view/Window;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@17
    move-result-object v0

    #@18
    .line 42
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x10

    #@1a
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@1c
    .line 43
    invoke-virtual {p0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->getWindow()Landroid/view/Window;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@23
    .line 45
    const v1, 0x10405fc

    #@26
    invoke-virtual {p0, v1}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->setTitle(I)V

    #@29
    .line 46
    invoke-virtual {p0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->getContext()Landroid/content/Context;

    #@2c
    move-result-object v1

    #@2d
    const/4 v2, 0x1

    #@2e
    new-array v2, v2, [Ljava/lang/Object;

    #@30
    .line 47
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@33
    move-result-object v3

    #@34
    const/4 v4, 0x0

    #@35
    aput-object v3, v2, v4

    #@37
    .line 46
    const v3, 0x10405fd

    #@3a
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {p0, v1}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@41
    .line 35
    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->mCountDownTimer:Landroid/os/CountDownTimer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 98
    iget-object v0, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->mCountDownTimer:Landroid/os/CountDownTimer;

    #@6
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    #@9
    .line 96
    :cond_0
    return-void
.end method

.method public setNegativeButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    #@0
    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    const v1, 0x10405fe

    #@7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 62
    const/4 v1, -0x2

    #@c
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    #@f
    .line 61
    return-void
.end method

.method public setOnCountDownExpiredListener(Lcom/android/server/retaildemo/UserInactivityCountdownDialog$OnCountDownExpiredListener;)V
    .locals 0
    .param p1, "onCountDownExpiredListener"    # Lcom/android/server/retaildemo/UserInactivityCountdownDialog$OnCountDownExpiredListener;

    #@0
    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->mOnCountDownExpiredListener:Lcom/android/server/retaildemo/UserInactivityCountdownDialog$OnCountDownExpiredListener;

    #@2
    .line 51
    return-void
.end method

.method public setPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    #@0
    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    const v1, 0x10405ff

    #@7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 56
    const/4 v1, -0x1

    #@c
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    #@f
    .line 55
    return-void
.end method

.method public show()V
    .locals 2

    #@0
    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    #@3
    .line 70
    const v1, 0x102000b

    #@6
    invoke-virtual {p0, v1}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/widget/TextView;

    #@c
    .line 71
    .local v0, "messageView":Landroid/widget/TextView;
    new-instance v1, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;

    #@e
    invoke-direct {v1, p0, v0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;-><init>(Lcom/android/server/retaildemo/UserInactivityCountdownDialog;Landroid/widget/TextView;)V

    #@11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    #@14
    .line 68
    return-void
.end method
