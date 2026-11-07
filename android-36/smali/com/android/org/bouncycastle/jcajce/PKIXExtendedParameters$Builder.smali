.class public Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
.super Ljava/lang/Object;
.source "PKIXExtendedParameters.java"


# instance fields
.field private final blacklist baseParameters:Ljava/security/cert/PKIXParameters;

.field private final blacklist date:Ljava/util/Date;

.field private blacklist extraCRLStores:Ljava/util/List;

.field private blacklist extraCertStores:Ljava/util/List;

.field private blacklist namedCRLStoreMap:Ljava/util/Map;

.field private blacklist namedCertificateStoreMap:Ljava/util/Map;

.field private blacklist revocationEnabled:Z

.field private blacklist targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

.field private blacklist trustAnchors:Ljava/util/Set;

.field private blacklist useDeltas:Z

.field private final blacklist validityDate:Ljava/util/Date;

.field private blacklist validityModel:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetbaseParameters(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/security/cert/PKIXParameters;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->baseParameters:Ljava/security/cert/PKIXParameters;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetdate(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Date;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->date:Ljava/util/Date;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetextraCRLStores(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetextraCertStores(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetnamedCRLStoreMap(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetnamedCertificateStoreMap(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetrevocationEnabled(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettargetConstraints(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettrustAnchors(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetuseDeltas(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetvalidityDate(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Date;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityDate:Ljava/util/Date;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetvalidityModel(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    return p0
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .registers 4

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    .line 64
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    .line 83
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-$$Nest$fgetbaseParameters(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/security/cert/PKIXParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->baseParameters:Ljava/security/cert/PKIXParameters;

    .line 84
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-$$Nest$fgetvalidityDate(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityDate:Ljava/util/Date;

    .line 85
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-$$Nest$fgetdate(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->date:Ljava/util/Date;

    .line 86
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-$$Nest$fgettargetConstraints(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-$$Nest$fgetextraCertStores(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-$$Nest$fgetnamedCertificateStoreMap(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-$$Nest$fgetextraCRLStores(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-$$Nest$fgetnamedCRLStoreMap(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    .line 91
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-$$Nest$fgetuseDeltas(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    .line 92
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-$$Nest$fgetvalidityModel(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    .line 93
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isRevocationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    .line 94
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/cert/PKIXParameters;)V
    .registers 4

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    .line 64
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    .line 69
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXParameters;

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->baseParameters:Ljava/security/cert/PKIXParameters;

    .line 70
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 73
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    .line 75
    :cond_3d
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityDate:Ljava/util/Date;

    if-nez v0, :cond_4a

    .line 76
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :cond_4a
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->date:Ljava/util/Date;

    .line 77
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    .line 78
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public blacklist addCRLStore(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .registers 3

    .line 194
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters-IA;)V

    return-object v0
.end method

.method public blacklist setRevocationEnabled(Z)V
    .registers 2

    .line 189
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    return-void
.end method

.method public blacklist setTargetConstraints(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    return-object p0
.end method

.method public blacklist setTrustAnchor(Ljava/security/cert/TrustAnchor;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .registers 2

    .line 164
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    return-object p0
.end method
