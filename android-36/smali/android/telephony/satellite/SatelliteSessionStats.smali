.class public final Landroid/telephony/satellite/SatelliteSessionStats;
.super Ljava/lang/Object;
.source "SatelliteSessionStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/SatelliteSessionStats$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/SatelliteSessionStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist datagramStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/satellite/SatelliteSessionStats;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCountOfSuccessfulUserMessages:I

.field private blacklist mCountOfTimedOutUserMessagesWaitingForAck:I

.field private blacklist mCountOfTimedOutUserMessagesWaitingForConnection:I

.field private blacklist mCountOfUnsuccessfulUserMessages:I

.field private blacklist mCountOfUserMessagesInQueueToBeSent:I

.field private blacklist mLastMessageLatency:J

.field private blacklist mLatencyOfSuccessfulUserMessages:J

.field private blacklist mMaxLatency:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 97
    new-instance v0, Landroid/telephony/satellite/SatelliteSessionStats$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SatelliteSessionStats$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteSessionStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    .line 47
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-direct {p0, p1}, Landroid/telephony/satellite/SatelliteSessionStats;->readFromParcel(Landroid/os/Parcel;)V

    .line 67
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/SatelliteSessionStats-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SatelliteSessionStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/telephony/satellite/SatelliteSessionStats$Builder;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->-$$Nest$fgetmCountOfSuccessfulUserMessages(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    .line 56
    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->-$$Nest$fgetmCountOfUnsuccessfulUserMessages(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    .line 57
    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->-$$Nest$fgetmCountOfTimedOutUserMessagesWaitingForConnection(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    .line 59
    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->-$$Nest$fgetmCountOfTimedOutUserMessagesWaitingForAck(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    .line 61
    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->-$$Nest$fgetmCountOfUserMessagesInQueueToBeSent(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    .line 62
    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->-$$Nest$fgetmLatencyOfSuccessfulUserMessages(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mLatencyOfSuccessfulUserMessages:J

    .line 63
    return-void
.end method

.method private blacklist getPrintableCounters(Ljava/lang/StringBuilder;)V
    .registers 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 148
    const-string v0, "countOfSuccessfulUserMessages:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, "countOfUnsuccessfulUserMessages:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget v1, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, "countOfTimedOutUserMessagesWaitingForConnection:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget v1, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, "countOfTimedOutUserMessagesWaitingForAck:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget v1, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v0, "countOfUserMessagesInQueueToBeSent:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mLatencyOfSuccessfulUserMessages:J

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mMaxLatency:J

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mLastMessageLatency:J

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 360
    .local v0, "size":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    .line 361
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3c
    if-ge v1, v0, :cond_5b

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 363
    .local v2, "key":Ljava/lang/Integer;
    nop

    .line 364
    const-class v3, Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 363
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/telephony/satellite/SatelliteSessionStats;

    .line 365
    .local v3, "value":Landroid/telephony/satellite/SatelliteSessionStats;
    iget-object v4, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .end local v2    # "key":Ljava/lang/Integer;
    .end local v3    # "value":Landroid/telephony/satellite/SatelliteSessionStats;
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 367
    .end local v1    # "i":I
    :cond_5b
    return-void
.end method


# virtual methods
.method public blacklist addCountOfUnsuccessfulUserMessages(II)V
    .registers 6
    .param p1, "datagramType"    # I
    .param p2, "resultCode"    # I

    .line 288
    :try_start_0
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/telephony/satellite/SatelliteSessionStats$Builder;

    invoke-direct {v2}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->build()Landroid/telephony/satellite/SatelliteSessionStats;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/SatelliteSessionStats;

    .line 290
    .local v0, "data":Landroid/telephony/satellite/SatelliteSessionStats;
    invoke-virtual {v0}, Landroid/telephony/satellite/SatelliteSessionStats;->incrementUnsuccessfulUserMessageCount()V

    .line 291
    const/16 v1, 0x12

    if-ne p2, v1, :cond_29

    .line 292
    invoke-virtual {v0}, Landroid/telephony/satellite/SatelliteSessionStats;->incrementTimedOutUserMessagesWaitingForConnection()V

    goto :goto_30

    .line 293
    :cond_29
    const/16 v1, 0x18

    if-ne p2, v1, :cond_30

    .line 294
    invoke-virtual {v0}, Landroid/telephony/satellite/SatelliteSessionStats;->incrementTimedOutUserMessagesWaitingForAck()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    .line 299
    .end local v0    # "data":Landroid/telephony/satellite/SatelliteSessionStats;
    :cond_30
    :goto_30
    goto :goto_4e

    .line 296
    :catch_31
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while addCountOfUnsuccessfulUserMessages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 298
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    const-string v2, "SatelliteSessionStats"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4e
    return-void
.end method

.method public blacklist clear()V
    .registers 2

    .line 338
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 339
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 170
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 171
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3e

    .line 172
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/satellite/SatelliteSessionStats;

    .line 173
    .local v2, "that":Landroid/telephony/satellite/SatelliteSessionStats;
    iget v3, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    iget v4, v2, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    if-ne v3, v4, :cond_3c

    iget-wide v3, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mLatencyOfSuccessfulUserMessages:J

    iget-wide v5, v2, Landroid/telephony/satellite/SatelliteSessionStats;->mLatencyOfSuccessfulUserMessages:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3c

    iget v3, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    iget v4, v2, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    if-ne v3, v4, :cond_3c

    iget v3, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    iget v4, v2, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    if-ne v3, v4, :cond_3c

    iget v3, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    iget v4, v2, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    if-ne v3, v4, :cond_3c

    iget v3, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    iget v4, v2, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    if-ne v3, v4, :cond_3c

    goto :goto_3d

    :cond_3c
    move v0, v1

    :goto_3d
    return v0

    .line 171
    .end local v2    # "that":Landroid/telephony/satellite/SatelliteSessionStats;
    :cond_3e
    :goto_3e
    return v1
.end method

.method public blacklist getCountOfSuccessfulOutgoingDatagram(I)I
    .registers 5
    .param p1, "datagramType"    # I

    .line 264
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-direct {v2}, Landroid/telephony/satellite/SatelliteSessionStats;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/SatelliteSessionStats;

    .line 266
    .local v0, "data":Landroid/telephony/satellite/SatelliteSessionStats;
    invoke-virtual {v0}, Landroid/telephony/satellite/SatelliteSessionStats;->getCountOfSuccessfulUserMessages()I

    move-result v1

    return v1
.end method

.method public blacklist getCountOfSuccessfulUserMessages()I
    .registers 2

    .line 191
    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    return v0
.end method

.method public blacklist getCountOfTimedOutUserMessagesWaitingForAck()I
    .registers 2

    .line 215
    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    return v0
.end method

.method public blacklist getCountOfTimedOutUserMessagesWaitingForAck(I)I
    .registers 4
    .param p1, "datagramType"    # I

    .line 327
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/SatelliteSessionStats;

    .line 328
    .local v0, "data":Landroid/telephony/satellite/SatelliteSessionStats;
    invoke-virtual {v0}, Landroid/telephony/satellite/SatelliteSessionStats;->getCountOfTimedOutUserMessagesWaitingForAck()I

    move-result v1

    return v1
.end method

.method public blacklist getCountOfTimedOutUserMessagesWaitingForConnection()I
    .registers 2

    .line 207
    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    return v0
.end method

.method public blacklist getCountOfTimedOutUserMessagesWaitingForConnection(I)I
    .registers 4
    .param p1, "datagramType"    # I

    .line 321
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/SatelliteSessionStats;

    .line 322
    .local v0, "data":Landroid/telephony/satellite/SatelliteSessionStats;
    invoke-virtual {v0}, Landroid/telephony/satellite/SatelliteSessionStats;->getCountOfTimedOutUserMessagesWaitingForConnection()I

    move-result v1

    return v1
.end method

.method public blacklist getCountOfUnsuccessfulUserMessages()I
    .registers 2

    .line 199
    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    return v0
.end method

.method public blacklist getCountOfUnsuccessfulUserMessages(I)I
    .registers 4
    .param p1, "datagramType"    # I

    .line 315
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/SatelliteSessionStats;

    .line 316
    .local v0, "data":Landroid/telephony/satellite/SatelliteSessionStats;
    invoke-virtual {v0}, Landroid/telephony/satellite/SatelliteSessionStats;->getCountOfUnsuccessfulUserMessages()I

    move-result v1

    return v1
.end method

.method public blacklist getCountOfUserMessagesInQueueToBeSent()I
    .registers 2

    .line 223
    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    return v0
.end method

.method public blacklist getCountOfUserMessagesInQueueToBeSent(I)I
    .registers 4
    .param p1, "datagramType"    # I

    .line 333
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/SatelliteSessionStats;

    .line 334
    .local v0, "data":Landroid/telephony/satellite/SatelliteSessionStats;
    invoke-virtual {v0}, Landroid/telephony/satellite/SatelliteSessionStats;->getCountOfUserMessagesInQueueToBeSent()I

    move-result v1

    return v1
.end method

.method public blacklist getLastMessageLatency()J
    .registers 3

    .line 282
    iget-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mLastMessageLatency:J

    return-wide v0
.end method

.method public blacklist getLatencyOfAllSuccessfulUserMessages()J
    .registers 3

    .line 231
    iget-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mLatencyOfSuccessfulUserMessages:J

    return-wide v0
.end method

.method public blacklist getLatencyOfAllSuccessfulUserMessages(I)Ljava/lang/Long;
    .registers 5
    .param p1, "datagramType"    # I

    .line 275
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-direct {v2}, Landroid/telephony/satellite/SatelliteSessionStats;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/SatelliteSessionStats;

    .line 277
    .local v0, "data":Landroid/telephony/satellite/SatelliteSessionStats;
    invoke-virtual {v0}, Landroid/telephony/satellite/SatelliteSessionStats;->getLatencyOfAllSuccessfulUserMessages()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getMaxLatency()J
    .registers 3

    .line 270
    iget-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mMaxLatency:J

    return-wide v0
.end method

.method public blacklist getSatelliteSessionStats()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/satellite/SatelliteSessionStats;",
            ">;"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 185
    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mLatencyOfSuccessfulUserMessages:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    .line 186
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    .line 187
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 185
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist incrementSuccessfulUserMessageCount()V
    .registers 2

    .line 195
    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    .line 196
    return-void
.end method

.method public blacklist incrementTimedOutUserMessagesWaitingForAck()V
    .registers 2

    .line 219
    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    .line 220
    return-void
.end method

.method public blacklist incrementTimedOutUserMessagesWaitingForConnection()V
    .registers 2

    .line 211
    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    .line 212
    return-void
.end method

.method public blacklist incrementUnsuccessfulUserMessageCount()V
    .registers 2

    .line 203
    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    .line 204
    return-void
.end method

.method public blacklist incrementUserMessagesInQueueToBeSent()V
    .registers 2

    .line 227
    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    .line 228
    return-void
.end method

.method public blacklist recordSuccessfulOutgoingDatagramStats(IJ)V
    .registers 7
    .param p1, "datagramType"    # I
    .param p2, "latency"    # J

    .line 241
    :try_start_0
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/telephony/satellite/SatelliteSessionStats$Builder;

    invoke-direct {v2}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->build()Landroid/telephony/satellite/SatelliteSessionStats;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/SatelliteSessionStats;

    .line 243
    .local v0, "data":Landroid/telephony/satellite/SatelliteSessionStats;
    invoke-virtual {v0}, Landroid/telephony/satellite/SatelliteSessionStats;->incrementSuccessfulUserMessageCount()V

    .line 244
    iget-wide v1, v0, Landroid/telephony/satellite/SatelliteSessionStats;->mMaxLatency:J

    cmp-long v1, v1, p2

    if-gez v1, :cond_29

    .line 245
    iput-wide p2, v0, Landroid/telephony/satellite/SatelliteSessionStats;->mMaxLatency:J

    .line 247
    :cond_29
    iput-wide p2, v0, Landroid/telephony/satellite/SatelliteSessionStats;->mLastMessageLatency:J

    .line 248
    invoke-virtual {v0, p2, p3}, Landroid/telephony/satellite/SatelliteSessionStats;->updateLatencyOfAllSuccessfulUserMessages(J)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 252
    .end local v0    # "data":Landroid/telephony/satellite/SatelliteSessionStats;
    goto :goto_4c

    .line 249
    :catch_2f
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while recordSuccessfulOutgoingDatagramStats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 251
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    const-string v2, "SatelliteSessionStats"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4c
    return-void
.end method

.method public blacklist resetCountOfUserMessagesInQueueToBeSent()V
    .registers 5

    .line 256
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 257
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telephony/satellite/SatelliteSessionStats;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/satellite/SatelliteSessionStats;

    .line 258
    .local v2, "statsPerDatagramType":Landroid/telephony/satellite/SatelliteSessionStats;
    const/4 v3, 0x0

    iput v3, v2, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    .line 259
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telephony/satellite/SatelliteSessionStats;>;"
    .end local v2    # "statsPerDatagramType":Landroid/telephony/satellite/SatelliteSessionStats;
    goto :goto_a

    .line 260
    :cond_20
    return-void
.end method

.method public blacklist setSatelliteSessionStats(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/satellite/SatelliteSessionStats;",
            ">;)V"
        }
    .end annotation

    .line 346
    .local p1, "sessionStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/telephony/satellite/SatelliteSessionStats;>;"
    iput-object p1, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    .line 347
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 10

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    const-string v2, "\n"

    if-eqz v1, :cond_83

    .line 115
    const-string v1, " ====== SatelliteSessionStatsWrapper Info ============="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 117
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telephony/satellite/SatelliteSessionStats;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 118
    .local v4, "key":Ljava/lang/Integer;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/satellite/SatelliteSessionStats;

    .line 119
    .local v5, "value":Landroid/telephony/satellite/SatelliteSessionStats;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v6, "Key:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    const-string v6, ", SatelliteSessionStats:["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {v5, v0}, Landroid/telephony/satellite/SatelliteSessionStats;->getPrintableCounters(Ljava/lang/StringBuilder;)V

    .line 124
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v7, " LatencyOfSuccessfulUserMessages:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-wide v7, v5, Landroid/telephony/satellite/SatelliteSessionStats;->mLatencyOfSuccessfulUserMessages:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v7, " mMaxLatency:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-wide v7, v5, Landroid/telephony/satellite/SatelliteSessionStats;->mMaxLatency:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v6, " mLastMessageLatency:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-wide v6, v5, Landroid/telephony/satellite/SatelliteSessionStats;->mLastMessageLatency:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 133
    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telephony/satellite/SatelliteSessionStats;>;"
    .end local v4    # "key":Ljava/lang/Integer;
    .end local v5    # "value":Landroid/telephony/satellite/SatelliteSessionStats;
    goto :goto_1a

    .line 136
    :cond_77
    const-string v1, " ============== ================== ==============="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_89

    .line 140
    :cond_83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-direct {p0, v0}, Landroid/telephony/satellite/SatelliteSessionStats;->getPrintableCounters(Ljava/lang/StringBuilder;)V

    .line 143
    :goto_89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist updateCountOfUserMessagesInQueueToBeSent(I)V
    .registers 5
    .param p1, "datagramType"    # I

    .line 305
    :try_start_0
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/telephony/satellite/SatelliteSessionStats$Builder;

    invoke-direct {v2}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->build()Landroid/telephony/satellite/SatelliteSessionStats;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/SatelliteSessionStats;

    .line 307
    .local v0, "data":Landroid/telephony/satellite/SatelliteSessionStats;
    invoke-virtual {v0}, Landroid/telephony/satellite/SatelliteSessionStats;->incrementUserMessagesInQueueToBeSent()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 311
    .end local v0    # "data":Landroid/telephony/satellite/SatelliteSessionStats;
    goto :goto_3f

    .line 308
    :catch_22
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while addCountOfUserMessagesInQueueToBeSent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 310
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    const-string v2, "SatelliteSessionStats"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3f
    return-void
.end method

.method public blacklist updateLatencyOfAllSuccessfulUserMessages(J)V
    .registers 5
    .param p1, "messageLatency"    # J

    .line 235
    iget-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mLatencyOfSuccessfulUserMessages:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mLatencyOfSuccessfulUserMessages:J

    .line 236
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 76
    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mLatencyOfSuccessfulUserMessages:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    iget-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mMaxLatency:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    iget-wide v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mLastMessageLatency:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 86
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->datagramStats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 88
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telephony/satellite/SatelliteSessionStats;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 90
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/telephony/satellite/SatelliteSessionStats;>;"
    goto :goto_47

    :cond_6a
    goto :goto_6f

    .line 92
    :cond_6b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    :goto_6f
    return-void
.end method
