.class public final Landroid/telephony/NetworkRegistrationInfo;
.super Ljava/lang/Object;
.source "NetworkRegistrationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/NetworkRegistrationInfo$Builder;,
        Landroid/telephony/NetworkRegistrationInfo$ServiceType;,
        Landroid/telephony/NetworkRegistrationInfo$NRState;,
        Landroid/telephony/NetworkRegistrationInfo$RegistrationState;,
        Landroid/telephony/NetworkRegistrationInfo$Domain;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/NetworkRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DOMAIN_CS:I = 0x1

.field public static final whitelist DOMAIN_CS_PS:I = 0x3

.field public static final whitelist DOMAIN_PS:I = 0x2

.field public static final whitelist DOMAIN_UNKNOWN:I = 0x0

.field public static final blacklist FIRST_SERVICE_TYPE:I = 0x1

.field public static final blacklist LAST_SERVICE_TYPE:I = 0x6

.field public static final whitelist NR_STATE_CONNECTED:I = 0x3

.field public static final whitelist NR_STATE_NONE:I = 0x0

.field public static final whitelist NR_STATE_NOT_RESTRICTED:I = 0x2

.field public static final whitelist NR_STATE_RESTRICTED:I = 0x1

.field public static final whitelist REGISTRATION_STATE_DENIED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REGISTRATION_STATE_EMERGENCY:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REGISTRATION_STATE_HOME:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REGISTRATION_STATE_NOT_REGISTERED_OR_SEARCHING:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REGISTRATION_STATE_NOT_REGISTERED_SEARCHING:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REGISTRATION_STATE_ROAMING:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REGISTRATION_STATE_UNKNOWN:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist RETURN_REGISTRATION_STATE_EMERGENCY:J = 0xf414fa2L

.field public static final whitelist SERVICE_TYPE_DATA:I = 0x2

.field public static final whitelist SERVICE_TYPE_EMERGENCY:I = 0x5

.field public static final whitelist SERVICE_TYPE_MMS:I = 0x6

.field public static final whitelist SERVICE_TYPE_SMS:I = 0x3

.field public static final whitelist SERVICE_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist SERVICE_TYPE_VIDEO:I = 0x4

.field public static final whitelist SERVICE_TYPE_VOICE:I = 0x1


# instance fields
.field private blacklist mAccessNetworkTechnology:I

.field private blacklist mAvailableServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCellIdentity:Landroid/telephony/CellIdentity;

.field private blacklist mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

.field private final blacklist mDomain:I

.field private final blacklist mEmergencyOnly:Z

.field private blacklist mIsNonTerrestrialNetwork:Z

.field private blacklist mIsUsingCarrierAggregation:Z

.field private final blacklist mNetworkRegistrationState:I

.field private blacklist mNrState:I

.field private blacklist mRegistrationState:I

.field private final blacklist mRejectCause:I

.field private blacklist mRoamingType:I

.field private blacklist mRplmn:Ljava/lang/String;

.field private final blacklist mTransportType:I

