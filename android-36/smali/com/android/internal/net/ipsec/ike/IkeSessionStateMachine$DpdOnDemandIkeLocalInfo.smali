.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DpdOnDemandIkeLocalInfo;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DpdIkeLocalInfo;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DpdOnDemandIkeLocalInfo"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5798
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DpdOnDemandIkeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DpdIkeLocalInfo;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    return-void
.end method


# virtual methods
.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 5806
    const/16 v0, 0x14

    return v0
.end method

.method protected blacklist getRetransmissionTimeoutsMillis()[I
    .registers 2

    .line 5801
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DpdOnDemandIkeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSessionParams;->getLivenessRetransmissionTimeoutsMillis()[I

    move-result-object v0

    return-object v0
.end method
