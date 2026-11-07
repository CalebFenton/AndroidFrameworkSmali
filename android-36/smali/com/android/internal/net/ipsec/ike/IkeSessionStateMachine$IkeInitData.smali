.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IkeInitData"
.end annotation


# instance fields
.field public final blacklist ikeInitNoncePayload:Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

.field public final blacklist ikeInitRequestBytes:[B

.field public final blacklist ikeInitResponseBytes:[B

.field public final blacklist ikeRespNoncePayload:Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

.field public final blacklist peerSignatureHashAlgorithms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;)V
    .registers 9
    .param p1, "ikeInitData"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;

    .line 712
    new-instance v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;->firstChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    iget-object v2, p1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;->firstChildCallback:Landroid/net/ipsec/ike/ChildSessionCallback;

    iget v3, p1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;->peerSelectedDhGroup:I

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;-><init>(Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/ChildSessionCallback;I)V

    iget-object v2, p1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;->ikeInitRequestBytes:[B

    iget-object v3, p1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;->ikeInitResponseBytes:[B

    iget-object v4, p1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;->ikeInitNoncePayload:Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    iget-object v5, p1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;->ikeRespNoncePayload:Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    iget-object v6, p1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;->peerSignatureHashAlgorithms:Ljava/util/Set;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;[B[BLcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;Ljava/util/Set;)V

    .line 722
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;[B[BLcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;Ljava/util/Set;)V
    .registers 8
    .param p1, "initialSetupData"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;
    .param p2, "ikeInitRequestBytes"    # [B
    .param p3, "ikeInitResponseBytes"    # [B
    .param p4, "ikeInitNoncePayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;
    .param p5, "ikeRespNoncePayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;",
            "[B[B",
            "Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;",
            "Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;",
            "Ljava/util/Set<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .line 702
    .local p6, "peerSignatureHashAlgorithms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Short;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;)V

    .line 693
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;->peerSignatureHashAlgorithms:Ljava/util/Set;

    .line 703
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;->ikeInitRequestBytes:[B

    .line 704
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;->ikeInitResponseBytes:[B

    .line 705
    iput-object p4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;->ikeInitNoncePayload:Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    .line 706
    iput-object p5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;->ikeRespNoncePayload:Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    .line 708
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;->peerSignatureHashAlgorithms:Ljava/util/Set;

    invoke-interface {v0, p6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 709
    return-void
.end method
