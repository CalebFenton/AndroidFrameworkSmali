.class Lcom/android/server/wifi/RttService$RttServiceImpl$1;
.super Ljava/lang/Object;
.source "RttService.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$RttEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@0
    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$1;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onRttResults([Landroid/net/wifi/RttManager$RttResult;)V
    .locals 2
    .param p1, "result"    # [Landroid/net/wifi/RttManager$RttResult;

    #@0
    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$1;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get3(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@5
    move-result-object v0

    #@6
    const v1, 0x27303

    #@9
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@c
    .line 447
    return-void
.end method
