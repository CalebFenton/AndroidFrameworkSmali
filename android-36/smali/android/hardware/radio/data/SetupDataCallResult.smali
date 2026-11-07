.class public Landroid/hardware/radio/data/SetupDataCallResult;
.super Ljava/lang/Object;
.source "SetupDataCallResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/data/SetupDataCallResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DATA_CONNECTION_STATUS_ACTIVE:I = 0x2

.field public static final blacklist DATA_CONNECTION_STATUS_DORMANT:I = 0x1

.field public static final blacklist DATA_CONNECTION_STATUS_INACTIVE:I = 0x0

.field public static final blacklist HANDOVER_FAILURE_MODE_DO_FALLBACK:B = 0x1t

.field public static final blacklist HANDOVER_FAILURE_MODE_LEGACY:B = 0x0t

.field public static final blacklist HANDOVER_FAILURE_MODE_NO_FALLBACK_RETRY_HANDOVER:B = 0x2t

.field public static final blacklist HANDOVER_FAILURE_MODE_NO_FALLBACK_RETRY_SETUP_NORMAL:B = 0x3t


# instance fields
.field public blacklist active:I

.field public blacklist addresses:[Landroid/hardware/radio/data/LinkAddress;

.field public blacklist cause:I

.field public blacklist cid:I

.field public blacklist defaultQos:Landroid/hardware/radio/data/Qos;

.field public blacklist dnses:[Ljava/lang/String;

.field public blacklist gateways:[Ljava/lang/String;

.field public blacklist handoverFailureMode:B

.field public blacklist ifname:Ljava/lang/String;

.field public blacklist mtuV4:I

.field public blacklist mtuV6:I

.field public blacklist pcscf:[Ljava/lang/String;

.field public blacklist pduSessionId:I

.field public blacklist qosSessions:[Landroid/hardware/radio/data/QosSession;

.field public blacklist sliceInfo:Landroid/hardware/radio/data/SliceInfo;

.field public blacklist suggestedRetryTime:J

.field public blacklist trafficDescriptors:[Landroid/hardware/radio/data/TrafficDescriptor;

.field public blacklist type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 91
    new-instance v0, Landroid/hardware/radio/data/SetupDataCallResult$1;

    invoke-direct {v0}, Landroid/hardware/radio/data/SetupDataCallResult$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/data/SetupDataCallResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/data/SetupDataCallResult;->cause:I

    .line 23
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/radio/data/SetupDataCallResult;->suggestedRetryTime:J

    .line 25
    iput v0, p0, Landroid/hardware/radio/data/SetupDataCallResult;->cid:I

    .line 30
    iput v0, p0, Landroid/hardware/radio/data/SetupDataCallResult;->active:I

    .line 35
    iput v0, p0, Landroid/hardware/radio/data/SetupDataCallResult;->type:I

    .line 59
    iput v0, p0, Landroid/hardware/radio/data/SetupDataCallResult;->mtuV4:I

    .line 64
    iput v0, p0, Landroid/hardware/radio/data/SetupDataCallResult;->mtuV6:I

    .line 76
    iput-byte v0, p0, Landroid/hardware/radio/data/SetupDataCallResult;->handoverFailureMode:B

    .line 81
    iput v0, p0, Landroid/hardware/radio/data/SetupDataCallResult;->pduSessionId:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 236
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 237
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 240
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/hardware/radio/data/SetupDataCallResult;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 239
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 242
    :cond_19
    return v1

    .line 244
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 245
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 247
    :cond_26
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/radio/data/SetupDataCallResult;->addresses:[Landroid/hardware/radio/data/LinkAddress;

    invoke-direct {p0, v1}, Landroid/hardware/radio/data/SetupDataCallResult;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 229
    iget-object v1, p0, Landroid/hardware/radio/data/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/data/Qos;

    invoke-direct {p0, v1}, Landroid/hardware/radio/data/SetupDataCallResult;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 230
    iget-object v1, p0, Landroid/hardware/radio/data/SetupDataCallResult;->qosSessions:[Landroid/hardware/radio/data/QosSession;

    invoke-direct {p0, v1}, Landroid/hardware/radio/data/SetupDataCallResult;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 231
    iget-object v1, p0, Landroid/hardware/radio/data/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/data/SliceInfo;

    invoke-direct {p0, v1}, Landroid/hardware/radio/data/SetupDataCallResult;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 232
    iget-object v1, p0, Landroid/hardware/radio/data/SetupDataCallResult;->trafficDescriptors:[Landroid/hardware/radio/data/TrafficDescriptor;

    invoke-direct {p0, v1}, Landroid/hardware/radio/data/SetupDataCallResult;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 233
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 133
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 135
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_22e

    .line 136
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_22c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 173
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 176
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 136
    return-void

    .line 174
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->cause:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_22c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 173
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 176
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 138
    return-void

    .line 174
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/radio/data/SetupDataCallResult;->suggestedRetryTime:J

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_22c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 173
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 176
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 140
    return-void

    .line 174
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->cid:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_22c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 173
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 176
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 142
    return-void

    .line 174
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->active:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_22c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 173
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 176
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 144
    return-void

    .line 174
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->type:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_22c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 173
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 176
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 146
    return-void

    .line 174
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_22c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 173
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 176
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 148
    return-void

    .line 174
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    :cond_ce
    :try_start_ce
    sget-object v2, Landroid/hardware/radio/data/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/data/LinkAddress;

    iput-object v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->addresses:[Landroid/hardware/radio/data/LinkAddress;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_dc
    .catchall {:try_start_ce .. :try_end_dc} :catchall_22c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ee

    .line 173
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e8

    .line 176
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 150
    return-void

    .line 174
    :cond_e8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    :cond_ee
    :try_start_ee
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->dnses:[Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f8
    .catchall {:try_start_ee .. :try_end_f8} :catchall_22c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_10a

    .line 173
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_104

    .line 176
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 152
    return-void

    .line 174
    :cond_104
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :cond_10a
    :try_start_10a
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->gateways:[Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_114
    .catchall {:try_start_10a .. :try_end_114} :catchall_22c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_126

    .line 173
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_120

    .line 176
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 154
    return-void

    .line 174
    :cond_120
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_126
    :try_start_126
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->pcscf:[Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_130
    .catchall {:try_start_126 .. :try_end_130} :catchall_22c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_142

    .line 173
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_13c

    .line 176
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 156
    return-void

    .line 174
    :cond_13c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :cond_142
    :try_start_142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->mtuV4:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14c
    .catchall {:try_start_142 .. :try_end_14c} :catchall_22c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15e

    .line 173
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_158

    .line 176
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 158
    return-void

    .line 174
    :cond_158
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_15e
    :try_start_15e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->mtuV6:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_168
    .catchall {:try_start_15e .. :try_end_168} :catchall_22c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_17a

    .line 173
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_174

    .line 176
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 160
    return-void

    .line 174
    :cond_174
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_17a
    :try_start_17a
    sget-object v2, Landroid/hardware/radio/data/Qos;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/data/Qos;

    iput-object v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/data/Qos;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_188
    .catchall {:try_start_17a .. :try_end_188} :catchall_22c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_19a

    .line 173
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_194

    .line 176
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 162
    return-void

    .line 174
    :cond_194
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    :cond_19a
    :try_start_19a
    sget-object v2, Landroid/hardware/radio/data/QosSession;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/data/QosSession;

    iput-object v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->qosSessions:[Landroid/hardware/radio/data/QosSession;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1a8
    .catchall {:try_start_19a .. :try_end_1a8} :catchall_22c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1ba

    .line 173
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1b4

    .line 176
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 164
    return-void

    .line 174
    :cond_1b4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    :cond_1ba
    :try_start_1ba
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->handoverFailureMode:B

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1c4
    .catchall {:try_start_1ba .. :try_end_1c4} :catchall_22c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1d6

    .line 173
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1d0

    .line 176
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 166
    return-void

    .line 174
    :cond_1d0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_1d6
    :try_start_1d6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->pduSessionId:I

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1e0
    .catchall {:try_start_1d6 .. :try_end_1e0} :catchall_22c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1f2

    .line 173
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1ec

    .line 176
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 168
    return-void

    .line 174
    :cond_1ec
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    :cond_1f2
    :try_start_1f2
    sget-object v2, Landroid/hardware/radio/data/SliceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/data/SliceInfo;

    iput-object v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/data/SliceInfo;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_200
    .catchall {:try_start_1f2 .. :try_end_200} :catchall_22c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_212

    .line 173
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20c

    .line 176
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 170
    return-void

    .line 174
    :cond_20c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    :cond_212
    :try_start_212
    sget-object v2, Landroid/hardware/radio/data/TrafficDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/data/TrafficDescriptor;

    iput-object v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->trafficDescriptors:[Landroid/hardware/radio/data/TrafficDescriptor;
    :try_end_21c
    .catchall {:try_start_212 .. :try_end_21c} :catchall_22c

    .line 173
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_226

    .line 176
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 177
    nop

    .line 178
    return-void

    .line 174
    :cond_226
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :catchall_22c
    move-exception v2

    goto :goto_236

    .line 135
    :cond_22e
    :try_start_22e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/radio/data/SetupDataCallResult;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_236
    .catchall {:try_start_22e .. :try_end_236} :catchall_22c

    .line 173
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/radio/data/SetupDataCallResult;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_236
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_23f

    .line 174
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    :cond_23f
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 177
    throw v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 204
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "{"

    const-string v2, "}"

    const-string v3, ", "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 205
    .local v0, "_aidl_sj":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->cause:I

    invoke-static {v2}, Landroid/hardware/radio/data/DataCallFailCause$$;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "suggestedRetryTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->suggestedRetryTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->cid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->active:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->type:I

    invoke-static {v2}, Landroid/hardware/radio/data/PdpProtocolType$$;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ifname: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->ifname:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->addresses:[Landroid/hardware/radio/data/LinkAddress;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dnses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->dnses:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gateways: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->gateways:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pcscf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->pcscf:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mtuV4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->mtuV4:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mtuV6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->mtuV6:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultQos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/data/Qos;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qosSessions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->qosSessions:[Landroid/hardware/radio/data/QosSession;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handoverFailureMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->handoverFailureMode:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pduSessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->pduSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sliceInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/data/SliceInfo;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trafficDescriptors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->trafficDescriptors:[Landroid/hardware/radio/data/TrafficDescriptor;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetupDataCallResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 106
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v1, p0, Landroid/hardware/radio/data/SetupDataCallResult;->cause:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-wide v1, p0, Landroid/hardware/radio/data/SetupDataCallResult;->suggestedRetryTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    iget v1, p0, Landroid/hardware/radio/data/SetupDataCallResult;->cid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v1, p0, Landroid/hardware/radio/data/SetupDataCallResult;->active:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v1, p0, Landroid/hardware/radio/data/SetupDataCallResult;->type:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v1, p0, Landroid/hardware/radio/data/SetupDataCallResult;->ifname:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Landroid/hardware/radio/data/SetupDataCallResult;->addresses:[Landroid/hardware/radio/data/LinkAddress;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 114
    iget-object v1, p0, Landroid/hardware/radio/data/SetupDataCallResult;->dnses:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Landroid/hardware/radio/data/SetupDataCallResult;->gateways:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Landroid/hardware/radio/data/SetupDataCallResult;->pcscf:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 117
    iget v1, p0, Landroid/hardware/radio/data/SetupDataCallResult;->mtuV4:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v1, p0, Landroid/hardware/radio/data/SetupDataCallResult;->mtuV6:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v1, p0, Landroid/hardware/radio/data/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/data/Qos;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 120
    iget-object v1, p0, Landroid/hardware/radio/data/SetupDataCallResult;->qosSessions:[Landroid/hardware/radio/data/QosSession;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 121
    iget-byte v1, p0, Landroid/hardware/radio/data/SetupDataCallResult;->handoverFailureMode:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 122
    iget v1, p0, Landroid/hardware/radio/data/SetupDataCallResult;->pduSessionId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v1, p0, Landroid/hardware/radio/data/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/data/SliceInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 124
    iget-object v1, p0, Landroid/hardware/radio/data/SetupDataCallResult;->trafficDescriptors:[Landroid/hardware/radio/data/TrafficDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 126
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 127
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 129
    return-void
.end method
