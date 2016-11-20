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
        "Ljava/lang/Comparable",
        "<",
        "Lsun/security/x509/X509CRLImpl$X509IssuerSerial;",
        ">;"
    }
.end annotation


# instance fields
.field volatile hashcode:I

.field final issuer:Ljavax/security/auth/x500/X500Principal;

.field final serial:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 1235
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, v1}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V

    #@b
    .line 1234
    return-void
.end method

.method constructor <init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "issuer"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "serial"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 1226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1218
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->hashcode:I

    #@6
    .line 1227
    iput-object p1, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@8
    .line 1228
    iput-object p2, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    #@a
    .line 1226
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1296
    check-cast p1, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    #@2
    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->compareTo(Lsun/security/x509/X509CRLImpl$X509IssuerSerial;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Lsun/security/x509/X509CRLImpl$X509IssuerSerial;)I
    .locals 3
    .param p1, "another"    # Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    #@0
    .prologue
    .line 1297
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@2
    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 1298
    iget-object v2, p1, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@8
    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 1297
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    .line 1299
    .local v0, "cissuer":I
    if-eqz v0, :cond_0

    #@12
    return v0

    #@13
    .line 1300
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    #@15
    iget-object v2, p1, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    #@17
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@1a
    move-result v1

    #@1b
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1264
    if-ne p1, p0, :cond_0

    #@4
    .line 1265
    return v4

    #@5
    .line 1268
    :cond_0
    instance-of v1, p1, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 1269
    return v3

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 1272
    nop

    #@c
    nop

    #@d
    .line 1273
    .local v0, "other":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    #@f
    invoke-virtual {v0}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->getSerial()Ljava/math/BigInteger;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 1274
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@1b
    invoke-virtual {v0}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    .line 1273
    if-eqz v1, :cond_2

    #@25
    .line 1275
    return v4

    #@26
    .line 1277
    :cond_2
    return v3
.end method

.method getIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    #@0
    .prologue
    .line 1244
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@2
    return-object v0
.end method

.method getSerial()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 1253
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 1286
    iget v1, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->hashcode:I

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1288
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@6
    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->hashCode()I

    #@9
    move-result v1

    #@a
    add-int/lit16 v0, v1, 0x275

    #@c
    .line 1289
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x25

    #@e
    iget-object v2, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    #@10
    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    #@13
    move-result v2

    #@14
    add-int v0, v1, v2

    #@16
    .line 1290
    iput v0, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->hashcode:I

    #@18
    .line 1292
    .end local v0    # "result":I
    :cond_0
    iget v1, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->hashcode:I

    #@1a
    return v1
.end method
