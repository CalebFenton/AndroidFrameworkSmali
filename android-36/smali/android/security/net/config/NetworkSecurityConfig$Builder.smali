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
.field private blacklist mCertificateTransparencyVerificationRequired:Z

.field private blacklist mCertificateTransparencyVerificationRequiredSet:Z

.field private greylist-max-o mCertificatesEntryRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCleartextTrafficPermitted:Z

.field private greylist-max-o mCleartextTrafficPermittedSet:Z

.field private greylist-max-o mHstsEnforced:Z

.field private greylist-max-o mHstsEnforcedSet:Z

.field private greylist-max-o mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

.field private greylist-max-o mPinSet:Landroid/security/net/config/PinSet;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermitted:Z

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforced:Z

    .line 222
    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermittedSet:Z

    .line 223
    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforcedSet:Z

    .line 224
    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificateTransparencyVerificationRequired:Z

    .line 226
    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificateTransparencyVerificationRequiredSet:Z

    return-void
.end method

.method private blacklist getCertificateTransparencyVerificationRequired()Z
    .registers 5

    .line 339
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificateTransparencyVerificationRequiredSet:Z

    if-eqz v0, :cond_7

    .line 340
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificateTransparencyVerificationRequired:Z

    return v0

    .line 345
    :cond_7
    invoke-virtual {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->hasCertificatesEntryRefs()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 346
    invoke-virtual {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getCertificatesEntryRefs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/net/config/CertificatesEntryRef;

    .line 347
    .local v2, "ref":Landroid/security/net/config/CertificatesEntryRef;
    invoke-virtual {v2}, Landroid/security/net/config/CertificatesEntryRef;->disableCT()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 348
    return v1

    .line 350
    .end local v2    # "ref":Landroid/security/net/config/CertificatesEntryRef;
    :cond_29
    goto :goto_16

    .line 352
    :cond_2a
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    if-eqz v0, :cond_35

    .line 353
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getCertificateTransparencyVerificationRequired()Z

    move-result v0

    return v0

    .line 355
    :cond_35
    return v1
.end method

.method private greylist-max-o getEffectiveCertificatesEntryRefs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 316
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    return-object v0

    .line 318
    :cond_7
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    if-eqz v0, :cond_12

    .line 319
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveCertificatesEntryRefs()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 321
    :cond_12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getEffectiveCleartextTrafficPermitted()Z
    .registers 2

    .line 273
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermittedSet:Z

    if-eqz v0, :cond_7

    .line 274
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermitted:Z

    return v0

    .line 276
    :cond_7
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    if-eqz v0, :cond_12

    .line 277
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveCleartextTrafficPermitted()Z

    move-result v0

    return v0

    .line 279
    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o getEffectiveHstsEnforced()Z
    .registers 2

    .line 289
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforcedSet:Z

    if-eqz v0, :cond_7

    .line 290
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforced:Z

    return v0

    .line 292
    :cond_7
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    if-eqz v0, :cond_12

    .line 293
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveHstsEnforced()Z

    move-result v0

    return v0

    .line 295
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o getEffectivePinSet()Landroid/security/net/config/PinSet;
    .registers 2

    .line 257
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mPinSet:Landroid/security/net/config/PinSet;

    if-eqz v0, :cond_7

    .line 258
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mPinSet:Landroid/security/net/config/PinSet;

    return-object v0

    .line 260
    :cond_7
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    if-eqz v0, :cond_12

    .line 261
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectivePinSet()Landroid/security/net/config/PinSet;

    move-result-object v0

    return-object v0

    .line 263
    :cond_12
    sget-object v0, Landroid/security/net/config/PinSet;->EMPTY_PINSET:Landroid/security/net/config/PinSet;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o addCertificatesEntryRef(Landroid/security/net/config/CertificatesEntryRef;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .registers 3
    .param p1, "ref"    # Landroid/security/net/config/CertificatesEntryRef;

    .line 299
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    if-nez v0, :cond_b

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    .line 302
    :cond_b
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    return-object p0
.end method

.method public greylist-max-o addCertificatesEntryRefs(Ljava/util/Collection;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;)",
            "Landroid/security/net/config/NetworkSecurityConfig$Builder;"
        }
    .end annotation

    .line 307
    .local p1, "refs":Ljava/util/Collection;, "Ljava/util/Collection<+Landroid/security/net/config/CertificatesEntryRef;>;"
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    if-nez v0, :cond_b

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    .line 310
    :cond_b
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 311
    return-object p0
.end method

.method public greylist-max-o build()Landroid/security/net/config/NetworkSecurityConfig;
    .registers 8

    .line 359
    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveCleartextTrafficPermitted()Z

    move-result v1

    .line 360
    .local v1, "cleartextPermitted":Z
    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveHstsEnforced()Z

    move-result v2

    .line 361
    .local v2, "hstsEnforced":Z
    nop

    .line 362
    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getCertificateTransparencyVerificationRequired()Z

    move-result v3

    .line 363
    .local v3, "certificateTransparencyVerificationRequired":Z
    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectivePinSet()Landroid/security/net/config/PinSet;

    move-result-object v4

    .line 364
    .local v4, "pinSet":Landroid/security/net/config/PinSet;
    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveCertificatesEntryRefs()Ljava/util/List;

    move-result-object v5

    .line 365
    .local v5, "entryRefs":Ljava/util/List;, "Ljava/util/List<Landroid/security/net/config/CertificatesEntryRef;>;"
    new-instance v0, Landroid/security/net/config/NetworkSecurityConfig;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/security/net/config/NetworkSecurityConfig;-><init>(ZZZLandroid/security/net/config/PinSet;Ljava/util/List;Landroid/security/net/config/NetworkSecurityConfig-IA;)V

    return-object v0
.end method

.method greylist-max-o getCertificatesEntryRefs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getParent()Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .registers 2

    .line 248
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    return-object v0
.end method

.method public greylist-max-o hasCertificatesEntryRefs()Z
    .registers 2

    .line 325
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method blacklist setCertificateTransparencyVerificationRequired(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .registers 3
    .param p1, "required"    # Z

    .line 333
    iput-boolean p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificateTransparencyVerificationRequired:Z

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificateTransparencyVerificationRequiredSet:Z

    .line 335
    return-object p0
.end method

.method public greylist-max-o setCleartextTrafficPermitted(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .registers 3
    .param p1, "cleartextTrafficPermitted"    # Z

    .line 267
    iput-boolean p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermitted:Z

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermittedSet:Z

    .line 269
    return-object p0
.end method

.method public greylist-max-o setHstsEnforced(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .registers 3
    .param p1, "hstsEnforced"    # Z

    .line 283
    iput-boolean p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforced:Z

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforcedSet:Z

    .line 285
    return-object p0
.end method

.method public greylist-max-o setParent(Landroid/security/net/config/NetworkSecurityConfig$Builder;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .registers 5
    .param p1, "parent"    # Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 236
    move-object v0, p1

    .line 237
    .local v0, "current":Landroid/security/net/config/NetworkSecurityConfig$Builder;
    :goto_1
    if-eqz v0, :cond_12

    .line 238
    if-eq v0, p0, :cond_a

    .line 241
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getParent()Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v0

    goto :goto_1

    .line 239
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Loops are not allowed in Builder parents"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_12
    iput-object p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 244
    return-object p0
.end method

.method public greylist-max-o setPinSet(Landroid/security/net/config/PinSet;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .registers 2
    .param p1, "pinSet"    # Landroid/security/net/config/PinSet;

    .line 252
    iput-object p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mPinSet:Landroid/security/net/config/PinSet;

    .line 253
    return-object p0
.end method
