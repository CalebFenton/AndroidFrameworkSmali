.class public final Landroid/net/wifi/SoftApConfiguration$Builder;
.super Ljava/lang/Object;
.source "SoftApConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/SoftApConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowedAcsChannels2g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAllowedAcsChannels5g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAllowedAcsChannels6g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAllowedClientList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAutoShutdownEnabled:Z

.field private blacklist mBlockedClientList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBridgedModeOpportunisticShutdownEnabled:Z

.field private blacklist mBridgedModeOpportunisticShutdownTimeoutMillis:J

.field private blacklist mBssid:Landroid/net/MacAddress;

.field private blacklist mChannels:Landroid/util/SparseIntArray;

.field private blacklist mClientControlByUser:Z

.field private blacklist mHiddenSsid:Z

.field private blacklist mIeee80211axEnabled:Z

.field private blacklist mIeee80211beEnabled:Z

.field private blacklist mIsClientIsolationEnabled:Z

.field private blacklist mIsUserConfiguration:Z

.field private blacklist mMacRandomizationSetting:I

.field private blacklist mMaxChannelBandwidth:I

.field private blacklist mMaxNumberOfClients:I

.field private blacklist mPassphrase:Ljava/lang/String;

.field private blacklist mPersistentRandomizedMacAddress:Landroid/net/MacAddress;

.field private blacklist mSecurityType:I

.field private blacklist mShutdownTimeoutMillis:J

.field private blacklist mVendorData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVendorElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWifiSsid:Landroid/net/wifi/WifiSsid;


