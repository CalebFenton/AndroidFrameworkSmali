.class public final Landroid/net/ipsec/ike/IkeKeyIdIdentification;
.super Landroid/net/ipsec/ike/IkeIdentification;
.source "IkeKeyIdIdentification.java"


# static fields
.field private static final blacklist KEY_ID_KEY:Ljava/lang/String; = "keyId"


# instance fields
.field public final whitelist keyId:[B


# direct methods
.method public constructor whitelist <init>([B)V
    .registers 3
    .param p1, "keyId"    # [B

    .line 45
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Landroid/net/ipsec/ike/IkeIdentification;-><init>(I)V

    .line 46
    iput-object p1, p0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;->keyId:[B

    .line 47
    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeKeyIdIdentification;
    .registers 4
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 56
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    const-string v0, "keyId"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 59
    .local v0, "keyIdBundle":Landroid/os/PersistableBundle;
    const-string v1, "Key ID bundle is null"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    new-instance v1, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    invoke-static {v0}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/IkeKeyIdIdentification;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 86
    instance-of v0, p1, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 89
    :cond_6
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;->keyId:[B

    move-object v1, p1

    check-cast v1, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    iget-object v1, v1, Landroid/net/ipsec/ike/IkeKeyIdIdentification;->keyId:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public blacklist getEncodedIdData()[B
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;->keyId:[B

    return-object v0
.end method

.method public blacklist getIdTypeString()Ljava/lang/String;
    .registers 2

    .line 95
    const-string v0, "Key ID"

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 80
    iget v0, p0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;->idType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;->keyId:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 71
    invoke-super {p0}, Landroid/net/ipsec/ike/IkeIdentification;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 72
    .local v0, "result":Landroid/os/PersistableBundle;
    iget-object v1, p0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;->keyId:[B

    invoke-static {v1}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "keyId"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 73
    return-object v0
.end method

.method public blacklist validateEndCertIdOrThrow(Ljava/security/cert/X509Certificate;)V
    .registers 4
    .param p1, "endCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;
        }
    .end annotation

    .line 102
    new-instance v0, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    const-string v1, "Key ID cannot be used together with digital-signature-based authentication"

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
