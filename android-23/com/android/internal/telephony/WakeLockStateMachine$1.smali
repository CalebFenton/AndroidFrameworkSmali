.class Lcom/android/internal/telephony/WakeLockStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "WakeLockStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WakeLockStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/WakeLockStateMachine;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/WakeLockStateMachine;

    #@0
    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$1;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$1;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->sendMessage(I)V

    #@6
    .line 222
    return-void
.end method
