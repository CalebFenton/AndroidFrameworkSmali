.class public final Landroid/telephony/ims/ImsSsData;
.super Ljava/lang/Object;
.source "ImsSsData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsSsData$Builder;,
        Landroid/telephony/ims/ImsSsData$ServiceType;,
        Landroid/telephony/ims/ImsSsData$ServiceClassFlags;,
        Landroid/telephony/ims/ImsSsData$TeleserviceType;,
        Landroid/telephony/ims/ImsSsData$RequestType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/ImsSsData;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RESULT_SUCCESS:I = 0x0

.field public static final whitelist SERVICE_CLASS_DATA:I = 0x2

.field public static final whitelist SERVICE_CLASS_DATA_CIRCUIT_ASYNC:I = 0x20

.field public static final whitelist SERVICE_CLASS_DATA_CIRCUIT_SYNC:I = 0x10

.field public static final whitelist SERVICE_CLASS_DATA_PACKET_ACCESS:I = 0x40

.field public static final whitelist SERVICE_CLASS_DATA_PAD:I = 0x80

.field public static final whitelist SERVICE_CLASS_FAX:I = 0x4

.field public static final whitelist SERVICE_CLASS_NONE:I = 0x0

.field public static final whitelist SERVICE_CLASS_SMS:I = 0x8

.field public static final whitelist SERVICE_CLASS_VOICE:I = 0x1

.field public static final whitelist SS_ACTIVATION:I = 0x0

.field public static final whitelist SS_ALL_BARRING:I = 0x12

.field public static final whitelist SS_ALL_DATA_TELESERVICES:I = 0x3

.field public static final whitelist SS_ALL_TELESERVICES_EXCEPT_SMS:I = 0x5

.field public static final whitelist SS_ALL_TELESEVICES:I = 0x1

.field public static final whitelist SS_ALL_TELE_AND_BEARER_SERVICES:I = 0x0

.field public static final whitelist SS_BAIC:I = 0x10

.field public static final whitelist SS_BAIC_ROAMING:I = 0x11

.field public static final whitelist SS_BAOC:I = 0xd

.field public static final whitelist SS_BAOIC:I = 0xe

.field public static final whitelist SS_BAOIC_EXC_HOME:I = 0xf

.field public static final whitelist SS_CFU:I = 0x0

.field public static final whitelist SS_CFUT:I = 0x6

.field public static final whitelist SS_CF_ALL:I = 0x4

.field public static final whitelist SS_CF_ALL_CONDITIONAL:I = 0x5

.field public static final whitelist SS_CF_BUSY:I = 0x1

.field public static final whitelist SS_CF_NOT_REACHABLE:I = 0x3

.field public static final whitelist SS_CF_NO_REPLY:I = 0x2

.field public static final whitelist SS_CLIP:I = 0x7

.field public static final whitelist SS_CLIR:I = 0x8

.field public static final whitelist SS_CNAP:I = 0xb

.field public static final whitelist SS_COLP:I = 0x9

.field public static final whitelist SS_COLR:I = 0xa

.field public static final whitelist SS_DEACTIVATION:I = 0x1

.field public static final whitelist SS_ERASURE:I = 0x4

.field public static final whitelist SS_INCOMING_BARRING:I = 0x14

.field public static final whitelist SS_INCOMING_BARRING_ANONYMOUS:I = 0x16

.field public static final whitelist SS_INCOMING_BARRING_DN:I = 0x15

.field public static final whitelist SS_INTERROGATION:I = 0x2

.field public static final whitelist SS_OUTGOING_BARRING:I = 0x13

.field public static final whitelist SS_REGISTRATION:I = 0x3

.field public static final whitelist SS_SMS_SERVICES:I = 0x4

.field public static final whitelist SS_TELEPHONY:I = 0x2

