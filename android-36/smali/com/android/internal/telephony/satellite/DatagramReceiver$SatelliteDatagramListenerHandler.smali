.class public final Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;
.super Landroid/os/Handler;
.source "DatagramReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/DatagramReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SatelliteDatagramListenerHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;
    }
.end annotation


# static fields
.field public static final blacklist EVENT_RECEIVED_ACK:I = 0x3

.field public static final blacklist EVENT_RETRY_DELIVERING_RECEIVED_DATAGRAM:I = 0x2

.field public static final blacklist EVENT_SATELLITE_DATAGRAM_RECEIVED:I = 0x1


# instance fields
.field private final blacklist mListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/telephony/satellite/ISatelliteDatagramCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSubId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$2SM74nd66lgEg2AtQl_0H0fztQY(Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;JLandroid/telephony/satellite/SatelliteDatagram;ILandroid/telephony/satellite/ISatelliteDatagramCallback;)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;->lambda$handleMessage$1(JLandroid/telephony/satellite/SatelliteDatagram;ILandroid/telephony/satellite/ISatelliteDatagramCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cJpc320A-aYmOxyAOPNgZ6GnQ0Q(J)J
    .registers 4

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    .line 270
    sget-wide v0, Lcom/android/internal/telephony/satellite/DatagramController;->MAX_DATAGRAM_ID:J

    rem-long/2addr p0, v0

    return-wide p0
.end method

.method public constructor blacklist <init>(Landroid/os/Looper;I)V
    .registers 3

    .line 221
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 222
    iput p2, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;->mSubId:I

    .line 223
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private blacklist deleteDatagram(J)V
    .registers 10

    .line 292
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "datagram_id="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 294
    :try_start_11
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$sfgetsInstance()Lcom/android/internal/telephony/satellite/DatagramReceiver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$fgetmContentResolver(Lcom/android/internal/telephony/satellite/DatagramReceiver;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$SatelliteDatagrams;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_22
    .catch Landroid/database/SQLException; {:try_start_11 .. :try_end_22} :catch_92

    if-eqz p0, :cond_67

    .line 297
    :try_start_24
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_67

    .line 298
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$sfgetsInstance()Lcom/android/internal/telephony/satellite/DatagramReceiver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$fgetmContentResolver(Lcom/android/internal/telephony/satellite/DatagramReceiver;)Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v4, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_52

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot delete datagram with datagramId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$smloge(Ljava/lang/String;)V

    goto :goto_80

    :catchall_4f
    move-exception v0

    move-object p1, v0

    goto :goto_86

    .line 303
    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleted datagram with datagramId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$smlogd(Ljava/lang/String;)V

    goto :goto_80

    .line 306
    :cond_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Datagram with datagramId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is not present in DB."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$smloge(Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_24 .. :try_end_80} :catchall_4f

    :goto_80
    if-eqz p0, :cond_a8

    .line 308
    :try_start_82
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_85
    .catch Landroid/database/SQLException; {:try_start_82 .. :try_end_85} :catch_92

    return-void

    :goto_86
    if-eqz p0, :cond_91

    .line 294
    :try_start_88
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    goto :goto_91

    :catchall_8c
    move-exception v0

    move-object p0, v0

    :try_start_8e
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_91
    :goto_91
    throw p1
    :try_end_92
    .catch Landroid/database/SQLException; {:try_start_8e .. :try_end_92} :catch_92

    :catch_92
    move-exception v0

    move-object p0, v0

    .line 309
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "deleteDatagram SQLException e:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$smloge(Ljava/lang/String;)V

    :cond_a8
    return-void
.end method

.method private blacklist getDatagramId()J
    .registers 6

    .line 249
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$sfgetsInstance()Lcom/android/internal/telephony/satellite/DatagramReceiver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$fgetmSharedPreferences(Lcom/android/internal/telephony/satellite/DatagramReceiver;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_36

    .line 252
    :try_start_a
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$sfgetsInstance()Lcom/android/internal/telephony/satellite/DatagramReceiver;

    move-result-object p0

    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$sfgetsInstance()Lcom/android/internal/telephony/satellite/DatagramReceiver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/satellite/DatagramReceiver;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "satellite_shared_pref"

    const/4 v2, 0x0

    .line 253
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$fputmSharedPreferences(Lcom/android/internal/telephony/satellite/DatagramReceiver;Landroid/content/SharedPreferences;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_20} :catch_21

    goto :goto_36

    :catch_21
    move-exception p0

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get default shared preferences: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$smloge(Ljava/lang/String;)V

    .line 260
    :cond_36
    :goto_36
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$sfgetsInstance()Lcom/android/internal/telephony/satellite/DatagramReceiver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$fgetmSharedPreferences(Lcom/android/internal/telephony/satellite/DatagramReceiver;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_77

    .line 261
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$sfgetsInstance()Lcom/android/internal/telephony/satellite/DatagramReceiver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$fgetmSharedPreferences(Lcom/android/internal/telephony/satellite/DatagramReceiver;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$sfgetmNextDatagramId()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-string v2, "satellite_datagram_id_key"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    .line 263
    sget-wide v3, Lcom/android/internal/telephony/satellite/DatagramController;->MAX_DATAGRAM_ID:J

    rem-long/2addr v0, v3

    .line 264
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$sfgetmNextDatagramId()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 265
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$sfgetsInstance()Lcom/android/internal/telephony/satellite/DatagramReceiver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$fgetmSharedPreferences(Lcom/android/internal/telephony/satellite/DatagramReceiver;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 266
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_89

    .line 268
    :cond_77
    const-string p0, "Shared preferences is null - returning default datagramId"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$smloge(Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$sfgetmNextDatagramId()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndUpdate(Ljava/util/function/LongUnaryOperator;)J

    move-result-wide v0

    :goto_89
    return-wide v0
.end method

.method private blacklist getTimeoutToReceiveAck()I
    .registers 2

    .line 243
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$sfgetsInstance()Lcom/android/internal/telephony/satellite/DatagramReceiver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/satellite/DatagramReceiver;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0149

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method private blacklist insertDatagram(JLandroid/telephony/satellite/SatelliteDatagram;)V
    .registers 6

    .line 277
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 279
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 278
    const-string v1, "datagram_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 280
    const-string v0, "datagram"

    .line 281
    invoke-virtual {p3}, Landroid/telephony/satellite/SatelliteDatagram;->getSatelliteDatagram()[B

    move-result-object p3

    .line 280
    invoke-virtual {p0, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 282
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$sfgetsInstance()Lcom/android/internal/telephony/satellite/DatagramReceiver;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$fgetmContentResolver(Lcom/android/internal/telephony/satellite/DatagramReceiver;)Landroid/content/ContentResolver;

    move-result-object p3

    sget-object v0, Landroid/provider/Telephony$SatelliteDatagrams;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p3, v0, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_3c

    .line 285
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot insert datagram with datagramId: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$smloge(Ljava/lang/String;)V

    return-void

    .line 287
    :cond_3c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Inserted datagram with datagramId: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$smlogd(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$handleMessage$1(JLandroid/telephony/satellite/SatelliteDatagram;ILandroid/telephony/satellite/ISatelliteDatagramCallback;)V
    .registers 12

    .line 365
    new-instance v0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;-><init>(JLandroid/telephony/satellite/SatelliteDatagram;ILandroid/telephony/satellite/ISatelliteDatagramCallback;)V

    .line 367
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;->onSatelliteDatagramReceived(Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;)V

    const/4 p1, 0x2

    .line 370
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 371
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;->getTimeoutToReceiveAck()I

    move-result p2

    int-to-long p2, p2

    .line 369
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist onSatelliteDatagramReceived(Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;)V
    .registers 8

    .line 315
    :try_start_0
    new-instance v5, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$1;

    invoke-direct {v5, p0, p1}, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$1;-><init>(Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;)V

    .line 330
    iget-object v0, p1, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;->listener:Landroid/telephony/satellite/ISatelliteDatagramCallback;

    iget-wide v1, p1, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;->datagramId:J

    iget-object v3, p1, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;->datagram:Landroid/telephony/satellite/SatelliteDatagram;

    iget v4, p1, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;->pendingCount:I

    invoke-interface/range {v0 .. v5}, Landroid/telephony/satellite/ISatelliteDatagramCallback;->onSatelliteDatagramReceived(JLandroid/telephony/satellite/SatelliteDatagram;ILcom/android/internal/telephony/IVoidConsumer;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception v0

    move-object p0, v0

    .line 333
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_SATELLITE_DATAGRAM_RECEIVED RemoteException: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$smlogd(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist addListener(Landroid/telephony/satellite/ISatelliteDatagramCallback;)V
    .registers 3

    .line 227
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Landroid/telephony/satellite/ISatelliteDatagramCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist getNumOfListeners()I
    .registers 1

    .line 239
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    return p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 14

    .line 339
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_22

    .line 429
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SatelliteDatagramListenerHandler unknown event: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$smloge(Ljava/lang/String;)V

    return-void

    .line 408
    :cond_22
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;

    .line 409
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$sfgetsInstance()Lcom/android/internal/telephony/satellite/DatagramReceiver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$fgetmPendingAckCountHashMap(Lcom/android/internal/telephony/satellite/DatagramReceiver;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-wide v2, p1, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;->datagramId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 410
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The datagram "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;->datagramId:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " should have been deleted."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$smlogd(Ljava/lang/String;)V

    return-void

    .line 413
    :cond_56
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$sfgetsInstance()Lcom/android/internal/telephony/satellite/DatagramReceiver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$fgetmPendingAckCountHashMap(Lcom/android/internal/telephony/satellite/DatagramReceiver;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-wide v2, p1, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;->datagramId:J

    .line 414
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 416
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$sfgetsInstance()Lcom/android/internal/telephony/satellite/DatagramReceiver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$fgetmPendingAckCountHashMap(Lcom/android/internal/telephony/satellite/DatagramReceiver;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;->datagramId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received EVENT_RECEIVED_ACK datagramId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;->datagramId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    if-gtz v0, :cond_b6

    .line 422
    iget-wide v0, p1, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;->datagramId:J

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;->deleteDatagram(J)V

    .line 423
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$sfgetsInstance()Lcom/android/internal/telephony/satellite/DatagramReceiver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$fgetmPendingAckCountHashMap(Lcom/android/internal/telephony/satellite/DatagramReceiver;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    iget-wide v0, p1, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;->datagramId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b6
    return-void

    .line 400
    :cond_b7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received EVENT_RETRY_DELIVERING_RECEIVED_DATAGRAM datagramId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;->datagramId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 403
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;->onSatelliteDatagramReceived(Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;)V

    return-void

    .line 341
    :cond_d5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 342
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 344
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/telephony/satellite/SatelliteDatagram;

    .line 345
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 346
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received EVENT_SATELLITE_DATAGRAM_RECEIVED for subId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;->mSubId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pendingCount:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$smlogd(Ljava/lang/String;)V

    if-gtz v10, :cond_11e

    if-nez v5, :cond_11e

    .line 350
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$sfgetsInstance()Lcom/android/internal/telephony/satellite/DatagramReceiver;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$fgetmDatagramController(Lcom/android/internal/telephony/satellite/DatagramReceiver;)Lcom/android/internal/telephony/satellite/DatagramController;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;->mSubId:I

    const/4 v9, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/satellite/DatagramController;->updateReceiveStatus(IIIII)V

    :cond_11c
    move-object v2, p0

    goto :goto_15e

    :cond_11e
    if-eqz v5, :cond_11c

    .line 355
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$sfgetsInstance()Lcom/android/internal/telephony/satellite/DatagramReceiver;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$fgetmDatagramController(Lcom/android/internal/telephony/satellite/DatagramReceiver;)Lcom/android/internal/telephony/satellite/DatagramController;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;->mSubId:I

    const/4 v9, 0x5

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/satellite/DatagramController;->updateReceiveStatus(IIIII)V

    .line 360
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;->getDatagramId()J

    move-result-wide v3

    .line 361
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$sfgetsInstance()Lcom/android/internal/telephony/satellite/DatagramReceiver;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$fgetmPendingAckCountHashMap(Lcom/android/internal/telephony/satellite/DatagramReceiver;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;->getNumOfListeners()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;->insertDatagram(JLandroid/telephony/satellite/SatelliteDatagram;)V

    .line 364
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    new-instance v1, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$$ExternalSyntheticLambda0;

    move-object v2, p0

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;JLandroid/telephony/satellite/SatelliteDatagram;I)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 376
    :goto_15e
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$sfgetsInstance()Lcom/android/internal/telephony/satellite/DatagramReceiver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v5, p1}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$mreportMetrics(Lcom/android/internal/telephony/satellite/DatagramReceiver;Landroid/telephony/satellite/SatelliteDatagram;I)V

    if-gtz v10, :cond_179

    .line 380
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$sfgetsInstance()Lcom/android/internal/telephony/satellite/DatagramReceiver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$fgetmDatagramController(Lcom/android/internal/telephony/satellite/DatagramReceiver;)Lcom/android/internal/telephony/satellite/DatagramController;

    move-result-object v6

    iget v7, v2, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;->mSubId:I

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/satellite/DatagramController;->updateReceiveStatus(IIIII)V

    return-void

    .line 386
    :cond_179
    new-instance p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$2;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$2;-><init>(Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;)V

    .line 393
    new-instance p1, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 392
    invoke-static {p1}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p0

    .line 394
    invoke-static {}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$sfgetsInstance()Lcom/android/internal/telephony/satellite/DatagramReceiver;

    move-result-object p1

    iget v0, v2, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;->mSubId:I

    invoke-static {p1, v0, p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->-$$Nest$mpollPendingSatelliteDatagramsInternal(Lcom/android/internal/telephony/satellite/DatagramReceiver;ILjava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist hasListeners()Z
    .registers 1

    .line 235
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public blacklist removeListener(Landroid/telephony/satellite/ISatelliteDatagramCallback;)V
    .registers 2

    .line 231
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Landroid/telephony/satellite/ISatelliteDatagramCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
