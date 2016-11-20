.class public Lsun/security/x509/DeltaCRLIndicatorExtension;
.super Lsun/security/x509/CRLNumberExtension;
.source "DeltaCRLIndicatorExtension.java"


# static fields
.field private static final LABEL:Ljava/lang/String; = "Base CRL Number"

.field public static final NAME:Ljava/lang/String; = "DeltaCRLIndicator"


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .param p1, "crlNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    sget-object v1, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    .line 79
    int-to-long v2, p1

    #@3
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@6
    move-result-object v3

    #@7
    const-string/jumbo v4, "DeltaCRLIndicator"

    #@a
    const-string/jumbo v5, "Base CRL Number"

    #@d
    .line 78
    const/4 v2, 0x1

    #@e
    move-object v0, p0

    #@f
    invoke-direct/range {v0 .. v5}, Lsun/security/x509/CRLNumberExtension;-><init>(Lsun/security/util/ObjectIdentifier;ZLjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 6
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    sget-object v1, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@5
    move-result v0

    #@6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@9
    move-result-object v2

    #@a
    .line 103
    const-string/jumbo v4, "DeltaCRLIndicator"

    #@d
    const-string/jumbo v5, "Base CRL Number"

    #@10
    move-object v0, p0

    #@11
    move-object v3, p2

    #@12
    .line 102
    invoke-direct/range {v0 .. v5}, Lsun/security/x509/CRLNumberExtension;-><init>(Lsun/security/util/ObjectIdentifier;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    #@15
    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 6
    .param p1, "crlNum"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    sget-object v1, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    const-string/jumbo v4, "DeltaCRLIndicator"

    #@5
    const-string/jumbo v5, "Base CRL Number"

    #@8
    const/4 v2, 0x1

    #@9
    move-object v0, p0

    #@a
    move-object v3, p1

    #@b
    invoke-direct/range {v0 .. v5}, Lsun/security/x509/CRLNumberExtension;-><init>(Lsun/security/util/ObjectIdentifier;ZLjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 88
    return-void
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 113
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 114
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    sget-object v1, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

    #@7
    const/4 v2, 0x1

    #@8
    invoke-super {p0, p1, v1, v2}, Lsun/security/x509/CRLNumberExtension;->encode(Ljava/io/OutputStream;Lsun/security/util/ObjectIdentifier;Z)V

    #@b
    .line 112
    return-void
.end method
