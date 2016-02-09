.class final Lcom/android/server/am/UserSwitchingDialog;
.super Landroid/app/AlertDialog;
.source "UserSwitchingDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowShownListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UserSwitchingDialog$1;
    }
.end annotation


# static fields
.field private static final MSG_START_USER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityManagerUserSwitchingDialog"

.field private static final WINDOW_SHOWN_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStartedUser:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 7
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I
    .param p4, "userName"    # Ljava/lang/String;
    .param p5, "aboveSystem"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 54
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    #@4
    .line 111
    new-instance v3, Lcom/android/server/am/UserSwitchingDialog$1;

    #@6
    invoke-direct {v3, p0}, Lcom/android/server/am/UserSwitchingDialog$1;-><init>(Lcom/android/server/am/UserSwitchingDialog;)V

    #@9
    iput-object v3, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    #@b
    .line 56
    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    #@d
    .line 57
    iput p3, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    #@f
    .line 60
    invoke-virtual {p0, v6}, Lcom/android/server/am/UserSwitchingDialog;->setCancelable(Z)V

    #@12
    .line 61
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getContext()Landroid/content/Context;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@19
    move-result-object v1

    #@1a
    .line 63
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getContext()Landroid/content/Context;

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@21
    move-result-object v3

    #@22
    const v4, 0x10900f9

    #@25
    const/4 v5, 0x0

    #@26
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@29
    move-result-object v2

    #@2a
    .line 64
    .local v2, "view":Landroid/view/View;
    const v3, 0x102000b

    #@2d
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@30
    move-result-object v3

    #@31
    check-cast v3, Landroid/widget/TextView;

    #@33
    .line 65
    const/4 v4, 0x1

    #@34
    new-array v4, v4, [Ljava/lang/Object;

    #@36
    aput-object p4, v4, v6

    #@38
    const v5, 0x10404ea

    #@3b
    invoke-virtual {v1, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    .line 64
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@42
    .line 66
    invoke-virtual {p0, v2}, Lcom/android/server/am/UserSwitchingDialog;->setView(Landroid/view/View;)V

    #@45
    .line 68
    if-eqz p5, :cond_0

    #@47
    .line 69
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    #@4a
    move-result-object v3

    #@4b
    const/16 v4, 0x7da

    #@4d
    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    #@50
    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@57
    move-result-object v0

    #@58
    .line 72
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x110

    #@5a
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@5c
    .line 74
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@63
    .line 53
    return-void
.end method


# virtual methods
.method public onWindowShown()V
    .locals 0

    #@0
    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->startUser()V

    #@3
    .line 92
    return-void
.end method

.method public show()V
    .locals 6

    #@0
    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    #@3
    .line 81
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 82
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@d
    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    #@14
    .line 87
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    #@16
    iget-object v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    #@18
    const/4 v3, 0x1

    #@19
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@1c
    move-result-object v2

    #@1d
    .line 88
    const-wide/16 v4, 0xbb8

    #@1f
    .line 87
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@22
    .line 78
    return-void
.end method

.method startUser()V
    .locals 3

    #@0
    .prologue
    .line 98
    monitor-enter p0

    #@1
    .line 99
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mStartedUser:Z

    #@3
    if-nez v1, :cond_1

    #@5
    .line 100
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    #@7
    iget v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    #@9
    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/ActivityManagerService;->startUserInForeground(ILandroid/app/Dialog;)Z

    #@c
    .line 101
    const/4 v1, 0x1

    #@d
    iput-boolean v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mStartedUser:Z

    #@f
    .line 102
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@16
    move-result-object v0

    #@17
    .line 103
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@19
    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    #@20
    .line 106
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    #@22
    const/4 v2, 0x1

    #@23
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .end local v0    # "decorView":Landroid/view/View;
    :cond_1
    monitor-exit p0

    #@27
    .line 97
    return-void

    #@28
    .line 98
    :catchall_0
    move-exception v1

    #@29
    monitor-exit p0

    #@2a
    throw v1
.end method
