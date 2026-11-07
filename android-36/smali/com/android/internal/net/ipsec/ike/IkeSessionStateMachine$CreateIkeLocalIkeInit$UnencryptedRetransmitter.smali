.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit$UnencryptedRetransmitter;
.super Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnencryptedRetransmitter"
.end annotation


# instance fields
.field private final blacklist mIkePacket:[B

.field final synthetic blacklist this$1:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 5
    .param p2, "msg"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 3697
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit$UnencryptedRetransmitter;->this$1:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;

    .line 3698
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSessionParams;->getRetransmissionTimeoutsMillis()[I

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;-><init>(Landroid/os/Handler;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;[I)V

    .line 3699
    invoke-virtual {p2}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->encode()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit$UnencryptedRetransmitter;->mIkePacket:[B

    .line 3701
    iget-object p1, p1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-boolean p1, p1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIsRetransmitSuspended:Z

    if-eqz p1, :cond_23

    .line 3703
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit$UnencryptedRetransmitter;->suspendRetransmitting()V

    goto :goto_26

    .line 3706
    :cond_23
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit$UnencryptedRetransmitter;->retransmit()V

    .line 3708
    :goto_26
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit$UnencryptedRetransmitter;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    return-void
.end method


# virtual methods
.method public blacklist handleRetransmissionFailure()V
    .registers 4

    .line 3718
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit$UnencryptedRetransmitter;->this$1:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLivenessAssister:Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->markPeerAsDead()V

    .line 3719
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit$UnencryptedRetransmitter;->this$1:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    .line 3720
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getInstance()Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;

    move-result-object v1

    .line 3721
    const-string v2, "Retransmitting IKE INIT request failure"

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getRetransmissionFailedException(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    .line 3719
    invoke-static {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 3723
    return-void
.end method

.method public blacklist send()V
    .registers 3

    .line 3713
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit$UnencryptedRetransmitter;->this$1:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit$UnencryptedRetransmitter;->mIkePacket:[B

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->sendIkePacket([B)V

    .line 3714
    return-void
.end method
