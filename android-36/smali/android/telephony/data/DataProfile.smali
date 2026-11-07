.class public final Landroid/telephony/data/DataProfile;
.super Ljava/lang/Object;
.source "DataProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/DataProfile$Builder;,
        Landroid/telephony/data/DataProfile$Type;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TYPE_3GPP:I = 0x1

.field public static final whitelist TYPE_3GPP2:I = 0x2

.field public static final whitelist TYPE_COMMON:I


# instance fields
.field private final blacklist mApnSetting:Landroid/telephony/data/ApnSetting;

.field private blacklist mPreferred:Z

.field private blacklist mSetupTimestamp:J

.field private final blacklist mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

.field private final greylist-max-o mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 480
    new-instance v0, Landroid/telephony/data/DataProfile$1;

    invoke-direct {v0}, Landroid/telephony/data/DataProfile$1;-><init>()V

    sput-object v0, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    .line 110
    const-class v0, Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/ApnSetting;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/ApnSetting;

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 111
    const-class v0, Landroid/telephony/data/TrafficDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/TrafficDescriptor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/TrafficDescriptor;

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/DataProfile;->mSetupTimestamp:J

    .line 114
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/data/DataProfile-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/data/DataProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/data/DataProfile$Builder;)V
    .registers 8
    .param p1, "builder"    # Landroid/telephony/data/DataProfile$Builder;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p1}, Landroid/telephony/data/DataProfile$Builder;->-$$Nest$fgetmApnSetting(Landroid/telephony/data/DataProfile$Builder;)Landroid/telephony/data/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 84
    invoke-static {p1}, Landroid/telephony/data/DataProfile$Builder;->-$$Nest$fgetmTrafficDescriptor(Landroid/telephony/data/DataProfile$Builder;)Landroid/telephony/data/TrafficDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    .line 85
    invoke-static {p1}, Landroid/telephony/data/DataProfile$Builder;->-$$Nest$fgetmPreferred(Landroid/telephony/data/DataProfile$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    .line 87
    invoke-static {p1}, Landroid/telephony/data/DataProfile$Builder;->-$$Nest$fgetmType(Landroid/telephony/data/DataProfile$Builder;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    .line 88
    invoke-static {p1}, Landroid/telephony/data/DataProfile$Builder;->-$$Nest$fgetmType(Landroid/telephony/data/DataProfile$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    goto :goto_53

    .line 89
    :cond_23
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_51

    .line 90
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v0

    .line 92
    .local v0, "networkTypes":I
    if-nez v0, :cond_33

    .line 93
    iput v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    goto :goto_50

    .line 94
    :cond_33
    int-to-long v2, v0

    const-wide/16 v4, 0x2878

    and-long/2addr v2, v4

    int-to-long v4, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_40

    .line 96
    const/4 v1, 0x2

    iput v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    goto :goto_50

    .line 97
    :cond_40
    int-to-long v2, v0

    const-wide/32 v4, 0xdd387

    and-long/2addr v2, v4

    int-to-long v4, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_4e

    .line 99
    const/4 v1, 0x1

    iput v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    goto :goto_50

    .line 101
    :cond_4e
    iput v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    .line 103
    .end local v0    # "networkTypes":I
    :goto_50
    goto :goto_53

    .line 104
    :cond_51
    iput v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    .line 106
    :goto_53
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/data/DataProfile$Builder;Landroid/telephony/data/DataProfile-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/data/DataProfile;-><init>(Landroid/telephony/data/DataProfile$Builder;)V

    return-void
.end method

.method private static blacklist networkCapabilityToApnType(I)I
    .registers 2
    .param p0, "networkCapability"    # I

    .line 405
    sparse-switch p0, :sswitch_data_32

    .line 437
    const/4 v0, 0x0

    return v0

    .line 429
    :sswitch_5
    const/16 v0, 0x2000

    return v0

    .line 431
    :sswitch_8
    const/16 v0, 0x1000

    return v0

    .line 433
    :sswitch_b
    const/16 v0, 0x4000

    return v0

    .line 425
    :sswitch_e
    const/16 v0, 0x400

    return v0

    .line 423
    :sswitch_11
    const/16 v0, 0x11

    return v0

    .line 421
    :sswitch_14
    const/16 v0, 0x200

    return v0

    .line 419
    :sswitch_17
    const/16 v0, 0x800

    return v0

    .line 435
    :sswitch_1a
    const v0, 0x8000

    return v0

    .line 427
    :sswitch_1e
    const/16 v0, 0x100

    return v0

    .line 417
    :sswitch_21
    const/16 v0, 0x80

    return v0

    .line 415
    :sswitch_24
    const/16 v0, 0x40

    return v0

    .line 413
    :sswitch_27
    const/16 v0, 0x20

    return v0

    .line 411
    :sswitch_2a
    const/16 v0, 0x8

    return v0

    .line 409
    :sswitch_2d
    const/4 v0, 0x4

    return v0

    .line 407
    :sswitch_2f
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_32
    .sparse-switch
        0x0 -> :sswitch_2f
        0x1 -> :sswitch_2d
        0x2 -> :sswitch_2a
        0x3 -> :sswitch_27
        0x4 -> :sswitch_24
        0x5 -> :sswitch_21
        0x7 -> :sswitch_1e
        0x8 -> :sswitch_1a
        0x9 -> :sswitch_17
        0xa -> :sswitch_14
        0xc -> :sswitch_11
        0x17 -> :sswitch_e
        0x1d -> :sswitch_b
        0x1e -> :sswitch_8
        0x1f -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public blacklist canSatisfy(I)Z
    .registers 4
    .param p1, "networkCapability"    # I

    .line 393
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 394
    invoke-static {p1}, Landroid/telephony/data/DataProfile;->networkCapabilityToApnType(I)I

    move-result v1

    .line 393
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public blacklist canSatisfy([I)Z
    .registers 7
    .param p1, "networkCapabilities"    # [I

    .line 373
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 374
    array-length v0, p1

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_15

    aget v3, p1, v2

    .line 375
    .local v3, "netCap":I
    invoke-virtual {p0, v3}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result v4

    if-nez v4, :cond_12

    .line 376
    return v1

    .line 374
    .end local v3    # "netCap":I
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 379
    :cond_15
    const/4 v0, 0x1

    return v0

    .line 381
    :cond_17
    return v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 461
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 495
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 496
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_32

    .line 497
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/data/DataProfile;

    .line 498
    .local v2, "that":Landroid/telephony/data/DataProfile;
    iget v3, p0, Landroid/telephony/data/DataProfile;->mType:I

    iget v4, v2, Landroid/telephony/data/DataProfile;->mType:I

    if-ne v3, v4, :cond_30

    iget-object v3, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    iget-object v4, v2, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 499
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    iget-object v4, v2, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    .line 500
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    .line 498
    :goto_31
    return v0

    .line 496
    .end local v2    # "that":Landroid/telephony/data/DataProfile;
    :cond_32
    :goto_32
    return v1
.end method

.method public whitelist getApn()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_f

    .line 136
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 138
    :cond_f
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getApnSetting()Landroid/telephony/data/ApnSetting;
    .registers 2

    .line 352
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method public whitelist getAuthType()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_b

    .line 160
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v0

    return v0

    .line 162
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBearerBitmask()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 275
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_b

    .line 276
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v0

    return v0

    .line 278
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLastSetupTimestamp()J
    .registers 3

    .line 456
    iget-wide v0, p0, Landroid/telephony/data/DataProfile;->mSetupTimestamp:J

    return-wide v0
.end method

.method public blacklist getMaxConnections()I
    .registers 2

    .line 214
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_b

    .line 215
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMaxConns()I

    move-result v0

    return v0

    .line 217
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMaxConnectionsTime()I
    .registers 2

    .line 202
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_b

    .line 203
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMaxConnsTime()I

    move-result v0

    return v0

    .line 205
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMtu()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 288
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV4()I

    move-result v0

    return v0
.end method

.method public whitelist getMtuV4()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 298
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_b

    .line 299
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result v0

    return v0

    .line 301
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMtuV6()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 310
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_b

    .line 311
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMtuV6()I

    move-result v0

    return v0

    .line 313
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPassword()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_b

    .line 184
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 186
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getProfileId()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_b

    .line 123
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProfileId()I

    move-result v0

    return v0

    .line 125
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getProtocolType()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_b

    .line 148
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v0

    return v0

    .line 150
    :cond_b
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist getRoamingProtocolType()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_b

    .line 263
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v0

    return v0

    .line 265
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSupportedApnTypesBitmask()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 250
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_b

    .line 251
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v0

    return v0

    .line 253
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;
    .registers 2

    .line 360
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 193
    iget v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    return v0
.end method

.method public whitelist getUserName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_b

    .line 172
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 174
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getWaitTime()I
    .registers 2

    .line 228
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_b

    .line 229
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getWaitTime()I

    move-result v0

    return v0

    .line 231
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 505
    iget v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    iget-object v2, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 239
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_b

    .line 240
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->isEnabled()Z

    move-result v0

    return v0

    .line 242
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isPersistent()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 322
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_b

    .line 323
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->isPersistent()Z

    move-result v0

    return v0

    .line 325
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isPreferred()Z
    .registers 2

    .line 344
    iget-boolean v0, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    return v0
.end method

.method public blacklist setLastSetupTimestamp(J)V
    .registers 3
    .param p1, "timestamp"    # J

    .line 447
    iput-wide p1, p0, Landroid/telephony/data/DataProfile;->mSetupTimestamp:J

    .line 448
    return-void
.end method

.method public blacklist setPreferred(Z)V
    .registers 2
    .param p1, "preferred"    # Z

    .line 335
    iput-boolean p1, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    .line 336
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DataProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preferred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 473
    iget v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 475
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 476
    iget-boolean v0, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 477
    iget-wide v0, p0, Landroid/telephony/data/DataProfile;->mSetupTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 478
    return-void
.end method
