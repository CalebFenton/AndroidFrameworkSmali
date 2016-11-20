.class public Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
.super Ljava/lang/Object;
.source "PKIXExtendedParameters.java"

# interfaces
.implements Ljava/security/cert/CertPathParameters;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    }
.end annotation


# static fields
.field public static final CHAIN_VALIDITY_MODEL:I = 0x1

.field public static final PKIX_VALIDITY_MODEL:I


# instance fields
.field private final baseParameters:Ljava/security/cert/PKIXParameters;

.field private final date:Ljava/util/Date;

.field private final extraCRLStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCertStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation
.end field

.field private final namedCRLStoreMap:Ljava/util/Map;
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

.field private final namedCertificateStoreMap:Ljava/util/Map;
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

.field private final revocationEnabled:Z

.field private final targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

.field private final trustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private final useDeltas:Z

.field private final validityModel:I


# direct methods
.method static synthetic -get0(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/security/cert/PKIXParameters;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->date:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCRLStores:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCertStores:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCRLStoreMap:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCertificateStoreMap:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->useDeltas:Z

    #@2
    return v0
.end method

.method static synthetic -get8(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->validityModel:I

    #@2
    return v0
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    #@0
    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 211
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-get0(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/security/cert/PKIXParameters;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    #@9
    .line 212
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-get1(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Date;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->date:Ljava/util/Date;

    #@f
    .line 213
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-get3(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/List;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCertStores:Ljava/util/List;

    #@19
    .line 214
    new-instance v0, Ljava/util/HashMap;

    #@1b
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-get5(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Map;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@22
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCertificateStoreMap:Ljava/util/Map;

    #@28
    .line 215
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-get2(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/List;

    #@2b
    move-result-object v0

    #@2c
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCRLStores:Ljava/util/List;

    #@32
    .line 216
    new-instance v0, Ljava/util/HashMap;

    #@34
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-get4(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Map;

    #@37
    move-result-object v1

    #@38
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@3b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@3e
    move-result-object v0

    #@3f
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCRLStoreMap:Ljava/util/Map;

    #@41
    .line 217
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-get7(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@44
    move-result-object v0

    #@45
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@47
    .line 218
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-get6(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Z

    #@4a
    move-result v0

    #@4b
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->revocationEnabled:Z

    #@4d
    .line 219
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-get9(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Z

    #@50
    move-result v0

    #@51
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->useDeltas:Z

    #@53
    .line 220
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-get10(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)I

    #@56
    move-result v0

    #@57
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->validityModel:I

    #@59
    .line 221
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-get8(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Set;

    #@5c
    move-result-object v0

    #@5d
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@60
    move-result-object v0

    #@61
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->trustAnchors:Ljava/util/Set;

    #@63
    .line 209
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .locals 0
    .param p1, "builder"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)V

    #@3
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    #@0
    .prologue
    .line 277
    return-object p0
.end method

.method public getCRLStores()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCRLStores:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getCertPathCheckers()Ljava/util/List;
    .locals 1

    #@0
    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCertStores()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCertificateStores()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCertStores:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 4

    #@0
    .prologue
    .line 247
    new-instance v0, Ljava/util/Date;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->date:Ljava/util/Date;

    #@4
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@7
    move-result-wide v2

    #@8
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@b
    return-object v0
.end method

.method public getInitialPolicies()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNamedCRLStoreMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCRLStoreMap:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public getNamedCertificateStoreMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCertificateStoreMap:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public getSigProvider()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTargetConstraints()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .locals 1

    #@0
    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@2
    return-object v0
.end method

.method public getTrustAnchors()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->trustAnchors:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public getValidityModel()I
    .locals 1

    #@0
    .prologue
    .line 272
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->validityModel:I

    #@2
    return v0
.end method

.method public isAnyPolicyInhibited()Z
    .locals 1

    #@0
    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isExplicitPolicyRequired()Z
    .locals 1

    #@0
    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isPolicyMappingInhibited()Z
    .locals 1

    #@0
    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isRevocationEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->revocationEnabled:Z

    #@2
    return v0
.end method

.method public isUseDeltasEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->useDeltas:Z

    #@2
    return v0
.end method
