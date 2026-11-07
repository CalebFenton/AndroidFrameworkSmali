.class public final Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;
.super Lcom/android/internal/net/ipsec/ike/message/IkePayload;
.source "IkeEapPayload.java"


# instance fields
.field public final blacklist eapMessage:[B


# direct methods
.method constructor blacklist <init>(Z[B)V
    .registers 4
    .param p1, "isCritical"    # Z
    .param p2, "eapMessage"    # [B

    .line 44
    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    .line 46
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;->eapMessage:[B

    .line 47
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 4
    .param p1, "eapMessage"    # [B

    .line 57
    const/16 v0, 0x30

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    .line 59
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;->eapMessage:[B

    .line 60
    return-void
.end method


# virtual methods
.method protected blacklist encodeToByteBuffer(ILjava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "nextPayload"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;->getPayloadLength()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;->encodePayloadHeaderToByteBuffer(IILjava/nio/ByteBuffer;)V

    .line 71
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;->eapMessage:[B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 72
    return-void
.end method

.method protected blacklist getPayloadLength()I
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;->eapMessage:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public blacklist getTypeString()Ljava/lang/String;
    .registers 2

    .line 91
    const-string v0, "EAP"

    return-object v0
.end method