.field public static final whitelist SS_WAIT:I = 0xc

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mCfInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsCallForwardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mImsSsInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsSsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSsInfo:[I

.field public final greylist-max-o requestType:I

.field public final greylist-max-o result:I

.field public final greylist-max-o serviceClass:I

.field public final greylist-max-o serviceType:I

.field public final greylist-max-o teleserviceType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmCfInfo(Landroid/telephony/ims/ImsSsData;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/ImsSsData;->mCfInfo:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmImsSsInfo(Landroid/telephony/ims/ImsSsData;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:Ljava/util/List;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    const-class v0, Landroid/telephony/ims/ImsSsData;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/ims/ImsSsData;->TAG:Ljava/lang/String;

    .line 372
    new-instance v0, Landroid/telephony/ims/ImsSsData$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsSsData$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsSsData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIIII)V
    .registers 6
    .param p1, "serviceType"    # I
    .param p2, "requestType"    # I
    .param p3, "teleserviceType"    # I
    .param p4, "serviceClass"    # I
    .param p5, "result"    # I

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput p1, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    .line 355
    iput p2, p0, Landroid/telephony/ims/ImsSsData;->requestType:I

    .line 356
    iput p3, p0, Landroid/telephony/ims/ImsSsData;->teleserviceType:I

    .line 357
    iput p4, p0, Landroid/telephony/ims/ImsSsData;->serviceClass:I

    .line 358
    iput p5, p0, Landroid/telephony/ims/ImsSsData;->result:I

    .line 359
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsData;->requestType:I

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsData;->teleserviceType:I

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsData;->serviceClass:I

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsData;->result:I

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsSsData;->mSsInfo:[I

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsSsData;->mCfInfo:Ljava/util/List;

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/telephony/ims/ImsSsInfo;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:Ljava/util/List;

    .line 370
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/ImsSsData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsSsData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallForwardInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsCallForwardInfo;",
            ">;"
        }
    .end annotation

    .line 571
    iget-object v0, p0, Landroid/telephony/ims/ImsSsData;->mCfInfo:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getRequestType()I
    .registers 2

    .line 468
    iget v0, p0, Landroid/telephony/ims/ImsSsData;->requestType:I

    return v0
.end method

.method public whitelist getResult()I
    .registers 2

    .line 498
    iget v0, p0, Landroid/telephony/ims/ImsSsData;->result:I

    return v0
.end method

.method public whitelist getServiceClass()I
    .registers 2

    .line 489
    iget v0, p0, Landroid/telephony/ims/ImsSsData;->serviceClass:I

    return v0
.end method

.method public whitelist getServiceType()I
    .registers 2

    .line 475
    iget v0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    return v0
.end method

.method public whitelist getSuppServiceInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsSsInfo;",
            ">;"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSuppServiceInfoCompat()[I
    .registers 5

    .line 524
    iget-object v0, p0, Landroid/telephony/ims/ImsSsData;->mSsInfo:[I

    if-eqz v0, :cond_7

    .line 527
    iget-object v0, p0, Landroid/telephony/ims/ImsSsData;->mSsInfo:[I

    return-object v0

    .line 531
    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 532
    .local v0, "result":[I
    iget-object v1, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:Ljava/util/List;

    if-eqz v1, :cond_6d

    iget-object v1, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_17

    goto :goto_6d

    .line 540
    :cond_17
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->isTypeClir()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3c

    .line 543
    iget-object v1, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsSsInfo;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsInfo;->getClirOutgoingState()I

    move-result v1

    aput v1, v0, v3

    .line 544
    iget-object v1, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsSsInfo;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsInfo;->getClirInterrogationStatus()I

    move-result v1

    aput v1, v0, v2

    .line 545
    return-object v0

    .line 548
    :cond_3c
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->isTypeColr()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 549
    iget-object v1, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsSsInfo;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsInfo;->getProvisionStatus()I

    move-result v1

    aput v1, v0, v3

    .line 554
    :cond_50
    iget-object v1, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsSsInfo;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v1

    aput v1, v0, v3

    .line 555
    iget-object v1, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsSsInfo;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsInfo;->getProvisionStatus()I

    move-result v1

    aput v1, v0, v2

    .line 556
    return-object v0

    .line 533
    :cond_6d
    :goto_6d
    sget-object v1, Landroid/telephony/ims/ImsSsData;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSuppServiceInfoCompat: Could not parse mImsSsInfo, returning empty int[]"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-object v0
.end method

.method public whitelist getTeleserviceType()I
    .registers 2

    .line 482
    iget v0, p0, Landroid/telephony/ims/ImsSsData;->teleserviceType:I

    return v0
.end method

.method public whitelist isTypeBarring()Z
    .registers 3

    .line 453
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_43

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_43

    .line 454
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_43

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_43

    .line 455
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_43

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_43

    .line 456
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_43

    .line 457
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_41

    goto :goto_43

    :cond_41
    const/4 v0, 0x0

    goto :goto_44

    :cond_43
    :goto_43
    const/4 v0, 0x1

    .line 453
    :goto_44
    return v0
.end method

.method public greylist-max-o isTypeCF()Z
    .registers 4

    .line 406
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    if-eq v0, v1, :cond_2c

    .line 407
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2c

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2c

    .line 408
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2c

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 v1, 0x0

    goto :goto_2d

    :cond_2c
    :goto_2c
    nop

    .line 406
    :goto_2d
    return v1
.end method

.method public greylist-max-o isTypeCW()Z
    .registers 3

    .line 424
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist isTypeCf()Z
    .registers 2

    .line 412
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->isTypeCF()Z

    move-result v0

    return v0
.end method

.method public whitelist isTypeClip()Z
    .registers 3

    .line 432
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist isTypeClir()Z
    .registers 3

    .line 444
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist isTypeColp()Z
    .registers 3

    .line 440
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist isTypeColr()Z
    .registers 3

    .line 436
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist isTypeCw()Z
    .registers 2

    .line 428
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->isTypeCW()Z

    move-result v0

    return v0
.end method

.method public whitelist isTypeIcb()Z
    .registers 3

    .line 448
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_13

    .line 449
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 448
    :goto_14
    return v0
.end method

.method public whitelist isTypeInterrogation()Z
    .registers 3

    .line 461
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getRequestType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist isTypeUnConditional()Z
    .registers 3

    .line 416
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method public greylist-max-o setCallForwardingInfo([Landroid/telephony/ims/ImsCallForwardInfo;)V
    .registers 3
    .param p1, "cfInfo"    # [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 513
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsSsData;->mCfInfo:Ljava/util/List;

    .line 514
    return-void
.end method

.method public greylist-max-o setImsSpecificSuppServiceInfo([Landroid/telephony/ims/ImsSsInfo;)V
    .registers 3
    .param p1, "imsSsInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 508
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:Ljava/util/List;

    .line 509
    return-void
.end method

.method public greylist-max-o setSuppServiceInfo([I)V
    .registers 2
    .param p1, "ssInfo"    # [I

    .line 503
    iput-object p1, p0, Landroid/telephony/ims/ImsSsData;->mSsInfo:[I

    .line 504
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ImsSsData] ServiceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RequestType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 578
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getRequestType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TeleserviceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 579
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getTeleserviceType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ServiceClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 580
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceClass()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 581
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getResult()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 577
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 386
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getRequestType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getTeleserviceType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getServiceClass()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->getResult()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    iget-object v0, p0, Landroid/telephony/ims/ImsSsData;->mSsInfo:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 392
    iget-object v0, p0, Landroid/telephony/ims/ImsSsData;->mCfInfo:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 393
    iget-object v0, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 394
    return-void
.end method
