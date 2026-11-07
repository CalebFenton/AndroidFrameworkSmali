.class public final Landroid/media/MediaRoute2Info$Builder;
.super Ljava/lang/Object;
.source "MediaRoute2Info.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRoute2Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAddress:Ljava/lang/String;

.field private blacklist mAllowedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mClientPackageName:Ljava/lang/String;

.field private blacklist mConnectionState:I

.field private blacklist mDeduplicationIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDescription:Ljava/lang/CharSequence;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIconUri:Landroid/net/Uri;

.field private final blacklist mId:Ljava/lang/String;

.field private blacklist mIsSystem:Z

.field private blacklist mIsVisibilityRestricted:Z

.field private final blacklist mName:Ljava/lang/CharSequence;

.field private blacklist mProviderId:Ljava/lang/String;

.field private blacklist mProviderPackageName:Ljava/lang/String;

.field private blacklist mRequiredPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mRoutingTypeFlags:I

.field private blacklist mSuitabilityStatus:I

.field private blacklist mType:I

.field private blacklist mVolume:I

.field private blacklist mVolumeHandling:I

.field private blacklist mVolumeMax:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAddress(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAllowedPackages(Landroid/media/MediaRoute2Info$Builder;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mAllowedPackages:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClientPackageName(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mClientPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectionState(Landroid/media/MediaRoute2Info$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaRoute2Info$Builder;->mConnectionState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeduplicationIds(Landroid/media/MediaRoute2Info$Builder;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mDeduplicationIds:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDescription(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/media/MediaRoute2Info$Builder;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFeatures(Landroid/media/MediaRoute2Info$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconUri(Landroid/media/MediaRoute2Info$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mIconUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSystem(Landroid/media/MediaRoute2Info$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/MediaRoute2Info$Builder;->mIsSystem:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsVisibilityRestricted(Landroid/media/MediaRoute2Info$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/MediaRoute2Info$Builder;->mIsVisibilityRestricted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmName(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProviderId(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mProviderId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProviderPackageName(Landroid/media/MediaRoute2Info$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mProviderPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequiredPermissions(Landroid/media/MediaRoute2Info$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRoute2Info$Builder;->mRequiredPermissions:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRoutingTypeFlags(Landroid/media/MediaRoute2Info$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaRoute2Info$Builder;->mRoutingTypeFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuitabilityStatus(Landroid/media/MediaRoute2Info$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaRoute2Info$Builder;->mSuitabilityStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/media/MediaRoute2Info$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolume(Landroid/media/MediaRoute2Info$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolume:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeHandling(Landroid/media/MediaRoute2Info$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeMax(Landroid/media/MediaRoute2Info$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeMax:I

    return p0
.end method

.method public constructor whitelist <init>(Landroid/media/MediaRoute2Info;)V
    .registers 3
    .param p1, "routeInfo"    # Landroid/media/MediaRoute2Info;

    .line 1380
    invoke-static {p1}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmId(Landroid/media/MediaRoute2Info;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 1381
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "routeInfo"    # Landroid/media/MediaRoute2Info;

    .line 1391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1325
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    .line 1327
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/MediaRoute2Info$Builder;->mRoutingTypeFlags:I

    .line 1335
    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    .line 1392
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ab

    .line 1395
    const-string v0, "routeInfo must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1397
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mId:Ljava/lang/String;

    .line 1398
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmName(Landroid/media/MediaRoute2Info;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mName:Ljava/lang/CharSequence;

    .line 1399
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmFeatures(Landroid/media/MediaRoute2Info;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    .line 1400
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmType(Landroid/media/MediaRoute2Info;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    .line 1401
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmRoutingTypeFlags(Landroid/media/MediaRoute2Info;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mRoutingTypeFlags:I

    .line 1402
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmIsSystem(Landroid/media/MediaRoute2Info;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaRoute2Info$Builder;->mIsSystem:Z

    .line 1403
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmIconUri(Landroid/media/MediaRoute2Info;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mIconUri:Landroid/net/Uri;

    .line 1404
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmDescription(Landroid/media/MediaRoute2Info;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mDescription:Ljava/lang/CharSequence;

    .line 1405
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmConnectionState(Landroid/media/MediaRoute2Info;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mConnectionState:I

    .line 1406
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmClientPackageName(Landroid/media/MediaRoute2Info;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mClientPackageName:Ljava/lang/String;

    .line 1407
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmProviderPackageName(Landroid/media/MediaRoute2Info;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mProviderPackageName:Ljava/lang/String;

    .line 1408
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmVolumeHandling(Landroid/media/MediaRoute2Info;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    .line 1409
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmVolumeMax(Landroid/media/MediaRoute2Info;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeMax:I

    .line 1410
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmVolume(Landroid/media/MediaRoute2Info;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolume:I

    .line 1411
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmAddress(Landroid/media/MediaRoute2Info;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mAddress:Ljava/lang/String;

    .line 1412
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmDeduplicationIds(Landroid/media/MediaRoute2Info;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mDeduplicationIds:Ljava/util/Set;

    .line 1413
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmExtras(Landroid/media/MediaRoute2Info;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_8c

    .line 1414
    new-instance v0, Landroid/os/Bundle;

    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmExtras(Landroid/media/MediaRoute2Info;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mExtras:Landroid/os/Bundle;

    .line 1416
    :cond_8c
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmProviderId(Landroid/media/MediaRoute2Info;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mProviderId:Ljava/lang/String;

    .line 1417
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmIsVisibilityRestricted(Landroid/media/MediaRoute2Info;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaRoute2Info$Builder;->mIsVisibilityRestricted:Z

    .line 1418
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmAllowedPackages(Landroid/media/MediaRoute2Info;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mAllowedPackages:Ljava/util/Set;

    .line 1419
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmSuitabilityStatus(Landroid/media/MediaRoute2Info;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mSuitabilityStatus:I

    .line 1420
    invoke-static {p2}, Landroid/media/MediaRoute2Info;->-$$Nest$fgetmRequiredPermissions(Landroid/media/MediaRoute2Info;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mRequiredPermissions:Ljava/util/List;

    .line 1421
    return-void

    .line 1393
    :cond_ab
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/CharSequence;

    .line 1357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1325
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    .line 1327
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/MediaRoute2Info$Builder;->mRoutingTypeFlags:I

    .line 1335
    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    .line 1358
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 1361
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 1364
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mId:Ljava/lang/String;

    .line 1365
    iput-object p2, p0, Landroid/media/MediaRoute2Info$Builder;->mName:Ljava/lang/CharSequence;

    .line 1366
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    .line 1367
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRoute2Info$Builder;->mDeduplicationIds:Ljava/util/Set;

    .line 1368
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRoute2Info$Builder;->mAllowedPackages:Ljava/util/Set;

    .line 1369
    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mSuitabilityStatus:I

    .line 1370
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mRequiredPermissions:Ljava/util/List;

    .line 1371
    return-void

    .line 1362
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1359
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .registers 4
    .param p1, "feature"    # Ljava/lang/String;

    .line 1434
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1437
    iget-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1438
    return-object p0

    .line 1435
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "feature must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addFeatures(Ljava/util/Collection;)Landroid/media/MediaRoute2Info$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaRoute2Info$Builder;"
        }
    .end annotation

    .line 1452
    .local p1, "features":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "features must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1453
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1454
    .local v1, "feature":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 1455
    .end local v1    # "feature":Ljava/lang/String;
    goto :goto_9

    .line 1456
    :cond_19
    return-object p0
.end method

.method public whitelist build()Landroid/media/MediaRoute2Info;
    .registers 3

    .line 1733
    iget-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1736
    new-instance v0, Landroid/media/MediaRoute2Info;

    invoke-direct {v0, p0}, Landroid/media/MediaRoute2Info;-><init>(Landroid/media/MediaRoute2Info$Builder;)V

    return-object v0

    .line 1734
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "features must not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist clearFeatures()Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    .line 1464
    iget-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1465
    return-object p0
.end method

.method public blacklist setAddress(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .line 1597
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mAddress:Ljava/lang/String;

    .line 1598
    return-object p0
.end method

.method public whitelist setClientPackageName(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1548
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mClientPackageName:Ljava/lang/String;

    .line 1549
    return-object p0
.end method

.method public whitelist setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .param p1, "connectionState"    # I

    .line 1539
    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mConnectionState:I

    .line 1540
    return-object p0
.end method

.method public whitelist setDeduplicationIds(Ljava/util/Set;)Landroid/media/MediaRoute2Info$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaRoute2Info$Builder;"
        }
    .end annotation

    .line 1606
    .local p1, "id":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mDeduplicationIds:Ljava/util/Set;

    .line 1607
    return-object p0
.end method

.method public whitelist setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 1526
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mDescription:Ljava/lang/CharSequence;

    .line 1527
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/media/MediaRoute2Info$Builder;
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1617
    if-nez p1, :cond_6

    .line 1618
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mExtras:Landroid/os/Bundle;

    .line 1619
    return-object p0

    .line 1621
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mExtras:Landroid/os/Bundle;

    .line 1622
    return-object p0
.end method

.method public whitelist setIconUri(Landroid/net/Uri;)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .param p1, "iconUri"    # Landroid/net/Uri;

    .line 1517
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mIconUri:Landroid/net/Uri;

    .line 1518
    return-object p0
.end method

.method public blacklist setProviderId(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .registers 4
    .param p1, "providerId"    # Ljava/lang/String;

    .line 1631
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1634
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mProviderId:Ljava/lang/String;

    .line 1635
    return-object p0

    .line 1632
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "providerId must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setProviderPackageName(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .param p1, "providerPackageName"    # Ljava/lang/String;

    .line 1560
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mProviderPackageName:Ljava/lang/String;

    .line 1561
    return-object p0
.end method

.method public blacklist setRequiredPermissions(Ljava/util/List;)Landroid/media/MediaRoute2Info$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/media/MediaRoute2Info$Builder;"
        }
    .end annotation

    .line 1705
    .local p1, "requiresOneOf":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-static {p1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mRequiredPermissions:Ljava/util/List;

    .line 1706
    return-object p0
.end method

.method public blacklist setRequiredPermissions(Ljava/util/Set;)Landroid/media/MediaRoute2Info$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaRoute2Info$Builder;"
        }
    .end annotation

    .line 1690
    .local p1, "requiredPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRoute2Info$Builder;->setRequiredPermissions(Ljava/util/List;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setSuitabilityStatus(I)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .param p1, "suitabilityStatus"    # I

    .line 1722
    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mSuitabilityStatus:I

    .line 1723
    return-object p0
.end method

.method public blacklist setSupportedRoutingTypes(I)Landroid/media/MediaRoute2Info$Builder;
    .registers 3
    .param p1, "routingTypeFlags"    # I

    .line 1487
    invoke-static {p1}, Landroid/media/MediaRoute2Info;->-$$Nest$smvalidateRoutingTypeFlags(I)I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mRoutingTypeFlags:I

    .line 1488
    return-object p0
.end method

.method public blacklist setSystemRoute(Z)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .param p1, "isSystem"    # Z

    .line 1497
    iput-boolean p1, p0, Landroid/media/MediaRoute2Info$Builder;->mIsSystem:Z

    .line 1498
    return-object p0
.end method

.method public whitelist setType(I)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .param p1, "type"    # I

    .line 1475
    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    .line 1476
    return-object p0
.end method

.method public whitelist setVisibilityPublic()Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    .line 1652
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaRoute2Info$Builder;->mIsVisibilityRestricted:Z

    .line 1653
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mAllowedPackages:Ljava/util/Set;

    .line 1654
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mRequiredPermissions:Ljava/util/List;

    .line 1655
    return-object p0
.end method

.method public whitelist setVisibilityRestricted(Ljava/util/Set;)Landroid/media/MediaRoute2Info$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaRoute2Info$Builder;"
        }
    .end annotation

    .line 1673
    .local p1, "allowedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaRoute2Info$Builder;->mIsVisibilityRestricted:Z

    .line 1674
    invoke-static {p1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mAllowedPackages:Ljava/util/Set;

    .line 1675
    return-object p0
.end method

.method public whitelist setVolume(I)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .param p1, "volume"    # I

    .line 1587
    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mVolume:I

    .line 1588
    return-object p0
.end method

.method public whitelist setVolumeHandling(I)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .param p1, "volumeHandling"    # I

    .line 1569
    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    .line 1570
    return-object p0
.end method

.method public whitelist setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .param p1, "volumeMax"    # I

    .line 1578
    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeMax:I

    .line 1579
    return-object p0
.end method
