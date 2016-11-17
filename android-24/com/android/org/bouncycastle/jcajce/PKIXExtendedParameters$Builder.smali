.class public Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
.super Ljava/lang/Object;
.source "PKIXExtendedParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final baseParameters:Ljava/security/cert/PKIXParameters;

.field private final date:Ljava/util/Date;

.field private extraCRLStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation
.end field

.field private extraCertStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation
.end field

.field private namedCRLStoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation
.end field

.field private namedCertificateStoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation
.end field

.field private revocationEnabled:Z

.field private targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

.field private trustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private useDeltas:Z

.field private validityModel:I


# direct methods
.method static synthetic -get0(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/security/cert/PKIXParameters;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->baseParameters:Ljava/security/cert/PKIXParameters;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Date;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->date:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    #@2
    return v0
.end method

.method static synthetic -get7(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Set;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    #@2
    return v0
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .locals 2
    .param p1, "baseParameters"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    #@b
    .line 59
    new-instance v0, Ljava/util/HashMap;

    #@d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    #@12
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    #@14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@17
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    #@19
    .line 61
    new-instance v0, Ljava/util/HashMap;

    #@1b
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    #@20
    .line 63
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    #@22
    .line 64
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    #@24
    .line 83
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-get0(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/security/cert/PKIXParameters;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->baseParameters:Ljava/security/cert/PKIXParameters;

    #@2a
    .line 84
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-get1(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->date:Ljava/util/Date;

    #@30
    .line 85
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-get6(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@33
    move-result-object v0

    #@34
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@36
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    #@38
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-get3(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/List;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@3f
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    #@41
    .line 87
    new-instance v0, Ljava/util/HashMap;

    #@43
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-get5(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Map;

    #@46
    move-result-object v1

    #@47
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@4a
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    #@4c
    .line 88
    new-instance v0, Ljava/util/ArrayList;

    #@4e
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-get2(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/List;

    #@51
    move-result-object v1

    #@52
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@55
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    #@57
    .line 89
    new-instance v0, Ljava/util/HashMap;

    #@59
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-get4(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Map;

    #@5c
    move-result-object v1

    #@5d
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@60
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    #@62
    .line 90
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-get7(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Z

    #@65
    move-result v0

    #@66
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    #@68
    .line 91
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-get8(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)I

    #@6b
    move-result v0

    #@6c
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    #@6e
    .line 92
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isRevocationEnabled()Z

    #@71
    move-result v0

    #@72
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    #@74
    .line 93
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    #@77
    move-result-object v0

    #@78
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    #@7a
    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/PKIXParameters;)V
    .locals 4
    .param p1, "baseParameters"    # Ljava/security/cert/PKIXParameters;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 58
    new-instance v2, Ljava/util/ArrayList;

    #@6
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    #@b
    .line 59
    new-instance v2, Ljava/util/HashMap;

    #@d
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@10
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    #@12
    .line 60
    new-instance v2, Ljava/util/ArrayList;

    #@14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@17
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    #@19
    .line 61
    new-instance v2, Ljava/util/HashMap;

    #@1b
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@1e
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    #@20
    .line 63
    iput v3, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    #@22
    .line 64
    iput-boolean v3, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    #@24
    .line 69
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->clone()Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Ljava/security/cert/PKIXParameters;

    #@2a
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->baseParameters:Ljava/security/cert/PKIXParameters;

    #@2c
    .line 70
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    #@2f
    move-result-object v1

    #@30
    .line 71
    .local v1, "constraints":Ljava/security/cert/CertSelector;
    if-eqz v1, :cond_0

    #@32
    .line 73
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    #@34
    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    #@37
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@3a
    move-result-object v2

    #@3b
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@3d
    .line 75
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    #@40
    move-result-object v0

    #@41
    .line 76
    .local v0, "checkDate":Ljava/util/Date;
    if-nez v0, :cond_1

    #@43
    new-instance v0, Ljava/util/Date;

    #@45
    .end local v0    # "checkDate":Ljava/util/Date;
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@48
    :cond_1
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->date:Ljava/util/Date;

    #@4a
    .line 77
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    #@4d
    move-result v2

    #@4e
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    #@50
    .line 78
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    #@53
    move-result-object v2

    #@54
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    #@56
    .line 67
    return-void
.end method


# virtual methods
.method public addCRLStore(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 1
    .param p1, "store"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 114
    return-object p0
.end method

.method public addCertificateStore(Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 1
    .param p1, "store"    # Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 100
    return-object p0
.end method

.method public addNamedCRLStore(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 1
    .param p1, "issuerAltName"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .param p2, "store"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 121
    return-object p0
.end method

.method public addNamedCertificateStore(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 1
    .param p1, "issuerAltName"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .param p2, "store"    # Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 107
    return-object p0
.end method

.method public build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .locals 2

    #@0
    .prologue
    .line 193
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    #@6
    return-object v0
.end method

.method public setRevocationEnabled(Z)V
    .locals 0
    .param p1, "revocationEnabled"    # Z

    #@0
    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    #@2
    .line 186
    return-void
.end method

.method public setTargetConstraints(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 0
    .param p1, "selector"    # Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@0
    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@2
    .line 128
    return-object p0
.end method

.method public setTrustAnchor(Ljava/security/cert/TrustAnchor;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 1
    .param p1, "trustAnchor"    # Ljava/security/cert/TrustAnchor;

    #@0
    .prologue
    .line 163
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    #@6
    .line 165
    return-object p0
.end method

.method public setTrustAnchors(Ljava/util/Set;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;"
        }
    .end annotation

    #@0
    .prologue
    .line 176
    .local p1, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    #@2
    .line 178
    return-object p0
.end method

.method public setUseDeltasEnabled(Z)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 0
    .param p1, "useDeltas"    # Z

    #@0
    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    #@2
    .line 140
    return-object p0
.end method

.method public setValidityModel(I)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 0
    .param p1, "validityModel"    # I

    #@0
    .prologue
    .line 150
    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    #@2
    .line 152
    return-object p0
.end method
