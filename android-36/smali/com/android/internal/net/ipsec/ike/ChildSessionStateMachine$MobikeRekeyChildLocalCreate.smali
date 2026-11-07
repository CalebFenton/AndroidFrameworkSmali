.class Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate;
.super Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MobikeRekeyChildLocalCreate"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;


# direct methods
.method public static synthetic blacklist $r8$lambda$1MICXbyQVD94sgzDDof54AoMn5U(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate;Landroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate;->lambda$notifyCallerForLocalChildSaRekey$0(Landroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1745
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$RekeyChildLocalCreate;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    return-void
.end method

.method private synthetic blacklist lambda$notifyCallerForLocalChildSaRekey$0(Landroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V
    .registers 4
    .param p1, "inTransform"    # Landroid/net/IpSecTransform;
    .param p2, "outTransform"    # Landroid/net/IpSecTransform;

    .line 1751
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmUserCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Landroid/net/ipsec/ike/ChildSessionCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/net/ipsec/ike/ChildSessionCallback;->onIpSecTransformsMigrated(Landroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V

    return-void
.end method


# virtual methods
.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 1774
    const/16 v0, 0x6e

    return v0
.end method

.method protected blacklist handleErrorNotify(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 1765
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const-string v1, "Received error notification for rekey Child. Tear down IKE SA"

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->loge(Ljava/lang/String;)V

    .line 1766
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$msendDeleteIkeRequest(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    .line 1768
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {p1}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->recordMetricsEvent_sessionTerminated(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 1769
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmChildSmCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;->onFatalIkeSessionError(Ljava/lang/Exception;)V

    .line 1770
    return-void
.end method

.method protected blacklist handleProcessRespOrSaCreationFailAndQuit(ILjava/lang/Exception;)V
    .registers 5
    .param p1, "registeredSpi"    # I
    .param p2, "exception"    # Ljava/lang/Exception;

    .line 1757
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$msendDeleteIkeRequest(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    .line 1759
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {p2}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->recordMetricsEvent_sessionTerminated(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 1760
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmChildSmCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;->onFatalIkeSessionError(Ljava/lang/Exception;)V

    .line 1761
    return-void
.end method

.method protected blacklist notifyCallerForLocalChildSaRekey()V
    .registers 5

    .line 1748
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mLocalInitNewChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->getInboundIpSecTransform()Landroid/net/IpSecTransform;

    move-result-object v0

    .line 1749
    .local v0, "inTransform":Landroid/net/IpSecTransform;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mLocalInitNewChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->getOutboundIpSecTransform()Landroid/net/IpSecTransform;

    move-result-object v1

    .line 1750
    .local v1, "outTransform":Landroid/net/IpSecTransform;
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    new-instance v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$MobikeRekeyChildLocalCreate;Landroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->executeUserCallback(Ljava/lang/Runnable;)V

    .line 1752
    return-void
.end method
