.class public Landroid/telecom/ParcelableCallAnalytics;
.super Ljava/lang/Object;
.source "ParcelableCallAnalytics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;,
        Landroid/telecom/ParcelableCallAnalytics$EventTiming;,
        Landroid/telecom/ParcelableCallAnalytics$VideoEvent;
    }
.end annotation


# static fields
.field public static final whitelist CALLTYPE_INCOMING:I = 0x1

.field public static final whitelist CALLTYPE_OUTGOING:I = 0x2

.field public static final whitelist CALLTYPE_UNKNOWN:I = 0x0

.field public static final whitelist CDMA_PHONE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/ParcelableCallAnalytics;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist GSM_PHONE:I = 0x2

.field public static final whitelist IMS_PHONE:I = 0x4

.field public static final whitelist MILLIS_IN_1_SECOND:J = 0x3e8L

.field public static final whitelist MILLIS_IN_5_MINUTES:J = 0x493e0L

.field public static final whitelist SIP_PHONE:I = 0x8

.field public static final whitelist STILL_CONNECTED:I = -0x1

.field public static final whitelist THIRD_PARTY_PHONE:I = 0x10


# instance fields
.field private final greylist-max-o analyticsEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o callDurationMillis:J

.field private blacklist callSource:I

.field private final greylist-max-o callTechnologies:I

.field private final greylist-max-o callTerminationCode:I

.field private final greylist-max-o callType:I

.field private final greylist-max-o connectionService:Ljava/lang/String;

.field private final greylist-max-o eventTimings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$EventTiming;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o isAdditionalCall:Z

.field private final greylist-max-o isCreatedFromExistingConnection:Z

.field private final greylist-max-o isEmergencyCall:Z

.field private final greylist-max-o isInterrupted:Z

.field private greylist-max-o isVideoCall:Z

.field private final greylist-max-o startTimeMillis:J

.field private greylist-max-o videoEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$VideoEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 274
    new-instance v0, Landroid/telecom/ParcelableCallAnalytics$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableCallAnalytics$1;-><init>()V

    sput-object v0, Landroid/telecom/ParcelableCallAnalytics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(JJIZZIIZLjava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    .registers 16
    .param p1, "startTimeMillis"    # J
    .param p3, "callDurationMillis"    # J
    .param p5, "callType"    # I
    .param p6, "isAdditionalCall"    # Z
    .param p7, "isInterrupted"    # Z
    .param p8, "callTechnologies"    # I
    .param p9, "callTerminationCode"    # I
    .param p10, "isEmergencyCall"    # Z
    .param p11, "connectionService"    # Ljava/lang/String;
    .param p12, "isCreatedFromExistingConnection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJIZZIIZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$EventTiming;",
            ">;)V"
        }
    .end annotation

    .line 339
    .local p13, "analyticsEvents":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;>;"
    .local p14, "eventTimings":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ParcelableCallAnalytics$EventTiming;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    .line 333
    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callSource:I

    .line 340
    iput-wide p1, p0, Landroid/telecom/ParcelableCallAnalytics;->startTimeMillis:J

    .line 341
    iput-wide p3, p0, Landroid/telecom/ParcelableCallAnalytics;->callDurationMillis:J

    .line 342
    iput p5, p0, Landroid/telecom/ParcelableCallAnalytics;->callType:I

    .line 343
    iput-boolean p6, p0, Landroid/telecom/ParcelableCallAnalytics;->isAdditionalCall:Z

    .line 344
    iput-boolean p7, p0, Landroid/telecom/ParcelableCallAnalytics;->isInterrupted:Z

    .line 345
    iput p8, p0, Landroid/telecom/ParcelableCallAnalytics;->callTechnologies:I

    .line 346
    iput p9, p0, Landroid/telecom/ParcelableCallAnalytics;->callTerminationCode:I

    .line 347
    iput-boolean p10, p0, Landroid/telecom/ParcelableCallAnalytics;->isEmergencyCall:Z

    .line 348
    iput-object p11, p0, Landroid/telecom/ParcelableCallAnalytics;->connectionService:Ljava/lang/String;

    .line 349
    iput-boolean p12, p0, Landroid/telecom/ParcelableCallAnalytics;->isCreatedFromExistingConnection:Z

    .line 350
    iput-object p13, p0, Landroid/telecom/ParcelableCallAnalytics;->analyticsEvents:Ljava/util/List;

    .line 351
    iput-object p14, p0, Landroid/telecom/ParcelableCallAnalytics;->eventTimings:Ljava/util/List;

    .line 352
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    .line 333
    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callSource:I

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->startTimeMillis:J

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callDurationMillis:J

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callType:I

    .line 358
    invoke-static {p1}, Landroid/telecom/ParcelableCallAnalytics;->readByteAsBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isAdditionalCall:Z

    .line 359
    invoke-static {p1}, Landroid/telecom/ParcelableCallAnalytics;->readByteAsBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isInterrupted:Z

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTechnologies:I

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTerminationCode:I

    .line 362
    invoke-static {p1}, Landroid/telecom/ParcelableCallAnalytics;->readByteAsBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isEmergencyCall:Z

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->connectionService:Ljava/lang/String;

    .line 364
    invoke-static {p1}, Landroid/telecom/ParcelableCallAnalytics;->readByteAsBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isCreatedFromExistingConnection:Z

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->analyticsEvents:Ljava/util/List;

    .line 366
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->analyticsEvents:Ljava/util/List;

    sget-object v1, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->eventTimings:Ljava/util/List;

    .line 368
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->eventTimings:Ljava/util/List;

    sget-object v1, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 369
    invoke-static {p1}, Landroid/telecom/ParcelableCallAnalytics;->readByteAsBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->videoEvents:Ljava/util/List;

    .line 371
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->videoEvents:Ljava/util/List;

    sget-object v1, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callSource:I

    .line 373
    return-void
