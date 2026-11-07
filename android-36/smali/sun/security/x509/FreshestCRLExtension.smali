.class public Lsun/security/x509/FreshestCRLExtension;
.super Lsun/security/x509/CRLDistributionPointsExtension;
.source "FreshestCRLExtension.java"


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "FreshestCRL"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 6
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    sget-object v0, Lsun/security/x509/PKIXExtensions;->FreshestCRL_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "FreshestCRL"

    invoke-direct {p0, v0, v1, p2, v2}, Lsun/security/x509/CRLDistributionPointsExtension;-><init>(Lsun/security/util/ObjectIdentifier;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsun/security/x509/DistributionPoint;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    .local p1, "distributionPoints":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    sget-object v0, Lsun/security/x509/PKIXExtensions;->FreshestCRL_Id:Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x0

    const-string v2, "FreshestCRL"

    invoke-direct {p0, v0, v1, p1, v2}, Lsun/security/x509/CRLDistributionPointsExtension;-><init>(Lsun/security/util/ObjectIdentifier;ZLjava/util/List;Ljava/lang/String;)V

    .line 75
    return-void
.end method


# virtual methods
.method public whitelist test-api encode(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    sget-object v0, Lsun/security/x509/PKIXExtensions;->FreshestCRL_Id:Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x0

    invoke-super {p0, p1, v0, v1}, Lsun/security/x509/CRLDistributionPointsExtension;->encode(Ljava/io/OutputStream;Lsun/security/util/ObjectIdentifier;Z)V

    .line 98
    return-void
.end method