.field private blacklist mVoiceSpecificInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAccessNetworkTechnology(Landroid/telephony/NetworkRegistrationInfo;)I
    .registers 1

    iget p0, p0, Landroid/telephony/NetworkRegistrationInfo;->mAccessNetworkTechnology:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAvailableServices(Landroid/telephony/NetworkRegistrationInfo;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/telephony/NetworkRegistrationInfo;->mAvailableServices:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCellIdentity(Landroid/telephony/NetworkRegistrationInfo;)Landroid/telephony/CellIdentity;
    .registers 1

    iget-object p0, p0, Landroid/telephony/NetworkRegistrationInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataSpecificInfo(Landroid/telephony/NetworkRegistrationInfo;)Landroid/telephony/DataSpecificRegistrationInfo;
    .registers 1

    iget-object p0, p0, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDomain(Landroid/telephony/NetworkRegistrationInfo;)I
    .registers 1

    iget p0, p0, Landroid/telephony/NetworkRegistrationInfo;->mDomain:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEmergencyOnly(Landroid/telephony/NetworkRegistrationInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/NetworkRegistrationInfo;->mEmergencyOnly:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsNonTerrestrialNetwork(Landroid/telephony/NetworkRegistrationInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsNonTerrestrialNetwork:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkRegistrationState(Landroid/telephony/NetworkRegistrationInfo;)I
    .registers 1

    iget p0, p0, Landroid/telephony/NetworkRegistrationInfo;->mNetworkRegistrationState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRejectCause(Landroid/telephony/NetworkRegistrationInfo;)I
    .registers 1

    iget p0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRejectCause:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransportType(Landroid/telephony/NetworkRegistrationInfo;)I
    .registers 1

    iget p0, p0, Landroid/telephony/NetworkRegistrationInfo;->mTransportType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVoiceSpecificInfo(Landroid/telephony/NetworkRegistrationInfo;)Landroid/telephony/VoiceSpecificRegistrationInfo;
    .registers 1

    iget-object p0, p0, Landroid/telephony/NetworkRegistrationInfo;->mVoiceSpecificInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 936
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo$1;

    invoke-direct {v0}, Landroid/telephony/NetworkRegistrationInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/NetworkRegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;IZZZLandroid/telephony/VopsSupportInfo;)V
    .registers 34
    .param p1, "domain"    # I
    .param p2, "transportType"    # I
    .param p3, "registrationState"    # I
    .param p4, "accessNetworkTechnology"    # I
    .param p5, "rejectCause"    # I
    .param p6, "emergencyOnly"    # Z
    .param p8, "cellIdentity"    # Landroid/telephony/CellIdentity;
    .param p9, "rplmn"    # Ljava/lang/String;
    .param p10, "maxDataCalls"    # I
    .param p11, "isDcNrRestricted"    # Z
    .param p12, "isNrAvailable"    # Z
    .param p13, "isEndcAvailable"    # Z
    .param p14, "vopsSupportInfo"    # Landroid/telephony/VopsSupportInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/telephony/CellIdentity;",
            "Ljava/lang/String;",
            "IZZZ",
            "Landroid/telephony/VopsSupportInfo;",
            ")V"
        }
    .end annotation

    .line 360
    .local p7, "availableServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/telephony/DataSpecificRegistrationInfo$Builder;

    move/from16 v1, p10

    invoke-direct {v0, v1}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;-><init>(I)V

    .line 363
    move/from16 v2, p11

    invoke-virtual {v0, v2}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->setDcNrRestricted(Z)Landroid/telephony/DataSpecificRegistrationInfo$Builder;

    move-result-object v0

    .line 364
    move/from16 v3, p12

    invoke-virtual {v0, v3}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->setNrAvailable(Z)Landroid/telephony/DataSpecificRegistrationInfo$Builder;

    move-result-object v0

    .line 365
    move/from16 v4, p13

    invoke-virtual {v0, v4}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->setEnDcAvailable(Z)Landroid/telephony/DataSpecificRegistrationInfo$Builder;

    move-result-object v0

    .line 366
    move-object/from16 v5, p14

    invoke-virtual {v0, v5}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->setVopsSupportInfo(Landroid/telephony/VopsSupportInfo;)Landroid/telephony/DataSpecificRegistrationInfo$Builder;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->build()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v17

    .line 360
    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    invoke-direct/range {v6 .. v18}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;Landroid/telephony/VoiceSpecificRegistrationInfo;Landroid/telephony/DataSpecificRegistrationInfo;Z)V

    .line 368
    return-void
.end method

