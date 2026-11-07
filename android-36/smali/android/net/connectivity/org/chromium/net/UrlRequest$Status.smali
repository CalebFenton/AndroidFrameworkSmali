.class public Landroid/net/connectivity/org/chromium/net/UrlRequest$Status;
.super Ljava/lang/Object;
.source "UrlRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/UrlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Status"
.end annotation


# static fields
.field public static final blacklist CONNECTING:I = 0xa

.field public static final blacklist DOWNLOADING_PAC_FILE:I = 0x5

.field public static final blacklist ESTABLISHING_PROXY_TUNNEL:I = 0x8

.field public static final blacklist IDLE:I = 0x0

.field public static final blacklist INVALID:I = -0x1

.field public static final blacklist READING_RESPONSE:I = 0xe

.field public static final blacklist RESOLVING_HOST:I = 0x9

.field public static final blacklist RESOLVING_HOST_IN_PAC_FILE:I = 0x7

.field public static final blacklist RESOLVING_PROXY_FOR_URL:I = 0x6

.field public static final blacklist SENDING_REQUEST:I = 0xc

.field public static final blacklist SSL_HANDSHAKE:I = 0xb

.field public static final blacklist WAITING_FOR_AVAILABLE_SOCKET:I = 0x2

.field public static final blacklist WAITING_FOR_CACHE:I = 0x4

.field public static final blacklist WAITING_FOR_DELEGATE:I = 0x3

.field public static final blacklist WAITING_FOR_RESPONSE:I = 0xd

.field public static final blacklist WAITING_FOR_STALLED_SOCKET_POOL:I = 0x1


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
