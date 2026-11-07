.class public Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
.super Ljava/lang/Object;
.source "PKIXExtendedParameters.java"

# interfaces
.implements Ljava/security/cert/CertPathParameters;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CHAIN_VALIDITY_MODEL:I = 0x1

.field public static final blacklist PKIX_VALIDITY_MODEL:I


# instance fields
.field private final blacklist baseParameters:Ljava/security/cert/PKIXParameters;

.field private final blacklist date:Ljava/util/Date;

.field private final blacklist extraCRLStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist extraCertStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist namedCRLStoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist namedCertificateStoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist revocationEnabled:Z

.field private final blacklist targetConstraints:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

.field private final blacklist trustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist useDeltas:Z

.field private final blacklist validityDate:Ljava/util/Date;

.field private final blacklist validityModel:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetbaseParameters(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/security/cert/PKIXParameters;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetdate(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->date:Ljava/util/Date;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetextraCRLStores(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCRLStores:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetextraCertStores(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCertStores:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetnamedCRLStoreMap(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCRLStoreMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetnamedCertificateStoreMap(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCertificateStoreMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettargetConstraints(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->targetConstraints:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetuseDeltas(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->useDeltas:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetvalidityDate(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->validityDate:Ljava/util/Date;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetvalidityModel(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->validityModel:I

    return p0
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetbaseParameters(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/security/cert/PKIXParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    .line 214
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetvalidityDate(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->validityDate:Ljava/util/Date;

    .line 215
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetdate(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->date:Ljava/util/Date;

    .line 216
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetextraCertStores(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCertStores:Ljava/util/List;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetnamedCertificateStoreMap(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCertificateStoreMap:Ljava/util/Map;

    .line 218
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetextraCRLStores(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCRLStores:Ljava/util/List;

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetnamedCRLStoreMap(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCRLStoreMap:Ljava/util/Map;

    .line 220
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgettargetConstraints(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->targetConstraints:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    .line 221
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetrevocationEnabled(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->revocationEnabled:Z

    .line 222
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetuseDeltas(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->useDeltas:Z

    .line 223
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetvalidityModel(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->validityModel:I

    .line 224
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgettrustAnchors(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->trustAnchors:Ljava/util/Set;

    .line 225
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 1

    .line 289
    return-object p0
.end method

.method public blacklist getCRLStores()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCRLStores:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getCertPathCheckers()Ljava/util/List;
    .registers 2

    .line 339
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCertStores()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCertificateStores()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCertStores:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getDate()Ljava/util/Date;
    .registers 4

    .line 264
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public blacklist getInitialPolicies()Ljava/util/Set;
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNamedCRLStoreMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCRLStoreMap:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getNamedCertificateStoreMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCertificateStoreMap:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getPolicyQualifiersRejected()Z
    .registers 2

    .line 354
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getPolicyQualifiersRejected()Z

    move-result v0

    return v0
.end method

.method public blacklist getSigProvider()Ljava/lang/String;
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTargetConstraints()Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .registers 2

    .line 304
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->targetConstraints:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    return-object v0
.end method

.method public blacklist getTrustAnchors()Ljava/util/Set;
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->trustAnchors:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getValidityDate()Ljava/util/Date;
    .registers 4

    .line 256
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->validityDate:Ljava/util/Date;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_11

    :cond_6
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->validityDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :goto_11
    return-object v0
.end method

.method public blacklist getValidityModel()I
    .registers 2

    .line 284
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->validityModel:I

    return v0
.end method

.method public blacklist isAnyPolicyInhibited()Z
    .registers 2

    .line 329
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v0

    return v0
.end method

.method public blacklist isExplicitPolicyRequired()Z
    .registers 2

    .line 324
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    return v0
.end method

.method public blacklist isPolicyMappingInhibited()Z
    .registers 2

    .line 334
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v0

    return v0
.end method

.method public blacklist isRevocationEnabled()Z
    .registers 2

    .line 349
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->revocationEnabled:Z

    return v0
.end method

.method public blacklist isUseDeltasEnabled()Z
    .registers 2

    .line 274
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->useDeltas:Z

    return v0
.end method