.method private constructor blacklist <init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;Landroid/telephony/VoiceSpecificRegistrationInfo;Landroid/telephony/DataSpecificRegistrationInfo;Z)V
    .registers 15
    .param p1, "domain"    # I
    .param p2, "transportType"    # I
    .param p3, "registrationState"    # I
    .param p4, "accessNetworkTechnology"    # I
    .param p5, "rejectCause"    # I
    .param p6, "emergencyOnly"    # Z
    .param p8, "cellIdentity"    # Landroid/telephony/CellIdentity;
    .param p9, "rplmn"    # Ljava/lang/String;
    .param p10, "voiceSpecificInfo"    # Landroid/telephony/VoiceSpecificRegistrationInfo;
    .param p11, "dataSpecificInfo"    # Landroid/telephony/DataSpecificRegistrationInfo;
    .param p12, "isNonTerrestrialNetwork"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/telephony/CellIdentity;",
            "Ljava/lang/String;",
            "Landroid/telephony/VoiceSpecificRegistrationInfo;",
            "Landroid/telephony/DataSpecificRegistrationInfo;",
            "Z)V"
        }
    .end annotation

    .line 309
    .local p7, "availableServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput p1, p0, Landroid/telephony/NetworkRegistrationInfo;->mDomain:I

    .line 311
    iput p2, p0, Landroid/telephony/NetworkRegistrationInfo;->mTransportType:I

    .line 312
    iput p3, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    .line 313
    iput p3, p0, Landroid/telephony/NetworkRegistrationInfo;->mNetworkRegistrationState:I

    .line 314
    const/4 v0, 0x5

    const/4 v1, 0x0

    if-ne p3, v0, :cond_11

    .line 315
    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRoamingType:I

    .line 316
    invoke-virtual {p0, p4}, Landroid/telephony/NetworkRegistrationInfo;->setAccessNetworkTechnology(I)V

    .line 317
    iput p5, p0, Landroid/telephony/NetworkRegistrationInfo;->mRejectCause:I

    .line 318
    if-eqz p7, :cond_21

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_26

    :cond_21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_26
    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mAvailableServices:Ljava/util/ArrayList;

    .line 320
    iput-object p8, p0, Landroid/telephony/NetworkRegistrationInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 321
    iput-boolean p6, p0, Landroid/telephony/NetworkRegistrationInfo;->mEmergencyOnly:Z

    .line 322
    iput v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    .line 323
    iput-object p9, p0, Landroid/telephony/NetworkRegistrationInfo;->mRplmn:Ljava/lang/String;

    .line 324
    iput-object p10, p0, Landroid/telephony/NetworkRegistrationInfo;->mVoiceSpecificInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    .line 325
    iput-object p11, p0, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    .line 326
    iput-boolean p12, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsNonTerrestrialNetwork:Z

    .line 328
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->updateNrState()V

    .line 329
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;Landroid/telephony/VoiceSpecificRegistrationInfo;Landroid/telephony/DataSpecificRegistrationInfo;ZLandroid/telephony/NetworkRegistrationInfo-IA;)V
    .registers 14

    invoke-direct/range {p0 .. p12}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;Landroid/telephony/VoiceSpecificRegistrationInfo;Landroid/telephony/DataSpecificRegistrationInfo;Z)V

    return-void
.end method

