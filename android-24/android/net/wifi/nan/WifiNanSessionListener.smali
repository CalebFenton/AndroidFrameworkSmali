.class public Landroid/net/wifi/nan/WifiNanSessionListener;
.super Ljava/lang/Object;
.source "WifiNanSessionListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nan/WifiNanSessionListener$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final FAIL_REASON_INVALID_ARGS:I = 0x1

.field public static final FAIL_REASON_NO_MATCH_SESSION:I = 0x2

.field public static final FAIL_REASON_NO_RESOURCES:I = 0x0

.field public static final FAIL_REASON_OTHER:I = 0x3

.field public static final LISTEN_HIDDEN_FLAGS:I = 0xf5

.field public static final LISTEN_MATCH:I = 0x10

.field public static final LISTEN_MESSAGE_RECEIVED:I = 0x80

.field public static final LISTEN_MESSAGE_SEND_FAIL:I = 0x40

.field public static final LISTEN_MESSAGE_SEND_SUCCESS:I = 0x20

.field public static final LISTEN_PUBLISH_FAIL:I = 0x1

.field public static final LISTEN_PUBLISH_TERMINATED:I = 0x2

.field public static final LISTEN_SUBSCRIBE_FAIL:I = 0x4

.field public static final LISTEN_SUBSCRIBE_TERMINATED:I = 0x8

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE2:Ljava/lang/String; = "message2"

.field private static final MESSAGE_BUNDLE_KEY_PEER_ID:Ljava/lang/String; = "peer_id"

.field private static final TAG:Ljava/lang/String; = "WifiNanSessionListener"

.field public static final TERMINATE_REASON_DONE:I = 0x0

.field public static final TERMINATE_REASON_FAIL:I = 0x1

.field private static final VDBG:Z


# instance fields
.field public callback:Landroid/net/wifi/nan/IWifiNanSessionListener;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/net/wifi/nan/WifiNanSessionListener;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSessionListener;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 178
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/net/wifi/nan/WifiNanSessionListener;-><init>(Landroid/os/Looper;)V

    #@7
    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 349
    new-instance v0, Landroid/net/wifi/nan/WifiNanSessionListener$1;

    #@5
    invoke-direct {v0, p0}, Landroid/net/wifi/nan/WifiNanSessionListener$1;-><init>(Landroid/net/wifi/nan/WifiNanSessionListener;)V

    #@8
    iput-object v0, p0, Landroid/net/wifi/nan/WifiNanSessionListener;->callback:Landroid/net/wifi/nan/IWifiNanSessionListener;

    #@a
    .line 189
    new-instance v0, Landroid/net/wifi/nan/WifiNanSessionListener$2;

    #@c
    invoke-direct {v0, p0, p1}, Landroid/net/wifi/nan/WifiNanSessionListener$2;-><init>(Landroid/net/wifi/nan/WifiNanSessionListener;Landroid/os/Looper;)V

    #@f
    iput-object v0, p0, Landroid/net/wifi/nan/WifiNanSessionListener;->mHandler:Landroid/os/Handler;

    #@11
    .line 187
    return-void
.end method


# virtual methods
.method public onMatch(I[BI[BI)V
    .locals 0
    .param p1, "peerId"    # I
    .param p2, "serviceSpecificInfo"    # [B
    .param p3, "serviceSpecificInfoLength"    # I
    .param p4, "matchFilter"    # [B
    .param p5, "matchFilterLength"    # I

    #@0
    .prologue
    .line 295
    return-void
.end method

.method public onMessageReceived(I[BI)V
    .locals 0
    .param p1, "peerId"    # I
    .param p2, "message"    # [B
    .param p3, "messageLength"    # I

    #@0
    .prologue
    .line 342
    return-void
.end method

.method public onMessageSendFail(II)V
    .locals 0
    .param p1, "messageId"    # I
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 328
    return-void
.end method

.method public onMessageSendSuccess(I)V
    .locals 0
    .param p1, "messageId"    # I

    #@0
    .prologue
    .line 309
    return-void
.end method

.method public onPublishFail(I)V
    .locals 0
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 235
    return-void
.end method

.method public onPublishTerminated(I)V
    .locals 2
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 249
    const-string/jumbo v0, "WifiNanSessionListener"

    #@3
    const-string/jumbo v1, "onPublishTerminated: called in stub - override if interested or disable"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 248
    return-void
.end method

.method public onSubscribeFail(I)V
    .locals 0
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 260
    return-void
.end method

.method public onSubscribeTerminated(I)V
    .locals 2
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 275
    const-string/jumbo v0, "WifiNanSessionListener"

    #@3
    const-string/jumbo v1, "onSubscribeTerminated: called in stub - override if interested or disable"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 274
    return-void
.end method
