.class public abstract Landroid/nfc/cardemulation/HostApduService;
.super Landroid/app/Service;
.source "HostApduService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/HostApduService$MsgHandler;
    }
.end annotation


# static fields
.field public static final DEACTIVATION_DESELECTED:I = 0x1

.field public static final DEACTIVATION_LINK_LOSS:I = 0x0

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final MSG_COMMAND_APDU:I = 0x0

.field public static final MSG_DEACTIVATED:I = 0x2

.field public static final MSG_RESPONSE_APDU:I = 0x1

.field public static final MSG_UNHANDLED:I = 0x3

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.nfc.cardemulation.action.HOST_APDU_SERVICE"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.nfc.cardemulation.host_apdu_service"

.field static final TAG:Ljava/lang/String; = "ApduService"


# instance fields
.field final mMessenger:Landroid/os/Messenger;

.field mNfcService:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 144
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 225
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    #@6
    .line 227
    new-instance v0, Landroid/os/Messenger;

    #@8
    new-instance v1, Landroid/nfc/cardemulation/HostApduService$MsgHandler;

    #@a
    invoke-direct {v1, p0}, Landroid/nfc/cardemulation/HostApduService$MsgHandler;-><init>(Landroid/nfc/cardemulation/HostApduService;)V

    #@d
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@10
    iput-object v0, p0, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    #@12
    .line 144
    return-void
.end method


# virtual methods
.method public final notifyUnhandled()V
    .locals 4

    #@0
    .prologue
    .line 345
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x3

    #@2
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@5
    move-result-object v1

    #@6
    .line 347
    .local v1, "unhandledMsg":Landroid/os/Message;
    :try_start_0
    iget-object v2, p0, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    #@8
    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 344
    :goto_0
    return-void

    #@c
    .line 348
    :catch_0
    move-exception v0

    #@d
    .line 349
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TAG"

    #@10
    const-string/jumbo v3, "Local messenger has died."

    #@13
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    goto :goto_0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 301
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    #@2
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public abstract onDeactivated(I)V
.end method

.method public abstract processCommandApdu([BLandroid/os/Bundle;)[B
.end method

.method public final sendResponseApdu([B)V
    .locals 5
    .param p1, "responseApdu"    # [B

    #@0
    .prologue
    .line 311
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@5
    move-result-object v2

    #@6
    .line 312
    .local v2, "responseMsg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    #@8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@b
    .line 313
    .local v0, "dataBundle":Landroid/os/Bundle;
    const-string/jumbo v3, "data"

    #@e
    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    #@11
    .line 314
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    #@14
    .line 316
    :try_start_0
    iget-object v3, p0, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    #@16
    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 310
    :goto_0
    return-void

    #@1a
    .line 317
    :catch_0
    move-exception v1

    #@1b
    .line 318
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TAG"

    #@1e
    const-string/jumbo v4, "Local messenger has died."

    #@21
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    goto :goto_0
.end method