.end method

.method private static greylist-max-o readByteAsBoolean(Landroid/os/Parcel;)Z
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;

    .line 481
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method private static greylist-max-o writeBooleanAsByte(Landroid/os/Parcel;Z)V
    .registers 3
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "b"    # Z

    .line 477
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 478
    return-void
.end method


# virtual methods
.method public whitelist analyticsEvents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;",
            ">;"
        }
    .end annotation

    .line 449
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->analyticsEvents:Ljava/util/List;

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallDurationMillis()J
    .registers 3

    .line 413
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callDurationMillis:J

    return-wide v0
.end method

.method public blacklist getCallSource()I
    .registers 2

    .line 468
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callSource:I

    return v0
.end method

.method public whitelist getCallTechnologies()I
    .registers 2

    .line 429
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTechnologies:I

    return v0
.end method

.method public whitelist getCallTerminationCode()I
    .registers 2

    .line 433
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTerminationCode:I

    return v0
.end method

.method public whitelist getCallType()I
    .registers 2

    .line 417
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callType:I

    return v0
.end method

.method public whitelist getConnectionService()Ljava/lang/String;
    .registers 2

    .line 441
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->connectionService:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getEventTimings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$EventTiming;",
            ">;"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->eventTimings:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getStartTimeMillis()J
    .registers 3

    .line 409
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->startTimeMillis:J

    return-wide v0
.end method

.method public greylist-max-o getVideoEvents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$VideoEvent;",
            ">;"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->videoEvents:Ljava/util/List;

    return-object v0
.end method

.method public whitelist isAdditionalCall()Z
    .registers 2

    .line 421
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isAdditionalCall:Z

    return v0
.end method

.method public whitelist isCreatedFromExistingConnection()Z
    .registers 2

    .line 445
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isCreatedFromExistingConnection:Z

    return v0
.end method

.method public whitelist isEmergencyCall()Z
    .registers 2

    .line 437
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isEmergencyCall:Z

    return v0
.end method

.method public whitelist isInterrupted()Z
    .registers 2

    .line 425
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isInterrupted:Z

    return v0
.end method

.method public greylist-max-o isVideoCall()Z
    .registers 2

    .line 458
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    return v0
.end method

.method public blacklist setCallSource(I)V
    .registers 2
    .param p1, "callSource"    # I

    .line 405
    iput p1, p0, Landroid/telecom/ParcelableCallAnalytics;->callSource:I

    .line 406
    return-void
.end method

.method public greylist-max-o setIsVideoCall(Z)V
    .registers 2
    .param p1, "isVideoCall"    # Z

    .line 395
    iput-boolean p1, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    .line 396
    return-void
.end method

.method public greylist-max-o setVideoEvents(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$VideoEvent;",
            ">;)V"
        }
    .end annotation

    .line 400
    .local p1, "videoEvents":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ParcelableCallAnalytics$VideoEvent;>;"
    iput-object p1, p0, Landroid/telecom/ParcelableCallAnalytics;->videoEvents:Ljava/util/List;

    .line 401
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 376
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->startTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 377
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 378
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isAdditionalCall:Z

    invoke-static {p1, v0}, Landroid/telecom/ParcelableCallAnalytics;->writeBooleanAsByte(Landroid/os/Parcel;Z)V

    .line 380
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isInterrupted:Z

    invoke-static {p1, v0}, Landroid/telecom/ParcelableCallAnalytics;->writeBooleanAsByte(Landroid/os/Parcel;Z)V

    .line 381
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTechnologies:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTerminationCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isEmergencyCall:Z

    invoke-static {p1, v0}, Landroid/telecom/ParcelableCallAnalytics;->writeBooleanAsByte(Landroid/os/Parcel;Z)V

    .line 384
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->connectionService:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 385
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isCreatedFromExistingConnection:Z

    invoke-static {p1, v0}, Landroid/telecom/ParcelableCallAnalytics;->writeBooleanAsByte(Landroid/os/Parcel;Z)V

    .line 386
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->analyticsEvents:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 387
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->eventTimings:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 388
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    invoke-static {p1, v0}, Landroid/telecom/ParcelableCallAnalytics;->writeBooleanAsByte(Landroid/os/Parcel;Z)V

    .line 389
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->videoEvents:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 390
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    return-void
.end method
