.class public abstract Landroid/nfc/cardemulation/HostNfcFService;
.super Landroid/app/Service;
.source "HostNfcFService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;
    }
.end annotation


# static fields
.field public static final DEACTIVATION_LINK_LOSS:I = 0x0

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_MESSENGER:Ljava/lang/String; = "messenger"

.field public static final MSG_COMMAND_PACKET:I = 0x0

.field public static final MSG_DEACTIVATED:I = 0x2

.field public static final MSG_RESPONSE_PACKET:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.nfc.cardemulation.action.HOST_NFCF_SERVICE"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.nfc.cardemulation.host_nfcf_service"

.field static final TAG:Ljava/lang/String; = "NfcFService"


# instance fields
.field final mMessenger:Landroid/os/Messenger;

.field mNfcService:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 167
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    #@6
    .line 169
    new-instance v0, Landroid/os/Messenger;

    #@8
    new-instance v1, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;

    #@a
    invoke-direct {v1, p0}, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;-><init>(Landroid/nfc/cardemulation/HostNfcFService;)V

    #@d
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@10
    iput-object v0, p0, Landroid/nfc/cardemulation/HostNfcFService;->mMessenger:Landroid/os/Messenger;

    #@12
    .line 102
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Landroid/nfc/cardemulation/HostNfcFService;->mMessenger:Landroid/os/Messenger;

    #@2
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public abstract onDeactivated(I)V
.end method

.method public abstract processNfcFPacket([BLandroid/os/Bundle;)[B
.end method

.method public final sendResponsePacket([B)V
    .locals 5
    .param p1, "responsePacket"    # [B

    #@0
    .prologue
    .line 241
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@5
    move-result-object v2

    #@6
    .line 242
    .local v2, "responseMsg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    #@8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@b
    .line 243
    .local v0, "dataBundle":Landroid/os/Bundle;
    const-string/jumbo v3, "data"

    #@e
    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    #@11
    .line 244
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    #@14
    .line 246
    :try_start_0
    iget-object v3, p0, Landroid/nfc/cardemulation/HostNfcFService;->mMessenger:Landroid/os/Messenger;

    #@16
    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 240
    :goto_0
    return-void

    #@1a
    .line 247
    :catch_0
    move-exception v1

    #@1b
    .line 248
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TAG"

    #@1e
    const-string/jumbo v4, "Local messenger has died."

    #@21
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    goto :goto_0
.end method
