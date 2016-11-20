.class public final Landroid/security/net/config/NetworkSecurityConfig$Builder;
.super Ljava/lang/Object;
.source "NetworkSecurityConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/net/config/NetworkSecurityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCertificatesEntryRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation
.end field

.field private mCleartextTrafficPermitted:Z

.field private mCleartextTrafficPermittedSet:Z

.field private mHstsEnforced:Z

.field private mHstsEnforcedSet:Z

.field private mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

.field private mPinSet:Landroid/security/net/config/PinSet;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 201
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermitted:Z

    #@7
    .line 202
    iput-boolean v1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforced:Z

    #@9
    .line 203
    iput-boolean v1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermittedSet:Z

    #@b
    .line 204
    iput-boolean v1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforcedSet:Z

    #@d
    .line 198
    return-void
.end method

.method private getEffectiveCertificatesEntryRefs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 293
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 294
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    #@6
    return-object v0

    #@7
    .line 296
    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 297
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@d
    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveCertificatesEntryRefs()Ljava/util/List;

    #@10
    move-result-object v0

    #@11
    return-object v0

    #@12
    .line 299
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method private getEffectiveCleartextTrafficPermitted()Z
    .locals 1

    #@0
    .prologue
    .line 251
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermittedSet:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 252
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermitted:Z

    #@6
    return v0

    #@7
    .line 254
    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 255
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@d
    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveCleartextTrafficPermitted()Z

    #@10
    move-result v0

    #@11
    return v0

    #@12
    .line 257
    :cond_1
    const/4 v0, 0x1

    #@13
    return v0
.end method

.method private getEffectiveHstsEnforced()Z
    .locals 1

    #@0
    .prologue
    .line 267
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforcedSet:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 268
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforced:Z

    #@6
    return v0

    #@7
    .line 270
    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 271
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@d
    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveHstsEnforced()Z

    #@10
    move-result v0

    #@11
    return v0

    #@12
    .line 273
    :cond_1
    const/4 v0, 0x0

    #@13
    return v0
.end method

.method private getEffectivePinSet()Landroid/security/net/config/PinSet;
    .locals 1

    #@0
    .prologue
    .line 235
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mPinSet:Landroid/security/net/config/PinSet;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 236
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mPinSet:Landroid/security/net/config/PinSet;

    #@6
    return-object v0

    #@7
    .line 238
    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 239
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@d
    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectivePinSet()Landroid/security/net/config/PinSet;

    #@10
    move-result-object v0

    #@11
    return-object v0

    #@12
    .line 241
    :cond_1
    sget-object v0, Landroid/security/net/config/PinSet;->EMPTY_PINSET:Landroid/security/net/config/PinSet;

    #@14
    return-object v0
.end method


# virtual methods
.method public addCertificatesEntryRef(Landroid/security/net/config/CertificatesEntryRef;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 1
    .param p1, "ref"    # Landroid/security/net/config/CertificatesEntryRef;

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 278
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    #@b
    .line 280
    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    #@d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    .line 281
    return-object p0
.end method

.method public addCertificatesEntryRefs(Ljava/util/Collection;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;)",
            "Landroid/security/net/config/NetworkSecurityConfig$Builder;"
        }
    .end annotation

    #@0
    .prologue
    .line 285
    .local p1, "refs":Ljava/util/Collection;, "Ljava/util/Collection<+Landroid/security/net/config/CertificatesEntryRef;>;"
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 286
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    #@b
    .line 288
    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    #@d
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@10
    .line 289
    return-object p0
.end method

.method public build()Landroid/security/net/config/NetworkSecurityConfig;
    .locals 6

    #@0
    .prologue
    .line 311
    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveCleartextTrafficPermitted()Z

    #@3
    move-result v1

    #@4
    .line 312
    .local v1, "cleartextPermitted":Z
    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveHstsEnforced()Z

    #@7
    move-result v2

    #@8
    .line 313
    .local v2, "hstsEnforced":Z
    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectivePinSet()Landroid/security/net/config/PinSet;

    #@b
    move-result-object v3

    #@c
    .line 314
    .local v3, "pinSet":Landroid/security/net/config/PinSet;
    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveCertificatesEntryRefs()Ljava/util/List;

    #@f
    move-result-object v4

    #@10
    .line 315
    .local v4, "entryRefs":Ljava/util/List;, "Ljava/util/List<Landroid/security/net/config/CertificatesEntryRef;>;"
    new-instance v0, Landroid/security/net/config/NetworkSecurityConfig;

    #@12
    const/4 v5, 0x0

    #@13
    invoke-direct/range {v0 .. v5}, Landroid/security/net/config/NetworkSecurityConfig;-><init>(ZZLandroid/security/net/config/PinSet;Ljava/util/List;Landroid/security/net/config/NetworkSecurityConfig;)V

    #@16
    return-object v0
.end method

.method getCertificatesEntryRefs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getParent()Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 1

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@2
    return-object v0
.end method

.method public hasCertificatesEntryRefs()Z
    .locals 1

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public setCleartextTrafficPermitted(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 1
    .param p1, "cleartextTrafficPermitted"    # Z

    #@0
    .prologue
    .line 245
    iput-boolean p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermitted:Z

    #@2
    .line 246
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermittedSet:Z

    #@5
    .line 247
    return-object p0
.end method

.method public setHstsEnforced(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 1
    .param p1, "hstsEnforced"    # Z

    #@0
    .prologue
    .line 261
    iput-boolean p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforced:Z

    #@2
    .line 262
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforcedSet:Z

    #@5
    .line 263
    return-object p0
.end method

.method public setParent(Landroid/security/net/config/NetworkSecurityConfig$Builder;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 3
    .param p1, "parent"    # Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@0
    .prologue
    .line 214
    move-object v0, p1

    #@1
    .line 215
    .local v0, "current":Landroid/security/net/config/NetworkSecurityConfig$Builder;
    :goto_0
    if-eqz v0, :cond_1

    #@3
    .line 216
    if-ne v0, p0, :cond_0

    #@5
    .line 217
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v2, "Loops are not allowed in Builder parents"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 219
    :cond_0
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getParent()Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@11
    move-result-object v0

    #@12
    goto :goto_0

    #@13
    .line 221
    :cond_1
    iput-object p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    #@15
    .line 222
    return-object p0
.end method

.method public setPinSet(Landroid/security/net/config/PinSet;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 0
    .param p1, "pinSet"    # Landroid/security/net/config/PinSet;

    #@0
    .prologue
    .line 230
    iput-object p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mPinSet:Landroid/security/net/config/PinSet;

    #@2
    .line 231
    return-object p0
.end method
