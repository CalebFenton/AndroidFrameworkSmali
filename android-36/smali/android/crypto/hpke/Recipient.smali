.class public Landroid/crypto/hpke/Recipient;
.super Ljava/lang/Object;
.source "Recipient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/crypto/hpke/Recipient$Builder;
    }
.end annotation


# instance fields
.field private final blacklist hpke:Landroid/crypto/hpke/Hpke;

.field private final blacklist spi:Landroid/crypto/hpke/HpkeSpi;


# direct methods
.method constructor blacklist <init>(Landroid/crypto/hpke/Hpke;Landroid/crypto/hpke/HpkeSpi;)V
    .registers 3
    .param p1, "hpke"    # Landroid/crypto/hpke/Hpke;
    .param p2, "spi"    # Landroid/crypto/hpke/HpkeSpi;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/crypto/hpke/Recipient;->hpke:Landroid/crypto/hpke/Hpke;

    .line 42
    iput-object p2, p0, Landroid/crypto/hpke/Recipient;->spi:Landroid/crypto/hpke/HpkeSpi;

    .line 43
    return-void
.end method


# virtual methods
.method public blacklist export(I[B)[B
    .registers 4
    .param p1, "length"    # I
    .param p2, "context"    # [B

    .line 69
    iget-object v0, p0, Landroid/crypto/hpke/Recipient;->spi:Landroid/crypto/hpke/HpkeSpi;

    invoke-interface {v0, p1, p2}, Landroid/crypto/hpke/HpkeSpi;->engineExport(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getProvider()Ljava/security/Provider;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/crypto/hpke/Recipient;->hpke:Landroid/crypto/hpke/Hpke;

    invoke-virtual {v0}, Landroid/crypto/hpke/Hpke;->getProvider()Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSpi()Landroid/crypto/hpke/HpkeSpi;
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/crypto/hpke/Recipient;->spi:Landroid/crypto/hpke/HpkeSpi;

    return-object v0
.end method

.method public blacklist open([B[B)[B
    .registers 4
    .param p1, "ciphertext"    # [B
    .param p2, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Landroid/crypto/hpke/Recipient;->spi:Landroid/crypto/hpke/HpkeSpi;

    invoke-interface {v0, p1, p2}, Landroid/crypto/hpke/HpkeSpi;->engineOpen([B[B)[B

    move-result-object v0

    return-object v0
.end method
