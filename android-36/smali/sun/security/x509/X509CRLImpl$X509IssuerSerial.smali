.class final Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
.super Ljava/lang/Object;
.source "X509CRLImpl.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/x509/X509CRLImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "X509IssuerSerial"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lsun/security/x509/X509CRLImpl$X509IssuerSerial;",
        ">;"
    }
.end annotation


# instance fields
.field volatile blacklist hashcode:I

.field final blacklist issuer:Ljavax/security/auth/x500/X500Principal;

.field final blacklist serial:Ljava/math/BigInteger;


# direct methods
.method constructor blacklist <init>(Ljava/security/cert/X509Certificate;)V
    .registers 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 1292
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V

    .line 1293
    return-void
.end method

.method constructor blacklist <init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "issuer"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "serial"    # Ljava/math/BigInteger;

    .line 1283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1275
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->hashcode:I

    .line 1284
    iput-object p1, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 1285
    iput-object p2, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    .line 1286
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1271
    check-cast p1, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    invoke-virtual {p0, p1}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->compareTo(Lsun/security/x509/X509CRLImpl$X509IssuerSerial;)I

    move-result p1

    return p1
.end method

.method public blacklist compareTo(Lsun/security/x509/X509CRLImpl$X509IssuerSerial;)I
    .registers 5
    .param p1, "another"    # Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    .line 1354
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 1355
    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1356
    .local v0, "cissuer":I
    if-eqz v0, :cond_13

    return v0

    .line 1357
    :cond_13
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    iget-object v2, p1, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1321
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 1322
    return v0

    .line 1325
    :cond_4
    instance-of v1, p1, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1326
    return v2

    .line 1329
    :cond_a
    move-object v1, p1

    check-cast v1, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    .line 1330
    .local v1, "other":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    invoke-virtual {v1}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->getSerial()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 1331
    invoke-virtual {v1}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1332
    return v0

    .line 1334
    :cond_26
    return v2
.end method

.method blacklist getIssuer()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .line 1301
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method blacklist getSerial()Ljava/math/BigInteger;
    .registers 2

    .line 1310
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1343
    iget v0, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->hashcode:I

    if-nez v0, :cond_1a

    .line 1344
    const/16 v0, 0x11

    .line 1345
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1346
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v2, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 1347
    .end local v1    # "result":I
    .restart local v0    # "result":I
    iput v0, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->hashcode:I

    .line 1349
    .end local v0    # "result":I
    :cond_1a
    iget v0, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->hashcode:I

    return v0
.end method
