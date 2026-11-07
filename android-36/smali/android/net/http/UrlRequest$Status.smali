.class public Landroid/net/http/UrlRequest$Status;
.super Ljava/lang/Object;
.source "UrlRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/UrlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Status"
.end annotation


# static fields
.field public static final whitelist CONNECTING:I = 0xa

.field public static final whitelist DOWNLOADING_PAC_FILE:I = 0x5

.field public static final whitelist ESTABLISHING_PROXY_TUNNEL:I = 0x8

.field public static final whitelist IDLE:I = 0x0

.field public static final whitelist INVALID:I = -0x1

.field public static final whitelist READING_RESPONSE:I = 0xe

.field public static final whitelist RESOLVING_HOST:I = 0x9

.field public static final whitelist RESOLVING_HOST_IN_PAC_FILE:I = 0x7

.field public static final whitelist RESOLVING_PROXY_FOR_URL:I = 0x6

.field public static final whitelist SENDING_REQUEST:I = 0xc

.field public static final whitelist SSL_HANDSHAKE:I = 0xb

.field public static final whitelist WAITING_FOR_AVAILABLE_SOCKET:I = 0x2

.field public static final whitelist WAITING_FOR_CACHE:I = 0x4

.field public static final whitelist WAITING_FOR_DELEGATE:I = 0x3

.field public static final whitelist WAITING_FOR_RESPONSE:I = 0xd

.field public static final whitelist WAITING_FOR_STALLED_SOCKET_POOL:I = 0x1


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
