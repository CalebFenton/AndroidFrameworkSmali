.class Landroid/net/ip/IpManager$RunningState$1;
.super Ljava/lang/Object;
.source "IpManager.java"

# interfaces
.implements Landroid/net/ip/IpReachabilityMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ip/IpManager$RunningState;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/ip/IpManager$RunningState;


# direct methods
.method constructor <init>(Landroid/net/ip/IpManager$RunningState;)V
    .locals 0
    .param p1, "this$1"    # Landroid/net/ip/IpManager$RunningState;

    #@0
    .prologue
    .line 1184
    iput-object p1, p0, Landroid/net/ip/IpManager$RunningState$1;->this$1:Landroid/net/ip/IpManager$RunningState;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public notifyLost(Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 1
    .param p1, "ip"    # Ljava/net/InetAddress;
    .param p2, "logMsg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1187
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState$1;->this$1:Landroid/net/ip/IpManager$RunningState;

    #@2
    iget-object v0, v0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@4
    iget-object v0, v0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@6
    invoke-virtual {v0, p2}, Landroid/net/ip/IpManager$Callback;->onReachabilityLost(Ljava/lang/String;)V

    #@9
    .line 1186
    return-void
.end method
