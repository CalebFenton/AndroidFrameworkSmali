.class Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$3;
.super Ljava/lang/Object;
.source "NetworkChangeNotifierAutoDetect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->onLosing(Landroid/net/Network;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

.field final synthetic blacklist val$netId:J


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;J)V
    .registers 4
    .param p1, "this$1"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 852
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$3;->this$1:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    iput-wide p2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$3;->val$netId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 855
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$3;->this$1:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    iget-object v0, v0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$fgetmObserver(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$3;->val$netId:J

    invoke-interface {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->onNetworkSoonToDisconnect(J)V

    .line 856
    return-void
.end method
