.class final Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenStateObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver$1;
    }
.end annotation


# static fields
.field private static final MESSAGE_ON_SCREEN_STATE_CHANGE:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->handleOnScreenStateChange(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;Landroid/content/Context;Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "magnificationController"    # Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@0
    .prologue
    .line 1144
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    .line 1132
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver$1;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver$1;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;)V

    #@a
    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mHandler:Landroid/os/Handler;

    #@c
    .line 1146
    iput-object p2, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mContext:Landroid/content/Context;

    #@e
    .line 1147
    iput-object p3, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@10
    .line 1148
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mContext:Landroid/content/Context;

    #@12
    new-instance v1, Landroid/content/IntentFilter;

    #@14
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    #@17
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@1a
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@1d
    .line 1145
    return-void
.end method

.method private handleOnScreenStateChange(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1162
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1163
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mContext:Landroid/content/Context;

    #@a
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap2(Landroid/content/Context;)Z

    #@d
    move-result v0

    #@e
    .line 1162
    if-eqz v0, :cond_0

    #@10
    .line 1164
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    #@12
    const/4 v1, 0x0

    #@13
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->reset(Z)V

    #@16
    .line 1161
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    #@0
    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@5
    .line 1151
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1157
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mHandler:Landroid/os/Handler;

    #@2
    .line 1158
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 1157
    const/4 v2, 0x1

    #@7
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 1156
    return-void
.end method
