.class public Landroid/crypto/hpke/Sender;
.super Ljava/lang/Object;
.source "Sender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/crypto/hpke/Sender$Builder;
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
    iput-object p1, p0, Landroid/crypto/hpke/Sender;->hpke:Landroid/crypto/hpke/Hpke;

    .line 42
    iput-object p2, p0, Landroid/crypto/hpke/Sender;->spi:Landroid/crypto/hpke/HpkeSpi;

    .line 43
    return-void
.end method


# virtual methods
.method public blacklist export(I[B)[B
    .registers 4
    .param p1, "length"    # I
    .param p2, "context"    # [B

    .line 77
    iget-object v0, p0, Landroid/crypto/hpke/Sender;->spi:Landroid/crypto/hpke/HpkeSpi;

    invoke-interface {v0, p1, p2}, Landroid/crypto/hpke/HpkeSpi;->engineExport(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEncapsulated()[B
    .registers 2

    .line 51
    iget-object v0, p0, Landroid/crypto/hpke/Sender;->spi:Landroid/crypto/hpke/HpkeSpi;

    invoke-interface {v0}, Landroid/crypto/hpke/HpkeSpi;->getEncapsulated()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getProvider()Ljava/security/Provider;
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/crypto/hpke/Sender;->hpke:Landroid/crypto/hpke/Hpke;

    invoke-virtual {v0}, Landroid/crypto/hpke/Hpke;->getProvider()Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSpi()Landroid/crypto/hpke/HpkeSpi;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/crypto/hpke/Sender;->spi:Landroid/crypto/hpke/HpkeSpi;

    return-object v0
.end method

.method public blacklist seal([B[B)[B
    .registers 4
    .param p1, "plaintext"    # [B
    .param p2, "aad"    # [B

    .line 64
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Landroid/crypto/hpke/Sender;->spi:Landroid/crypto/hpke/HpkeSpi;

    invoke-interface {v0, p1, p2}, Landroid/crypto/hpke/HpkeSpi;->engineSeal([B[B)[B

    move-result-object v0

    return-object v0
.end method
