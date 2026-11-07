.class public final Landroid/app/NotificationHistory;
.super Ljava/lang/Object;
.source "NotificationHistory.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NotificationHistory$HistoricalNotification;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/NotificationHistory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mHistoryCount:I

.field private blacklist mIndex:I

.field private blacklist mNotificationsToWrite:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/NotificationHistory$HistoricalNotification;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mParcel:Landroid/os/Parcel;

.field private blacklist mStringPool:[Ljava/lang/String;

.field private blacklist mStringsToWrite:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 616
    new-instance v0, Landroid/app/NotificationHistory$1;

    invoke-direct {v0}, Landroid/app/NotificationHistory$1;-><init>()V

    sput-object v0, Landroid/app/NotificationHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    .line 229
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/NotificationHistory;->mIndex:I

    .line 267
    iput v0, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    .line 268
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    .line 229
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/NotificationHistory;->mIndex:I

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v1

    .line 245
    .local v1, "bytes":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 246
    .local v2, "data":Landroid/os/Parcel;
    array-length v3, v1

    invoke-virtual {v2, v1, v0, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 247
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 248
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    .line 249
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/NotificationHistory;->mIndex:I

    .line 250
    iget v3, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    if-lez v3, :cond_68

    .line 251
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/NotificationHistory;->mStringPool:[Ljava/lang/String;

    .line 253
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 254
    .local v3, "listByteLength":I
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 255
    .local v4, "positionInParcel":I
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    iput-object v5, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    .line 256
    iget-object v5, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 257
    iget-object v0, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    invoke-virtual {v0, v2, v5, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 258
    iget-object v0, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    iget-object v5, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->setDataSize(I)V

    .line 259
    iget-object v0, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 261
    .end local v3    # "listByteLength":I
    .end local v4    # "positionInParcel":I
    :cond_68
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/NotificationHistory-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/NotificationHistory;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist findStringIndex(Ljava/lang/String;)I
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    .line 450
    iget-object v0, p0, Landroid/app/NotificationHistory;->mStringPool:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 451
    .local v0, "index":I
    if-ltz v0, :cond_9

    .line 454
    return v0

    .line 452
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not in the string pool"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic blacklist lambda$addNotificationsToWrite$0(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/app/NotificationHistory$HistoricalNotification;)I
    .registers 6
    .param p0, "o1"    # Landroid/app/NotificationHistory$HistoricalNotification;
    .param p1, "o2"    # Landroid/app/NotificationHistory$HistoricalNotification;

    .line 349
    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private blacklist readNotificationFromParcel(Landroid/os/Parcel;)Landroid/app/NotificationHistory$HistoricalNotification;
    .registers 10
    .param p1, "p"    # Landroid/os/Parcel;

    .line 512
    new-instance v0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-direct {v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;-><init>()V

    .line 513
    .local v0, "notificationOut":Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 514
    .local v1, "packageIndex":I
    const/4 v2, 0x0

    if-ltz v1, :cond_14

    .line 515
    iget-object v3, p0, Landroid/app/NotificationHistory;->mStringPool:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v0, v3}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->-$$Nest$fputmPackage(Landroid/app/NotificationHistory$HistoricalNotification$Builder;Ljava/lang/String;)V

    goto :goto_17

    .line 517
    :cond_14
    invoke-static {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->-$$Nest$fputmPackage(Landroid/app/NotificationHistory$HistoricalNotification$Builder;Ljava/lang/String;)V

    .line 520
    :goto_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 521
    .local v3, "channelNameIndex":I
    if-ltz v3, :cond_25

    .line 522
    iget-object v4, p0, Landroid/app/NotificationHistory;->mStringPool:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_28

    .line 524
    :cond_25
    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 527
    :goto_28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 528
    .local v4, "channelIdIndex":I
    if-ltz v4, :cond_36

    .line 529
    iget-object v5, p0, Landroid/app/NotificationHistory;->mStringPool:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_39

    .line 531
    :cond_36
    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 534
    :goto_39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 535
    .local v5, "conversationIdIndex":I
    if-ltz v5, :cond_47

    .line 536
    iget-object v2, p0, Landroid/app/NotificationHistory;->mStringPool:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setConversationId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_4a

    .line 538
    :cond_47
    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setConversationId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 541
    :goto_4a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUid(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 542
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUserId(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 543
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPostedTimeMs(J)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 544
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setTitle(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 545
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setText(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 546
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 547
    sget-object v2, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 550
    :cond_7e
    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->build()Landroid/app/NotificationHistory$HistoricalNotification;

    move-result-object v2

    return-object v2
.end method

.method private blacklist writeNotificationToParcel(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/os/Parcel;I)V
    .registers 10
    .param p1, "notification"    # Landroid/app/NotificationHistory$HistoricalNotification;
    .param p2, "p"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    .line 464
    invoke-static {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fgetmPackage(Landroid/app/NotificationHistory$HistoricalNotification;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 465
    invoke-static {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fgetmPackage(Landroid/app/NotificationHistory$HistoricalNotification;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/NotificationHistory;->findStringIndex(Ljava/lang/String;)I

    move-result v0

    .local v0, "packageIndex":I
    goto :goto_10

    .line 467
    .end local v0    # "packageIndex":I
    :cond_f
    const/4 v0, -0x1

    .line 471
    .restart local v0    # "packageIndex":I
    :goto_10
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 472
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/app/NotificationHistory;->findStringIndex(Ljava/lang/String;)I

    move-result v1

    .local v1, "channelNameIndex":I
    goto :goto_20

    .line 474
    .end local v1    # "channelNameIndex":I
    :cond_1f
    const/4 v1, -0x1

    .line 478
    .restart local v1    # "channelNameIndex":I
    :goto_20
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 479
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/NotificationHistory;->findStringIndex(Ljava/lang/String;)I

    move-result v2

    .local v2, "channelIdIndex":I
    goto :goto_30

    .line 481
    .end local v2    # "channelIdIndex":I
    :cond_2f
    const/4 v2, -0x1

    .line 485
    .restart local v2    # "channelIdIndex":I
    :goto_30
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 486
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/NotificationHistory;->findStringIndex(Ljava/lang/String;)I

    move-result v3

    .local v3, "conversationIdIndex":I
    goto :goto_44

    .line 488
    .end local v3    # "conversationIdIndex":I
    :cond_43
    const/4 v3, -0x1

    .line 491
    .restart local v3    # "conversationIdIndex":I
    :goto_44
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getUid()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getUserId()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 498
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 500
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 505
    return-void
.end method


# virtual methods
.method public blacklist addNewNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V
    .registers 4
    .param p1, "notification"    # Landroid/app/NotificationHistory$HistoricalNotification;

    .line 337
    if-nez p1, :cond_3

    .line 338
    return-void

    .line 340
    :cond_3
    iget-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 341
    iget v0, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    .line 342
    return-void
.end method

.method public blacklist addNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V
    .registers 3
    .param p1, "notification"    # Landroid/app/NotificationHistory$HistoricalNotification;

    .line 326
    if-nez p1, :cond_3

    .line 327
    return-void

    .line 329
    :cond_3
    iget-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    iget v0, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    .line 331
    return-void
.end method

.method public blacklist addNotificationsToWrite(Landroid/app/NotificationHistory;)V
    .registers 4
    .param p1, "notificationHistory"    # Landroid/app/NotificationHistory;

    .line 345
    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getNotificationsToWrite()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationHistory$HistoricalNotification;

    .line 346
    .local v1, "hn":Landroid/app/NotificationHistory$HistoricalNotification;
    invoke-virtual {p0, v1}, Landroid/app/NotificationHistory;->addNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V

    .line 347
    .end local v1    # "hn":Landroid/app/NotificationHistory$HistoricalNotification;
    goto :goto_8

    .line 348
    :cond_18
    iget-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    new-instance v1, Landroid/app/NotificationHistory$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/NotificationHistory$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 350
    invoke-virtual {p0}, Landroid/app/NotificationHistory;->poolStringsFromNotifications()V

    .line 351
    return-void
.end method

.method public blacklist addPooledStrings(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 302
    .local p1, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 303
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 555
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getHistoryCount()I
    .registers 2

    .line 446
    iget v0, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    return v0
.end method

.method public blacklist getNextNotification()Landroid/app/NotificationHistory$HistoricalNotification;
    .registers 4

    .line 286
    invoke-virtual {p0}, Landroid/app/NotificationHistory;->hasNextNotification()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 287
    return-object v1

    .line 289
    :cond_8
    iget-object v0, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-direct {p0, v0}, Landroid/app/NotificationHistory;->readNotificationFromParcel(Landroid/os/Parcel;)Landroid/app/NotificationHistory$HistoricalNotification;

    move-result-object v0

    .line 290
    .local v0, "n":Landroid/app/NotificationHistory$HistoricalNotification;
    iget v2, p0, Landroid/app/NotificationHistory;->mIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/app/NotificationHistory;->mIndex:I

    .line 291
    invoke-virtual {p0}, Landroid/app/NotificationHistory;->hasNextNotification()Z

    move-result v2

    if-nez v2, :cond_21

    .line 292
    iget-object v2, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 293
    iput-object v1, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    .line 295
    :cond_21
    return-object v0
.end method

.method public blacklist getNotificationsToWrite()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/NotificationHistory$HistoricalNotification;",
            ">;"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getPooledStringsToWrite()[Ljava/lang/String;
    .registers 3

    .line 430
    iget-object v0, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 431
    .local v0, "stringsToWrite":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 432
    return-object v0
.end method

.method public blacklist hasNextNotification()Z
    .registers 3

    .line 276
    iget v0, p0, Landroid/app/NotificationHistory;->mIndex:I

    iget v1, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist poolStringsFromNotifications()V
    .registers 5

    .line 310
    iget-object v0, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_47

    .line 312
    iget-object v1, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationHistory$HistoricalNotification;

    .line 313
    .local v1, "notification":Landroid/app/NotificationHistory$HistoricalNotification;
    iget-object v2, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v2, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v2, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 317
    iget-object v2, p0, Landroid/app/NotificationHistory;->mStringsToWrite:Ljava/util/Set;

    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 311
    .end local v1    # "notification":Landroid/app/NotificationHistory$HistoricalNotification;
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 320
    .end local v0    # "i":I
    :cond_47
    return-void
.end method

.method public blacklist removeChannelFromWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, "removed":Z
    iget-object v1, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_30

    .line 412
    iget-object v2, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationHistory$HistoricalNotification;

    .line 413
    .local v2, "hn":Landroid/app/NotificationHistory$HistoricalNotification;
    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 414
    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 415
    const/4 v0, 0x1

    .line 416
    iget-object v3, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 411
    .end local v2    # "hn":Landroid/app/NotificationHistory$HistoricalNotification;
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 419
    .end local v1    # "i":I
    :cond_30
    if-eqz v0, :cond_35

    .line 420
    invoke-virtual {p0}, Landroid/app/NotificationHistory;->poolStringsFromNotifications()V

    .line 423
    :cond_35
    return v0
.end method

.method public blacklist removeConversationsFromWrite(Ljava/lang/String;Ljava/util/Set;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 389
    .local p2, "conversationIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 390
    .local v0, "removed":Z
    iget-object v1, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_36

    .line 391
    iget-object v2, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationHistory$HistoricalNotification;

    .line 392
    .local v2, "hn":Landroid/app/NotificationHistory$HistoricalNotification;
    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 393
    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 394
    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 395
    const/4 v0, 0x1

    .line 396
    iget-object v3, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 390
    .end local v2    # "hn":Landroid/app/NotificationHistory$HistoricalNotification;
    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 399
    .end local v1    # "i":I
    :cond_36
    if-eqz v0, :cond_3b

    .line 400
    invoke-virtual {p0}, Landroid/app/NotificationHistory;->poolStringsFromNotifications()V

    .line 403
    :cond_3b
    return v0
.end method

.method public blacklist removeNotificationFromWrite(Ljava/lang/String;J)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "postedTime"    # J

    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, "removed":Z
    iget-object v1, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_2e

    .line 371
    iget-object v2, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationHistory$HistoricalNotification;

    .line 372
    .local v2, "hn":Landroid/app/NotificationHistory$HistoricalNotification;
    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 373
    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v3

    cmp-long v3, p2, v3

    if-nez v3, :cond_2b

    .line 374
    const/4 v0, 0x1

    .line 375
    iget-object v3, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 370
    .end local v2    # "hn":Landroid/app/NotificationHistory$HistoricalNotification;
    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 378
    .end local v1    # "i":I
    :cond_2e
    if-eqz v0, :cond_33

    .line 379
    invoke-virtual {p0}, Landroid/app/NotificationHistory;->poolStringsFromNotifications()V

    .line 382
    :cond_33
    return v0
.end method

.method public blacklist removeNotificationsFromWrite(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 357
    iget-object v0, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_24

    .line 358
    iget-object v1, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 359
    iget-object v1, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 357
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 362
    .end local v0    # "i":I
    :cond_24
    invoke-virtual {p0}, Landroid/app/NotificationHistory;->poolStringsFromNotifications()V

    .line 363
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 561
    .local v0, "data":Landroid/os/Parcel;
    iget v1, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    iget v1, p0, Landroid/app/NotificationHistory;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    iget v1, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    if-lez v1, :cond_81

    .line 564
    invoke-virtual {p0}, Landroid/app/NotificationHistory;->getPooledStringsToWrite()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/NotificationHistory;->mStringPool:[Ljava/lang/String;

    .line 565
    iget-object v1, p0, Landroid/app/NotificationHistory;->mStringPool:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 567
    iget-object v1, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_57

    .line 571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 573
    .local v1, "p":Landroid/os/Parcel;
    :try_start_2a
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 574
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    iget v4, p0, Landroid/app/NotificationHistory;->mHistoryCount:I

    if-ge v3, v4, :cond_40

    .line 575
    iget-object v4, p0, Landroid/app/NotificationHistory;->mNotificationsToWrite:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationHistory$HistoricalNotification;

    .line 576
    .local v4, "notification":Landroid/app/NotificationHistory$HistoricalNotification;
    invoke-direct {p0, v4, v1, p2}, Landroid/app/NotificationHistory;->writeNotificationToParcel(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/os/Parcel;I)V

    .line 574
    .end local v4    # "notification":Landroid/app/NotificationHistory$HistoricalNotification;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 579
    .end local v3    # "i":I
    :cond_40
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 582
    .local v3, "listByteLength":I
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V
    :try_end_4d
    .catchall {:try_start_2a .. :try_end_4d} :catchall_52

    .line 590
    .end local v3    # "listByteLength":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 591
    nop

    .line 593
    .end local v1    # "p":Landroid/os/Parcel;
    goto :goto_81

    .line 590
    .restart local v1    # "p":Landroid/os/Parcel;
    :catchall_52
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 591
    throw v2

    .line 593
    .end local v1    # "p":Landroid/os/Parcel;
    :cond_57
    iget-object v1, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    if-eqz v1, :cond_79

    .line 598
    iget-object v1, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    iget-object v1, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    iget-object v1, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    iget-object v3, p0, Landroid/app/NotificationHistory;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    goto :goto_81

    .line 606
    :cond_79
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Either mParcel or mNotificationsToWrite must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 612
    :cond_81
    :goto_81
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBlob([B)V

    .line 613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 614
    return-void
.end method
