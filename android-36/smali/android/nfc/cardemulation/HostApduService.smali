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
.field public static final whitelist DEACTIVATION_DESELECTED:I = 0x1

.field public static final whitelist DEACTIVATION_LINK_LOSS:I = 0x0

.field private static final blacklist EVENT_HCE_RESPONSE_APDU:Ljava/lang/String; = "hce_response_apdu"

.field public static final greylist-max-o KEY_DATA:Ljava/lang/String; = "data"

.field public static final blacklist KEY_POLLING_LOOP_FRAMES_BUNDLE:Ljava/lang/String; = "android.nfc.cardemulation.POLLING_FRAMES"

.field public static final greylist-max-o MSG_COMMAND_APDU:I = 0x0

.field public static final blacklist MSG_COMMAND_APDU_ACK:I = 0x5

.field public static final greylist-max-o MSG_DEACTIVATED:I = 0x2

.field public static final blacklist MSG_POLLING_LOOP:I = 0x4

.field public static final blacklist MSG_POLLING_LOOP_ACK:I = 0x7

.field public static final greylist-max-o MSG_RESPONSE_APDU:I = 0x1

.field public static final blacklist MSG_RESPONSE_APDU_ACK:I = 0x6

.field public static final greylist-max-o MSG_UNHANDLED:I = 0x3

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.nfc.cardemulation.action.HOST_APDU_SERVICE"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.nfc.cardemulation.host_apdu_service"

.field static final greylist-max-o TAG:Ljava/lang/String; = "ApduService"


# instance fields
.field private blacklist mCookieRandom:Ljava/util/Random;

.field final greylist-max-o mMessenger:Landroid/os/Messenger;

.field greylist-max-o mNfcService:Landroid/os/Messenger;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgenerateApduAckCookie(Landroid/nfc/cardemulation/HostApduService;)I
    .registers 1

    invoke-direct {p0}, Landroid/nfc/cardemulation/HostApduService;->generateApduAckCookie()I

    move-result p0

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 174
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    .line 283
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/nfc/cardemulation/HostApduService$MsgHandler;

    invoke-direct {v1, p0}, Landroid/nfc/cardemulation/HostApduService$MsgHandler;-><init>(Landroid/nfc/cardemulation/HostApduService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    .line 285
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Landroid/nfc/cardemulation/HostApduService;->mCookieRandom:Ljava/util/Random;

    return-void
.end method

.method private blacklist generateApduAckCookie()I
    .registers 3

    .line 474
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 475
    .local v0, "token":[B
    invoke-virtual {p0}, Landroid/nfc/cardemulation/HostApduService;->getCookieRandom()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 476
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    return v1
.end method


# virtual methods
.method public blacklist getCookieRandom()Ljava/util/Random;
    .registers 2

    .line 320
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService;->mCookieRandom:Ljava/util/Random;

    return-object v0
.end method

.method public blacklist getMessenger()Landroid/os/Messenger;
    .registers 2

    .line 313
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method public blacklist getMsgHandler()Landroid/nfc/cardemulation/HostApduService$MsgHandler;
    .registers 2

    .line 292
    new-instance v0, Landroid/nfc/cardemulation/HostApduService$MsgHandler;

    invoke-direct {v0, p0}, Landroid/nfc/cardemulation/HostApduService$MsgHandler;-><init>(Landroid/nfc/cardemulation/HostApduService;)V

    return-object v0
.end method

.method public blacklist getNfcService()Landroid/os/Messenger;
    .registers 2

    .line 299
    iget-object v0, p0, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    return-object v0
.end method

.method public final whitelist notifyUnhandled()V
    .registers 5

    .line 502
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 504
    .local v0, "unhandledMsg":Landroid/os/Message;
    :try_start_6
    invoke-virtual {p0}, Landroid/nfc/cardemulation/HostApduService;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 507
    goto :goto_16

    .line 505
    :catch_e
    move-exception v1

    .line 506
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TAG"

    const-string v3, "Local messenger has died."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 443
    invoke-virtual {p0}, Landroid/nfc/cardemulation/HostApduService;->getMessenger()Landroid/os/Messenger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist onDeactivated(I)V
.end method

.method public abstract whitelist processCommandApdu([BLandroid/os/Bundle;)[B
.end method

.method public whitelist processPollingFrames(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/PollingFrame;",
            ">;)V"
        }
    .end annotation

    .line 524
    .local p1, "frames":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/PollingFrame;>;"
    return-void
.end method

.method public final whitelist sendResponseApdu([B)V
    .registers 8
    .param p1, "responseApdu"    # [B

    .line 453
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 454
    .local v0, "responseMsg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 455
    .local v1, "dataBundle":Landroid/os/Bundle;
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 456
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 458
    const/4 v2, 0x0

    .line 459
    .local v2, "ackCookie":I
    invoke-static {}, Lcom/android/nfc/module/flags/Flags;->nfcHceLatencyEvents()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 460
    invoke-direct {p0}, Landroid/nfc/cardemulation/HostApduService;->generateApduAckCookie()I

    move-result v2

    .line 461
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 463
    const-string v3, "hce_response_apdu"

    invoke-static {v3, v2}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 467
    :cond_25
    :try_start_25
    invoke-virtual {p0}, Landroid/nfc/cardemulation/HostApduService;->getMessenger()Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2c} :catch_2d

    .line 470
    goto :goto_35

    .line 468
    :catch_2d
    move-exception v3

    .line 469
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "TAG"

    const-string v5, "Local messenger has died."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_35
    return-void
.end method

.method public blacklist setNfcService(Landroid/os/Messenger;)V
    .registers 2
    .param p1, "nfcService"    # Landroid/os/Messenger;

    .line 306
    iput-object p1, p0, Landroid/nfc/cardemulation/HostApduService;->mNfcService:Landroid/os/Messenger;

    .line 307
    return-void
.end method
