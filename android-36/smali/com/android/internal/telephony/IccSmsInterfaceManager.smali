.class public Lcom/android/internal/telephony/IccSmsInterfaceManager;
.super Ljava/lang/Object;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;,
        Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;,
        Lcom/android/internal/telephony/IccSmsInterfaceManager$PhoneFactoryProxy;,
        Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    }
.end annotation


# static fields
.field protected static final blacklist EVENT_SET_BROADCAST_ACTIVATION_DONE:I = 0x3

.field protected static final blacklist EVENT_SET_BROADCAST_CONFIG_DONE:I = 0x4

.field public static final blacklist SMS_MESSAGE_PERIOD_NOT_SPECIFIED:I = -0x1

.field public static final blacklist SMS_MESSAGE_PRIORITY_NOT_SPECIFIED:I = -0x1


# instance fields
.field protected final greylist-max-r mAppOps:Landroid/app/AppOpsManager;

.field private blacklist mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

.field private final blacklist mCellBroadcastLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private greylist-max-r mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

.field protected final greylist mContext:Landroid/content/Context;

.field public blacklist mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

.field protected greylist-max-r mHandler:Landroid/os/Handler;

.field protected greylist-max-r mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPhoneFactoryProxy:Lcom/android/internal/telephony/IccSmsInterfaceManager$PhoneFactoryProxy;

.field private blacklist mSmsPermissions:Lcom/android/internal/telephony/SmsPermissions;


