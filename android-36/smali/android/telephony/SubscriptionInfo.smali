.class public Landroid/telephony/SubscriptionInfo;
.super Ljava/lang/Object;
.source "SubscriptionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SubscriptionInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TEXT_SIZE:I = 0x10


# instance fields
.field private final blacklist mAreUiccApplicationsEnabled:Z

.field private final blacklist mCardId:I

.field private final blacklist mCardString:Ljava/lang/String;

.field private final blacklist mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

.field private final blacklist mCarrierId:I

.field private final greylist-max-o mCarrierName:Ljava/lang/CharSequence;

.field private final greylist-max-o mCountryIso:Ljava/lang/String;

.field private final greylist-max-o mDataRoaming:I

.field private final greylist-max-o mDisplayName:Ljava/lang/CharSequence;

.field private final blacklist mDisplayNameSource:I

.field private final blacklist mEhplmns:[Ljava/lang/String;

.field private final blacklist mGroupOwner:Ljava/lang/String;

.field private final blacklist mGroupUuid:Landroid/os/ParcelUuid;

.field private final blacklist mHplmns:[Ljava/lang/String;

.field private final greylist-max-o mIccId:Ljava/lang/String;

.field private greylist-max-o mIconBitmap:Landroid/graphics/Bitmap;

.field private final greylist-max-o mIconTint:I

.field private final greylist-max-o mId:I

.field private final greylist-max-o mIsEmbedded:Z

.field private final blacklist mIsGroupDisabled:Z

.field private final blacklist mIsOnlyNonTerrestrialNetwork:Z

.field private final blacklist mIsOpportunistic:Z

.field private final blacklist mIsSatelliteESOSSupported:Z

.field private final blacklist mMcc:Ljava/lang/String;

.field private final blacklist mMnc:Ljava/lang/String;

.field private final blacklist mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

.field private final greylist-max-o mNumber:Ljava/lang/String;

.field private final blacklist mPortIndex:I

.field private final blacklist mProfileClass:I

.field private final blacklist mServiceCapabilities:I

.field private final greylist-max-o mSimSlotIndex:I

.field private final blacklist mTransferStatus:I

.field private final blacklist mType:I

.field private final blacklist mUsageSetting:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAreUiccApplicationsEnabled(Landroid/telephony/SubscriptionInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo;->mAreUiccApplicationsEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCardId(Landroid/telephony/SubscriptionInfo;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo;->mCardId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCardString(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo;->mCardString:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierConfigAccessRules(Landroid/telephony/SubscriptionInfo;)[Landroid/telephony/UiccAccessRule;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierId(Landroid/telephony/SubscriptionInfo;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo;->mCarrierId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierName(Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountryIso(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo;->mCountryIso:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataRoaming(Landroid/telephony/SubscriptionInfo;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayName(Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayNameSource(Landroid/telephony/SubscriptionInfo;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo;->mDisplayNameSource:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEhplmns(Landroid/telephony/SubscriptionInfo;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo;->mEhplmns:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGroupOwner(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo;->mGroupOwner:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGroupUuid(Landroid/telephony/SubscriptionInfo;)Landroid/os/ParcelUuid;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo;->mGroupUuid:Landroid/os/ParcelUuid;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHplmns(Landroid/telephony/SubscriptionInfo;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo;->mHplmns:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIccId(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconBitmap(Landroid/telephony/SubscriptionInfo;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconTint(Landroid/telephony/SubscriptionInfo;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/telephony/SubscriptionInfo;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo;->mId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEmbedded(Landroid/telephony/SubscriptionInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo;->mIsEmbedded:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsGroupDisabled(Landroid/telephony/SubscriptionInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo;->mIsGroupDisabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsOnlyNonTerrestrialNetwork(Landroid/telephony/SubscriptionInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo;->mIsOnlyNonTerrestrialNetwork:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsOpportunistic(Landroid/telephony/SubscriptionInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo;->mIsOpportunistic:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSatelliteESOSSupported(Landroid/telephony/SubscriptionInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo;->mIsSatelliteESOSSupported:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMcc(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo;->mMcc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMnc(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo;->mMnc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNativeAccessRules(Landroid/telephony/SubscriptionInfo;)[Landroid/telephony/UiccAccessRule;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPortIndex(Landroid/telephony/SubscriptionInfo;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo;->mPortIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProfileClass(Landroid/telephony/SubscriptionInfo;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo;->mProfileClass:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceCapabilities(Landroid/telephony/SubscriptionInfo;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo;->mServiceCapabilities:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSimSlotIndex(Landroid/telephony/SubscriptionInfo;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransferStatus(Landroid/telephony/SubscriptionInfo;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo;->mTransferStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/telephony/SubscriptionInfo;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo;->mType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsageSetting(Landroid/telephony/SubscriptionInfo;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo;->mUsageSetting:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 971
    new-instance v0, Landroid/telephony/SubscriptionInfo$1;

    invoke-direct {v0}, Landroid/telephony/SubscriptionInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/SubscriptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;)V
    .registers 44
    .param p1, "id"    # I
    .param p2, "iccId"    # Ljava/lang/String;
    .param p3, "simSlotIndex"    # I
    .param p4, "displayName"    # Ljava/lang/CharSequence;
    .param p5, "carrierName"    # Ljava/lang/CharSequence;
    .param p6, "nameSource"    # I
    .param p7, "iconTint"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "roaming"    # I
    .param p10, "icon"    # Landroid/graphics/Bitmap;
    .param p11, "mcc"    # Ljava/lang/String;
    .param p12, "mnc"    # Ljava/lang/String;
    .param p13, "countryIso"    # Ljava/lang/String;
    .param p14, "isEmbedded"    # Z
    .param p15, "nativeAccessRules"    # [Landroid/telephony/UiccAccessRule;
    .param p16, "cardString"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 292
    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    invoke-direct/range {v0 .. v26}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;IZLjava/lang/String;ZIIILjava/lang/String;[Landroid/telephony/UiccAccessRule;Z)V

    .line 297
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;IZLjava/lang/String;ZIIILjava/lang/String;[Landroid/telephony/UiccAccessRule;Z)V
    .registers 55
    .param p1, "id"    # I
    .param p2, "iccId"    # Ljava/lang/String;
    .param p3, "simSlotIndex"    # I
    .param p4, "displayName"    # Ljava/lang/CharSequence;
    .param p5, "carrierName"    # Ljava/lang/CharSequence;
    .param p6, "nameSource"    # I
    .param p7, "iconTint"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "roaming"    # I
    .param p10, "icon"    # Landroid/graphics/Bitmap;
    .param p11, "mcc"    # Ljava/lang/String;
    .param p12, "mnc"    # Ljava/lang/String;
    .param p13, "countryIso"    # Ljava/lang/String;
    .param p14, "isEmbedded"    # Z
    .param p15, "nativeAccessRules"    # [Landroid/telephony/UiccAccessRule;
    .param p16, "cardString"    # Ljava/lang/String;
    .param p17, "cardId"    # I
    .param p18, "isOpportunistic"    # Z
    .param p19, "groupUUID"    # Ljava/lang/String;
    .param p20, "isGroupDisabled"    # Z
    .param p21, "carrierId"    # I
    .param p22, "profileClass"    # I
    .param p23, "subType"    # I
    .param p24, "groupOwner"    # Ljava/lang/String;
    .param p25, "carrierConfigAccessRules"    # [Landroid/telephony/UiccAccessRule;
    .param p26, "areUiccApplicationsEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 332
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move/from16 v26, p26

    invoke-direct/range {v0 .. v27}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;IZLjava/lang/String;ZIIILjava/lang/String;[Landroid/telephony/UiccAccessRule;ZI)V

    .line 336
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;IZLjava/lang/String;ZIIILjava/lang/String;[Landroid/telephony/UiccAccessRule;ZI)V
    .registers 57
    .param p1, "id"    # I
    .param p2, "iccId"    # Ljava/lang/String;
    .param p3, "simSlotIndex"    # I
    .param p4, "displayName"    # Ljava/lang/CharSequence;
    .param p5, "carrierName"    # Ljava/lang/CharSequence;
    .param p6, "displayNameSource"    # I
    .param p7, "iconTint"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "roaming"    # I
    .param p10, "icon"    # Landroid/graphics/Bitmap;
    .param p11, "mcc"    # Ljava/lang/String;
    .param p12, "mnc"    # Ljava/lang/String;
    .param p13, "countryIso"    # Ljava/lang/String;
    .param p14, "isEmbedded"    # Z
    .param p15, "nativeAccessRules"    # [Landroid/telephony/UiccAccessRule;
    .param p16, "cardString"    # Ljava/lang/String;
    .param p17, "cardId"    # I
    .param p18, "isOpportunistic"    # Z
    .param p19, "groupUUID"    # Ljava/lang/String;
    .param p20, "isGroupDisabled"    # Z
    .param p21, "carrierId"    # I
    .param p22, "profileClass"    # I
    .param p23, "subType"    # I
    .param p24, "groupOwner"    # Ljava/lang/String;
    .param p25, "carrierConfigAccessRules"    # [Landroid/telephony/UiccAccessRule;
    .param p26, "areUiccApplicationsEnabled"    # Z
    .param p27, "portIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 353
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move/from16 v26, p26

    move/from16 v27, p27

    invoke-direct/range {v0 .. v28}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;IZLjava/lang/String;ZIIILjava/lang/String;[Landroid/telephony/UiccAccessRule;ZII)V

    .line 358
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;IZLjava/lang/String;ZIIILjava/lang/String;[Landroid/telephony/UiccAccessRule;ZII)V
    .registers 45
    .param p1, "id"    # I
    .param p2, "iccId"    # Ljava/lang/String;
    .param p3, "simSlotIndex"    # I
    .param p4, "displayName"    # Ljava/lang/CharSequence;
    .param p5, "carrierName"    # Ljava/lang/CharSequence;
    .param p6, "nameSource"    # I
    .param p7, "iconTint"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "roaming"    # I
    .param p10, "icon"    # Landroid/graphics/Bitmap;
    .param p11, "mcc"    # Ljava/lang/String;
    .param p12, "mnc"    # Ljava/lang/String;
    .param p13, "countryIso"    # Ljava/lang/String;
    .param p14, "isEmbedded"    # Z
    .param p15, "nativeAccessRules"    # [Landroid/telephony/UiccAccessRule;
    .param p16, "cardString"    # Ljava/lang/String;
    .param p17, "cardId"    # I
    .param p18, "isOpportunistic"    # Z
    .param p19, "groupUuid"    # Ljava/lang/String;
    .param p20, "isGroupDisabled"    # Z
    .param p21, "carrierId"    # I
    .param p22, "profileClass"    # I
    .param p23, "subType"    # I
    .param p24, "groupOwner"    # Ljava/lang/String;
    .param p25, "carrierConfigAccessRules"    # [Landroid/telephony/UiccAccessRule;
    .param p26, "areUiccApplicationsEnabled"    # Z
    .param p27, "portIndex"    # I
    .param p28, "usageSetting"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 374
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 375
    move/from16 v1, p1

    iput v1, v0, Landroid/telephony/SubscriptionInfo;->mId:I

    .line 376
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    .line 377
    move/from16 v3, p3

    iput v3, v0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    .line 378
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    .line 379
    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    .line 380
    move/from16 v6, p6

    iput v6, v0, Landroid/telephony/SubscriptionInfo;->mDisplayNameSource:I

    .line 381
    move/from16 v7, p7

    iput v7, v0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    .line 382
    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    .line 383
    move/from16 v9, p9

    iput v9, v0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    .line 384
    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 385
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Landroid/telephony/SubscriptionInfo;->mMcc:Ljava/lang/String;

    .line 386
    invoke-static/range {p12 .. p12}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Landroid/telephony/SubscriptionInfo;->mMnc:Ljava/lang/String;

    .line 387
    const/4 v11, 0x0

    iput-object v11, v0, Landroid/telephony/SubscriptionInfo;->mHplmns:[Ljava/lang/String;

    .line 388
    iput-object v11, v0, Landroid/telephony/SubscriptionInfo;->mEhplmns:[Ljava/lang/String;

    .line 389
    invoke-static/range {p13 .. p13}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Landroid/telephony/SubscriptionInfo;->mCountryIso:Ljava/lang/String;

    .line 390
    move/from16 v12, p14

    iput-boolean v12, v0, Landroid/telephony/SubscriptionInfo;->mIsEmbedded:Z

    .line 391
    move-object/from16 v13, p15

    iput-object v13, v0, Landroid/telephony/SubscriptionInfo;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 392
    invoke-static/range {p16 .. p16}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v0, Landroid/telephony/SubscriptionInfo;->mCardString:Ljava/lang/String;

    .line 393
    move/from16 v14, p17

    iput v14, v0, Landroid/telephony/SubscriptionInfo;->mCardId:I

    .line 394
    move/from16 v15, p18

    iput-boolean v15, v0, Landroid/telephony/SubscriptionInfo;->mIsOpportunistic:Z

    .line 395
    if-nez p19, :cond_5d

    goto :goto_61

    :cond_5d
    invoke-static/range {p19 .. p19}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v11

    :goto_61
    iput-object v11, v0, Landroid/telephony/SubscriptionInfo;->mGroupUuid:Landroid/os/ParcelUuid;

    .line 396
    move/from16 v11, p20

    iput-boolean v11, v0, Landroid/telephony/SubscriptionInfo;->mIsGroupDisabled:Z

    .line 397
    move/from16 v1, p21

    iput v1, v0, Landroid/telephony/SubscriptionInfo;->mCarrierId:I

    .line 398
    move/from16 v1, p22

    iput v1, v0, Landroid/telephony/SubscriptionInfo;->mProfileClass:I

    .line 399
    move/from16 v1, p23

    iput v1, v0, Landroid/telephony/SubscriptionInfo;->mType:I

    .line 400
    invoke-static/range {p24 .. p24}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/SubscriptionInfo;->mGroupOwner:Ljava/lang/String;

    .line 401
    move-object/from16 v1, p25

    iput-object v1, v0, Landroid/telephony/SubscriptionInfo;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 402
    move/from16 v1, p26

    iput-boolean v1, v0, Landroid/telephony/SubscriptionInfo;->mAreUiccApplicationsEnabled:Z

    .line 403
    move/from16 v1, p27

    iput v1, v0, Landroid/telephony/SubscriptionInfo;->mPortIndex:I

    .line 404
    move/from16 v1, p28

    iput v1, v0, Landroid/telephony/SubscriptionInfo;->mUsageSetting:I

    .line 405
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/telephony/SubscriptionInfo;->mIsOnlyNonTerrestrialNetwork:Z

    .line 406
    iput v1, v0, Landroid/telephony/SubscriptionInfo;->mServiceCapabilities:I

    .line 407
    iput v1, v0, Landroid/telephony/SubscriptionInfo;->mTransferStatus:I

    .line 408
    iput-boolean v1, v0, Landroid/telephony/SubscriptionInfo;->mIsSatelliteESOSSupported:Z

    .line 409
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;ZLjava/lang/String;II)V
    .registers 48
    .param p1, "id"    # I
    .param p2, "iccId"    # Ljava/lang/String;
    .param p3, "simSlotIndex"    # I
    .param p4, "displayName"    # Ljava/lang/CharSequence;
    .param p5, "carrierName"    # Ljava/lang/CharSequence;
    .param p6, "nameSource"    # I
    .param p7, "iconTint"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "roaming"    # I
    .param p10, "icon"    # Landroid/graphics/Bitmap;
    .param p11, "mcc"    # Ljava/lang/String;
    .param p12, "mnc"    # Ljava/lang/String;
    .param p13, "countryIso"    # Ljava/lang/String;
    .param p14, "isEmbedded"    # Z
    .param p15, "nativeAccessRules"    # [Landroid/telephony/UiccAccessRule;
    .param p16, "cardString"    # Ljava/lang/String;
    .param p17, "isOpportunistic"    # Z
    .param p18, "groupUUID"    # Ljava/lang/String;
    .param p19, "carrierId"    # I
    .param p20, "profileClass"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 311
    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v17, -0x1

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move/from16 v21, p19

    move/from16 v22, p20

    invoke-direct/range {v0 .. v26}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;IZLjava/lang/String;ZIIILjava/lang/String;[Landroid/telephony/UiccAccessRule;Z)V

    .line 315
    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/SubscriptionInfo$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/telephony/SubscriptionInfo$Builder;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmId(Landroid/telephony/SubscriptionInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo;->mId:I

    .line 418
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmIccId(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    .line 419
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmSimSlotIndex(Landroid/telephony/SubscriptionInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    .line 420
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmDisplayName(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    .line 421
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmCarrierName(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    .line 422
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmDisplayNameSource(Landroid/telephony/SubscriptionInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo;->mDisplayNameSource:I

    .line 423
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmIconTint(Landroid/telephony/SubscriptionInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    .line 424
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmNumber(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    .line 425
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmDataRoaming(Landroid/telephony/SubscriptionInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    .line 426
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmIconBitmap(Landroid/telephony/SubscriptionInfo$Builder;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 427
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmMcc(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo;->mMcc:Ljava/lang/String;

    .line 428
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmMnc(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo;->mMnc:Ljava/lang/String;

    .line 429
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmEhplmns(Landroid/telephony/SubscriptionInfo$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo;->mEhplmns:[Ljava/lang/String;

    .line 430
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmHplmns(Landroid/telephony/SubscriptionInfo$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo;->mHplmns:[Ljava/lang/String;

    .line 431
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmCountryIso(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCountryIso:Ljava/lang/String;

    .line 432
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmIsEmbedded(Landroid/telephony/SubscriptionInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo;->mIsEmbedded:Z

    .line 433
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmNativeAccessRules(Landroid/telephony/SubscriptionInfo$Builder;)[Landroid/telephony/UiccAccessRule;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 434
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmCardString(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCardString:Ljava/lang/String;

    .line 435
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmCardId(Landroid/telephony/SubscriptionInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo;->mCardId:I

    .line 436
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmIsOpportunistic(Landroid/telephony/SubscriptionInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo;->mIsOpportunistic:Z

    .line 437
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmGroupUuid(Landroid/telephony/SubscriptionInfo$Builder;)Landroid/os/ParcelUuid;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo;->mGroupUuid:Landroid/os/ParcelUuid;

    .line 438
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmIsGroupDisabled(Landroid/telephony/SubscriptionInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo;->mIsGroupDisabled:Z

    .line 439
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmCarrierId(Landroid/telephony/SubscriptionInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo;->mCarrierId:I

    .line 440
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmProfileClass(Landroid/telephony/SubscriptionInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo;->mProfileClass:I

    .line 441
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmType(Landroid/telephony/SubscriptionInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo;->mType:I

    .line 442
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmGroupOwner(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo;->mGroupOwner:Ljava/lang/String;

    .line 443
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmCarrierConfigAccessRules(Landroid/telephony/SubscriptionInfo$Builder;)[Landroid/telephony/UiccAccessRule;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 444
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmAreUiccApplicationsEnabled(Landroid/telephony/SubscriptionInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo;->mAreUiccApplicationsEnabled:Z

    .line 445
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmPortIndex(Landroid/telephony/SubscriptionInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo;->mPortIndex:I

    .line 446
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmUsageSetting(Landroid/telephony/SubscriptionInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo;->mUsageSetting:I

    .line 447
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmIsOnlyNonTerrestrialNetwork(Landroid/telephony/SubscriptionInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo;->mIsOnlyNonTerrestrialNetwork:Z

    .line 448
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmServiceCapabilities(Landroid/telephony/SubscriptionInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo;->mServiceCapabilities:I

    .line 449
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmTransferStatus(Landroid/telephony/SubscriptionInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo;->mTransferStatus:I

    .line 450
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo$Builder;->-$$Nest$fgetmIsSatelliteESOSSupported(Landroid/telephony/SubscriptionInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo;->mIsSatelliteESOSSupported:Z

    .line 451
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/SubscriptionInfo$Builder;Landroid/telephony/SubscriptionInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/SubscriptionInfo;-><init>(Landroid/telephony/SubscriptionInfo$Builder;)V

    return-void
.end method

.method public static blacklist getPrintableId(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "id"    # Ljava/lang/String;

    .line 1073
    const/4 v0, 0x0

    .line 1074
    .local v0, "idToPrint":Ljava/lang/String;
    if-eqz p0, :cond_2f

    .line 1075
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-le v1, v2, :cond_2e

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-nez v1, :cond_2e

    .line 1076
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    .line 1078
    :cond_2e
    move-object v0, p0

    .line 1081
    :cond_2f
    :goto_2f
    return-object v0
.end method


# virtual methods
.method public whitelist areUiccApplicationsEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 884
    iget-boolean v0, p0, Landroid/telephony/SubscriptionInfo;->mAreUiccApplicationsEnabled:Z

    return v0
.end method

.method public greylist-max-o canManageSubscription(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 772
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/SubscriptionInfo;->canManageSubscription(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o canManageSubscription(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 787
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getAccessRules()Ljava/util/List;

    move-result-object v0

    .line 788
    .local v0, "allAccessRules":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccAccessRule;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 789
    return v1

    .line 791
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 794
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v3, 0x8000000

    :try_start_e
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_12} :catch_2d

    .line 799
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 800
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/UiccAccessRule;

    .line 801
    .local v5, "rule":Landroid/telephony/UiccAccessRule;
    invoke-virtual {v5, v3}, Landroid/telephony/UiccAccessRule;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2b

    .line 803
    return v7

    .line 805
    .end local v5    # "rule":Landroid/telephony/UiccAccessRule;
    :cond_2b
    goto :goto_17

    .line 806
    :cond_2c
    return v1

    .line 796
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_2d
    move-exception v3

    .line 797
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canManageSubscription: Unknown package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SubscriptionInfo"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 798
    return v1
.end method

.method public whitelist createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .line 534
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_11

    .line 535
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10805e2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 538
    :cond_11
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 539
    .local v0, "width":I
    iget-object v1, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 540
    .local v1, "height":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 543
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 545
    .local v3, "workingBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 546
    .local v4, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 549
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    iget v7, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 550
    iget-object v6, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 551
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 554
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 555
    const-string/jumbo v7, "sans-serif"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 556
    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 558
    const/high16 v7, 0x41800000    # 16.0f

    iget v9, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v9, v7

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 560
    iget v7, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    add-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v9, "%d"

    invoke-static {v9, v7}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 561
    .local v7, "index":Ljava/lang/String;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 562
    .local v9, "textBound":Landroid/graphics/Rect;
    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 563
    int-to-float v6, v0

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v6, v10

    .line 564
    .local v6, "xOffset":F
    int-to-float v10, v1

    div-float/2addr v10, v8

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v10, v8

    .line 565
    .local v10, "yOffset":F
    invoke-virtual {v4, v7, v6, v10, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 567
    return-object v3
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1060
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1128
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1129
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_117

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_117

    .line 1130
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 1131
    .local v2, "that":Landroid/telephony/SubscriptionInfo;
    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mId:I

    iget v4, v2, Landroid/telephony/SubscriptionInfo;->mId:I

    if-ne v3, v4, :cond_115

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    iget v4, v2, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    if-ne v3, v4, :cond_115

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mDisplayNameSource:I

    iget v4, v2, Landroid/telephony/SubscriptionInfo;->mDisplayNameSource:I

    if-ne v3, v4, :cond_115

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    iget v4, v2, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    if-ne v3, v4, :cond_115

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    iget v4, v2, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    if-ne v3, v4, :cond_115

    iget-boolean v3, p0, Landroid/telephony/SubscriptionInfo;->mIsEmbedded:Z

    iget-boolean v4, v2, Landroid/telephony/SubscriptionInfo;->mIsEmbedded:Z

    if-ne v3, v4, :cond_115

    iget-boolean v3, p0, Landroid/telephony/SubscriptionInfo;->mIsOpportunistic:Z

    iget-boolean v4, v2, Landroid/telephony/SubscriptionInfo;->mIsOpportunistic:Z

    if-ne v3, v4, :cond_115

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mCarrierId:I

    iget v4, v2, Landroid/telephony/SubscriptionInfo;->mCarrierId:I

    if-ne v3, v4, :cond_115

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mProfileClass:I

    iget v4, v2, Landroid/telephony/SubscriptionInfo;->mProfileClass:I

    if-ne v3, v4, :cond_115

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mType:I

    iget v4, v2, Landroid/telephony/SubscriptionInfo;->mType:I

    if-ne v3, v4, :cond_115

    iget-boolean v3, p0, Landroid/telephony/SubscriptionInfo;->mAreUiccApplicationsEnabled:Z

    iget-boolean v4, v2, Landroid/telephony/SubscriptionInfo;->mAreUiccApplicationsEnabled:Z

    if-ne v3, v4, :cond_115

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mPortIndex:I

    iget v4, v2, Landroid/telephony/SubscriptionInfo;->mPortIndex:I

    if-ne v3, v4, :cond_115

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mUsageSetting:I

    iget v4, v2, Landroid/telephony/SubscriptionInfo;->mUsageSetting:I

    if-ne v3, v4, :cond_115

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mCardId:I

    iget v4, v2, Landroid/telephony/SubscriptionInfo;->mCardId:I

    if-ne v3, v4, :cond_115

    iget-boolean v3, p0, Landroid/telephony/SubscriptionInfo;->mIsGroupDisabled:Z

    iget-boolean v4, v2, Landroid/telephony/SubscriptionInfo;->mIsGroupDisabled:Z

    if-ne v3, v4, :cond_115

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    .line 1139
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_115

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_115

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    .line 1140
    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_115

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_115

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mMcc:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/SubscriptionInfo;->mMcc:Ljava/lang/String;

    .line 1141
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_115

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mMnc:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/SubscriptionInfo;->mMnc:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_115

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mEhplmns:[Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/SubscriptionInfo;->mEhplmns:[Ljava/lang/String;

    .line 1142
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_115

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mHplmns:[Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/SubscriptionInfo;->mHplmns:[Ljava/lang/String;

    .line 1143
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_115

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mCardString:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/SubscriptionInfo;->mCardString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_115

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    iget-object v4, v2, Landroid/telephony/SubscriptionInfo;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1144
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_115

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    iget-object v4, v2, Landroid/telephony/SubscriptionInfo;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1145
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_115

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mGroupUuid:Landroid/os/ParcelUuid;

    iget-object v4, v2, Landroid/telephony/SubscriptionInfo;->mGroupUuid:Landroid/os/ParcelUuid;

    .line 1146
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_115

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mCountryIso:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/SubscriptionInfo;->mCountryIso:Ljava/lang/String;

    .line 1147
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_115

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mGroupOwner:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/SubscriptionInfo;->mGroupOwner:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_115

    iget-boolean v3, p0, Landroid/telephony/SubscriptionInfo;->mIsOnlyNonTerrestrialNetwork:Z

    iget-boolean v4, v2, Landroid/telephony/SubscriptionInfo;->mIsOnlyNonTerrestrialNetwork:Z

    if-ne v3, v4, :cond_115

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mServiceCapabilities:I

    iget v4, v2, Landroid/telephony/SubscriptionInfo;->mServiceCapabilities:I

    if-ne v3, v4, :cond_115

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mTransferStatus:I

    iget v4, v2, Landroid/telephony/SubscriptionInfo;->mTransferStatus:I

    if-ne v3, v4, :cond_115

    iget-boolean v3, p0, Landroid/telephony/SubscriptionInfo;->mIsSatelliteESOSSupported:Z

    iget-boolean v4, v2, Landroid/telephony/SubscriptionInfo;->mIsSatelliteESOSSupported:Z

    if-ne v3, v4, :cond_115

    goto :goto_116

    :cond_115
    move v0, v1

    .line 1131
    :goto_116
    return v0

    .line 1129
    .end local v2    # "that":Landroid/telephony/SubscriptionInfo;
    :cond_117
    :goto_117
    return v1
.end method

.method public whitelist getAccessRules()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation

    .line 818
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 819
    .local v0, "merged":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccAccessRule;>;"
    iget-object v1, p0, Landroid/telephony/SubscriptionInfo;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    if-eqz v1, :cond_12

    .line 820
    iget-object v1, p0, Landroid/telephony/SubscriptionInfo;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 822
    :cond_12
    iget-object v1, p0, Landroid/telephony/SubscriptionInfo;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    if-eqz v1, :cond_1f

    .line 823
    iget-object v1, p0, Landroid/telephony/SubscriptionInfo;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 825
    :cond_1f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x0

    goto :goto_2b

    :cond_27
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_2b
    return-object v1
.end method

.method public whitelist getCardId()I
    .registers 2

    .line 856
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mCardId:I

    return v0
.end method

.method public blacklist getCardString()Ljava/lang/String;
    .registers 2

    .line 847
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCardString:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCarrierId()I
    .registers 2

    .line 492
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mCarrierId:I

    return v0
.end method

.method public whitelist getCarrierName()Ljava/lang/CharSequence;
    .registers 2

    .line 512
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getCountryIso()Ljava/lang/String;
    .registers 2

    .line 663
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDataRoaming()I
    .registers 2

    .line 610
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    return v0
.end method

.method public whitelist getDisplayName()Ljava/lang/CharSequence;
    .registers 2

    .line 502
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getDisplayNameSource()I
    .registers 2

    .line 522
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mDisplayNameSource:I

    return v0
.end method

.method public blacklist getEhplmns()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 711
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mEhplmns:[Ljava/lang/String;

    if-nez v0, :cond_9

    .line 712
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mEhplmns:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 711
    :goto_f
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getGroupOwner()Ljava/lang/String;
    .registers 2

    .line 731
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mGroupOwner:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getGroupUuid()Landroid/os/ParcelUuid;
    .registers 2

    .line 703
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mGroupUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public blacklist getHplmns()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 720
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mHplmns:[Ljava/lang/String;

    if-nez v0, :cond_9

    .line 721
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mHplmns:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 720
    :goto_f
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIccId()Ljava/lang/String;
    .registers 2

    .line 474
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIconTint()I
    .registers 2

    .line 576
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    return v0
.end method

.method public whitelist getMcc()I
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 621
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/telephony/SubscriptionInfo;->mMcc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_9
    goto :goto_11

    :cond_a
    iget-object v1, p0, Landroid/telephony/SubscriptionInfo;->mMcc:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_10} :catch_12

    goto :goto_9

    :goto_11
    return v0

    .line 622
    :catch_12
    move-exception v1

    .line 623
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-class v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MCC string is not a number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/SubscriptionInfo;->mMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return v0
.end method

.method public whitelist getMccString()Ljava/lang/String;
    .registers 2

    .line 648
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mMcc:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMnc()I
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 636
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/telephony/SubscriptionInfo;->mMnc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_9
    goto :goto_11

    :cond_a
    iget-object v1, p0, Landroid/telephony/SubscriptionInfo;->mMnc:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_10} :catch_12

    goto :goto_9

    :goto_11
    return v0

    .line 637
    :catch_12
    move-exception v1

    .line 638
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-class v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MNC string is not a number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/SubscriptionInfo;->mMnc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return v0
.end method

.method public whitelist getMncString()Ljava/lang/String;
    .registers 2

    .line 656
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mMnc:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNumber()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 601
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPortIndex()I
    .registers 2

    .line 862
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mPortIndex:I

    return v0
.end method

.method public whitelist getProfileClass()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 745
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mProfileClass:I

    return v0
.end method

.method public whitelist getServiceCapabilities()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 954
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mServiceCapabilities:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getServiceCapabilitiesSet(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSimSlotIndex()I
    .registers 2

    .line 483
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    return v0
.end method

.method public whitelist getSubscriptionId()I
    .registers 2

    .line 457
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mId:I

    return v0
.end method

.method public whitelist getSubscriptionType()I
    .registers 2

    .line 757
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mType:I

    return v0
.end method

.method public whitelist getTransferStatus()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 967
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mTransferStatus:I

    return v0
.end method

.method public whitelist getUsageSetting()I
    .registers 2

    .line 894
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mUsageSetting:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 32

    .line 1156
    move-object/from16 v0, p0

    iget v1, v0, Landroid/telephony/SubscriptionInfo;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    iget v1, v0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    iget-object v6, v0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    iget v1, v0, Landroid/telephony/SubscriptionInfo;->mDisplayNameSource:I

    .line 1157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v1, v0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v0, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    iget v1, v0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v0, Landroid/telephony/SubscriptionInfo;->mMcc:Ljava/lang/String;

    iget-object v12, v0, Landroid/telephony/SubscriptionInfo;->mMnc:Ljava/lang/String;

    iget-boolean v1, v0, Landroid/telephony/SubscriptionInfo;->mIsEmbedded:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget-object v14, v0, Landroid/telephony/SubscriptionInfo;->mCardString:Ljava/lang/String;

    iget-boolean v1, v0, Landroid/telephony/SubscriptionInfo;->mIsOpportunistic:Z

    .line 1158
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iget-object v1, v0, Landroid/telephony/SubscriptionInfo;->mGroupUuid:Landroid/os/ParcelUuid;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/telephony/SubscriptionInfo;->mCountryIso:Ljava/lang/String;

    move-object/from16 v17, v1

    iget v1, v0, Landroid/telephony/SubscriptionInfo;->mCarrierId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v1, v0, Landroid/telephony/SubscriptionInfo;->mProfileClass:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v1, v0, Landroid/telephony/SubscriptionInfo;->mType:I

    .line 1159
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget-object v1, v0, Landroid/telephony/SubscriptionInfo;->mGroupOwner:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-boolean v1, v0, Landroid/telephony/SubscriptionInfo;->mAreUiccApplicationsEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    iget v1, v0, Landroid/telephony/SubscriptionInfo;->mPortIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    iget v1, v0, Landroid/telephony/SubscriptionInfo;->mUsageSetting:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    iget v1, v0, Landroid/telephony/SubscriptionInfo;->mCardId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    iget-boolean v1, v0, Landroid/telephony/SubscriptionInfo;->mIsGroupDisabled:Z

    .line 1160
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    iget-boolean v1, v0, Landroid/telephony/SubscriptionInfo;->mIsOnlyNonTerrestrialNetwork:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    iget v1, v0, Landroid/telephony/SubscriptionInfo;->mServiceCapabilities:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    iget v1, v0, Landroid/telephony/SubscriptionInfo;->mTransferStatus:I

    .line 1161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    iget-boolean v1, v0, Landroid/telephony/SubscriptionInfo;->mIsSatelliteESOSSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    filled-new-array/range {v2 .. v30}, [Ljava/lang/Object;

    move-result-object v1

    .line 1156
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    .line 1162
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, v0, Landroid/telephony/SubscriptionInfo;->mEhplmns:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1163
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, v0, Landroid/telephony/SubscriptionInfo;->mHplmns:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1164
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, v0, Landroid/telephony/SubscriptionInfo;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1165
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, v0, Landroid/telephony/SubscriptionInfo;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1166
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public blacklist isActive()Z
    .registers 3

    .line 689
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    const/4 v1, 0x1

    if-gez v0, :cond_b

    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mType:I

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_b
    return v1
.end method

.method public whitelist isEmbedded()Z
    .registers 2

    .line 670
    iget-boolean v0, p0, Landroid/telephony/SubscriptionInfo;->mIsEmbedded:Z

    return v0
.end method

.method public whitelist isGroupDisabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 875
    iget-boolean v0, p0, Landroid/telephony/SubscriptionInfo;->mIsGroupDisabled:Z

    return v0
.end method

.method public whitelist isOnlyNonTerrestrialNetwork()Z
    .registers 2

    .line 904
    iget-boolean v0, p0, Landroid/telephony/SubscriptionInfo;->mIsOnlyNonTerrestrialNetwork:Z

    return v0
.end method

.method public whitelist isOpportunistic()Z
    .registers 2

    .line 680
    iget-boolean v0, p0, Landroid/telephony/SubscriptionInfo;->mIsOpportunistic:Z

    return v0
.end method

.method public blacklist isSatelliteESOSSupported()Z
    .registers 2

    .line 917
    iget-boolean v0, p0, Landroid/telephony/SubscriptionInfo;->mIsSatelliteESOSSupported:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 1086
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1087
    .local v0, "iccIdToPrint":Ljava/lang/String;
    iget-object v1, p0, Landroid/telephony/SubscriptionInfo;->mCardString:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1088
    .local v1, "cardStringToPrint":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SubscriptionInfo: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " iccId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simSlotIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " portIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mPortIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isEmbedded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/telephony/SubscriptionInfo;->mIsEmbedded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " carrierId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mCarrierId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " displayName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " carrierName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isOpportunistic="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/telephony/SubscriptionInfo;->mIsOpportunistic:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " groupUuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mGroupUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " groupOwner="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mGroupOwner:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isGroupDisabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/telephony/SubscriptionInfo;->mIsGroupDisabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " displayNameSource="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mDisplayNameSource:I

    .line 1101
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->displayNameSourceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " iconTint="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    iget-object v4, p0, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    .line 1103
    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dataRoaming="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mcc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mMcc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mnc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mMnc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ehplmns="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mEhplmns:[Ljava/lang/String;

    .line 1107
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hplmns="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mHplmns:[Ljava/lang/String;

    .line 1108
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cardString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cardId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mCardId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nativeAccessRules="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1111
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " carrierConfigAccessRules="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1112
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " countryIso="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " profileClass="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mProfileClass:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mType:I

    .line 1115
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->subscriptionTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " areUiccApplicationsEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/telephony/SubscriptionInfo;->mAreUiccApplicationsEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " usageSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mUsageSetting:I

    .line 1117
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->usageSettingToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isOnlyNonTerrestrialNetwork="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/telephony/SubscriptionInfo;->mIsOnlyNonTerrestrialNetwork:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serviceCapabilities="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mServiceCapabilities:I

    .line 1119
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getServiceCapabilitiesSet(I)Ljava/util/Set;

    move-result-object v3

    .line 1120
    invoke-interface {v3}, Ljava/util/Set;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " transferStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mTransferStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isSatelliteESOSSupported="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/telephony/SubscriptionInfo;->mIsSatelliteESOSSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1088
    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1022
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1023
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1024
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1025
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1026
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1027
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mDisplayNameSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1028
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1029
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1030
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1031
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mMcc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1032
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mMnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1033
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1035
    iget-boolean v0, p0, Landroid/telephony/SubscriptionInfo;->mIsEmbedded:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1036
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1037
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCardString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1038
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mCardId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1039
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mPortIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1040
    iget-boolean v0, p0, Landroid/telephony/SubscriptionInfo;->mIsOpportunistic:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1041
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mGroupUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_61

    const/4 v0, 0x0

    goto :goto_67

    :cond_61
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mGroupUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_67
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1042
    iget-boolean v0, p0, Landroid/telephony/SubscriptionInfo;->mIsGroupDisabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1043
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mCarrierId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1044
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mProfileClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1045
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1046
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mEhplmns:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1047
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mHplmns:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1048
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mGroupOwner:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1049
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1050
    iget-boolean v0, p0, Landroid/telephony/SubscriptionInfo;->mAreUiccApplicationsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1051
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mUsageSetting:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1052
    iget-boolean v0, p0, Landroid/telephony/SubscriptionInfo;->mIsOnlyNonTerrestrialNetwork:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1053
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mServiceCapabilities:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1054
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mTransferStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1055
    iget-boolean v0, p0, Landroid/telephony/SubscriptionInfo;->mIsSatelliteESOSSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1056
    return-void
.end method
