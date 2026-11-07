.class Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;
.super Ljava/lang/Object;
.source "BtSmsInterfaceManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/BtSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapMessageSender"
.end annotation


# instance fields
.field final blacklist mDeliveryIntent:Landroid/app/PendingIntent;

.field final blacklist mDestAddr:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mDevice:Landroid/bluetooth/BluetoothDevice;

.field private blacklist mMessage:Ljava/lang/String;

.field final blacklist mSentIntent:Landroid/app/PendingIntent;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/BtSmsInterfaceManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/BtSmsInterfaceManager;Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->this$0:Lcom/android/internal/telephony/BtSmsInterfaceManager;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance p1, Landroid/net/Uri$Builder;

    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    .line 94
    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "tel"

    .line 95
    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 93
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mDestAddr:Ljava/util/Collection;

    .line 97
    iput-object p3, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mMessage:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 99
    iput-object p5, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mSentIntent:Landroid/app/PendingIntent;

    .line 100
    iput-object p6, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mDeliveryIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 11

    .line 105
    const-string v0, "Service connected"

    const-string v1, "BtSmsInterfaceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12

    if-eq p1, v0, :cond_c

    return-void

    .line 109
    :cond_c
    move-object v2, p2

    check-cast v2, Landroid/bluetooth/BluetoothMapClient;

    .line 110
    iget-object p1, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mMessage:Ljava/lang/String;

    if-eqz p1, :cond_28

    .line 111
    const-string p1, "Sending message thru bluetooth"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v3, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mDestAddr:Ljava/util/Collection;

    iget-object v5, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mMessage:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v7, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mDeliveryIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v2 .. v7}, Landroid/bluetooth/BluetoothMapClient;->sendMessage(Landroid/bluetooth/BluetoothDevice;Ljava/util/Collection;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z

    const/4 p1, 0x0

    .line 113
    iput-object p1, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mMessage:Ljava/lang/String;

    .line 115
    :cond_28
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    .line 116
    invoke-virtual {p0, v0, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    return-void
.end method

.method public whitelist onServiceDisconnected(I)V
    .registers 4

    .line 121
    iget-object p1, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mMessage:Ljava/lang/String;

    if-eqz p1, :cond_17

    .line 122
    const-string p1, "BtSmsInterfaceManager"

    const-string v0, "Bluetooth disconnected before sending the message"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p1, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->this$0:Lcom/android/internal/telephony/BtSmsInterfaceManager;

    iget-object v0, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mSentIntent:Landroid/app/PendingIntent;

    const/16 v1, 0x1b

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/BtSmsInterfaceManager;->-$$Nest$msendErrorInPendingIntent(Lcom/android/internal/telephony/BtSmsInterfaceManager;Landroid/app/PendingIntent;I)V

    const/4 p1, 0x0

    .line 124
    iput-object p1, p0, Lcom/android/internal/telephony/BtSmsInterfaceManager$MapMessageSender;->mMessage:Ljava/lang/String;

    :cond_17
    return-void
.end method
