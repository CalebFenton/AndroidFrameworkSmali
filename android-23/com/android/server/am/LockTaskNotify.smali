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
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/am/LockTaskNotify$H;

.field private mLastToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    iput-object p1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    #@5
    .line 44
    iget-object v0, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    #@7
    const-string/jumbo v1, "accessibility"

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    .line 43
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    #@10
    iput-object v0, p0, Lcom/android/server/am/LockTaskNotify;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@12
    .line 45
    new-instance v0, Lcom/android/server/am/LockTaskNotify$H;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/LockTaskNotify$H;-><init>(Lcom/android/server/am/LockTaskNotify;Lcom/android/server/am/LockTaskNotify$H;)V

    #@18
    iput-object v0, p0, Lcom/android/server/am/LockTaskNotify;->mHandler:Lcom/android/server/am/LockTaskNotify$H;

    #@1a
    .line 41
    return-void
.end method

.method private makeAllUserToastAndShow(Ljava/lang/String;)Landroid/widget/Toast;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    #@2
    const/4 v2, 0x1

    #@3
    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    #@6
    move-result-object v0

    #@7
    .line 79
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
    .line 81
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    #@14
    .line 82
    return-object v0
.end method


# virtual methods
.method public handleShowToast(I)V
    .locals 3
    .param p1, "lockTaskModeState"    # I

    #@0
    .prologue
    .line 53
    const/4 v0, 0x0

    #@1
    .line 54
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x1

    #@2
    if-ne p1, v1, :cond_1

    #@4
    .line 55
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    #@6
    const v2, 0x1040567

    #@9
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 60
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    #@f
    .line 61
    return-void

    #@10
    .line 56
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x2

    #@11
    if-ne p1, v1, :cond_0

    #@13
    .line 57
    iget-object v2, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    #@15
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@17
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 58
    const v1, 0x1040566

    #@20
    .line 57
    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .local v0, "text":Ljava/lang/String;
    goto :goto_0

    #@25
    .line 58
    .local v0, "text":Ljava/lang/String;
    :cond_2
    const v1, 0x1040565

    #@28
    goto :goto_1

    #@29
    .line 63
    .end local v0    # "text":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    #@2b
    if-eqz v1, :cond_4

    #@2d
    .line 64
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    #@2f
    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    #@32
    .line 66
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/am/LockTaskNotify;->makeAllUserToastAndShow(Ljava/lang/String;)Landroid/widget/Toast;

    #@35
    move-result-object v1

    #@36
    iput-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    #@38
    .line 52
    return-void
.end method

.method public show(Z)V
    .locals 2
    .param p1, "starting"    # Z

    #@0
    .prologue
    .line 70
    const v0, 0x1040569

    #@3
    .line 71
    .local v0, "showString":I
    if-eqz p1, :cond_0

    #@5
    .line 72
    const v0, 0x1040568

    #@8
    .line 74
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-direct {p0, v1}, Lcom/android/server/am/LockTaskNotify;->makeAllUserToastAndShow(Ljava/lang/String;)Landroid/widget/Toast;

    #@11
    .line 69
    return-void
.end method

.method public showToast(I)V
    .locals 3
    .param p1, "lockTaskModeState"    # I

    #@0
    .prologue
    .line 49
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
    .line 48
    return-void
.end method
