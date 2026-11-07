.class Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;
.super Ljava/lang/Object;
.source "ChildSessionStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnIpSecSaPairCreatedRunnable"
.end annotation


# instance fields
.field private final blacklist mIn:Landroid/net/IpSecTransform;

.field private final blacklist mOut:Landroid/net/IpSecTransform;

.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    .param p2, "childSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 640
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    invoke-virtual {p2}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->getOutboundIpSecTransform()Landroid/net/IpSecTransform;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;->mOut:Landroid/net/IpSecTransform;

    .line 642
    invoke-virtual {p2}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->getInboundIpSecTransform()Landroid/net/IpSecTransform;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;->mIn:Landroid/net/IpSecTransform;

    .line 643
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 647
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmUserCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Landroid/net/ipsec/ike/ChildSessionCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;->mOut:Landroid/net/IpSecTransform;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/net/ipsec/ike/ChildSessionCallback;->onIpSecTransformCreated(Landroid/net/IpSecTransform;I)V

    .line 648
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmUserCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Landroid/net/ipsec/ike/ChildSessionCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairCreatedRunnable;->mIn:Landroid/net/IpSecTransform;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/net/ipsec/ike/ChildSessionCallback;->onIpSecTransformCreated(Landroid/net/IpSecTransform;I)V

    .line 649
    return-void
.end method
