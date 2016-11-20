.class Lcom/android/server/wifi/WifiStateMachine$SoftApState$SoftApListener;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Lcom/android/server/wifi/SoftApManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine$SoftApState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoftApListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiStateMachine$SoftApState;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiStateMachine$SoftApState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/WifiStateMachine$SoftApState;

    #@0
    .prologue
    .line 7707
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState$SoftApListener;->this$1:Lcom/android/server/wifi/WifiStateMachine$SoftApState;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiStateMachine$SoftApState;Lcom/android/server/wifi/WifiStateMachine$SoftApState$SoftApListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/WifiStateMachine$SoftApState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine$SoftApState$SoftApListener;-><init>(Lcom/android/server/wifi/WifiStateMachine$SoftApState;)V

    #@3
    return-void
.end method


# virtual methods
.method public onStateChanged(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 7710
    const/16 v0, 0xb

    #@2
    if-ne p1, v0, :cond_1

    #@4
    .line 7711
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState$SoftApListener;->this$1:Lcom/android/server/wifi/WifiStateMachine$SoftApState;

    #@6
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8
    const v1, 0x20018

    #@b
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@e
    .line 7716
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState$SoftApListener;->this$1:Lcom/android/server/wifi/WifiStateMachine$SoftApState;

    #@10
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12
    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap42(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@15
    .line 7709
    return-void

    #@16
    .line 7712
    :cond_1
    const/16 v0, 0xe

    #@18
    if-ne p1, v0, :cond_0

    #@1a
    .line 7713
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState$SoftApListener;->this$1:Lcom/android/server/wifi/WifiStateMachine$SoftApState;

    #@1c
    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1e
    const v1, 0x20016

    #@21
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@24
    goto :goto_0
.end method
