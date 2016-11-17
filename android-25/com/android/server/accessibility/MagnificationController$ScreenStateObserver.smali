.class Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;
.super Landroid/content/BroadcastReceiver;
.source "MagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenStateObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver$StateChangeHandler;
    }
.end annotation


# static fields
.field private static final MESSAGE_ON_SCREEN_STATE_CHANGE:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/server/accessibility/MagnificationController;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->handleOnScreenStateChange()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/server/accessibility/MagnificationController;

    #@0
    .prologue
    .line 892
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    .line 893
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mContext:Landroid/content/Context;

    #@5
    .line 894
    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mController:Lcom/android/server/accessibility/MagnificationController;

    #@7
    .line 895
    new-instance v0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver$StateChangeHandler;

    #@9
    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver$StateChangeHandler;-><init>(Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;Landroid/content/Context;)V

    #@c
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mHandler:Landroid/os/Handler;

    #@e
    .line 892
    return-void
.end method

.method private handleOnScreenStateChange()V
    .locals 2

    #@0
    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mController:Lcom/android/server/accessibility/MagnificationController;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(Z)Z

    #@6
    .line 912
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mHandler:Landroid/os/Handler;

    #@2
    .line 909
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 908
    const/4 v2, 0x1

    #@7
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 907
    return-void
.end method

.method public register()V
    .locals 3

    #@0
    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mContext:Landroid/content/Context;

    #@2
    new-instance v1, Landroid/content/IntentFilter;

    #@4
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    #@7
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@a
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@d
    .line 898
    return-void
.end method

.method public unregister()V
    .locals 1

    #@0
    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@5
    .line 902
    return-void
.end method
