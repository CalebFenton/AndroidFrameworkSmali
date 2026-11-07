.class Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;
.super Ljava/lang/Object;
.source "NetworkChangeNotifierAutoDetect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->onAvailable(Landroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

.field final synthetic blacklist val$connectionType:I

.field final synthetic blacklist val$makeVpnDefault:Z

.field final synthetic blacklist val$netId:J


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;JIZ)V
    .registers 6
    .param p1, "this$1"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 804
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;->this$1:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    iput-wide p2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;->val$netId:J

    iput p4, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;->val$connectionType:I

    iput-boolean p5, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;->val$makeVpnDefault:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 807
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;->this$1:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    iget-object v0, v0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$fgetmObserver(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;->val$netId:J

    iget v3, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;->val$connectionType:I

    invoke-interface {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->onNetworkConnect(JI)V

    .line 808
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;->val$makeVpnDefault:Z

    if-eqz v0, :cond_33

    .line 810
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;->this$1:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    iget-object v0, v0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$fgetmObserver(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    move-result-object v0

    iget v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;->val$connectionType:I

    invoke-interface {v0, v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->onConnectionTypeChanged(I)V

    .line 813
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;->this$1:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    iget-object v0, v0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$fgetmObserver(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;->val$netId:J

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v1, v3, v4

    invoke-interface {v0, v3}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->purgeActiveNetworkList([J)V

    .line 815
    :cond_33
    return-void
.end method
