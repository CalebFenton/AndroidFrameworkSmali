.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;
.super Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EncryptedRetransmitter"
.end annotation


# instance fields
.field private final blacklist mIkePacketList:[[B

.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
    .param p2, "ikeSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .param p3, "msg"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2396
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSessionParams;->getRetransmissionTimeoutsMillis()[I

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;[I)V

    .line 2397
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;[I)V
    .registers 12
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
    .param p2, "ikeSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .param p3, "msg"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p4, "retransmissionTimeouts"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 2400
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    .line 2401
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;-><init>(Landroid/os/Handler;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;[I)V

    .line 2402
    iget-object v2, p1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeIntegrity:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

    iget-object v3, p1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeCipher:Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mEnabledExtensions:Ljava/util/List;

    .line 2407
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 2403
    const/16 v6, 0x500

    move-object v4, p2

    move-object v1, p3

    .end local p2    # "ikeSaRecord":Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .end local p3    # "msg":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .local v1, "msg":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .local v4, "ikeSaRecord":Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->encryptAndEncode(Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;ZI)[[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;->mIkePacketList:[[B

    .line 2410
    iget-boolean p2, p1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIsRetransmitSuspended:Z

    if-eqz p2, :cond_2a

    .line 2412
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;->suspendRetransmitting()V

    goto :goto_2d

    .line 2415
    :cond_2a
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;->retransmit()V

    .line 2417
    :goto_2d
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;[ILcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;[I)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
    .param p2, "msg"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
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

    .line 2392
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 2393
    return-void
.end method


# virtual methods
.method public blacklist handleRetransmissionFailure()V
    .registers 4

    .line 2426
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLivenessAssister:Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->markPeerAsDead()V

    .line 2427
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    .line 2428
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getInstance()Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;

    move-result-object v1

    .line 2429
    const-string v2, "Retransmitting failure"

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getRetransmissionFailedException(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    .line 2427
    invoke-static {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 2430
    return-void
.end method

.method public blacklist send()V
    .registers 3

    .line 2421
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;->mIkePacketList:[[B

    invoke-static {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$msendEncryptedIkePackets(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;[[B)V

    .line 2422
    return-void
.end method
