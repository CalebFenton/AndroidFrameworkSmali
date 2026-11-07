.class public abstract Landroid/nfc/cardemulation/HostNfcFService;
.super Landroid/app/Service;
.source "HostNfcFService.java"


# static fields
.field public static final whitelist DEACTIVATION_LINK_LOSS:I = 0x0

.field public static final greylist-max-o KEY_DATA:Ljava/lang/String; = "data"

.field public static final greylist-max-o KEY_MESSENGER:Ljava/lang/String; = "messenger"

.field public static final greylist-max-o MSG_COMMAND_PACKET:I = 0x0

.field public static final greylist-max-o MSG_DEACTIVATED:I = 0x2

.field public static final greylist-max-o MSG_RESPONSE_PACKET:I = 0x1

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.nfc.cardemulation.action.HOST_NFCF_SERVICE"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.nfc.cardemulation.host_nfcf_service"

.field static final greylist-max-o TAG:Ljava/lang/String; = "NfcFService"


# instance fields
.field final greylist-max-o mMessenger:Landroid/os/Messenger;

.field greylist-max-o mNfcService:Landroid/os/Messenger;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 106
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    .line 196
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/nfc/cardemulation/HostNfcFServiceMsgHandler;

    invoke-direct {v1, p0}, Landroid/nfc/cardemulation/HostNfcFServiceMsgHandler;-><init>(Landroid/nfc/cardemulation/HostNfcFService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/nfc/cardemulation/HostNfcFService;->mMessenger:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public greylist getMessenger()Landroid/os/Messenger;
    .registers 2

    .line 178
    iget-object v0, p0, Landroid/nfc/cardemulation/HostNfcFService;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method public greylist getNfcService()Landroid/os/Messenger;
    .registers 2

    .line 170
    iget-object v0, p0, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    return-object v0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 200
    iget-object v0, p0, Landroid/nfc/cardemulation/HostNfcFService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist onDeactivated(I)V
.end method

.method public abstract whitelist processNfcFPacket([BLandroid/os/Bundle;)[B
.end method

.method public final whitelist sendResponsePacket([B)V
    .registers 7
    .param p1, "responsePacket"    # [B

    .line 210
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 211
    .local v0, "responseMsg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 212
    .local v1, "dataBundle":Landroid/os/Bundle;
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 213
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 215
    :try_start_13
    iget-object v2, p0, Landroid/nfc/cardemulation/HostNfcFService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_19

    .line 218
    goto :goto_21

    .line 216
    :catch_19
    move-exception v2

    .line 217
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TAG"

    const-string v4, "Local messenger has died."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method

.method public greylist setNfcService(Landroid/os/Messenger;)V
    .registers 2
    .param p1, "nfcService"    # Landroid/os/Messenger;

    .line 185
    iput-object p1, p0, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    .line 186
    return-void
.end method
