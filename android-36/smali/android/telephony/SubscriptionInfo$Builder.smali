.class public Landroid/telephony/SubscriptionInfo$Builder;
.super Ljava/lang/Object;
.source "SubscriptionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAreUiccApplicationsEnabled:Z

.field private blacklist mCardId:I

.field private blacklist mCardString:Ljava/lang/String;

.field private blacklist mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

.field private blacklist mCarrierId:I

.field private blacklist mCarrierName:Ljava/lang/CharSequence;

.field private blacklist mCountryIso:Ljava/lang/String;

.field private blacklist mDataRoaming:I

.field private blacklist mDisplayName:Ljava/lang/CharSequence;

.field private blacklist mDisplayNameSource:I

.field private blacklist mEhplmns:[Ljava/lang/String;

.field private blacklist mGroupOwner:Ljava/lang/String;

.field private blacklist mGroupUuid:Landroid/os/ParcelUuid;

.field private blacklist mHplmns:[Ljava/lang/String;

.field private blacklist mIccId:Ljava/lang/String;

.field private blacklist mIconBitmap:Landroid/graphics/Bitmap;

.field private blacklist mIconTint:I

.field private blacklist mId:I

.field private blacklist mIsEmbedded:Z

.field private blacklist mIsGroupDisabled:Z

.field private blacklist mIsOnlyNonTerrestrialNetwork:Z

.field private blacklist mIsOpportunistic:Z

.field private blacklist mIsSatelliteESOSSupported:Z

.field private blacklist mMcc:Ljava/lang/String;

.field private blacklist mMnc:Ljava/lang/String;

.field private blacklist mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

.field private blacklist mNumber:Ljava/lang/String;

.field private blacklist mPortIndex:I

.field private blacklist mProfileClass:I

.field private blacklist mServiceCapabilities:I

.field private blacklist mSimSlotIndex:I

.field private blacklist mTransferStatus:I

.field private blacklist mType:I

.field private blacklist mUsageSetting:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAreUiccApplicationsEnabled(Landroid/telephony/SubscriptionInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mAreUiccApplicationsEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCardId(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCardString(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardString:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierConfigAccessRules(Landroid/telephony/SubscriptionInfo$Builder;)[Landroid/telephony/UiccAccessRule;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierId(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierName(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountryIso(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCountryIso:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataRoaming(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDataRoaming:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayName(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayNameSource(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayNameSource:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEhplmns(Landroid/telephony/SubscriptionInfo$Builder;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mEhplmns:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGroupOwner(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupOwner:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGroupUuid(Landroid/telephony/SubscriptionInfo$Builder;)Landroid/os/ParcelUuid;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupUuid:Landroid/os/ParcelUuid;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHplmns(Landroid/telephony/SubscriptionInfo$Builder;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mHplmns:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIccId(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIccId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconBitmap(Landroid/telephony/SubscriptionInfo$Builder;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconTint(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconTint:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEmbedded(Landroid/telephony/SubscriptionInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsEmbedded:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsGroupDisabled(Landroid/telephony/SubscriptionInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsGroupDisabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsOnlyNonTerrestrialNetwork(Landroid/telephony/SubscriptionInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOnlyNonTerrestrialNetwork:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsOpportunistic(Landroid/telephony/SubscriptionInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOpportunistic:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSatelliteESOSSupported(Landroid/telephony/SubscriptionInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsSatelliteESOSSupported:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMcc(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMcc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMnc(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMnc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNativeAccessRules(Landroid/telephony/SubscriptionInfo$Builder;)[Landroid/telephony/UiccAccessRule;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumber(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPortIndex(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mPortIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProfileClass(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mProfileClass:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceCapabilities(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mServiceCapabilities:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSimSlotIndex(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mSimSlotIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransferStatus(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mTransferStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsageSetting(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mUsageSetting:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 6

    .line 1380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1178
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mId:I

    .line 1183
    const-string v1, ""

    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIccId:Ljava/lang/String;

    .line 1191
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mSimSlotIndex:I

    .line 1197
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    .line 1204
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierName:Ljava/lang/CharSequence;

    .line 1210
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayNameSource:I

    .line 1216
    const/4 v2, 0x0

    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconTint:I

    .line 1221
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNumber:Ljava/lang/String;

    .line 1229
    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDataRoaming:I

    .line 1234
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 1240
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMcc:Ljava/lang/String;

    .line 1246
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMnc:Ljava/lang/String;

    .line 1252
    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Landroid/telephony/SubscriptionInfo$Builder;->mEhplmns:[Ljava/lang/String;

    .line 1258
    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Landroid/telephony/SubscriptionInfo$Builder;->mHplmns:[Ljava/lang/String;

    .line 1264
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCountryIso:Ljava/lang/String;

    .line 1270
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsEmbedded:Z

    .line 1276
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1282
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardString:Ljava/lang/String;

    .line 1288
    const/4 v4, -0x2

    iput v4, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardId:I

    .line 1293
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOpportunistic:Z

    .line 1298
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupUuid:Landroid/os/ParcelUuid;

    .line 1307
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsGroupDisabled:Z

    .line 1314
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierId:I

    .line 1322
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mProfileClass:I

    .line 1328
    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mType:I

    .line 1334
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupOwner:Ljava/lang/String;

    .line 1341
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1347
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mAreUiccApplicationsEnabled:Z

    .line 1352
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mPortIndex:I

    .line 1357
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mUsageSetting:I

    .line 1363
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOnlyNonTerrestrialNetwork:Z

    .line 1365
    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mTransferStatus:I

    .line 1370
    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mServiceCapabilities:I

    .line 1375
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsSatelliteESOSSupported:Z

    .line 1381
    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/SubscriptionInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;

    .line 1388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1178
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mId:I

    .line 1183
    const-string v1, ""

    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIccId:Ljava/lang/String;

    .line 1191
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mSimSlotIndex:I

    .line 1197
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    .line 1204
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierName:Ljava/lang/CharSequence;

    .line 1210
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayNameSource:I

    .line 1216
    const/4 v2, 0x0

    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconTint:I

    .line 1221
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNumber:Ljava/lang/String;

    .line 1229
    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDataRoaming:I

    .line 1234
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 1240
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMcc:Ljava/lang/String;

    .line 1246
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMnc:Ljava/lang/String;

    .line 1252
    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Landroid/telephony/SubscriptionInfo$Builder;->mEhplmns:[Ljava/lang/String;

    .line 1258
    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Landroid/telephony/SubscriptionInfo$Builder;->mHplmns:[Ljava/lang/String;

    .line 1264
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCountryIso:Ljava/lang/String;

    .line 1270
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsEmbedded:Z

    .line 1276
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1282
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardString:Ljava/lang/String;

    .line 1288
    const/4 v4, -0x2

    iput v4, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardId:I

    .line 1293
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOpportunistic:Z

    .line 1298
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupUuid:Landroid/os/ParcelUuid;

    .line 1307
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsGroupDisabled:Z

    .line 1314
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierId:I

    .line 1322
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mProfileClass:I

    .line 1328
    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mType:I

    .line 1334
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupOwner:Ljava/lang/String;

    .line 1341
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1347
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mAreUiccApplicationsEnabled:Z

    .line 1352
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mPortIndex:I

    .line 1357
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mUsageSetting:I

    .line 1363
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOnlyNonTerrestrialNetwork:Z

    .line 1365
    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mTransferStatus:I

    .line 1370
    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mServiceCapabilities:I

    .line 1375
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsSatelliteESOSSupported:Z

    .line 1389
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmId(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mId:I

    .line 1390
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIccId(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIccId:Ljava/lang/String;

    .line 1391
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmSimSlotIndex(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mSimSlotIndex:I

    .line 1392
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmDisplayName(Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    .line 1393
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmCarrierName(Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierName:Ljava/lang/CharSequence;

    .line 1394
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmDisplayNameSource(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayNameSource:I

    .line 1395
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIconTint(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconTint:I

    .line 1396
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNumber:Ljava/lang/String;

    .line 1397
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmDataRoaming(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDataRoaming:I

    .line 1398
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIconBitmap(Landroid/telephony/SubscriptionInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 1399
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmMcc(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMcc:Ljava/lang/String;

    .line 1400
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmMnc(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMnc:Ljava/lang/String;

    .line 1401
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmEhplmns(Landroid/telephony/SubscriptionInfo;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mEhplmns:[Ljava/lang/String;

    .line 1402
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmHplmns(Landroid/telephony/SubscriptionInfo;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mHplmns:[Ljava/lang/String;

    .line 1403
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmCountryIso(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCountryIso:Ljava/lang/String;

    .line 1404
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIsEmbedded(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsEmbedded:Z

    .line 1405
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmNativeAccessRules(Landroid/telephony/SubscriptionInfo;)[Landroid/telephony/UiccAccessRule;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1406
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmCardString(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardString:Ljava/lang/String;

    .line 1407
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmCardId(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardId:I

    .line 1408
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIsOpportunistic(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOpportunistic:Z

    .line 1409
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmGroupUuid(Landroid/telephony/SubscriptionInfo;)Landroid/os/ParcelUuid;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupUuid:Landroid/os/ParcelUuid;

    .line 1410
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIsGroupDisabled(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsGroupDisabled:Z

    .line 1411
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmCarrierId(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierId:I

    .line 1412
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmProfileClass(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mProfileClass:I

    .line 1413
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmType(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mType:I

    .line 1414
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmGroupOwner(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupOwner:Ljava/lang/String;

    .line 1415
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmCarrierConfigAccessRules(Landroid/telephony/SubscriptionInfo;)[Landroid/telephony/UiccAccessRule;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1416
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmAreUiccApplicationsEnabled(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mAreUiccApplicationsEnabled:Z

    .line 1417
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmPortIndex(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mPortIndex:I

    .line 1418
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmUsageSetting(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mUsageSetting:I

    .line 1419
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIsOnlyNonTerrestrialNetwork(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOnlyNonTerrestrialNetwork:Z

    .line 1420
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmServiceCapabilities(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mServiceCapabilities:I

    .line 1421
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmTransferStatus(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mTransferStatus:I

    .line 1422
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIsSatelliteESOSSupported(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsSatelliteESOSSupported:Z

    .line 1423
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/SubscriptionInfo;
    .registers 3

    .line 1878
    new-instance v0, Landroid/telephony/SubscriptionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/SubscriptionInfo;-><init>(Landroid/telephony/SubscriptionInfo$Builder;Landroid/telephony/SubscriptionInfo-IA;)V

    return-object v0
.end method

.method public blacklist setCardId(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "cardId"    # I

    .line 1659
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardId:I

    .line 1660
    return-object p0
.end method

.method public blacklist setCardString(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 3
    .param p1, "cardString"    # Ljava/lang/String;

    .line 1647
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardString:Ljava/lang/String;

    .line 1648
    return-object p0
.end method

.method public blacklist setCarrierConfigAccessRules([Landroid/telephony/UiccAccessRule;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "carrierConfigAccessRules"    # [Landroid/telephony/UiccAccessRule;

    .line 1766
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1767
    return-object p0
.end method

.method public blacklist setCarrierId(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "carrierId"    # I

    .line 1714
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierId:I

    .line 1715
    return-object p0
.end method

.method public blacklist setCarrierName(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 3
    .param p1, "carrierName"    # Ljava/lang/CharSequence;

    .line 1484
    if-nez p1, :cond_5

    const-string v0, ""

    goto :goto_6

    :cond_5
    move-object v0, p1

    :goto_6
    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierName:Ljava/lang/CharSequence;

    .line 1485
    return-object p0
.end method

.method public blacklist setCountryIso(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 3
    .param p1, "countryIso"    # Ljava/lang/String;

    .line 1608
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCountryIso:Ljava/lang/String;

    .line 1609
    return-object p0
.end method

.method public blacklist setDataRoaming(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "dataRoaming"    # I

    .line 1536
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDataRoaming:I

    .line 1537
    return-object p0
.end method

.method public blacklist setDisplayName(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 3
    .param p1, "displayName"    # Ljava/lang/CharSequence;

    .line 1471
    if-nez p1, :cond_5

    const-string v0, ""

    goto :goto_6

    :cond_5
    move-object v0, p1

    :goto_6
    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    .line 1472
    return-object p0
.end method

.method public blacklist setDisplayNameSource(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "displayNameSource"    # I

    .line 1498
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayNameSource:I

    .line 1499
    return-object p0
.end method

.method public blacklist setEhplmns([Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 3
    .param p1, "ehplmns"    # [Ljava/lang/String;

    .line 1584
    if-nez p1, :cond_6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_7

    :cond_6
    move-object v0, p1

    :goto_7
    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mEhplmns:[Ljava/lang/String;

    .line 1585
    return-object p0
.end method

.method public blacklist setEmbedded(Z)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "isEmbedded"    # Z

    .line 1620
    iput-boolean p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsEmbedded:Z

    .line 1621
    return-object p0
.end method

.method public blacklist setGroupDisabled(Z)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "isGroupDisabled"    # Z

    .line 1700
    iput-boolean p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsGroupDisabled:Z

    .line 1701
    return-object p0
.end method

.method public blacklist setGroupOwner(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 3
    .param p1, "groupOwner"    # Ljava/lang/String;

    .line 1752
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupOwner:Ljava/lang/String;

    .line 1753
    return-object p0
.end method

.method public blacklist setGroupUuid(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 3
    .param p1, "groupUuid"    # Ljava/lang/String;

    .line 1685
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-static {p1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupUuid:Landroid/os/ParcelUuid;

    .line 1686
    return-object p0
.end method

.method public blacklist setHplmns([Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 3
    .param p1, "hplmns"    # [Ljava/lang/String;

    .line 1596
    if-nez p1, :cond_6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_7

    :cond_6
    move-object v0, p1

    :goto_7
    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mHplmns:[Ljava/lang/String;

    .line 1597
    return-object p0
.end method

.method public blacklist setIccId(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 3
    .param p1, "iccId"    # Ljava/lang/String;

    .line 1445
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIccId:Ljava/lang/String;

    .line 1446
    return-object p0
.end method

.method public blacklist setIcon(Landroid/graphics/Bitmap;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "iconBitmap"    # Landroid/graphics/Bitmap;

    .line 1548
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 1549
    return-object p0
.end method

.method public blacklist setIconTint(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "iconTint"    # I

    .line 1510
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconTint:I

    .line 1511
    return-object p0
.end method

.method public blacklist setId(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "id"    # I

    .line 1433
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mId:I

    .line 1434
    return-object p0
.end method

.method public blacklist setMcc(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "mcc"    # Ljava/lang/String;

    .line 1560
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMcc:Ljava/lang/String;

    .line 1561
    return-object p0
.end method

.method public blacklist setMnc(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "mnc"    # Ljava/lang/String;

    .line 1572
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMnc:Ljava/lang/String;

    .line 1573
    return-object p0
.end method

.method public blacklist setNativeAccessRules([Landroid/telephony/UiccAccessRule;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "nativeAccessRules"    # [Landroid/telephony/UiccAccessRule;

    .line 1633
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1634
    return-object p0
.end method

.method public blacklist setNumber(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 3
    .param p1, "number"    # Ljava/lang/String;

    .line 1522
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNumber:Ljava/lang/String;

    .line 1523
    return-object p0
.end method

.method public blacklist setOnlyNonTerrestrialNetwork(Z)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "isOnlyNonTerrestrialNetwork"    # Z

    .line 1816
    iput-boolean p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOnlyNonTerrestrialNetwork:Z

    .line 1817
    return-object p0
.end method

.method public blacklist setOpportunistic(Z)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "isOpportunistic"    # Z

    .line 1671
    iput-boolean p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOpportunistic:Z

    .line 1672
    return-object p0
.end method

.method public blacklist setPortIndex(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "portIndex"    # I

    .line 1791
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mPortIndex:I

    .line 1792
    return-object p0
.end method

.method public blacklist setProfileClass(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "profileClass"    # I

    .line 1728
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mProfileClass:I

    .line 1729
    return-object p0
.end method

.method public blacklist setSatelliteESOSSupported(Z)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "isSatelliteESOSSupported"    # Z

    .line 1868
    iput-boolean p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsSatelliteESOSSupported:Z

    .line 1869
    return-object p0
.end method

.method public blacklist setServiceCapabilities(Ljava/util/Set;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/telephony/SubscriptionInfo$Builder;"
        }
    .end annotation

    .line 1832
    .local p1, "capabilities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1833
    .local v0, "combinedCapabilities":I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1834
    .local v2, "capability":I
    const/4 v3, 0x1

    if-lt v2, v3, :cond_21

    const/4 v3, 0x3

    if-gt v2, v3, :cond_21

    .line 1839
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->serviceCapabilityToBitmask(I)I

    move-result v3

    or-int/2addr v0, v3

    .line 1840
    .end local v2    # "capability":I
    goto :goto_5

    .line 1836
    .restart local v2    # "capability":I
    :cond_21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid service capability value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1841
    .end local v2    # "capability":I
    :cond_3a
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mServiceCapabilities:I

    .line 1842
    return-object p0
.end method

.method public blacklist setSimSlotIndex(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "simSlotIndex"    # I

    .line 1458
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mSimSlotIndex:I

    .line 1459
    return-object p0
.end method

.method public blacklist setTransferStatus(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "status"    # I

    .line 1853
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mTransferStatus:I

    .line 1854
    return-object p0
.end method

.method public blacklist setType(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "type"    # I

    .line 1740
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mType:I

    .line 1741
    return-object p0
.end method

.method public blacklist setUiccApplicationsEnabled(Z)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "uiccApplicationsEnabled"    # Z

    .line 1779
    iput-boolean p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mAreUiccApplicationsEnabled:Z

    .line 1780
    return-object p0
.end method

.method public blacklist setUsageSetting(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "usageSetting"    # I

    .line 1803
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mUsageSetting:I

    .line 1804
    return-object p0
.end method