# direct methods
.method public static synthetic blacklist $r8$lambda$Hx63kuLa_adeTNT01Jpq2CubQx0(Lcom/android/internal/telephony/IccSmsInterfaceManager;Landroid/app/PendingIntent;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->lambda$injectSmsPdu$0(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetCdmaBroadcastConfig(Lcom/android/internal/telephony/IccSmsInterfaceManager;[Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetCellBroadcastConfig(Lcom/android/internal/telephony/IccSmsInterfaceManager;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Landroid/app/AppOpsManager;Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/SmsPermissions;)V
    .registers 8

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    .line 80
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    .line 103
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 110
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    .line 191
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$2;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhoneFactoryProxy:Lcom/android/internal/telephony/IccSmsInterfaceManager$PhoneFactoryProxy;

    .line 174
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 175
    iput-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    .line 176
    iput-object p3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    .line 177
    iput-object p4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 178
    iput-object p5, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsPermissions:Lcom/android/internal/telephony/SmsPermissions;

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 9

    .line 161
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 162
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/AppOpsManager;

    new-instance v4, Lcom/android/internal/telephony/SmsDispatchersController;

    iget-object v0, p1, Lcom/android/internal/telephony/Phone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v5, p1, Lcom/android/internal/telephony/Phone;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v4, p1, v0, v5, p2}, Lcom/android/internal/telephony/SmsDispatchersController;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    new-instance v5, Lcom/android/internal/telephony/SmsPermissions;

    .line 165
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 166
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-direct {v5, p1, p2, v0}, Lcom/android/internal/telephony/SmsPermissions;-><init>(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Landroid/app/AppOpsManager;)V

    move-object v0, p0

    move-object v1, p1

    .line 161
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Landroid/app/AppOpsManager;Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/SmsPermissions;)V

    return-void
.end method

.method private blacklist enforceAccessMessageOnICC(Ljava/lang/String;)V
    .registers 3

    .line 268
    iget-object p0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_MESSAGES_ON_ICC"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist enforceNotOnHandlerThread(Ljava/lang/String;)V
    .registers 4

    .line 217
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-eq v0, p0, :cond_d

    return-void

    .line 218
    :cond_d
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " will deadlock if called from the handler\'s thread."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist-max-r filterDestAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1554
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/SmsNumberUtils;->filterDestAddr(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_f

    return-object p0

    :cond_f
    return-object p1
.end method

.method private blacklist getEmergencyNumber(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;
    .registers 4

    .line 1527
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 1528
    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object p0

    if-nez p0, :cond_f

    return-object v0

    .line 1530
    :cond_f
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumber(Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object p0

    return-object p0
.end method

.method private blacklist isFailedOrDraft(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .registers 14

    .line 1448
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1451
    :try_start_6
    const-string v0, "type"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 1457
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 1458
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_21} :catch_32
    .catchall {:try_start_6 .. :try_end_21} :catchall_2f

    const/4 p1, 0x3

    if-eq p0, p1, :cond_27

    const/4 p1, 0x5

    if-ne p0, p1, :cond_28

    :cond_27
    const/4 v3, 0x1

    .line 1466
    :cond_28
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1468
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_2f
    move-exception v0

    move-object p0, v0

    goto :goto_47

    :catch_32
    move-exception v0

    move-object p1, v0

    goto :goto_3e

    :cond_35
    if-eqz v4, :cond_3a

    .line 1466
    :goto_37
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1468
    :cond_3a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_46

    .line 1463
    :goto_3e
    :try_start_3e
    const-string p2, "isFailedOrDraft: query message type failed"

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_2f

    if-eqz v4, :cond_3a

    goto :goto_37

    :goto_46
    return v3

    :goto_47
    if-eqz v4, :cond_4c

    .line 1466
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1468
    :cond_4c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1469
    throw p0
.end method

.method private synthetic blacklist lambda$injectSmsPdu$0(Landroid/app/PendingIntent;I)V
    .registers 3

    if-eqz p1, :cond_b

    .line 688
    :try_start_2
    invoke-virtual {p1, p2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    .line 690
    :catch_6
    const-string p1, "receivedIntent cancelled."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loge(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method private blacklist loadTextAndAddress(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;
    .registers 14

    .line 1478
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 1481
    :try_start_5
    const-string v0, "body"

    const-string v4, "address"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_16} :catch_46
    .catchall {:try_start_5 .. :try_end_16} :catchall_43

    if-eqz p1, :cond_3a

    .line 1490
    :try_start_18
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_3a

    const/4 p2, 0x0

    .line 1491
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p0
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_2c} :catch_37
    .catchall {:try_start_18 .. :try_end_2c} :catchall_33

    .line 1497
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1499
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_33
    move-exception v0

    move-object p0, v0

    move-object v3, p1

    goto :goto_52

    :catch_37
    move-exception v0

    move-object p2, v0

    goto :goto_49

    :cond_3a
    if-eqz p1, :cond_3f

    .line 1497
    :goto_3c
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1499
    :cond_3f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_51

    :catchall_43
    move-exception v0

    move-object p0, v0

    goto :goto_52

    :catch_46
    move-exception v0

    move-object p2, v0

    move-object p1, v3

    .line 1494
    :goto_49
    :try_start_49
    const-string v0, "loadText: query message text failed"

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_33

    if-eqz p1, :cond_3f

    goto :goto_3c

    :goto_51
    return-object v3

    :goto_52
    if-eqz v3, :cond_57

    .line 1497
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1499
    :cond_57
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1500
    throw p0
.end method

.method private blacklist returnUnspecifiedFailure(Landroid/app/PendingIntent;)V
    .registers 2

    if-eqz p1, :cond_6

    const/4 p0, 0x1

    .line 1536
    :try_start_3
    invoke-virtual {p1, p0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_6
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_6} :catch_6

    :catch_6
    :cond_6
    return-void
.end method

.method private blacklist returnUnspecifiedFailure(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    goto :goto_17

    .line 1547
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1548
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Landroid/app/PendingIntent;)V

    goto :goto_7

    :cond_17
    :goto_17
    return-void
.end method

.method private blacklist sendDataInternal(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .registers 12

    .line 480
    const-string v0, "SMS"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendData: destAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " scAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " destPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-static {p6}, Lcom/android/internal/telephony/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' sentIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " deliveryIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isForVVM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 485
    :cond_51
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 486
    iget-object p0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual/range {p0 .. p9}, Lcom/android/internal/telephony/SmsDispatchersController;->sendData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    return-void
.end method

.method private blacklist sendTextInternal(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZIZJ)V
    .registers 31

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-wide/from16 v13, p13

    .line 529
    invoke-direct/range {v0 .. v15}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextInternal(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZIZJZ)V

    return-void
.end method

.method private blacklist sendTextInternal(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZIZJZ)V
    .registers 37

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 587
    const-string v2, "SMS"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendText: destAddr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " scAddr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " text=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p5

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' sentIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p6

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " deliveryIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p7

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " priority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p9

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " expectMore="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p10

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " validityPeriod="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isForVVM="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p12

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-static/range {p13 .. p14}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 588
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_8e

    :cond_7e
    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v3, p11

    move/from16 v4, p12

    .line 594
    :goto_8e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->notifyIfOutgoingEmergencySms(Ljava/lang/String;)V

    .line 595
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 596
    iget-object v0, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    const/4 v10, 0x0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p8

    move-wide/from16 v18, p13

    move/from16 v20, p15

    move/from16 v16, v3

    move/from16 v17, v4

    move-object v4, v0

    invoke-virtual/range {v4 .. v20}, Lcom/android/internal/telephony/SmsDispatchersController;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJZ)V

    return-void
.end method

.method private blacklist setCdmaBroadcastActivation(Z)Z
    .registers 5

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling setCdmaBroadcastActivation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1249
    const-string v0, "setCdmaBroadcastActivation"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceNotOnHandlerThread(Ljava/lang/String;)V

    .line 1250
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager-IA;)V

    .line 1251
    monitor-enter v0

    .line 1252
    :try_start_25
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1255
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaBroadcastActivation(ZLandroid/os/Message;)V

    .line 1257
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 1258
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_40

    .line 1260
    iget-object p0, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :catchall_40
    move-exception p0

    .line 1258
    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw p0
.end method

.method private greylist-max-r setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;)Z
    .registers 5

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling setCdmaBroadcastConfig with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " configurations"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1231
    const-string v0, "setCdmaBroadcastConfig"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceNotOnHandlerThread(Ljava/lang/String;)V

    .line 1232
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager-IA;)V

    .line 1233
    monitor-enter v0

    .line 1234
    :try_start_26
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1236
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V

    .line 1238
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 1239
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_41

    .line 1241
    iget-object p0, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :catchall_41
    move-exception p0

    .line 1239
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p0
.end method

.method private blacklist setCellBroadcastActivation(Z)Z
    .registers 5

    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling setCellBroadcastActivation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1212
    const-string v0, "setCellBroadcastConfig"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceNotOnHandlerThread(Ljava/lang/String;)V

    .line 1213
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager-IA;)V

    .line 1214
    monitor-enter v0

    .line 1215
    :try_start_25
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1218
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setGsmBroadcastActivation(ZLandroid/os/Message;)V

    .line 1219
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 1220
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_40

    .line 1222
    iget-object p0, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :catchall_40
    move-exception p0

    .line 1220
    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw p0
.end method

.method private greylist-max-r setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z
    .registers 5

    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling setGsmBroadcastConfig with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " configurations"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1194
    const-string v0, "setCellBroadcastConfig"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceNotOnHandlerThread(Ljava/lang/String;)V

    .line 1195
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager-IA;)V

    .line 1196
    monitor-enter v0

    .line 1197
    :try_start_26
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1199
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V

    .line 1201
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 1202
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_41

    .line 1204
    iget-object p0, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :catchall_41
    move-exception p0

    .line 1202
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p0
.end method

.method private blacklist waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V
    .registers 3

    .line 1559
    monitor-enter p1

    .line 1560
    :goto_1
    :try_start_1
    iget-object v0, p1, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_d

    if-nez v0, :cond_15

    .line 1562
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_f
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    goto :goto_1

    :catchall_d
    move-exception p0

    goto :goto_17

    .line 1564
    :catch_f
    :try_start_f
    const-string v0, "Interrupted while waiting for result"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1567
    :cond_15
    monitor-exit p1

    return-void

    :goto_17
    monitor-exit p1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_d

    throw p0
.end method


# virtual methods
.method protected blacklist buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .line 865
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 868
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, p0, :cond_2f

    .line 871
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 872
    aget-byte v3, v3, v1

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    .line 873
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 875
    :cond_1e
    new-instance v3, Lcom/android/internal/telephony/SmsRawData;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_2f
    return-object v0
.end method

.method public greylist-max-r copyMessageToIccEf(Ljava/lang/String;I[B[B)Z
    .registers 8

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copyMessageToIccEf: status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ==> pdu=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), smsc=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-static {p4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 347
    const-string v0, "Copying message to Icc"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 348
    const-string v0, "copyMessageToIccEf"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceNotOnHandlerThread(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const-string v1, "android:write_icc_sms"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_4b

    const/4 p0, 0x0

    return p0

    .line 353
    :cond_4b
    new-instance p1, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager-IA;)V

    .line 354
    monitor-enter p1

    .line 355
    :try_start_52
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_74

    .line 359
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p4

    .line 360
    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p3

    .line 359
    invoke-interface {v1, p2, p4, p3, v0}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_7b

    :catchall_72
    move-exception p0

    goto :goto_88

    .line 362
    :cond_74
    iget-object p4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p4, p4, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p4, p2, p3, v0}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(I[BLandroid/os/Message;)V

    .line 365
    :goto_7b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 366
    monitor-exit p1
    :try_end_7f
    .catchall {:try_start_52 .. :try_end_7f} :catchall_72

    .line 367
    iget-object p0, p1, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 366
    :goto_88
    :try_start_88
    monitor-exit p1
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_72

    throw p0
.end method

.method public declared-synchronized greylist-max-r disableCdmaBroadcastRange(II)Z
    .registers 6

    monitor-enter p0

    .line 1071
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const-string v2, "Disabling cell broadcast SMS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1075
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1074
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1078
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/internal/telephony/IntRangeManager;->disableRange(IILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_46

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove cdma broadcast channels range "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1081
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1082
    iget-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_44

    .line 1083
    monitor-exit p0

    return v1

    :catchall_44
    move-exception p1

    goto :goto_74

    .line 1087
    :cond_46
    :try_start_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removed cdma broadcast channels range "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1088
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1089
    iget-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1092
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/IntRangeManager;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCdmaBroadcastActivation(Z)Z
    :try_end_72
    .catchall {:try_start_46 .. :try_end_72} :catchall_44

    .line 1094
    monitor-exit p0

    return p2

    :goto_74
    :try_start_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_44

    throw p1
.end method

.method public blacklist disableCellBroadcastRange(III)Z
    .registers 7

    .line 967
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disabling cell broadcast range ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]. ranType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_30

    .line 971
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableGsmBroadcastRange(II)Z

    move-result p0

    return p0

    :cond_30
    const/4 v0, 0x2

    if-ne p3, v0, :cond_38

    .line 973
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCdmaBroadcastRange(II)Z

    move-result p0

    return p0

    .line 975
    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a supported RAN Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized greylist-max-r disableGsmBroadcastRange(II)Z
    .registers 6

    monitor-enter p0

    .line 1012
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const-string v2, "Disabling cell broadcast SMS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1016
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1015
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1019
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/internal/telephony/IntRangeManager;->disableRange(IILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_46

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove GSM cell broadcast channels range "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1022
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1023
    iget-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_44

    .line 1024
    monitor-exit p0

    return v1

    :catchall_44
    move-exception p1

    goto :goto_74

    .line 1028
    :cond_46
    :try_start_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removed GSM cell broadcast channels range "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1030
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1031
    iget-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1034
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/IntRangeManager;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCellBroadcastActivation(Z)Z
    :try_end_72
    .catchall {:try_start_46 .. :try_end_72} :catchall_44

    .line 1036
    monitor-exit p0

    return p2

    :goto_74
    :try_start_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_44

    throw p1
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabled GSM channels: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabled CDMA channels: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1580
    const-string v0, "CellBroadcast log:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1581
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1582
    const-string v0, "SMS dispatcher controller log:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1583
    iget-object p0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsDispatchersController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1584
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public declared-synchronized greylist-max-r enableCdmaBroadcastRange(II)Z
    .registers 6

    monitor-enter p0

    .line 1042
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const-string v2, "Enabling cdma broadcast SMS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1046
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1045
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1049
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/internal/telephony/IntRangeManager;->enableRange(IILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_46

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add cdma broadcast channels range "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1052
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1053
    iget-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_44

    .line 1054
    monitor-exit p0

    return v1

    :catchall_44
    move-exception p1

    goto :goto_74

    .line 1058
    :cond_46
    :try_start_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added cdma broadcast channels range "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1059
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1060
    iget-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1063
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/IntRangeManager;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCdmaBroadcastActivation(Z)Z
    :try_end_72
    .catchall {:try_start_46 .. :try_end_72} :catchall_44

    .line 1065
    monitor-exit p0

    return p2

    :goto_74
    :try_start_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_44

    throw p1
.end method

.method public blacklist enableCellBroadcastRange(III)Z
    .registers 7

    .line 954
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enabling cell broadcast range ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]. ranType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_30

    .line 958
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableGsmBroadcastRange(II)Z

    move-result p0

    return p0

    :cond_30
    const/4 v0, 0x2

    if-ne p3, v0, :cond_38

    .line 960
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCdmaBroadcastRange(II)Z

    move-result p0

    return p0

    .line 962
    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a supported RAN Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized greylist-max-r enableGsmBroadcastRange(II)Z
    .registers 6

    monitor-enter p0

    .line 982
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const-string v2, "Enabling cell broadcast SMS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 986
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 985
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 989
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/internal/telephony/IntRangeManager;->enableRange(IILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_46

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add GSM cell broadcast channels range "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 992
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 993
    iget-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_44

    .line 994
    monitor-exit p0

    return v1

    :catchall_44
    move-exception p1

    goto :goto_74

    .line 998
    :cond_46
    :try_start_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added GSM cell broadcast channels range "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1000
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1001
    iget-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1004
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/IntRangeManager;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCellBroadcastActivation(Z)Z
    :try_end_72
    .catchall {:try_start_46 .. :try_end_72} :catchall_44

    .line 1006
    monitor-exit p0

    return p2

    :goto_74
    :try_start_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_44

    throw p1
.end method

.method protected greylist-max-r enforceReceiveAndSend(Ljava/lang/String;)V
    .registers 4

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object p0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SEND_SMS"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist-max-r getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .line 378
    const-string v0, "getAllMessagesFromEF"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECEIVE_SMS"

    const-string v2, "Reading messages from Icc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v0, "Reading messages from Icc"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceAccessMessageOnICC(Ljava/lang/String;)V

    .line 384
    const-string v0, "getAllMessagesFromIccEf"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceNotOnHandlerThread(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const-string v1, "android:read_icc_sms"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2c

    .line 387
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 389
    :cond_2c
    new-instance p1, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager-IA;)V

    .line 390
    monitor-enter p1

    .line 392
    :try_start_33
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    if-nez v1, :cond_44

    .line 394
    const-string v1, "Cannot load Sms records. No icc card?"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loge(Ljava/lang/String;)V

    .line 395
    monitor-exit p1

    return-object v0

    :catchall_42
    move-exception p0

    goto :goto_59

    .line 398
    :cond_44
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x6f3c

    .line 399
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 401
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 402
    monitor-exit p1
    :try_end_54
    .catchall {:try_start_33 .. :try_end_54} :catchall_42

    .line 403
    iget-object p0, p1, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 402
    :goto_59
    :try_start_59
    monitor-exit p1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_42

    throw p0
.end method

.method public greylist-max-r getImsSmsFormat()Ljava/lang/String;
    .registers 1

    .line 1283
    iget-object p0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->getImsSmsFormat()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getInboundSmsHandler(Z)Lcom/android/internal/telephony/InboundSmsHandler;
    .registers 2

    .line 1574
    iget-object p0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->getInboundSmsHandler(Z)Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-r getPremiumSmsPermission(Ljava/lang/String;)I
    .registers 2

    .line 848
    iget-object p0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist getSmsCapacityOnIcc(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 1421
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1422
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    const-string v2, "getSmsCapacityOnIcc"

    .line 1421
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_12

    return p2

    .line 1428
    :cond_12
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 1429
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1430
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 1432
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getSmsCapacityOnIcc()I

    move-result p2

    goto :goto_3e

    .line 1434
    :cond_33
    const-string p1, "uiccProfile is null"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_3e

    .line 1437
    :cond_39
    const-string p1, "getSmsCapacityOnIcc - aborting, no icc card present."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loge(Ljava/lang/String;)V

    .line 1440
    :goto_3e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSmsCapacityOnIcc().numberOnIcc = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    return p2
.end method

.method public blacklist getSmscAddressFromIccEf(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 916
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsPermissions:Lcom/android/internal/telephony/SmsPermissions;

    const-string v1, "getSmscAddressFromIccEf"

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/SmsPermissions;->checkCallingOrSelfCanGetSmscAddress(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_11

    .line 918
    const-string p1, "Caller do not have permission to call GetSmscAddress"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loge(Ljava/lang/String;)V

    return-object v0

    .line 921
    :cond_11
    const-string p1, "getSmscAddressFromIccEf"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceNotOnHandlerThread(Ljava/lang/String;)V

    .line 922
    new-instance p1, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager-IA;)V

    .line 923
    monitor-enter p1

    .line 924
    :try_start_1c
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 925
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 926
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 927
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_33

    .line 928
    iget-object p0, p1, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :catchall_33
    move-exception p0

    .line 927
    :try_start_34
    monitor-exit p1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public greylist-max-r injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 6

    .line 674
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_11

    .line 676
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsPermissions:Lcom/android/internal/telephony/SmsPermissions;

    const-string v1, "injectSmsPdu"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SmsPermissions;->enforceCallerIsImsAppOrCarrierApp(Ljava/lang/String;)V

    .line 679
    :cond_11
    const-string v0, "SMS"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pdu: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n receivedIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 684
    :cond_42
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    new-instance v1, Lcom/android/internal/telephony/IccSmsInterfaceManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;Landroid/app/PendingIntent;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p2, p0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->injectSmsPdu([BLjava/lang/String;ZLcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;)V

    return-void
.end method

.method public greylist-max-r isImsSmsSupported()Z
    .registers 1

    .line 1278
    iget-object p0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isIms()Z

    move-result p0

    return p0
.end method

.method protected greylist log(Ljava/lang/String;)V
    .registers 2

    .line 1265
    const-string p0, "IccSmsInterfaceManager"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 1269
    const-string p0, "IccSmsInterfaceManager"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 1273
    const-string p0, "IccSmsInterfaceManager"

    invoke-static {p0, p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected blacklist makeSmsRecordData(I[B)[B
    .registers 5

    .line 891
    iget-object p0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_e

    const/16 p0, 0xb0

    .line 892
    new-array p0, p0, [B

    goto :goto_12

    :cond_e
    const/16 p0, 0xff

    .line 894
    new-array p0, p0, [B

    :goto_12
    and-int/lit8 p1, p1, 0x7

    int-to-byte p1, p1

    const/4 v1, 0x0

    .line 898
    aput-byte p1, p0, v1

    .line 900
    array-length p1, p2

    invoke-static {p2, v1, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 903
    array-length p1, p2

    add-int/2addr p1, v0

    :goto_1e
    array-length p2, p0

    if-ge p1, p2, :cond_27

    const/4 p2, -0x1

    .line 904
    aput-byte p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1e

    :cond_27
    return-object p0
.end method

.method protected blacklist markMessagesAsRead(Ljava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    goto :goto_65

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 230
    const-string v0, "SMS"

    const/4 v7, 0x3

    if-nez v1, :cond_1a

    .line 233
    invoke-static {v0, v7}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 234
    const-string p1, "markMessagesAsRead - aborting, no icc card present."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loge(Ljava/lang/String;)V

    return-void

    .line 239
    :cond_1a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    :goto_20
    if-ge v10, v8, :cond_65

    .line 242
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 243
    aget-byte v3, v2, v9

    and-int/lit8 v3, v3, 0x7

    if-ne v3, v7, :cond_62

    .line 244
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 245
    new-array v5, v3, [B

    .line 246
    invoke-static {v2, v4, v5, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->makeSmsRecordData(I[B)[B

    move-result-object v4

    add-int/lit8 v3, v10, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v2, 0x6f3c

    .line 248
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 249
    invoke-static {v0, v7}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " marked as read"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    :cond_62
    add-int/lit8 v10, v10, 0x1

    goto :goto_20

    :cond_65
    :goto_65
    return-void
.end method

.method public blacklist notifyIfOutgoingEmergencySms(Ljava/lang/String;)V
    .registers 8

    .line 1506
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhoneFactoryProxy:Lcom/android/internal/telephony/IccSmsInterfaceManager$PhoneFactoryProxy;

    invoke-interface {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$PhoneFactoryProxy;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1507
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getEmergencyNumber(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 1509
    iget-object p0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Phone;->notifyOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;)V

    return-void

    .line 1510
    :cond_14
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_3a

    .line 1512
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_3a

    aget-object v3, v0, v2

    .line 1514
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    if-ne v4, v5, :cond_2b

    goto :goto_37

    .line 1517
    :cond_2b
    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getEmergencyNumber(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 1519
    iget-object p0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/Phone;->notifyOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;)V

    return-void

    :cond_37
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_3a
    return-void
.end method

.method public blacklist resetAllCellBroadcastRanges()V
    .registers 4

    .line 1102
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_CELL_BROADCASTS"

    const-string v2, "resetAllCellBroadcastRanges"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IntRangeManager;->clearRanges()V

    .line 1105
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IntRangeManager;->clearRanges()V

    .line 1106
    const-string v0, "Cell broadcast ranges reset."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public greylist-max-r sendData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 430
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public blacklist sendData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 20

    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsPermissions:Lcom/android/internal/telephony/SmsPermissions;

    const-string v1, "Sending SMS message"

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/internal/telephony/SmsPermissions;->checkCallingCanSendSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_10

    move-object/from16 v7, p8

    .line 443
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Landroid/app/PendingIntent;)V

    return-void

    :cond_10
    move-object/from16 v7, p8

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v8, p9

    .line 446
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendDataInternal(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    return-void
.end method

.method public blacklist sendDataWithSelfPermissions(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .registers 21

    .line 413
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsPermissions:Lcom/android/internal/telephony/SmsPermissions;

    const-string v1, "Sending SMS message"

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/internal/telephony/SmsPermissions;->checkCallingOrSelfCanSendSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_10

    move-object/from16 v7, p8

    .line 415
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Landroid/app/PendingIntent;)V

    return-void

    :cond_10
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    .line 418
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendDataInternal(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    return-void
.end method

.method public blacklist sendMultipartText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;ZJ)V"
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v10, -0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v13, p10

    .line 729
    invoke-virtual/range {v0 .. v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartTextWithOptions(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZIJ)V

    return-void
.end method

.method public blacklist sendMultipartTextWithOptions(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZIJ)V
    .registers 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;ZIZIJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    .line 790
    iget-object v5, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsPermissions:Lcom/android/internal/telephony/SmsPermissions;

    const-string v6, "Sending SMS message"

    move-object/from16 v14, p1

    move-object/from16 v7, p3

    move/from16 v8, p9

    invoke-virtual {v5, v8, v14, v7, v6}, Lcom/android/internal/telephony/SmsPermissions;->checkCallingCanSendText(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 792
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Ljava/util/List;)V

    return-void

    .line 795
    :cond_1e
    const-string v5, "SMS"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_77

    .line 797
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v7, v6

    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_77

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 798
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendMultipartTextWithOptions: destAddr="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", srAddr="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", part["

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    invoke-static/range {p13 .. p14}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 798
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    move v7, v12

    goto :goto_2d

    :cond_77
    move-object/from16 v11, p5

    .line 803
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->notifyIfOutgoingEmergencySms(Ljava/lang/String;)V

    .line 804
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 806
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_136

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/16 v7, 0xa

    if-ge v5, v7, :cond_136

    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v5

    if-nez v5, :cond_136

    .line 807
    :goto_95
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v6, v5, :cond_135

    .line 810
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 811
    invoke-static {}, Landroid/telephony/SmsMessage;->shouldAppendPageNumberAsPrefix()Z

    move-result v7

    const/16 v9, 0x20

    const/16 v10, 0x2f

    if-eqz v7, :cond_cf

    .line 812
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v12, v6, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_cd
    move-object v10, v5

    goto :goto_f3

    .line 814
    :cond_cf
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v6, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 815
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 814
    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_cd

    :goto_f3
    const/4 v5, 0x0

    if-eqz v3, :cond_103

    .line 819
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v6, :cond_103

    .line 820
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    goto :goto_104

    :cond_103
    move-object v7, v5

    :goto_104
    if-eqz v4, :cond_112

    .line 824
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v6, :cond_112

    .line 825
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    :cond_112
    move-object v12, v5

    move-object v11, v7

    .line 828
    iget-object v7, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    const/4 v13, 0x0

    const/16 v20, 0x0

    move/from16 v15, p2

    move-object/from16 v9, p5

    move/from16 v17, p10

    move/from16 v18, p11

    move/from16 v19, p12

    move-wide/from16 v21, p13

    move/from16 v16, v8

    move-object v8, v1

    invoke-virtual/range {v7 .. v22}, Lcom/android/internal/telephony/SmsDispatchersController;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJ)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v14, p1

    move-object/from16 v11, p5

    move/from16 v8, p9

    goto/16 :goto_95

    :cond_135
    return-void

    :cond_136
    move-object v8, v1

    .line 836
    iget-object v7, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    move-object v10, v2

    check-cast v10, Ljava/util/ArrayList;

    move-object v11, v3

    check-cast v11, Ljava/util/ArrayList;

    move-object v12, v4

    check-cast v12, Ljava/util/ArrayList;

    const/4 v13, 0x0

    move-object/from16 v14, p1

    move/from16 v15, p2

    move-object/from16 v9, p5

    move/from16 v16, p9

    move/from16 v17, p10

    move/from16 v18, p11

    move/from16 v19, p12

    move-wide/from16 v20, p13

    invoke-virtual/range {v7 .. v21}, Lcom/android/internal/telephony/SmsDispatchersController;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZIZIJ)V

    return-void
.end method

.method public greylist-max-r sendStoredMultipartText(Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 1340
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendStoredMultipartText(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public blacklist sendStoredMultipartText(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v6, p4

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    .line 1347
    iget-object v3, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsPermissions:Lcom/android/internal/telephony/SmsPermissions;

    const-string v4, "Sending SMS message"

    move-object/from16 v8, p1

    move-object/from16 v5, p3

    invoke-virtual {v3, v8, v5, v4}, Lcom/android/internal/telephony/SmsPermissions;->checkCallingCanSendSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1349
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Ljava/util/List;)V

    return-void

    .line 1352
    :cond_1a
    iget-object v3, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1353
    invoke-direct {v0, v3, v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isFailedOrDraft(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 1354
    const-string v2, "sendStoredMultipartText: not FAILED or DRAFT message"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loge(Ljava/lang/String;)V

    .line 1355
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Ljava/util/List;)V

    return-void

    .line 1358
    :cond_2f
    invoke-direct {v0, v3, v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loadTextAndAddress(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_3e

    .line 1360
    const-string v2, "sendStoredMultipartText: can not load text"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loge(Ljava/lang/String;)V

    .line 1361
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Ljava/util/List;)V

    return-void

    .line 1364
    :cond_3e
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v5, v17, v4

    invoke-virtual {v3, v5}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 1365
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x1

    if-ge v5, v7, :cond_55

    :cond_52
    move-object v2, v1

    goto/16 :goto_148

    .line 1370
    :cond_55
    aget-object v5, v17, v7

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->notifyIfOutgoingEmergencySms(Ljava/lang/String;)V

    .line 1371
    aget-object v5, v17, v7

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v7

    .line 1373
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v7, :cond_123

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v9, 0xa

    if-ge v5, v9, :cond_123

    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v5

    if-nez v5, :cond_123

    .line 1374
    :goto_76
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_122

    .line 1377
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1378
    invoke-static {}, Landroid/telephony/SmsMessage;->shouldAppendPageNumberAsPrefix()Z

    move-result v9

    const/16 v10, 0x20

    const/16 v11, 0x2f

    if-eqz v9, :cond_af

    .line 1379
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v12, v4, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_d2

    .line 1381
    :cond_af
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v4, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1382
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1381
    invoke-virtual {v5, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_d2
    const/4 v9, 0x0

    if-eqz v1, :cond_e2

    .line 1386
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v4, :cond_e2

    .line 1387
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    goto :goto_e3

    :cond_e2
    move-object v10, v9

    :goto_e3
    if-eqz v2, :cond_f1

    .line 1391
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v4, :cond_f1

    .line 1392
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .line 1395
    :cond_f1
    iget-object v1, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    aget-object v2, v17, v7

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    move v11, v4

    move-object v4, v5

    move-object v5, v10

    const/4 v10, 0x1

    move v12, v11

    const/4 v11, -0x1

    move v13, v12

    const/4 v12, 0x0

    move/from16 v18, v13

    const/4 v13, -0x1

    move/from16 v19, v7

    move/from16 v20, v18

    move-object/from16 v18, v3

    move-object v7, v6

    move-object v6, v9

    move/from16 v9, p2

    move-object/from16 v3, p5

    invoke-virtual/range {v1 .. v16}, Lcom/android/internal/telephony/SmsDispatchersController;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJ)V

    add-int/lit8 v4, v20, 0x1

    move-object/from16 v8, p1

    move-object/from16 v6, p4

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, v18

    move/from16 v7, v19

    goto/16 :goto_76

    :cond_122
    return-void

    :cond_123
    move-object/from16 v18, v3

    move/from16 v19, v7

    .line 1405
    iget-object v0, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    aget-object v1, v17, v19

    move-object/from16 v2, p6

    move-object v4, v2

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v5, p7

    check-cast v5, Ljava/util/ArrayList;

    const/4 v12, -0x1

    const-wide/16 v13, 0x0

    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v6, p4

    move-object/from16 v2, p5

    move-object/from16 v3, v18

    invoke-virtual/range {v0 .. v14}, Lcom/android/internal/telephony/SmsDispatchersController;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;IZIZIJ)V

    return-void

    .line 1366
    :goto_148
    const-string v1, "sendStoredMultipartText: can not divide text"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loge(Ljava/lang/String;)V

    .line 1367
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Ljava/util/List;)V

    return-void
.end method

.method public greylist-max-r sendStoredText(Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 1294
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendStoredText(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public blacklist sendStoredText(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v6, p4

    move-object/from16 v4, p6

    .line 1301
    iget-object v1, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsPermissions:Lcom/android/internal/telephony/SmsPermissions;

    const-string v2, "Sending SMS message"

    move-object/from16 v7, p1

    move-object/from16 v3, p3

    invoke-virtual {v1, v7, v3, v2}, Lcom/android/internal/telephony/SmsPermissions;->checkCallingCanSendSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1303
    invoke-direct {v0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Landroid/app/PendingIntent;)V

    return-void

    .line 1306
    :cond_18
    const-string v1, "SMS"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendStoredText: scAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " messageUri="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " sentIntent="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " deliveryIntent="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p7

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_56

    :cond_52
    move-object/from16 v2, p5

    move-object/from16 v5, p7

    .line 1310
    :goto_56
    iget-object v1, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1311
    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isFailedOrDraft(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 1312
    const-string v1, "sendStoredText: not FAILED or DRAFT message"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loge(Ljava/lang/String;)V

    .line 1313
    invoke-direct {v0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Landroid/app/PendingIntent;)V

    return-void

    .line 1316
    :cond_6b
    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loadTextAndAddress(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7a

    .line 1318
    const-string v1, "sendStoredText: can not load text"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loge(Ljava/lang/String;)V

    .line 1319
    invoke-direct {v0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Landroid/app/PendingIntent;)V

    return-void

    :cond_7a
    const/4 v3, 0x1

    .line 1322
    aget-object v8, v1, v3

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->notifyIfOutgoingEmergencySms(Ljava/lang/String;)V

    .line 1323
    aget-object v8, v1, v3

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v3

    .line 1324
    iget-object v0, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, -0x1

    move-object v1, v8

    move/from16 v8, p2

    invoke-virtual/range {v0 .. v15}, Lcom/android/internal/telephony/SmsDispatchersController;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;IZIZIZJ)V

    return-void
.end method

.method public blacklist sendText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJZ)V
    .registers 28

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v13, p9

    move/from16 v15, p11

    .line 498
    invoke-direct/range {v0 .. v15}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextInternal(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZIZJZ)V

    return-void
.end method

.method public blacklist sendTextWithOptions(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
    .registers 28

    .line 652
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsPermissions:Lcom/android/internal/telephony/SmsPermissions;

    const-string v2, "Sending SMS message"

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v8, p9

    invoke-virtual {v1, v8, v3, v4, v2}, Lcom/android/internal/telephony/SmsPermissions;->checkCallingCanSendText(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    move-object/from16 v6, p7

    .line 654
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Landroid/app/PendingIntent;)V

    return-void

    :cond_16
    move-object/from16 v6, p7

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move-object v0, p0

    move/from16 v2, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v7, p8

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move-object v1, v3

    move-object/from16 v3, p4

    .line 657
    invoke-direct/range {v0 .. v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextInternal(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZIZJ)V

    return-void
.end method

.method public blacklist sendTextWithSelfPermissions(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V
    .registers 26

    .line 513
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsPermissions:Lcom/android/internal/telephony/SmsPermissions;

    const-string v2, "Sending SMS message"

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/internal/telephony/SmsPermissions;->checkCallingOrSelfCanSendSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    move-object/from16 v6, p7

    .line 515
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Landroid/app/PendingIntent;)V

    return-void

    :cond_14
    move-object/from16 v6, p7

    const/4 v11, -0x1

    const-wide/16 v13, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v0, p0

    move/from16 v2, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v12, p10

    move-object v1, v3

    move-object/from16 v3, p4

    .line 518
    invoke-direct/range {v0 .. v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextInternal(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZIZJ)V

    return-void
.end method

.method public blacklist setPhoneFactoryProxy(Lcom/android/internal/telephony/IccSmsInterfaceManager$PhoneFactoryProxy;)V
    .registers 2

    .line 213
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhoneFactoryProxy:Lcom/android/internal/telephony/IccSmsInterfaceManager$PhoneFactoryProxy;

    return-void
.end method

.method public greylist-max-r setPremiumSmsPermission(Ljava/lang/String;I)V
    .registers 3

    .line 854
    iget-object p0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->setPremiumSmsPermission(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setSmscAddressOnIccEf(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 938
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsPermissions:Lcom/android/internal/telephony/SmsPermissions;

    const-string v1, "setSmscAddressOnIccEf"

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/SmsPermissions;->checkCallingOrSelfCanSetSmscAddress(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 940
    const-string p1, "Caller do not have permission to call SetSmscAddress"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 943
    :cond_11
    const-string p1, "setSmscAddressOnIccEf"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceNotOnHandlerThread(Ljava/lang/String;)V

    .line 944
    new-instance p1, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager-IA;)V

    .line 945
    monitor-enter p1

    .line 946
    :try_start_1d
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 947
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 948
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 949
    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_38

    .line 950
    iget-object p0, p1, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :catchall_38
    move-exception p0

    .line 949
    :try_start_39
    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public greylist-max-r updateMessageOnIccEf(Ljava/lang/String;II[B)Z
    .registers 14

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMessageOnIccEf: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ==> ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-static {p4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 290
    const-string v0, "Updating message on Icc"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 291
    const-string v0, "Updating message on Icc"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceAccessMessageOnICC(Ljava/lang/String;)V

    .line 292
    const-string v0, "updateMessageOnIccEf"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceNotOnHandlerThread(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const-string v1, "android:write_icc_sms"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4c

    return v0

    .line 297
    :cond_4c
    new-instance p1, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager-IA;)V

    .line 298
    monitor-enter p1

    .line 299
    :try_start_53
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_7a

    .line 306
    iget-object p3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p3

    const/4 p4, 0x1

    if-ne p4, p3, :cond_72

    .line 307
    iget-object p3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p3, p3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p3, p2, v8}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnSim(ILandroid/os/Message;)V

    goto :goto_92

    :catchall_6f
    move-exception v0

    move-object p0, v0

    goto :goto_9f

    .line 309
    :cond_72
    iget-object p3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p3, p3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p3, p2, v8}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnRuim(ILandroid/os/Message;)V

    goto :goto_92

    .line 313
    :cond_7a
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    if-nez v3, :cond_87

    .line 315
    invoke-virtual {v8}, Landroid/os/Message;->recycle()V

    .line 316
    monitor-exit p1

    return v0

    .line 318
    :cond_87
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->makeSmsRecordData(I[B)[B

    move-result-object v6

    const/16 v4, 0x6f3c

    const/4 v7, 0x0

    move v5, p2

    .line 319
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 323
    :goto_92
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 324
    monitor-exit p1
    :try_end_96
    .catchall {:try_start_53 .. :try_end_96} :catchall_6f

    .line 325
    iget-object p0, p1, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 324
    :goto_9f
    :try_start_9f
    monitor-exit p1
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_6f

    throw p0
.end method