.method public constructor blacklist <init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;ZIII)V
    .registers 30
    .param p1, "domain"    # I
    .param p2, "transportType"    # I
    .param p3, "registrationState"    # I
    .param p4, "accessNetworkTechnology"    # I
    .param p5, "rejectCause"    # I
    .param p6, "emergencyOnly"    # Z
    .param p8, "cellIdentity"    # Landroid/telephony/CellIdentity;
    .param p9, "rplmn"    # Ljava/lang/String;
    .param p10, "cssSupported"    # Z
    .param p11, "roamingIndicator"    # I
    .param p12, "systemIsInPrl"    # I
    .param p13, "defaultRoamingIndicator"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/telephony/CellIdentity;",
            "Ljava/lang/String;",
            "ZIII)V"
        }
    .end annotation

    .line 342
    .local p7, "availableServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v10, Landroid/telephony/VoiceSpecificRegistrationInfo;

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v0, p13

    invoke-direct {v10, v13, v14, v15, v0}, Landroid/telephony/VoiceSpecificRegistrationInfo;-><init>(ZIII)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v12}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;Landroid/telephony/VoiceSpecificRegistrationInfo;Landroid/telephony/DataSpecificRegistrationInfo;Z)V

    .line 346
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mDomain:I

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mTransportType:I

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mNetworkRegistrationState:I

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRoamingType:I

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mAccessNetworkTechnology:I

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRejectCause:I

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mEmergencyOnly:Z

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mAvailableServices:Ljava/util/ArrayList;

    .line 380
    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mAvailableServices:Ljava/util/ArrayList;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 381
    const-class v0, Landroid/telephony/CellIdentity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/CellIdentity;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentity;

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 382
    const-class v0, Landroid/telephony/VoiceSpecificRegistrationInfo;

    .line 383
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/VoiceSpecificRegistrationInfo;

    .line 382
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/VoiceSpecificRegistrationInfo;

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mVoiceSpecificInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    .line 384
    const-class v0, Landroid/telephony/DataSpecificRegistrationInfo;

    .line 385
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/DataSpecificRegistrationInfo;

    .line 384
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/DataSpecificRegistrationInfo;

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRplmn:Ljava/lang/String;

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsUsingCarrierAggregation:Z

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsNonTerrestrialNetwork:Z

    .line 390
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/NetworkRegistrationInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/NetworkRegistrationInfo;)V
    .registers 5
    .param p1, "nri"    # Landroid/telephony/NetworkRegistrationInfo;

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iget v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mDomain:I

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mDomain:I

    .line 400
    iget v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mTransportType:I

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mTransportType:I

    .line 401
    iget v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    .line 402
    iget v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mNetworkRegistrationState:I

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mNetworkRegistrationState:I

    .line 403
    iget v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mRoamingType:I

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRoamingType:I

    .line 404
    iget v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mAccessNetworkTechnology:I

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mAccessNetworkTechnology:I

    .line 405
    iget-boolean v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mIsUsingCarrierAggregation:Z

    iput-boolean v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsUsingCarrierAggregation:Z

    .line 406
    iget-boolean v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mIsNonTerrestrialNetwork:Z

    iput-boolean v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsNonTerrestrialNetwork:Z

    .line 407
    iget v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mRejectCause:I

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRejectCause:I

    .line 408
    iget-boolean v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mEmergencyOnly:Z

    iput-boolean v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mEmergencyOnly:Z

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/telephony/NetworkRegistrationInfo;->mAvailableServices:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mAvailableServices:Ljava/util/ArrayList;

    .line 410
    iget-object v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    if-eqz v0, :cond_52

    .line 411
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 412
    .local v0, "p":Landroid/os/Parcel;
    iget-object v1, p1, Landroid/telephony/NetworkRegistrationInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/telephony/CellIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 413
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 416
    sget-object v1, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellIdentity;

    iput-object v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 420
    .end local v0    # "p":Landroid/os/Parcel;
    :cond_52
    iget-object v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mVoiceSpecificInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    if-eqz v0, :cond_5f

    .line 421
    new-instance v0, Landroid/telephony/VoiceSpecificRegistrationInfo;

    iget-object v1, p1, Landroid/telephony/NetworkRegistrationInfo;->mVoiceSpecificInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    invoke-direct {v0, v1}, Landroid/telephony/VoiceSpecificRegistrationInfo;-><init>(Landroid/telephony/VoiceSpecificRegistrationInfo;)V

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mVoiceSpecificInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    .line 423
    :cond_5f
    iget-object v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    if-eqz v0, :cond_6c

    .line 424
    new-instance v0, Landroid/telephony/DataSpecificRegistrationInfo;

    iget-object v1, p1, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    invoke-direct {v0, v1}, Landroid/telephony/DataSpecificRegistrationInfo;-><init>(Landroid/telephony/DataSpecificRegistrationInfo;)V

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    .line 426
    :cond_6c
    iget v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    .line 427
    iget-object v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mRplmn:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRplmn:Ljava/lang/String;

    .line 428
    return-void
.end method