# direct methods
.method public constructor whitelist <init>()V
    .registers 7

    .line 1347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1348
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 1349
    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBssid:Landroid/net/MacAddress;

    .line 1350
    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mPassphrase:Ljava/lang/String;

    .line 1351
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mHiddenSsid:Z

    .line 1352
    new-instance v2, Landroid/util/SparseIntArray;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v2, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mChannels:Landroid/util/SparseIntArray;

    .line 1353
    iget-object v2, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mChannels:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1354
    iput v1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mMaxNumberOfClients:I

    .line 1355
    iput v1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mSecurityType:I

    .line 1356
    iput-boolean v3, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAutoShutdownEnabled:Z

    .line 1357
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mShutdownTimeoutMillis:J

    .line 1358
    iput-boolean v1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mClientControlByUser:Z

    .line 1359
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBlockedClientList:Ljava/util/List;

    .line 1360
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedClientList:Ljava/util/List;

    .line 1361
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1362
    const/4 v2, 0x2

    iput v2, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mMacRandomizationSetting:I

    goto :goto_40

    .line 1364
    :cond_3e
    iput v3, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mMacRandomizationSetting:I

    .line 1366
    :goto_40
    iput-boolean v3, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBridgedModeOpportunisticShutdownEnabled:Z

    .line 1367
    iput-boolean v3, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIeee80211axEnabled:Z

    .line 1368
    iput-boolean v3, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIeee80211beEnabled:Z

    .line 1369
    iput-boolean v3, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIsUserConfiguration:Z

    .line 1370
    iput-wide v4, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBridgedModeOpportunisticShutdownTimeoutMillis:J

    .line 1371
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mVendorElements:Ljava/util/List;

    .line 1372
    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mPersistentRandomizedMacAddress:Landroid/net/MacAddress;

    .line 1373
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedAcsChannels2g:Ljava/util/Set;

    .line 1374
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedAcsChannels5g:Ljava/util/Set;

    .line 1375
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedAcsChannels6g:Ljava/util/Set;

    .line 1376
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mMaxChannelBandwidth:I

    .line 1377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mVendorData:Ljava/util/List;

    .line 1378
    iput-boolean v1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIsClientIsolationEnabled:Z

    .line 1379
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/SoftApConfiguration;)V
    .registers 4
    .param p1, "other"    # Landroid/net/wifi/SoftApConfiguration;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1388
    if-nez p1, :cond_d

    .line 1389
    const-string v0, "SoftApConfiguration"

    const-string v1, "Cannot provide a null SoftApConfiguration"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    return-void

    .line 1393
    :cond_d
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmWifiSsid(Landroid/net/wifi/SoftApConfiguration;)Landroid/net/wifi/WifiSsid;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 1394
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmBssid(Landroid/net/wifi/SoftApConfiguration;)Landroid/net/MacAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBssid:Landroid/net/MacAddress;

    .line 1395
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmPassphrase(Landroid/net/wifi/SoftApConfiguration;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mPassphrase:Ljava/lang/String;

    .line 1396
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmHiddenSsid(Landroid/net/wifi/SoftApConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mHiddenSsid:Z

    .line 1397
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmChannels(Landroid/net/wifi/SoftApConfiguration;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mChannels:Landroid/util/SparseIntArray;

    .line 1398
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmMaxNumberOfClients(Landroid/net/wifi/SoftApConfiguration;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mMaxNumberOfClients:I

    .line 1399
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmSecurityType(Landroid/net/wifi/SoftApConfiguration;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mSecurityType:I

    .line 1400
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmAutoShutdownEnabled(Landroid/net/wifi/SoftApConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAutoShutdownEnabled:Z

    .line 1401
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmShutdownTimeoutMillis(Landroid/net/wifi/SoftApConfiguration;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mShutdownTimeoutMillis:J

    .line 1402
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmClientControlByUser(Landroid/net/wifi/SoftApConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mClientControlByUser:Z

    .line 1403
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmBlockedClientList(Landroid/net/wifi/SoftApConfiguration;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBlockedClientList:Ljava/util/List;

    .line 1404
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmAllowedClientList(Landroid/net/wifi/SoftApConfiguration;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedClientList:Ljava/util/List;

    .line 1405
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmMacRandomizationSetting(Landroid/net/wifi/SoftApConfiguration;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mMacRandomizationSetting:I

    .line 1406
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmBridgedModeOpportunisticShutdownEnabled(Landroid/net/wifi/SoftApConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBridgedModeOpportunisticShutdownEnabled:Z

    .line 1408
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmIeee80211axEnabled(Landroid/net/wifi/SoftApConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIeee80211axEnabled:Z

    .line 1409
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmIeee80211beEnabled(Landroid/net/wifi/SoftApConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIeee80211beEnabled:Z

    .line 1410
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmIsUserConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIsUserConfiguration:Z

    .line 1411
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmBridgedModeOpportunisticShutdownTimeoutMillis(Landroid/net/wifi/SoftApConfiguration;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBridgedModeOpportunisticShutdownTimeoutMillis:J

    .line 1413
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmVendorElements(Landroid/net/wifi/SoftApConfiguration;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mVendorElements:Ljava/util/List;

    .line 1414
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmPersistentRandomizedMacAddress(Landroid/net/wifi/SoftApConfiguration;)Landroid/net/MacAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mPersistentRandomizedMacAddress:Landroid/net/MacAddress;

    .line 1415
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmAllowedAcsChannels2g(Landroid/net/wifi/SoftApConfiguration;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedAcsChannels2g:Ljava/util/Set;

    .line 1416
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmAllowedAcsChannels5g(Landroid/net/wifi/SoftApConfiguration;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedAcsChannels5g:Ljava/util/Set;

    .line 1417
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmAllowedAcsChannels6g(Landroid/net/wifi/SoftApConfiguration;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedAcsChannels6g:Ljava/util/Set;

    .line 1418
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmMaxChannelBandwidth(Landroid/net/wifi/SoftApConfiguration;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mMaxChannelBandwidth:I

    .line 1419
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_cc

    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBssid:Landroid/net/MacAddress;

    if-eqz v0, :cond_cc

    .line 1423
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mMacRandomizationSetting:I

    .line 1425
    :cond_cc
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmVendorData(Landroid/net/wifi/SoftApConfiguration;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mVendorData:Ljava/util/List;

    .line 1426
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$fgetmIsClientIsolationEnabled(Landroid/net/wifi/SoftApConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIsClientIsolationEnabled:Z

    .line 1427
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/SoftApConfiguration;
    .registers 33

    .line 1475
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedClientList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/MacAddress;

    .line 1476
    .local v2, "client":Landroid/net/MacAddress;
    iget-object v3, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBlockedClientList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1479
    .end local v2    # "client":Landroid/net/MacAddress;
    goto :goto_8

    .line 1477
    .restart local v2    # "client":Landroid/net/MacAddress;
    :cond_1d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "A MacAddress exist in both client list"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1482
    .end local v2    # "client":Landroid/net/MacAddress;
    :cond_25
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_45

    const-wide/32 v1, 0xcdaa748

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_45

    iget-object v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBssid:Landroid/net/MacAddress;

    if-eqz v1, :cond_45

    iget v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mMacRandomizationSetting:I

    if-nez v1, :cond_3d

    goto :goto_45

    .line 1485
    :cond_3d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A BSSID had configured but MAC randomization setting is not NONE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1489
    :cond_45
    :goto_45
    const-wide/32 v1, 0xcb68ac8

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    if-nez v1, :cond_5a

    iget-wide v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mShutdownTimeoutMillis:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_5a

    .line 1491
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mShutdownTimeoutMillis:J

    .line 1494
    :cond_5a
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastB()Z

    move-result v1

    if-eqz v1, :cond_67

    iget-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIeee80211axEnabled:Z

    if-nez v1, :cond_67

    .line 1496
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIeee80211beEnabled:Z

    .line 1498
    :cond_67
    new-instance v2, Landroid/net/wifi/SoftApConfiguration;

    iget-object v3, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    iget-object v4, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBssid:Landroid/net/MacAddress;

    iget-object v5, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mPassphrase:Ljava/lang/String;

    iget-boolean v6, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mHiddenSsid:Z

    iget-object v7, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mChannels:Landroid/util/SparseIntArray;

    iget v8, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mSecurityType:I

    iget v9, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mMaxNumberOfClients:I

    iget-boolean v10, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAutoShutdownEnabled:Z

    iget-wide v11, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mShutdownTimeoutMillis:J

    iget-boolean v13, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mClientControlByUser:Z

    iget-object v14, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBlockedClientList:Ljava/util/List;

    iget-object v15, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedClientList:Ljava/util/List;

    iget v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mMacRandomizationSetting:I

    move/from16 v16, v1

    iget-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBridgedModeOpportunisticShutdownEnabled:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIeee80211axEnabled:Z

    move/from16 v18, v1

    iget-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIeee80211beEnabled:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIsUserConfiguration:Z

    move/from16 v21, v1

    move-object/from16 v20, v2

    iget-wide v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBridgedModeOpportunisticShutdownTimeoutMillis:J

    move-wide/from16 v22, v1

    iget-object v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mVendorElements:Ljava/util/List;

    iget-object v2, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mPersistentRandomizedMacAddress:Landroid/net/MacAddress;

    move-object/from16 v24, v1

    iget-object v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedAcsChannels2g:Ljava/util/Set;

    move-object/from16 v25, v1

    iget-object v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedAcsChannels5g:Ljava/util/Set;

    move-object/from16 v26, v1

    iget-object v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedAcsChannels6g:Ljava/util/Set;

    move-object/from16 v27, v1

    iget v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mMaxChannelBandwidth:I

    move/from16 v28, v1

    iget-object v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mVendorData:Ljava/util/List;

    move-object/from16 v29, v1

    iget-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIsClientIsolationEnabled:Z

    const/16 v31, 0x0

    move-object/from16 v30, v24

    move-object/from16 v24, v2

    move-object/from16 v2, v20

    move/from16 v20, v21

    move-wide/from16 v21, v22

    move-object/from16 v23, v30

    move/from16 v30, v1

    invoke-direct/range {v2 .. v31}, Landroid/net/wifi/SoftApConfiguration;-><init>(Landroid/net/wifi/WifiSsid;Landroid/net/MacAddress;Ljava/lang/String;ZLandroid/util/SparseIntArray;IIZJZLjava/util/List;Ljava/util/List;IZZZZJLjava/util/List;Landroid/net/MacAddress;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/List;ZLandroid/net/wifi/SoftApConfiguration-IA;)V

    return-object v2
.end method

.method public blacklist buildWithoutCheck()Landroid/net/wifi/SoftApConfiguration;
    .registers 35

    .line 1439
    move-object/from16 v0, p0

    new-instance v1, Landroid/net/wifi/SoftApConfiguration;

    iget-object v2, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    iget-object v3, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBssid:Landroid/net/MacAddress;

    iget-object v4, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mPassphrase:Ljava/lang/String;

    iget-boolean v5, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mHiddenSsid:Z

    iget-object v6, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mChannels:Landroid/util/SparseIntArray;

    iget v7, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mSecurityType:I

    iget v8, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mMaxNumberOfClients:I

    iget-boolean v9, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAutoShutdownEnabled:Z

    iget-wide v10, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mShutdownTimeoutMillis:J

    iget-boolean v12, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mClientControlByUser:Z

    iget-object v13, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBlockedClientList:Ljava/util/List;

    iget-object v14, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedClientList:Ljava/util/List;

    iget v15, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mMacRandomizationSetting:I

    move-object/from16 v16, v1

    iget-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBridgedModeOpportunisticShutdownEnabled:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIeee80211axEnabled:Z

    move/from16 v18, v1

    iget-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIeee80211beEnabled:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIsUserConfiguration:Z

    move/from16 v21, v1

    move-object/from16 v20, v2

    iget-wide v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBridgedModeOpportunisticShutdownTimeoutMillis:J

    move-wide/from16 v22, v1

    iget-object v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mVendorElements:Ljava/util/List;

    iget-object v2, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mPersistentRandomizedMacAddress:Landroid/net/MacAddress;

    move-object/from16 v24, v1

    iget-object v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedAcsChannels2g:Ljava/util/Set;

    move-object/from16 v25, v1

    iget-object v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedAcsChannels5g:Ljava/util/Set;

    move-object/from16 v26, v1

    iget-object v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedAcsChannels6g:Ljava/util/Set;

    move-object/from16 v27, v1

    iget v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mMaxChannelBandwidth:I

    move/from16 v28, v1

    iget-object v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mVendorData:Ljava/util/List;

    move-object/from16 v29, v1

    iget-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIsClientIsolationEnabled:Z

    const/16 v30, 0x0

    move-object/from16 v31, v29

    move/from16 v29, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v21

    move-wide/from16 v32, v22

    move-object/from16 v23, v2

    move-object/from16 v2, v20

    move-wide/from16 v20, v32

    move-object/from16 v22, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move/from16 v27, v28

    move-object/from16 v28, v31

    invoke-direct/range {v1 .. v30}, Landroid/net/wifi/SoftApConfiguration;-><init>(Landroid/net/wifi/WifiSsid;Landroid/net/MacAddress;Ljava/lang/String;ZLandroid/util/SparseIntArray;IIZJZLjava/util/List;Ljava/util/List;IZZZZJLjava/util/List;Landroid/net/MacAddress;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/List;ZLandroid/net/wifi/SoftApConfiguration-IA;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public whitelist setAllowedAcsChannels(I[I)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 7
    .param p1, "band"    # I
    .param p2, "channels"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2082
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 2086
    if-eqz p2, :cond_71

    .line 2091
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x4

    if-ne p1, v0, :cond_12

    goto :goto_1a

    .line 2092
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Passing an invalid band to setAllowedAcsChannels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2096
    :cond_1a
    :goto_1a
    array-length v0, p2

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v0, :cond_4c

    aget v2, p2, v1

    .line 2097
    .local v2, "channel":I
    invoke-static {v2, p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$smisChannelBandPairValid(II)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 2096
    .end local v2    # "channel":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 2098
    .restart local v2    # "channel":I
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid channel to setAllowedAcsChannels: band: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "channel: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2104
    .end local v2    # "channel":I
    :cond_4c
    invoke-static {p2}, Ljava/util/stream/IntStream;->of([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/SoftApConfiguration$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/net/wifi/SoftApConfiguration$Builder$$ExternalSyntheticLambda0;-><init>()V

    .line 2105
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 2106
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    packed-switch p1, :pswitch_data_80

    :pswitch_66
    goto :goto_70

    .line 2114
    :pswitch_67
    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedAcsChannels6g:Ljava/util/Set;

    goto :goto_70

    .line 2111
    :pswitch_6a
    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedAcsChannels5g:Ljava/util/Set;

    .line 2112
    goto :goto_70

    .line 2108
    :pswitch_6d
    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedAcsChannels2g:Ljava/util/Set;

    .line 2109
    nop

    .line 2118
    :goto_70
    return-object p0

    .line 2087
    .end local v0    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Passing a null object to setAllowedAcsChannels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2083
    :cond_79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_6a
        :pswitch_66
        :pswitch_67
    .end packed-switch
.end method

.method public whitelist setAllowedClientList(Ljava/util/List;)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;)",
            "Landroid/net/wifi/SoftApConfiguration$Builder;"
        }
    .end annotation

    .line 2188
    .local p1, "allowedClientList":Ljava/util/List;, "Ljava/util/List<Landroid/net/MacAddress;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedClientList:Ljava/util/List;

    .line 2189
    return-object p0
.end method

.method public whitelist setAutoShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 2
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1978
    iput-boolean p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAutoShutdownEnabled:Z

    .line 1979
    return-object p0
.end method

.method public whitelist setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 5
    .param p1, "band"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1767
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$smisBandValid(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1770
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mChannels:Landroid/util/SparseIntArray;

    .line 1771
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mChannels:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1772
    return-object p0

    .line 1768
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid band type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBands([I)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 8
    .param p1, "bands"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1803
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1806
    array-length v0, p1

    if-eqz v0, :cond_42

    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_42

    .line 1810
    new-instance v0, Landroid/util/SparseIntArray;

    array-length v1, p1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1811
    .local v0, "channels":Landroid/util/SparseIntArray;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v1, :cond_3f

    aget v4, p1, v3

    .line 1812
    .local v4, "val":I
    invoke-static {v4}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$smisBandValid(I)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1815
    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1811
    .end local v4    # "val":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1813
    .restart local v4    # "val":I
    :cond_26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid band type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1817
    .end local v4    # "val":I
    :cond_3f
    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mChannels:Landroid/util/SparseIntArray;

    .line 1818
    return-object p0

    .line 1807
    .end local v0    # "channels":Landroid/util/SparseIntArray;
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported number of bands("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") configured"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1804
    :cond_62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setBlockedClientList(Ljava/util/List;)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;)",
            "Landroid/net/wifi/SoftApConfiguration$Builder;"
        }
    .end annotation

    .line 2215
    .local p1, "blockedClientList":Ljava/util/List;, "Ljava/util/List<Landroid/net/MacAddress;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBlockedClientList:Ljava/util/List;

    .line 2216
    return-object p0
.end method

.method public whitelist setBridgedModeOpportunisticShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 3
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2296
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2299
    iput-boolean p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBridgedModeOpportunisticShutdownEnabled:Z

    .line 2300
    return-object p0

    .line 2297
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setBridgedModeOpportunisticShutdownTimeoutMillis(J)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 6
    .param p1, "timeoutMillis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2405
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2408
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_2c

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_13

    goto :goto_2c

    .line 2409
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid timeout value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2411
    :cond_2c
    :goto_2c
    iput-wide p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBridgedModeOpportunisticShutdownTimeoutMillis:J

    .line 2412
    return-object p0

    .line 2406
    :cond_2f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 4
    .param p1, "bssid"    # Landroid/net/MacAddress;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1657
    if-eqz p1, :cond_1c

    .line 1658
    sget-object v0, Landroid/net/wifi/WifiManager;->ALL_ZEROS_MAC_ADDRESS:Landroid/net/MacAddress;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1659
    invoke-virtual {p1}, Landroid/net/MacAddress;->getAddressType()I

    move-result v0

    if-ne v0, v1, :cond_14

    goto :goto_1c

    .line 1660
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bssid doesn\'t support multicast or broadcast mac address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1664
    :cond_1c
    :goto_1c
    iput-object p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBssid:Landroid/net/MacAddress;

    .line 1665
    return-object p0
.end method

.method public whitelist setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 6
    .param p1, "channel"    # I
    .param p2, "band"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1855
    invoke-static {p1, p2}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$smisChannelBandPairValid(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1859
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mChannels:Landroid/util/SparseIntArray;

    .line 1860
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mChannels:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1861
    return-object p0

    .line 1856
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid channel("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") & band ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") configured"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 9
    .param p1, "channels"    # Landroid/util/SparseIntArray;

    .line 1893
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 1896
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const-string v1, ") configured"

    if-eqz v0, :cond_7d

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_7d

    .line 1900
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_76

    .line 1901
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 1902
    .local v2, "channel":I
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 1903
    .local v3, "band":I
    if-nez v2, :cond_46

    .line 1904
    invoke-static {v3}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$smisBandValid(I)Z

    move-result v4

    if-eqz v4, :cond_2d

    goto :goto_4c

    .line 1905
    :cond_2d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid band type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1908
    :cond_46
    invoke-static {v2, v3}, Landroid/net/wifi/SoftApConfiguration;->-$$Nest$smisChannelBandPairValid(II)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 1900
    .end local v2    # "channel":I
    .end local v3    # "band":I
    :goto_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1909
    .restart local v2    # "channel":I
    .restart local v3    # "band":I
    :cond_4f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid channel("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") & band ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1914
    .end local v0    # "i":I
    .end local v2    # "channel":I
    .end local v3    # "band":I
    :cond_76
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mChannels:Landroid/util/SparseIntArray;

    .line 1915
    return-object p0

    .line 1897
    :cond_7d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported number of channels("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1898
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1894
    :cond_9e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setClientControlByUserEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2053
    iput-boolean p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mClientControlByUser:Z

    .line 2054
    return-object p0
.end method

.method public whitelist setClientIsolationEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 3
    .param p1, "isClientIsolationEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2469
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2472
    iput-boolean p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIsClientIsolationEnabled:Z

    .line 2473
    return-object p0

    .line 2470
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setHiddenSsid(Z)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 2
    .param p1, "hiddenSsid"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1748
    iput-boolean p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mHiddenSsid:Z

    .line 1749
    return-object p0
.end method

.method public whitelist setIeee80211axEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 3
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2326
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2329
    iput-boolean p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIeee80211axEnabled:Z

    .line 2330
    return-object p0

    .line 2327
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setIeee80211beEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 3
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2356
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2359
    iput-boolean p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIeee80211beEnabled:Z

    .line 2360
    return-object p0

    .line 2357
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 3
    .param p1, "macRandomizationSetting"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2253
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2256
    iput p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mMacRandomizationSetting:I

    .line 2257
    return-object p0

    .line 2254
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setMaxChannelBandwidth(I)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 5
    .param p1, "maxChannelBandwidth"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2141
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2145
    sparse-switch p1, :sswitch_data_32

    .line 2155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid channel bandwidth value("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")  configured"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2152
    :sswitch_28
    iput p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mMaxChannelBandwidth:I

    .line 2153
    nop

    .line 2159
    return-object p0

    .line 2142
    :cond_2c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :sswitch_data_32
    .sparse-switch
        -0x1 -> :sswitch_28
        0x2 -> :sswitch_28
        0x3 -> :sswitch_28
        0x4 -> :sswitch_28
        0x6 -> :sswitch_28
        0xb -> :sswitch_28
    .end sparse-switch
.end method

.method public whitelist setMaxNumberOfClients(I)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 4
    .param p1, "maxNumberOfClients"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1953
    if-ltz p1, :cond_5

    .line 1956
    iput p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mMaxNumberOfClients:I

    .line 1957
    return-object p0

    .line 1954
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxNumberOfClients should be not negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 6
    .param p1, "passphrase"    # Ljava/lang/String;
    .param p2, "securityType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1701
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-nez v0, :cond_13

    if-eq p2, v2, :cond_d

    if-eq p2, v1, :cond_d

    goto :goto_13

    .line 1704
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1706
    :cond_13
    :goto_13
    if-eqz p2, :cond_48

    if-eq p2, v2, :cond_48

    if-ne p2, v1, :cond_1a

    goto :goto_48

    .line 1714
    :cond_1a
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1715
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-nez v0, :cond_4a

    const/4 v0, 0x1

    if-eq p2, v0, :cond_29

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4a

    .line 1717
    :cond_29
    const/4 v0, 0x0

    .line 1718
    .local v0, "passphraseByteLength":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 1719
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v0, v1

    .line 1721
    :cond_37
    const/16 v1, 0x8

    if-lt v0, v1, :cond_40

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_40

    goto :goto_4a

    .line 1722
    :cond_40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Passphrase length must be at least 8 and no more than 63 for WPA2_PSK and WPA3_SAE_TRANSITION Mode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1709
    .end local v0    # "passphraseByteLength":I
    :cond_48
    :goto_48
    if-nez p1, :cond_4f

    .line 1729
    :cond_4a
    :goto_4a
    iput p2, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mSecurityType:I

    .line 1730
    iput-object p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mPassphrase:Ljava/lang/String;

    .line 1731
    return-object p0

    .line 1710
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "passphrase should be null when security type is open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setRandomizedMacAddress(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 4
    .param p1, "mac"    # Landroid/net/MacAddress;

    .line 2421
    if-eqz p1, :cond_5

    .line 2425
    iput-object p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mPersistentRandomizedMacAddress:Landroid/net/MacAddress;

    .line 2426
    return-object p0

    .line 2422
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setRandomizedMacAddress received null MacAddress."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setShutdownTimeoutMillis(J)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 6
    .param p1, "timeoutMillis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2007
    const-wide/32 v0, 0xcb68ac8

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_2f

    .line 2009
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    goto :goto_35

    .line 2010
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid timeout value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2012
    :cond_2f
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_38

    .line 2016
    :goto_35
    iput-wide p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mShutdownTimeoutMillis:J

    .line 2017
    return-object p0

    .line 2013
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid timeout value from legacy app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 3
    .param p1, "ssid"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1548
    if-nez p1, :cond_6

    .line 1549
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 1550
    return-object p0

    .line 1553
    :cond_6
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1554
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1555
    invoke-static {p1}, Landroid/net/wifi/WifiSsid;->fromUtf8Text(Ljava/lang/CharSequence;)Landroid/net/wifi/WifiSsid;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 1556
    return-object p0
.end method

.method public blacklist setUserConfiguration(Z)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 2
    .param p1, "isUserConfigured"    # Z

    .line 2373
    iput-boolean p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIsUserConfiguration:Z

    .line 2374
    return-object p0
.end method

.method public whitelist setVendorData(Ljava/util/List;)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;)",
            "Landroid/net/wifi/SoftApConfiguration$Builder;"
        }
    .end annotation

    .line 2443
    .local p1, "vendorData":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2446
    if-eqz p1, :cond_b

    .line 2449
    iput-object p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mVendorData:Ljava/util/List;

    .line 2450
    return-object p0

    .line 2447
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setVendorData received a null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2444
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setVendorElements(Ljava/util/List;)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;)",
            "Landroid/net/wifi/SoftApConfiguration$Builder;"
        }
    .end annotation

    .line 1598
    .local p1, "vendorElements":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult$InformationElement;>;"
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1601
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult$InformationElement;

    .line 1602
    .local v1, "e":Landroid/net/wifi/ScanResult$InformationElement;
    iget v2, v1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v3, 0xdd

    if-ne v2, v3, :cond_1d

    .line 1608
    .end local v1    # "e":Landroid/net/wifi/ScanResult$InformationElement;
    goto :goto_a

    .line 1603
    .restart local v1    # "e":Landroid/net/wifi/ScanResult$InformationElement;
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received InformationElement which is not related to VendorElements. VendorElement block should start with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/16 v4, -0x23

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    .line 1605
    invoke-static {v3}, Landroid/net/wifi/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1609
    .end local v1    # "e":Landroid/net/wifi/ScanResult$InformationElement;
    :cond_42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1610
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/wifi/ScanResult$InformationElement;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_59

    .line 1614
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mVendorElements:Ljava/util/List;

    .line 1615
    return-object p0

    .line 1611
    :cond_59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "vendor elements array contain duplicates. Please avoid passing duplicated and keep structure clean."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1599
    .end local v0    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/wifi/ScanResult$InformationElement;>;"
    :cond_61
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setWifiSsid(Landroid/net/wifi/WifiSsid;)Landroid/net/wifi/SoftApConfiguration$Builder;
    .registers 3
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1575
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1578
    iput-object p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 1579
    return-object p0

    .line 1576
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
