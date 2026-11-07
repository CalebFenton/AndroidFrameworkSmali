.class public final Landroid/companion/AssociationRequest$Builder;
.super Landroid/provider/OneTimeUseBuilder;
.source "AssociationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/AssociationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/provider/OneTimeUseBuilder<",
        "Landroid/companion/AssociationRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o mDeviceFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/companion/DeviceFilter<",
            "*>;>;"
        }
    .end annotation
.end field

.field private blacklist mDeviceIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mDeviceProfile:Ljava/lang/String;

.field private blacklist mDisplayName:Ljava/lang/CharSequence;

.field private blacklist mForceConfirmation:Z

.field private blacklist mSelfManaged:Z

.field private greylist-max-o mSingleDevice:Z

.field private blacklist mSkipRoleGrant:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 451
    invoke-direct {p0}, Landroid/provider/OneTimeUseBuilder;-><init>()V

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/companion/AssociationRequest$Builder;->mSingleDevice:Z

    .line 443
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/companion/AssociationRequest$Builder;->mDeviceFilters:Ljava/util/ArrayList;

    .line 446
    iput-boolean v0, p0, Landroid/companion/AssociationRequest$Builder;->mSelfManaged:Z

    .line 447
    iput-boolean v0, p0, Landroid/companion/AssociationRequest$Builder;->mForceConfirmation:Z

    .line 448
    iput-boolean v0, p0, Landroid/companion/AssociationRequest$Builder;->mSkipRoleGrant:Z

    .line 449
    iput-object v1, p0, Landroid/companion/AssociationRequest$Builder;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    .line 451
    return-void
.end method


# virtual methods
.method public whitelist addDeviceFilter(Landroid/companion/DeviceFilter;)Landroid/companion/AssociationRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/companion/DeviceFilter<",
            "*>;)",
            "Landroid/companion/AssociationRequest$Builder;"
        }
    .end annotation

    .line 476
    .local p1, "deviceFilter":Landroid/companion/DeviceFilter;, "Landroid/companion/DeviceFilter<*>;"
    invoke-virtual {p0}, Landroid/companion/AssociationRequest$Builder;->checkNotUsed()V

    .line 477
    if-eqz p1, :cond_d

    .line 478
    iget-object v0, p0, Landroid/companion/AssociationRequest$Builder;->mDeviceFilters:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationRequest$Builder;->mDeviceFilters:Ljava/util/ArrayList;

    .line 480
    :cond_d
    return-object p0
.end method

.method public whitelist build()Landroid/companion/AssociationRequest;
    .registers 13

    .line 578
    invoke-virtual {p0}, Landroid/companion/AssociationRequest$Builder;->markUsed()V

    .line 579
    iget-boolean v0, p0, Landroid/companion/AssociationRequest$Builder;->mSelfManaged:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/companion/AssociationRequest$Builder;->mDisplayName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    goto :goto_14

    .line 580
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request for a self-managed association MUST provide the display name of the device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_14
    :goto_14
    new-instance v2, Landroid/companion/AssociationRequest;

    iget-boolean v3, p0, Landroid/companion/AssociationRequest$Builder;->mSingleDevice:Z

    iget-object v0, p0, Landroid/companion/AssociationRequest$Builder;->mDeviceFilters:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Landroid/companion/AssociationRequest$Builder;->mDeviceProfile:Ljava/lang/String;

    iget-object v6, p0, Landroid/companion/AssociationRequest$Builder;->mDisplayName:Ljava/lang/CharSequence;

    iget-boolean v7, p0, Landroid/companion/AssociationRequest$Builder;->mSelfManaged:Z

    iget-boolean v8, p0, Landroid/companion/AssociationRequest$Builder;->mForceConfirmation:Z

    iget-boolean v9, p0, Landroid/companion/AssociationRequest$Builder;->mSkipRoleGrant:Z

    iget-object v10, p0, Landroid/companion/AssociationRequest$Builder;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Landroid/companion/AssociationRequest;-><init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;ZZZLandroid/graphics/drawable/Icon;Landroid/companion/AssociationRequest-IA;)V

    return-object v2
.end method

.method public bridge synthetic blacklist build()Ljava/lang/Object;
    .registers 2

    .line 441
    invoke-virtual {p0}, Landroid/companion/AssociationRequest$Builder;->build()Landroid/companion/AssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setDeviceIcon(Landroid/graphics/drawable/Icon;)Landroid/companion/AssociationRequest$Builder;
    .registers 3
    .param p1, "deviceIcon"    # Landroid/graphics/drawable/Icon;

    .line 569
    invoke-virtual {p0}, Landroid/companion/AssociationRequest$Builder;->checkNotUsed()V

    .line 570
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/companion/AssociationRequest$Builder;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    .line 571
    return-object p0
.end method

.method public whitelist setDeviceProfile(Ljava/lang/String;)Landroid/companion/AssociationRequest$Builder;
    .registers 2
    .param p1, "deviceProfile"    # Ljava/lang/String;

    .line 488
    invoke-virtual {p0}, Landroid/companion/AssociationRequest$Builder;->checkNotUsed()V

    .line 489
    iput-object p1, p0, Landroid/companion/AssociationRequest$Builder;->mDeviceProfile:Ljava/lang/String;

    .line 490
    return-object p0
.end method

.method public whitelist setDisplayName(Ljava/lang/CharSequence;)Landroid/companion/AssociationRequest$Builder;
    .registers 3
    .param p1, "displayName"    # Ljava/lang/CharSequence;

    .line 502
    invoke-virtual {p0}, Landroid/companion/AssociationRequest$Builder;->checkNotUsed()V

    .line 503
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/companion/AssociationRequest$Builder;->mDisplayName:Ljava/lang/CharSequence;

    .line 504
    return-object p0
.end method

.method public whitelist setForceConfirmation(Z)Landroid/companion/AssociationRequest$Builder;
    .registers 2
    .param p1, "forceConfirmation"    # Z

    .line 530
    invoke-virtual {p0}, Landroid/companion/AssociationRequest$Builder;->checkNotUsed()V

    .line 531
    iput-boolean p1, p0, Landroid/companion/AssociationRequest$Builder;->mForceConfirmation:Z

    .line 532
    return-object p0
.end method

.method public whitelist setSelfManaged(Z)Landroid/companion/AssociationRequest$Builder;
    .registers 2
    .param p1, "selfManaged"    # Z

    .line 517
    invoke-virtual {p0}, Landroid/companion/AssociationRequest$Builder;->checkNotUsed()V

    .line 518
    iput-boolean p1, p0, Landroid/companion/AssociationRequest$Builder;->mSelfManaged:Z

    .line 519
    return-object p0
.end method

.method public whitelist setSingleDevice(Z)Landroid/companion/AssociationRequest$Builder;
    .registers 2
    .param p1, "singleDevice"    # Z

    .line 465
    invoke-virtual {p0}, Landroid/companion/AssociationRequest$Builder;->checkNotUsed()V

    .line 466
    iput-boolean p1, p0, Landroid/companion/AssociationRequest$Builder;->mSingleDevice:Z

    .line 467
    return-object p0
.end method

.method public blacklist setSkipRoleGrant(Z)Landroid/companion/AssociationRequest$Builder;
    .registers 2
    .param p1, "skipRoleGrant"    # Z

    .line 551
    invoke-virtual {p0}, Landroid/companion/AssociationRequest$Builder;->checkNotUsed()V

    .line 552
    iput-boolean p1, p0, Landroid/companion/AssociationRequest$Builder;->mSkipRoleGrant:Z

    .line 553
    return-object p0
.end method