.method private blacklist copy()Landroid/telephony/NetworkRegistrationInfo;
    .registers 3

    .line 959
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 960
    .local v0, "p":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/NetworkRegistrationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 961
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 962
    new-instance v1, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v1, v0}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/os/Parcel;)V

    .line 963
    .local v1, "result":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 964
    return-object v1
.end method

.method static blacklist domainToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "domain"    # I

    .line 799
    packed-switch p0, :pswitch_data_10

    .line 803
    const-string v0, "UNKNOWN"

    return-object v0

    .line 802
    :pswitch_6
    const-string v0, "CS_PS"

    return-object v0

    .line 801
    :pswitch_9
    const-string v0, "PS"

    return-object v0

    .line 800
    :pswitch_c
    const-string v0, "CS"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist isNonTerrestrialNetworkToString(Z)Ljava/lang/String;
    .registers 2
    .param p0, "isNonTerrestrialNetwork"    # Z

    .line 816
    if-eqz p0, :cond_5

    const-string v0, "NON-TERRESTRIAL"

    goto :goto_7

    :cond_5
    const-string v0, "TERRESTRIAL"

    :goto_7
    return-object v0
.end method

.method static synthetic blacklist lambda$toString$0(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # Ljava/lang/Integer;

    .line 835
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/NetworkRegistrationInfo;->serviceTypeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist nrStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "nrState"    # I

    .line 785
    packed-switch p0, :pswitch_data_10

    .line 793
    const-string v0, "NONE"

    return-object v0

    .line 791
    :pswitch_6
    const-string v0, "CONNECTED"

    return-object v0

    .line 789
    :pswitch_9
    const-string v0, "NOT_RESTRICTED"

    return-object v0

    .line 787
    :pswitch_c
    const-string v0, "RESTRICTED"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist registrationStateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "registrationState"    # I

    .line 771
    packed-switch p0, :pswitch_data_2c

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown reg state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 778
    :pswitch_17
    const-string v0, "EMERGENCY"

    return-object v0

    .line 777
    :pswitch_1a
    const-string v0, "ROAMING"

    return-object v0

    .line 776
    :pswitch_1d
    const-string v0, "UNKNOWN"

    return-object v0

    .line 775
    :pswitch_20
    const-string v0, "DENIED"

    return-object v0

    .line 774
    :pswitch_23
    const-string v0, "NOT_REG_SEARCHING"

    return-object v0

    .line 773
    :pswitch_26
    const-string v0, "HOME"

    return-object v0

    .line 772
    :pswitch_29
    const-string v0, "NOT_REG_OR_SEARCHING"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method public static blacklist serviceTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "serviceType"    # I

    .line 751
    packed-switch p0, :pswitch_data_2a

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown service type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 757
    :pswitch_17
    const-string v0, "MMS"

    return-object v0

    .line 756
    :pswitch_1a
    const-string v0, "EMERGENCY"

    return-object v0

    .line 755
    :pswitch_1d
    const-string v0, "VIDEO"

    return-object v0

    .line 754
    :pswitch_20
    const-string v0, "SMS"

    return-object v0

    .line 753
    :pswitch_23
    const-string v0, "DATA"

    return-object v0

    .line 752
    :pswitch_26
    const-string v0, "VOICE"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 739
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 859
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 861
    :cond_4
    instance-of v1, p1, Landroid/telephony/NetworkRegistrationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 862
    return v2

    .line 865
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/NetworkRegistrationInfo;

    .line 866
    .local v1, "other":Landroid/telephony/NetworkRegistrationInfo;
    iget v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mDomain:I

    iget v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mDomain:I

    if-ne v3, v4, :cond_82

    iget v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mTransportType:I

    iget v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mTransportType:I

    if-ne v3, v4, :cond_82

    iget v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    iget v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    if-ne v3, v4, :cond_82

    iget v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mNetworkRegistrationState:I

    iget v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mNetworkRegistrationState:I

    if-ne v3, v4, :cond_82

    iget v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mRoamingType:I

    iget v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mRoamingType:I

    if-ne v3, v4, :cond_82

    iget v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mAccessNetworkTechnology:I

    iget v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mAccessNetworkTechnology:I

    if-ne v3, v4, :cond_82

    iget v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mRejectCause:I

    iget v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mRejectCause:I

    if-ne v3, v4, :cond_82

    iget-boolean v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mEmergencyOnly:Z

    iget-boolean v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mEmergencyOnly:Z

    if-ne v3, v4, :cond_82

    iget-object v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mAvailableServices:Ljava/util/ArrayList;

    iget-object v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mAvailableServices:Ljava/util/ArrayList;

    .line 874
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    iget-boolean v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsUsingCarrierAggregation:Z

    iget-boolean v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mIsUsingCarrierAggregation:Z

    if-ne v3, v4, :cond_82

    iget-object v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    iget-object v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 876
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    iget-object v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mVoiceSpecificInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    iget-object v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mVoiceSpecificInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    .line 877
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    iget-object v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    iget-object v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    .line 878
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    iget-object v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mRplmn:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mRplmn:Ljava/lang/String;

    .line 879
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_82

    iget v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    iget v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    if-ne v3, v4, :cond_82

    iget-boolean v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsNonTerrestrialNetwork:Z

    iget-boolean v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mIsNonTerrestrialNetwork:Z

    if-ne v3, v4, :cond_82

    goto :goto_83

    :cond_82
    move v0, v2

    .line 866
    :goto_83
    return v0
.end method

.method public whitelist getAccessNetworkTechnology()I
    .registers 2

    .line 634
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mAccessNetworkTechnology:I

    return v0
.end method

.method public whitelist getAvailableServices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 617
    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mAvailableServices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCellIdentity()Landroid/telephony/CellIdentity;
    .registers 2

    .line 675
    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    return-object v0
.end method

.method public whitelist getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 734
    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    return-object v0
.end method

.method public whitelist getDomain()I
    .registers 2

    .line 438
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mDomain:I

    return v0
.end method

.method public whitelist getNetworkRegistrationState()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 486
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mNetworkRegistrationState:I

    return v0
.end method

.method public blacklist getNrState()I
    .registers 2

    .line 447
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    return v0
.end method

.method public whitelist getRegisteredPlmn()Ljava/lang/String;
    .registers 2

    .line 543
    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRplmn:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRegistrationState()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 466
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1e

    .line 467
    const-wide/32 v0, 0xf414fa2

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 468
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mAccessNetworkTechnology:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_16

    .line 469
    const/4 v0, 0x3

    return v0

    .line 470
    :cond_16
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mAccessNetworkTechnology:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1e

    .line 471
    const/4 v0, 0x0

    return v0

    .line 475
    :cond_1e
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    return v0
.end method

.method public whitelist getRejectCause()I
    .registers 2

    .line 665
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRejectCause:I

    return v0
.end method

.method public whitelist getRoamingType()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 601
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRoamingType:I

    return v0
.end method

.method public whitelist getTransportType()I
    .registers 2

    .line 433
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mTransportType:I

    return v0
.end method

.method public blacklist getVoiceSpecificInfo()Landroid/telephony/VoiceSpecificRegistrationInfo;
    .registers 2

    .line 724
    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mVoiceSpecificInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 19

    .line 851
    move-object/from16 v0, p0

    iget v1, v0, Landroid/telephony/NetworkRegistrationInfo;->mDomain:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v0, Landroid/telephony/NetworkRegistrationInfo;->mTransportType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, v0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v0, Landroid/telephony/NetworkRegistrationInfo;->mNetworkRegistrationState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v0, Landroid/telephony/NetworkRegistrationInfo;->mRoamingType:I

    .line 852
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v1, v0, Landroid/telephony/NetworkRegistrationInfo;->mAccessNetworkTechnology:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v1, v0, Landroid/telephony/NetworkRegistrationInfo;->mRejectCause:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-boolean v1, v0, Landroid/telephony/NetworkRegistrationInfo;->mEmergencyOnly:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-object v10, v0, Landroid/telephony/NetworkRegistrationInfo;->mAvailableServices:Ljava/util/ArrayList;

    iget-object v11, v0, Landroid/telephony/NetworkRegistrationInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    iget-object v12, v0, Landroid/telephony/NetworkRegistrationInfo;->mVoiceSpecificInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    iget-object v13, v0, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    iget v1, v0, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    .line 853
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v15, v0, Landroid/telephony/NetworkRegistrationInfo;->mRplmn:Ljava/lang/String;

    iget-boolean v1, v0, Landroid/telephony/NetworkRegistrationInfo;->mIsUsingCarrierAggregation:Z

    .line 854
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    iget-boolean v1, v0, Landroid/telephony/NetworkRegistrationInfo;->mIsNonTerrestrialNetwork:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    filled-new-array/range {v2 .. v17}, [Ljava/lang/Object;

    move-result-object v1

    .line 851
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist isEmergencyEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 609
    iget-boolean v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mEmergencyOnly:Z

    return v0
.end method

.method public blacklist isInService()Z
    .registers 4

    .line 570
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :cond_c
    :goto_c
    return v1
.end method

.method public whitelist isNetworkRegistered()Z
    .registers 4

    .line 507
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mNetworkRegistrationState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mNetworkRegistrationState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :cond_c
    :goto_c
    return v1
.end method

.method public whitelist isNetworkRoaming()Z
    .registers 3

    .line 562
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mNetworkRegistrationState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist isNetworkSearching()Z
    .registers 3

    .line 527
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mNetworkRegistrationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist isNonTerrestrialNetwork()Z
    .registers 2

    .line 716
    iget-boolean v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsNonTerrestrialNetwork:Z

    return v0
.end method

.method public whitelist isRegistered()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 498
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :cond_c
    :goto_c
    return v1
.end method

.method public whitelist isRoaming()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 554
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRoamingType:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isSearching()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 519
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isUsingCarrierAggregation()Z
    .registers 2

    .line 696
    iget-boolean v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsUsingCarrierAggregation:Z

    return v0
.end method

.method public blacklist sanitizeLocationInfo()Landroid/telephony/NetworkRegistrationInfo;
    .registers 3

    .line 953
    invoke-direct {p0}, Landroid/telephony/NetworkRegistrationInfo;->copy()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 954
    .local v0, "result":Landroid/telephony/NetworkRegistrationInfo;
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/telephony/NetworkRegistrationInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 955
    return-object v0
.end method

.method public blacklist setAccessNetworkTechnology(I)V
    .registers 3
    .param p1, "tech"    # I

    .line 642
    const/16 v0, 0x13

    if-ne p1, v0, :cond_9

    .line 644
    const/16 p1, 0xd

    .line 645
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsUsingCarrierAggregation:Z

    .line 647
    :cond_9
    iput p1, p0, Landroid/telephony/NetworkRegistrationInfo;->mAccessNetworkTechnology:I

    .line 648
    return-void
.end method

.method public blacklist setAvailableServices(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 627
    .local p1, "availableServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mAvailableServices:Ljava/util/ArrayList;

    .line 628
    return-void
.end method

.method public blacklist setIsNonTerrestrialNetwork(Z)V
    .registers 2
    .param p1, "isNonTerrestrialNetwork"    # Z

    .line 707
    iput-boolean p1, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsNonTerrestrialNetwork:Z

    .line 708
    return-void
.end method

.method public blacklist setIsUsingCarrierAggregation(Z)V
    .registers 2
    .param p1, "isUsingCarrierAggregation"    # Z

    .line 686
    iput-boolean p1, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsUsingCarrierAggregation:Z

    .line 687
    return-void
.end method

.method public blacklist setNrState(I)V
    .registers 2
    .param p1, "nrState"    # I

    .line 452
    iput p1, p0, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    .line 453
    return-void
.end method

.method public blacklist setRoamingType(I)V
    .registers 5
    .param p1, "roamingType"    # I

    .line 580
    iput p1, p0, Landroid/telephony/NetworkRegistrationInfo;->mRoamingType:I

    .line 583
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->isRoaming()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-eqz v0, :cond_11

    .line 584
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    if-ne v0, v1, :cond_17

    .line 585
    iput v2, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    goto :goto_17

    .line 588
    :cond_11
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    if-ne v0, v2, :cond_17

    .line 589
    iput v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    .line 592
    :cond_17
    :goto_17
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkRegistrationInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 823
    const-string v1, " domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mDomain:I

    invoke-static {v1}, Landroid/telephony/NetworkRegistrationInfo;->domainToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 824
    const-string v1, " transportType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mTransportType:I

    .line 825
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    .line 824
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 826
    const-string v1, " registrationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    invoke-static {v1}, Landroid/telephony/NetworkRegistrationInfo;->registrationStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 827
    const-string v1, " networkRegistrationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mNetworkRegistrationState:I

    .line 828
    invoke-static {v1}, Landroid/telephony/NetworkRegistrationInfo;->registrationStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 829
    const-string v1, " roamingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mRoamingType:I

    invoke-static {v1}, Landroid/telephony/ServiceState;->roamingTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 830
    const-string v1, " accessNetworkTechnology="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mAccessNetworkTechnology:I

    .line 831
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 832
    const-string v1, " rejectCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mRejectCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 833
    const-string v1, " emergencyEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mEmergencyOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 834
    const-string v1, " availableServices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/NetworkRegistrationInfo;->mAvailableServices:Ljava/util/ArrayList;

    if-eqz v2, :cond_b0

    .line 836
    iget-object v2, p0, Landroid/telephony/NetworkRegistrationInfo;->mAvailableServices:Ljava/util/ArrayList;

    .line 835
    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/telephony/NetworkRegistrationInfo$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/telephony/NetworkRegistrationInfo$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 836
    const-string v3, ","

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_b1

    :cond_b0
    const/4 v2, 0x0

    :goto_b1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 834
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 837
    const-string v1, " cellIdentity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 838
    const-string v1, " voiceSpecificInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mVoiceSpecificInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 839
    const-string v1, " dataSpecificInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 840
    const-string v1, " nrState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_f8

    .line 841
    iget v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    invoke-static {v1}, Landroid/telephony/NetworkRegistrationInfo;->nrStateToString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_fa

    :cond_f8
    const-string v1, "****"

    .line 840
    :goto_fa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 842
    const-string v1, " rRplmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mRplmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 843
    const-string v1, " isUsingCarrierAggregation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsUsingCarrierAggregation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 844
    const-string v1, " isNonTerrestrialNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsNonTerrestrialNetwork:Z

    .line 845
    invoke-static {v1}, Landroid/telephony/NetworkRegistrationInfo;->isNonTerrestrialNetworkToString(Z)Ljava/lang/String;

    move-result-object v1

    .line 844
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 846
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 822
    return-object v0
.end method

.method public blacklist updateNrState()V
    .registers 2

    .line 926
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    .line 927
    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    iget-boolean v0, v0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    if-eqz v0, :cond_20

    .line 928
    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    iget-boolean v0, v0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    iget-boolean v0, v0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    if-eqz v0, :cond_1d

    .line 929
    const/4 v0, 0x2

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    goto :goto_20

    .line 931
    :cond_1d
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    .line 934
    :cond_20
    :goto_20
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 890
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mDomain:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mTransportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 893
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mNetworkRegistrationState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 894
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRoamingType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 895
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mAccessNetworkTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 896
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRejectCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 897
    iget-boolean v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mEmergencyOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 898
    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mAvailableServices:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 899
    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 900
    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mVoiceSpecificInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 901
    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 902
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 903
    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRplmn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 904
    iget-boolean v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsUsingCarrierAggregation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 905
    iget-boolean v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsNonTerrestrialNetwork:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 906
    return-void
.end method
