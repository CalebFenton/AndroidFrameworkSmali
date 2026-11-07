.class public final Landroid/telephony/PreciseDataConnectionState;
.super Ljava/lang/Object;
.source "PreciseDataConnectionState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PreciseDataConnectionState$Builder;,
        Landroid/telephony/PreciseDataConnectionState$NetworkValidationStatus;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/PreciseDataConnectionState;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist GET_DATA_CONNECTION_STATE_R_VERSION:J = 0x8da79b8L

.field public static final whitelist NETWORK_VALIDATION_FAILURE:I = 0x4

.field public static final whitelist NETWORK_VALIDATION_IN_PROGRESS:I = 0x2

.field public static final whitelist NETWORK_VALIDATION_NOT_REQUESTED:I = 0x1

.field public static final whitelist NETWORK_VALIDATION_SUCCESS:I = 0x3

.field public static final whitelist NETWORK_VALIDATION_UNSUPPORTED:I


# instance fields
.field private final blacklist mApnSetting:Landroid/telephony/data/ApnSetting;

.field private final blacklist mDefaultQos:Landroid/telephony/data/Qos;

.field private final blacklist mFailCause:I

.field private final blacklist mId:I

.field private final greylist-max-o mLinkProperties:Landroid/net/LinkProperties;

.field private final blacklist mNetId:I

.field private final greylist-max-o mNetworkType:I

.field private final blacklist mNetworkValidationStatus:I

.field private final greylist-max-o mState:I

.field private final blacklist mTransportType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 379
    new-instance v0, Landroid/telephony/PreciseDataConnectionState$1;

    invoke-direct {v0}, Landroid/telephony/PreciseDataConnectionState$1;-><init>()V

    sput-object v0, Landroid/telephony/PreciseDataConnectionState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIIIILandroid/net/LinkProperties;ILandroid/telephony/data/ApnSetting;Landroid/telephony/data/Qos;I)V
    .registers 11
    .param p1, "transportType"    # I
    .param p2, "id"    # I
    .param p3, "netId"    # I
    .param p4, "state"    # I
    .param p5, "networkType"    # I
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "failCause"    # I
    .param p8, "apnSetting"    # Landroid/telephony/data/ApnSetting;
    .param p9, "defaultQos"    # Landroid/telephony/data/Qos;
    .param p10, "networkValidationStatus"    # I

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput p1, p0, Landroid/telephony/PreciseDataConnectionState;->mTransportType:I

    .line 161
    iput p2, p0, Landroid/telephony/PreciseDataConnectionState;->mId:I

    .line 162
    iput p3, p0, Landroid/telephony/PreciseDataConnectionState;->mNetId:I

    .line 163
    iput p4, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    .line 164
    iput p5, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    .line 165
    iput-object p6, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    .line 166
    iput p7, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:I

    .line 167
    iput-object p8, p0, Landroid/telephony/PreciseDataConnectionState;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 168
    iput-object p9, p0, Landroid/telephony/PreciseDataConnectionState;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 169
    iput p10, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkValidationStatus:I

    .line 170
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIILandroid/net/LinkProperties;ILandroid/telephony/data/ApnSetting;Landroid/telephony/data/Qos;ILandroid/telephony/PreciseDataConnectionState-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/telephony/PreciseDataConnectionState;-><init>(IIIIILandroid/net/LinkProperties;ILandroid/telephony/data/ApnSetting;Landroid/telephony/data/Qos;I)V

    return-void
.end method

