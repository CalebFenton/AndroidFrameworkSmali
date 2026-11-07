.class public Landroid/crypto/hpke/Recipient$Builder;
.super Ljava/lang/Object;
.source "Recipient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/crypto/hpke/Recipient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist applicationInfo:[B

.field private final blacklist encapsulated:[B

.field private final blacklist hpke:Landroid/crypto/hpke/Hpke;

.field private blacklist psk:[B

.field private blacklist pskId:[B

.field private final blacklist recipientKey:Ljava/security/PrivateKey;

.field private blacklist senderKey:Ljava/security/PublicKey;


# direct methods
.method public constructor blacklist <init>(Landroid/crypto/hpke/Hpke;[BLjava/security/PrivateKey;)V
    .registers 5
    .param p1, "hpke"    # Landroid/crypto/hpke/Hpke;
    .param p2, "encapsulated"    # [B
    .param p3, "recipientKey"    # Ljava/security/PrivateKey;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/crypto/hpke/Recipient$Builder;->applicationInfo:[B

    .line 99
    iput-object v0, p0, Landroid/crypto/hpke/Recipient$Builder;->senderKey:Ljava/security/PublicKey;

    .line 100
    sget-object v0, Landroid/crypto/hpke/Hpke;->DEFAULT_PSK:[B

    iput-object v0, p0, Landroid/crypto/hpke/Recipient$Builder;->psk:[B

    .line 101
    sget-object v0, Landroid/crypto/hpke/Hpke;->DEFAULT_PSK_ID:[B

    iput-object v0, p0, Landroid/crypto/hpke/Recipient$Builder;->pskId:[B

    .line 111
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iput-object p1, p0, Landroid/crypto/hpke/Recipient$Builder;->hpke:Landroid/crypto/hpke/Hpke;

    .line 115
    iput-object p2, p0, Landroid/crypto/hpke/Recipient$Builder;->encapsulated:[B

    .line 116
    iput-object p3, p0, Landroid/crypto/hpke/Recipient$Builder;->recipientKey:Ljava/security/PrivateKey;

    .line 117
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/crypto/hpke/Recipient;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Landroid/crypto/hpke/Recipient$Builder;->hpke:Landroid/crypto/hpke/Hpke;

    invoke-virtual {v0}, Landroid/crypto/hpke/Hpke;->findSpi()Landroid/crypto/hpke/HpkeSpi;

    move-result-object v1

    .line 169
    .local v1, "spi":Landroid/crypto/hpke/HpkeSpi;
    iget-object v2, p0, Landroid/crypto/hpke/Recipient$Builder;->encapsulated:[B

    iget-object v3, p0, Landroid/crypto/hpke/Recipient$Builder;->recipientKey:Ljava/security/PrivateKey;

    iget-object v4, p0, Landroid/crypto/hpke/Recipient$Builder;->applicationInfo:[B

    iget-object v5, p0, Landroid/crypto/hpke/Recipient$Builder;->senderKey:Ljava/security/PublicKey;

    iget-object v6, p0, Landroid/crypto/hpke/Recipient$Builder;->psk:[B

    iget-object v7, p0, Landroid/crypto/hpke/Recipient$Builder;->pskId:[B

    invoke-interface/range {v1 .. v7}, Landroid/crypto/hpke/HpkeSpi;->engineInitRecipient([BLjava/security/PrivateKey;[BLjava/security/PublicKey;[B[B)V

    .line 171
    new-instance v0, Landroid/crypto/hpke/Recipient;

    iget-object v2, p0, Landroid/crypto/hpke/Recipient$Builder;->hpke:Landroid/crypto/hpke/Hpke;

    invoke-direct {v0, v2, v1}, Landroid/crypto/hpke/Recipient;-><init>(Landroid/crypto/hpke/Hpke;Landroid/crypto/hpke/HpkeSpi;)V

    return-object v0
.end method

.method public blacklist setApplicationInfo([B)Landroid/crypto/hpke/Recipient$Builder;
    .registers 2
    .param p1, "applicationInfo"    # [B

    .line 128
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iput-object p1, p0, Landroid/crypto/hpke/Recipient$Builder;->applicationInfo:[B

    .line 130
    return-object p0
.end method

.method public blacklist setPsk([B[B)Landroid/crypto/hpke/Recipient$Builder;
    .registers 3
    .param p1, "psk"    # [B
    .param p2, "pskId"    # [B

    .line 153
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iput-object p1, p0, Landroid/crypto/hpke/Recipient$Builder;->psk:[B

    .line 156
    iput-object p2, p0, Landroid/crypto/hpke/Recipient$Builder;->pskId:[B

    .line 157
    return-object p0
.end method

.method public blacklist setSenderKey(Ljava/security/PublicKey;)Landroid/crypto/hpke/Recipient$Builder;
    .registers 2
    .param p1, "senderKey"    # Ljava/security/PublicKey;

    .line 140
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iput-object p1, p0, Landroid/crypto/hpke/Recipient$Builder;->senderKey:Ljava/security/PublicKey;

    .line 142
    return-object p0
.end method
