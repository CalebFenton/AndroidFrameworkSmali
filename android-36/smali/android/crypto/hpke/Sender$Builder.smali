.class public Landroid/crypto/hpke/Sender$Builder;
.super Ljava/lang/Object;
.source "Sender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/crypto/hpke/Sender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist applicationInfo:[B

.field private final blacklist hpke:Landroid/crypto/hpke/Hpke;

.field private blacklist psk:[B

.field private blacklist pskId:[B

.field private final blacklist recipientKey:Ljava/security/PublicKey;

.field private blacklist senderKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor blacklist <init>(Landroid/crypto/hpke/Hpke;Ljava/security/PublicKey;)V
    .registers 4
    .param p1, "hpke"    # Landroid/crypto/hpke/Hpke;
    .param p2, "recipientKey"    # Ljava/security/PublicKey;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/crypto/hpke/Sender$Builder;->applicationInfo:[B

    .line 106
    iput-object v0, p0, Landroid/crypto/hpke/Sender$Builder;->senderKey:Ljava/security/PrivateKey;

    .line 107
    sget-object v0, Landroid/crypto/hpke/Hpke;->DEFAULT_PSK:[B

    iput-object v0, p0, Landroid/crypto/hpke/Sender$Builder;->psk:[B

    .line 108
    sget-object v0, Landroid/crypto/hpke/Hpke;->DEFAULT_PSK_ID:[B

    iput-object v0, p0, Landroid/crypto/hpke/Sender$Builder;->pskId:[B

    .line 116
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iput-object p1, p0, Landroid/crypto/hpke/Sender$Builder;->hpke:Landroid/crypto/hpke/Hpke;

    .line 119
    iput-object p2, p0, Landroid/crypto/hpke/Sender$Builder;->recipientKey:Ljava/security/PublicKey;

    .line 120
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/crypto/hpke/Sender;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Landroid/crypto/hpke/Sender$Builder;->hpke:Landroid/crypto/hpke/Hpke;

    invoke-virtual {v0}, Landroid/crypto/hpke/Hpke;->findSpi()Landroid/crypto/hpke/HpkeSpi;

    move-result-object v1

    .line 167
    .local v1, "spi":Landroid/crypto/hpke/HpkeSpi;
    iget-object v2, p0, Landroid/crypto/hpke/Sender$Builder;->recipientKey:Ljava/security/PublicKey;

    iget-object v3, p0, Landroid/crypto/hpke/Sender$Builder;->applicationInfo:[B

    iget-object v4, p0, Landroid/crypto/hpke/Sender$Builder;->senderKey:Ljava/security/PrivateKey;

    iget-object v5, p0, Landroid/crypto/hpke/Sender$Builder;->psk:[B

    iget-object v6, p0, Landroid/crypto/hpke/Sender$Builder;->pskId:[B

    invoke-interface/range {v1 .. v6}, Landroid/crypto/hpke/HpkeSpi;->engineInitSender(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B)V

    .line 168
    new-instance v0, Landroid/crypto/hpke/Sender;

    iget-object v2, p0, Landroid/crypto/hpke/Sender$Builder;->hpke:Landroid/crypto/hpke/Hpke;

    invoke-direct {v0, v2, v1}, Landroid/crypto/hpke/Sender;-><init>(Landroid/crypto/hpke/Hpke;Landroid/crypto/hpke/HpkeSpi;)V

    return-object v0
.end method

.method public blacklist setApplicationInfo([B)Landroid/crypto/hpke/Sender$Builder;
    .registers 2
    .param p1, "applicationInfo"    # [B

    .line 131
    iput-object p1, p0, Landroid/crypto/hpke/Sender$Builder;->applicationInfo:[B

    .line 132
    return-object p0
.end method

.method public blacklist setPsk([B[B)Landroid/crypto/hpke/Sender$Builder;
    .registers 3
    .param p1, "psk"    # [B
    .param p2, "pskId"    # [B

    .line 154
    iput-object p1, p0, Landroid/crypto/hpke/Sender$Builder;->psk:[B

    .line 155
    iput-object p2, p0, Landroid/crypto/hpke/Sender$Builder;->pskId:[B

    .line 156
    return-object p0
.end method

.method public blacklist setSenderKey(Ljava/security/PrivateKey;)Landroid/crypto/hpke/Sender$Builder;
    .registers 2
    .param p1, "senderKey"    # Ljava/security/PrivateKey;

    .line 142
    iput-object p1, p0, Landroid/crypto/hpke/Sender$Builder;->senderKey:Ljava/security/PrivateKey;

    .line 143
    return-object p0
.end method