.method public constructor greylist-max-r <init>(IIILjava/lang/String;Landroid/net/LinkProperties;I)V
    .registers 21
    .param p1, "state"    # I
    .param p2, "networkType"    # I
    .param p3, "apnTypes"    # I
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "linkProperties"    # Landroid/net/LinkProperties;
    .param p6, "failCause"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    move-object/from16 v0, p4

    new-instance v1, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v1}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    .line 133
    move/from16 v2, p3

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 134
    invoke-virtual {v1, v0}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 135
    invoke-virtual {v1, v0}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting$Builder;->build()Landroid/telephony/data/ApnSetting;

    move-result-object v11

    .line 131
    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, p0

    move v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v3 .. v13}, Landroid/telephony/PreciseDataConnectionState;-><init>(IIIIILandroid/net/LinkProperties;ILandroid/telephony/data/ApnSetting;Landroid/telephony/data/Qos;I)V

    .line 137
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mTransportType:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mId:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetId:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    .line 183
    const-class v0, Landroid/net/LinkProperties;

    .line 184
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/LinkProperties;

    .line 183
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:I

    .line 187
    const-class v0, Landroid/telephony/data/ApnSetting;

    .line 188
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/ApnSetting;

    .line 187
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/ApnSetting;

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 190
    const-class v0, Landroid/telephony/data/Qos;

    .line 191
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/Qos;

    .line 190
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/Qos;

    iput-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkValidationStatus:I

    .line 194
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/PreciseDataConnectionState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/PreciseDataConnectionState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist networkValidationStatusToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "networkValidationStatus"    # I

    .line 447
    packed-switch p0, :pswitch_data_1c

    .line 453
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 452
    :pswitch_8
    const-string v0, "failure"

    return-object v0

    .line 451
    :pswitch_b
    const-string/jumbo v0, "success"

    return-object v0

    .line 450
    :pswitch_f
    const-string/jumbo v0, "in progress"

    return-object v0

    .line 449
    :pswitch_13
    const-string/jumbo v0, "not requested"

    return-object v0

    .line 448
    :pswitch_17
    const-string/jumbo v0, "unsupported"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 400
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 401
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_60

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_60

    .line 402
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/PreciseDataConnectionState;

    .line 403
    .local v2, "that":Landroid/telephony/PreciseDataConnectionState;
    iget v3, p0, Landroid/telephony/PreciseDataConnectionState;->mTransportType:I

    iget v4, v2, Landroid/telephony/PreciseDataConnectionState;->mTransportType:I

    if-ne v3, v4, :cond_5e

    iget v3, p0, Landroid/telephony/PreciseDataConnectionState;->mId:I

    iget v4, v2, Landroid/telephony/PreciseDataConnectionState;->mId:I

    if-ne v3, v4, :cond_5e

    iget v3, p0, Landroid/telephony/PreciseDataConnectionState;->mNetId:I

    iget v4, v2, Landroid/telephony/PreciseDataConnectionState;->mNetId:I

    if-ne v3, v4, :cond_5e

    iget v3, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    iget v4, v2, Landroid/telephony/PreciseDataConnectionState;->mState:I

    if-ne v3, v4, :cond_5e

    iget v3, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    iget v4, v2, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    if-ne v3, v4, :cond_5e

    iget v3, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:I

    iget v4, v2, Landroid/telephony/PreciseDataConnectionState;->mFailCause:I

    if-ne v3, v4, :cond_5e

    iget-object v3, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v4, v2, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    .line 409
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Landroid/telephony/PreciseDataConnectionState;->mApnSetting:Landroid/telephony/data/ApnSetting;

    iget-object v4, v2, Landroid/telephony/PreciseDataConnectionState;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 410
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Landroid/telephony/PreciseDataConnectionState;->mDefaultQos:Landroid/telephony/data/Qos;

    iget-object v4, v2, Landroid/telephony/PreciseDataConnectionState;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 411
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget v3, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkValidationStatus:I

    iget v4, v2, Landroid/telephony/PreciseDataConnectionState;->mNetworkValidationStatus:I

    if-ne v3, v4, :cond_5e

    goto :goto_5f

    :cond_5e
    move v0, v1

    .line 403
    :goto_5f
    return v0

    .line 401
    .end local v2    # "that":Landroid/telephony/PreciseDataConnectionState;
    :cond_60
    :goto_60
    return v1
.end method

.method public whitelist getApnSetting()Landroid/telephony/data/ApnSetting;
    .registers 2

    .line 334
    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method public whitelist getDataConnectionApn()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 293
    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    const-string v0, ""

    :goto_d
    return-object v0
.end method

.method public whitelist getDataConnectionApnTypeBitMask()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 280
    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist getDataConnectionFailCause()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 313
    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:I

    return v0
.end method

.method public whitelist getDataConnectionState()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 215
    const-wide/32 v0, 0x8da79b8

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_10

    .line 216
    const/4 v0, 0x2

    return v0

    .line 219
    :cond_10
    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    return v0
.end method

.method public blacklist getDefaultQos()Landroid/telephony/data/Qos;
    .registers 2

    .line 348
    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mDefaultQos:Landroid/telephony/data/Qos;

    return-object v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 239
    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mId:I

    return v0
.end method

.method public whitelist getLastCauseCode()I
    .registers 2

    .line 323
    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:I

    return v0
.end method

.method public whitelist getLinkProperties()Landroid/net/LinkProperties;
    .registers 2

    .line 301
    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method public blacklist getNetId()I
    .registers 2

    .line 247
    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetId:I

    return v0
.end method

.method public whitelist getNetworkType()I
    .registers 2

    .line 268
    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    return v0
.end method

.method public whitelist getNetworkValidationStatus()I
    .registers 2

    .line 357
    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkValidationStatus:I

    return v0
.end method

.method public whitelist getState()I
    .registers 2

    .line 254
    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    return v0
.end method

.method public whitelist getTransportType()I
    .registers 2

    .line 226
    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mTransportType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 12

    .line 393
    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mTransportType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v8, p0, Landroid/telephony/PreciseDataConnectionState;->mApnSetting:Landroid/telephony/data/ApnSetting;

    iget-object v9, p0, Landroid/telephony/PreciseDataConnectionState;->mDefaultQos:Landroid/telephony/data/Qos;

    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkValidationStatus:I

    .line 394
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 393
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    invoke-static {v2}, Lcom/android/internal/telephony/util/TelephonyUtils;->dataStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const-string v1, ", transport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/PreciseDataConnectionState;->mTransportType:I

    .line 422
    invoke-static {v2}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v2

    .line 421
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/PreciseDataConnectionState;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    const-string v1, ", netId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/PreciseDataConnectionState;->mNetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    const-string v1, ", network type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    const-string v1, ", APN Setting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 427
    const-string v1, ", link properties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 428
    const-string v1, ", default QoS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/PreciseDataConnectionState;->mDefaultQos:Landroid/telephony/data/Qos;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 429
    const-string v1, ", fail cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:I

    invoke-static {v2}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    const-string v1, ", network validation status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkValidationStatus:I

    .line 431
    invoke-static {v2}, Landroid/telephony/PreciseDataConnectionState;->networkValidationStatusToString(I)Ljava/lang/String;

    move-result-object v2

    .line 430
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 367
    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mTransportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 373
    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mFailCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 375
    iget-object v0, p0, Landroid/telephony/PreciseDataConnectionState;->mDefaultQos:Landroid/telephony/data/Qos;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 376
    iget v0, p0, Landroid/telephony/PreciseDataConnectionState;->mNetworkValidationStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    return-void
.end method
