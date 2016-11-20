.class final Lsun/security/provider/certpath/RevocationChecker$1;
.super Ljava/lang/Object;
.source "RevocationChecker.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/provider/certpath/RevocationChecker;->getRevocationProperties()Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 183
    invoke-virtual {p0}, Lsun/security/provider/certpath/RevocationChecker$1;->run()Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 184
    new-instance v2, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;

    #@4
    invoke-direct {v2, v3}, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;-><init>(Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;)V

    #@7
    .line 186
    .local v2, "rp":Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
    const-string/jumbo v3, "com.sun.security.onlyCheckRevocationOfEECert"

    #@a
    .line 185
    invoke-static {v3}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 187
    .local v1, "onlyEE":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@10
    .line 188
    const-string/jumbo v3, "true"

    #@13
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@16
    move-result v3

    #@17
    .line 187
    :goto_0
    iput-boolean v3, v2, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->onlyEE:Z

    #@19
    .line 189
    const-string/jumbo v3, "ocsp.enable"

    #@1c
    invoke-static {v3}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 190
    .local v0, "ocspEnabled":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@22
    .line 191
    const-string/jumbo v3, "true"

    #@25
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@28
    move-result v4

    #@29
    .line 190
    :cond_0
    iput-boolean v4, v2, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspEnabled:Z

    #@2b
    .line 192
    const-string/jumbo v3, "ocsp.responderURL"

    #@2e
    invoke-static {v3}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    iput-object v3, v2, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspUrl:Ljava/lang/String;

    #@34
    .line 194
    const-string/jumbo v3, "ocsp.responderCertSubjectName"

    #@37
    invoke-static {v3}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    .line 193
    iput-object v3, v2, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSubject:Ljava/lang/String;

    #@3d
    .line 196
    const-string/jumbo v3, "ocsp.responderCertIssuerName"

    #@40
    invoke-static {v3}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    .line 195
    iput-object v3, v2, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspIssuer:Ljava/lang/String;

    #@46
    .line 198
    const-string/jumbo v3, "ocsp.responderCertSerialNumber"

    #@49
    invoke-static {v3}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    .line 197
    iput-object v3, v2, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSerial:Ljava/lang/String;

    #@4f
    .line 200
    const-string/jumbo v3, "com.sun.security.enableCRLDP"

    #@52
    invoke-static {v3}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    #@55
    move-result v3

    #@56
    .line 199
    iput-boolean v3, v2, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->crlDPEnabled:Z

    #@58
    .line 201
    return-object v2

    #@59
    .end local v0    # "ocspEnabled":Ljava/lang/String;
    :cond_1
    move v3, v4

    #@5a
    .line 187
    goto :goto_0
.end method
