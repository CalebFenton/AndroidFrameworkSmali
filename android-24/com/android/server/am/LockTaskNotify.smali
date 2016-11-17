.class public Lcom/android/server/am/LockTaskNotify;
.super Ljava/lang/Object;
.source "LockTaskNotify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/LockTaskNotify$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LockTaskNotify"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/am/LockTaskNotify$H;

.field private mLastToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    iput-object p1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    #@5
    .line 41
    new-instance v0, Lcom/android/server/am/LockTaskNotify$H;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/LockTaskNotify$H;-><init>(Lcom/android/server/am/LockTaskNotify;Lcom/android/server/am/LockTaskNotify$H;)V

    #@b
    iput-object v0, p0, Lcom/android/server/am/LockTaskNotify;->mHandler:Lcom/android/server/am/LockTaskNotify$H;

    #@d
    .line 39
    return-void
.end method

.method private makeAllUserToastAndShow(Ljava/lang/String;)Landroid/widget/Toast;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    #@2
    const/4 v2, 0x1

    #@3
    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    #@6
    move-result-object v0

    #@7
    .line 74
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    #@a
    move-result-object v1

    #@b
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@d
    or-int/lit8 v2, v2, 0x10

    #@f
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@11
    .line 76
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    #@14
    .line 77
    return-object v0
.end method


# virtual methods
.method public handleShowToast(I)V
    .locals 3
    .param p1, "lockTaskModeState"    # I

    #@0
    .prologue
    .line 49
    const/4 v0, 0x0

    #@1
    .line 50
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x1

    #@2
    if-ne p1, v1, :cond_1

    #@4
    .line 51
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    #@6
    const v2, 0x10405a2

    #@9
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 55
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    #@f
    .line 56
    return-void

    #@10
    .line 52
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x2

    #@11
    if-ne p1, v1, :cond_0

    #@13
    .line 53
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    #@15
    const v2, 0x10405a1

    #@18
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .local v0, "text":Ljava/lang/String;
    goto :goto_0

    #@1d
    .line 58
    .end local v0    # "text":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    #@1f
    if-eqz v1, :cond_3

    #@21
    .line 59
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    #@23
    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    #@26
    .line 61
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/am/LockTaskNotify;->makeAllUserToastAndShow(Ljava/lang/String;)Landroid/widget/Toast;

    #@29
    move-result-object v1

    #@2a
    iput-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    #@2c
    .line 48
    return-void
.end method

.method public show(Z)V
    .locals 2
    .param p1, "starting"    # Z

    #@0
    .prologue
    .line 65
    const v0, 0x10405a4

    #@3
    .line 66
    .local v0, "showString":I
    if-eqz p1, :cond_0

    #@5
    .line 67
    const v0, 0x10405a3

    #@8
    .line 69
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-direct {p0, v1}, Lcom/android/server/am/LockTaskNotify;->makeAllUserToastAndShow(Ljava/lang/String;)Landroid/widget/Toast;

    #@11
    .line 64
    return-void
.end method

.method public showToast(I)V
    .locals 3
    .param p1, "lockTaskModeState"    # I

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/am/LockTaskNotify;->mHandler:Lcom/android/server/am/LockTaskNotify$H;

    #@2
    const/4 v1, 0x3

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/am/LockTaskNotify$H;->obtainMessage(III)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@b
    .line 44
    return-void
.end method
