.class Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;
.super Landroid/net/NetworkFactory;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiNetworkFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p2, "l"    # Landroid/os/Looper;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "TAG"    # Ljava/lang/String;
    .param p5, "f"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 5324
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    .line 5325
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    #@5
    .line 5324
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 5339
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "mConnectionRequests "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get19(Lcom/android/server/wifi/WifiStateMachine;)I

    #@11
    move-result v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    .line 5338
    return-void
.end method

.method protected needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 2
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    #@0
    .prologue
    .line 5330
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get19(Lcom/android/server/wifi/WifiStateMachine;)I

    #@5
    move-result v1

    #@6
    add-int/lit8 v1, v1, 0x1

    #@8
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set9(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@b
    .line 5329
    return-void
.end method

.method protected releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 2
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 5335
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get19(Lcom/android/server/wifi/WifiStateMachine;)I

    #@5
    move-result v1

    #@6
    add-int/lit8 v1, v1, -0x1

    #@8
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set9(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@b
    .line 5334
    return-void
.end method
