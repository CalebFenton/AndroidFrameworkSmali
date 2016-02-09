.class public Lcom/android/server/wm/KeyguardDisableHandler;
.super Landroid/os/Handler;
.source "KeyguardDisableHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;
    }
.end annotation


# static fields
.field private static final ALLOW_DISABLE_NO:I = 0x0

.field private static final ALLOW_DISABLE_UNKNOWN:I = -0x1

.field private static final ALLOW_DISABLE_YES:I = 0x1

.field static final KEYGUARD_DISABLE:I = 0x1

.field static final KEYGUARD_POLICY_CHANGED:I = 0x3

.field static final KEYGUARD_REENABLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "KeyguardDisableHandler"


# instance fields
.field private mAllowDisableKeyguard:I

.field final mContext:Landroid/content/Context;

.field mKeyguardTokenWatcher:Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;

.field final mPolicy:Landroid/view/WindowManagerPolicy;


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/KeyguardDisableHandler;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/KeyguardDisableHandler;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I

    #@2
    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Landroid/view/WindowManagerPolicy;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@3
    .line 37
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I

    #@6
    .line 49
    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mContext:Landroid/content/Context;

    #@8
    .line 50
    iput-object p2, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@a
    .line 48
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 56
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mKeyguardTokenWatcher:Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 57
    new-instance v1, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;

    #@7
    invoke-direct {v1, p0, p0}, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;-><init>(Lcom/android/server/wm/KeyguardDisableHandler;Landroid/os/Handler;)V

    #@a
    iput-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mKeyguardTokenWatcher:Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;

    #@c
    .line 60
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    #@e
    packed-switch v1, :pswitch_data_0

    #@11
    .line 55
    :cond_1
    :goto_0
    return-void

    #@12
    .line 62
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14
    check-cast v0, Landroid/util/Pair;

    #@16
    .line 63
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mKeyguardTokenWatcher:Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;

    #@18
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@1a
    check-cast v1, Landroid/os/IBinder;

    #@1c
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@1e
    check-cast v2, Ljava/lang/String;

    #@20
    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;)V

    #@23
    goto :goto_0

    #@24
    .line 67
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Ljava/lang/String;>;"
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mKeyguardTokenWatcher:Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;

    #@26
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@28
    check-cast v1, Landroid/os/IBinder;

    #@2a
    invoke-virtual {v2, v1}, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->release(Landroid/os/IBinder;)V

    #@2d
    goto :goto_0

    #@2e
    .line 71
    :pswitch_2
    const/4 v1, -0x1

    #@2f
    iput v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I

    #@31
    .line 72
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mKeyguardTokenWatcher:Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;

    #@33
    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->isAcquired()Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_2

    #@39
    .line 75
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mKeyguardTokenWatcher:Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;

    #@3b
    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->updateAllowState()V

    #@3e
    .line 76
    iget v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I

    #@40
    if-eq v1, v2, :cond_1

    #@42
    .line 77
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@44
    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy;->enableKeyguard(Z)V

    #@47
    goto :goto_0

    #@48
    .line 81
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@4a
    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy;->enableKeyguard(Z)V

    #@4d
    goto :goto_0

    #@4e
    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
