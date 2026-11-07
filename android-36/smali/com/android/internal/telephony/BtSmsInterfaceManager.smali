.class public Lcom/android/internal/telephony/BtSmsInterfaceManager;
.super Ljava/lang/Object;
.source "BtSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;
    }
.end annotation


# direct methods
.method static bridge synthetic blacklist -$$Nest$msendErrorInPendingIntent(Lcom/android/internal/telephony/BtSmsInterfaceManager;Landroid/app/PendingIntent;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/BtSmsInterfaceManager;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V
    .registers 3

    if-nez p1, :cond_3

    goto :goto_22

    .line 74
    :cond_3
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_6
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception p0

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PendingIntent.CanceledException: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/PendingIntent$CanceledException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BtSmsInterfaceManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    return-void
.end method


# virtual methods
.method public blacklist sendText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/telephony/SubscriptionInfo;)V
    .registers 10

    .line 49
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_c

    const/16 p1, 0x19

    .line 52
    invoke-direct {p0, p4, p1}, Lcom/android/internal/telephony/BtSmsInterfaceManager;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 55
    :cond_c
    invoke-virtual {p6}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_3a

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bluetooth device addr invalid: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BtSmsInterfaceManager"

    invoke-static {p3, p2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x1a

    .line 58
    invoke-direct {p0, p4, p1}, Lcom/android/internal/telephony/BtSmsInterfaceManager;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    .line 61
    :cond_3a
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object p1, p0

    new-instance p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;

    move-object p6, p5

    move-object p5, p4

    move-object p4, v1

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;-><init>(Lcom/android/internal/telephony/BtSmsInterfaceManager;Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    const/16 p1, 0x12

    invoke-virtual {v0, v2, p0, p1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result p0

    if-eqz p0, :cond_50

    return-void

    .line 66
    :cond_50
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Can\'t send message through BluetoothMapClient"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
