.class public Lsun/security/x509/DeltaCRLIndicatorExtension;
.super Lsun/security/x509/CRLNumberExtension;
.source "DeltaCRLIndicatorExtension.java"


# static fields
.field private static final blacklist LABEL:Ljava/lang/String; = "Base CRL Number"

.field public static final blacklist NAME:Ljava/lang/String; = "DeltaCRLIndicator"


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 8
    .param p1, "crlNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    sget-object v1, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

    int-to-long v2, p1

    .line 79
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 78
    const/4 v2, 0x1

    const-string v4, "DeltaCRLIndicator"

    const-string v5, "Base CRL Number"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lsun/security/x509/CRLNumberExtension;-><init>(Lsun/security/util/ObjectIdentifier;ZLjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 9
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    sget-object v1, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "DeltaCRLIndicator"

    const-string v5, "Base CRL Number"

    move-object v0, p0

    move-object v3, p2

    .end local p2    # "value":Ljava/lang/Object;
    .local v3, "value":Ljava/lang/Object;
    invoke-direct/range {v0 .. v5}, Lsun/security/x509/CRLNumberExtension;-><init>(Lsun/security/util/ObjectIdentifier;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 8
    .param p1, "crlNum"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    sget-object v1, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

    const-string v4, "DeltaCRLIndicator"

    const-string v5, "Base CRL Number"

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p1

    .end local p1    # "crlNum":Ljava/math/BigInteger;
    .local v3, "crlNum":Ljava/math/BigInteger;
    invoke-direct/range {v0 .. v5}, Lsun/security/x509/CRLNumberExtension;-><init>(Lsun/security/util/ObjectIdentifier;ZLjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method


# virtual methods
.method public whitelist test-api encode(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 114
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    sget-object v1, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

    const/4 v2, 0x1

    invoke-super {p0, p1, v1, v2}, Lsun/security/x509/CRLNumberExtension;->encode(Ljava/io/OutputStream;Lsun/security/util/ObjectIdentifier;Z)V

    .line 115
    return-void
.end method
