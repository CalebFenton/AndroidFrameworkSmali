.class public final Landroid/telephony/TelephonyDisplayInfo;
.super Ljava/lang/Object;
.source "TelephonyDisplayInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/TelephonyDisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist OVERRIDE_NETWORK_TYPE_LTE_ADVANCED_PRO:I = 0x2

.field public static final whitelist OVERRIDE_NETWORK_TYPE_LTE_CA:I = 0x1

.field public static final whitelist OVERRIDE_NETWORK_TYPE_NONE:I = 0x0

.field public static final whitelist OVERRIDE_NETWORK_TYPE_NR_ADVANCED:I = 0x5

.field public static final whitelist OVERRIDE_NETWORK_TYPE_NR_NSA:I = 0x3

.field public static final whitelist OVERRIDE_NETWORK_TYPE_NR_NSA_MMWAVE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final blacklist mIsNtn:Z

.field private final blacklist mIsRoaming:Z

.field private final blacklist mIsSatelliteConstrainedData:Z

.field private final blacklist mNetworkType:I

.field private final blacklist mOverrideNetworkType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 234
    new-instance v0, Landroid/telephony/TelephonyDisplayInfo$1;

    invoke-direct {v0}, Landroid/telephony/TelephonyDisplayInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyDisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 9
    .param p1, "networkType"    # I
    .param p2, "overrideNetworkType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .end local p1    # "networkType":I
    .end local p2    # "overrideNetworkType":I
    .local v1, "networkType":I
    .local v2, "overrideNetworkType":I
    invoke-direct/range {v0 .. v5}, Landroid/telephony/TelephonyDisplayInfo;-><init>(IIZZZ)V

    .line 114
    return-void
.end method

.method public constructor blacklist <init>(IIZ)V
    .registers 5
    .param p1, "networkType"    # I
    .param p2, "overrideNetworkType"    # I
    .param p3, "isRoaming"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p1, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    .line 130
    iput p2, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    .line 131
    iput-boolean p3, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsNtn:Z

    .line 133
    iput-boolean v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsSatelliteConstrainedData:Z

    .line 134
    return-void
.end method

.method public constructor blacklist <init>(IIZZZ)V
    .registers 6
    .param p1, "networkType"    # I
    .param p2, "overrideNetworkType"    # I
    .param p3, "isRoaming"    # Z
    .param p4, "isNtn"    # Z
    .param p5, "isSatelliteConstrainedData"    # Z

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput p1, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    .line 152
    iput p2, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    .line 153
    iput-boolean p3, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    .line 154
    iput-boolean p4, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsNtn:Z

    .line 155
    iput-boolean p5, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsSatelliteConstrainedData:Z

    .line 156
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsNtn:Z

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsSatelliteConstrainedData:Z

    .line 165
    return-void
.end method

.method public static blacklist overrideNetworkTypeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 278
    packed-switch p0, :pswitch_data_18

    .line 285
    const-string v0, "UNKNOWN"

    return-object v0

    .line 284
    :pswitch_6
    const-string v0, "NR_ADVANCED"

    return-object v0

    .line 283
    :pswitch_9
    const-string v0, "NR_NSA_MMWAVE"

    return-object v0

    .line 282
    :pswitch_c
    const-string v0, "NR_NSA"

    return-object v0

    .line 281
    :pswitch_f
    const-string v0, "LTE_ADV_PRO"

    return-object v0

    .line 280
    :pswitch_12
    const-string v0, "LTE_CA"

    return-object v0

    .line 279
    :pswitch_15
    const-string v0, "NONE"

    return-object v0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 254
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 255
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_36

    .line 256
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/TelephonyDisplayInfo;

    .line 257
    .local v2, "that":Landroid/telephony/TelephonyDisplayInfo;
    iget v3, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    iget v4, v2, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    if-ne v3, v4, :cond_34

    iget v3, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    iget v4, v2, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    if-ne v3, v4, :cond_34

    iget-boolean v3, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    iget-boolean v4, v2, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    if-ne v3, v4, :cond_34

    iget-boolean v3, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsNtn:Z

    iget-boolean v4, v2, Landroid/telephony/TelephonyDisplayInfo;->mIsNtn:Z

    if-ne v3, v4, :cond_34

    iget-boolean v3, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsSatelliteConstrainedData:Z

    iget-boolean v4, v2, Landroid/telephony/TelephonyDisplayInfo;->mIsSatelliteConstrainedData:Z

    if-ne v3, v4, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    :goto_35
    return v0

    .line 255
    .end local v2    # "that":Landroid/telephony/TelephonyDisplayInfo;
    :cond_36
    :goto_36
    return v1
.end method

.method public whitelist getNetworkType()I
    .registers 2

    .line 175
    iget v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    return v0
.end method

.method public whitelist getOverrideNetworkType()I
    .registers 2

    .line 187
    iget v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 266
    iget v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsNtn:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsSatelliteConstrainedData:Z

    .line 267
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 266
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isNtn()Z
    .registers 2

    .line 222
    iget-boolean v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsNtn:Z

    return v0
.end method

.method public whitelist isRoaming()Z
    .registers 2

    .line 201
    iget-boolean v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    return v0
.end method

.method public blacklist isSatelliteConstrainedData()Z
    .registers 2

    .line 212
    iget-boolean v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsSatelliteConstrainedData:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonyDisplayInfo {network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", overrideNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    .line 292
    invoke-static {v1}, Landroid/telephony/TelephonyDisplayInfo;->overrideNetworkTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isNtn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsNtn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSatelliteConstrainedData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsSatelliteConstrainedData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 227
    iget v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-boolean v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 230
    iget-boolean v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsNtn:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 231
    iget-boolean v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsSatelliteConstrainedData:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 232
    return-void
.end method
