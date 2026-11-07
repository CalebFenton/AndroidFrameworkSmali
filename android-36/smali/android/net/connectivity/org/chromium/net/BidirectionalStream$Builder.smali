.class public abstract Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
.super Ljava/lang/Object;
.source "BidirectionalStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/BidirectionalStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# static fields
.field public static final blacklist STREAM_PRIORITY_HIGHEST:I = 0x4

.field public static final blacklist STREAM_PRIORITY_IDLE:I = 0x0

.field public static final blacklist STREAM_PRIORITY_LOW:I = 0x2

.field public static final blacklist STREAM_PRIORITY_LOWEST:I = 0x1

.field public static final blacklist STREAM_PRIORITY_MEDIUM:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
.end method

.method public blacklist addRequestAnnotation(Ljava/lang/Object;)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
    .registers 2
    .param p1, "annotation"    # Ljava/lang/Object;

    .line 98
    return-object p0
.end method

.method public blacklist bindToNetwork(J)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
    .registers 3
    .param p1, "networkHandle"    # J

    .line 151
    return-object p0
.end method

.method public abstract blacklist build()Landroid/net/connectivity/org/chromium/net/BidirectionalStream;
.end method

.method public abstract blacklist delayRequestHeadersUntilFirstFlush(Z)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
.end method

.method public abstract blacklist setHttpMethod(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
.end method

.method public abstract blacklist setPriority(I)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
.end method

.method public blacklist setTrafficStatsTag(I)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
    .registers 2
    .param p1, "tag"    # I

    .line 118
    return-object p0
.end method

.method public blacklist setTrafficStatsUid(I)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
    .registers 2
    .param p1, "uid"    # I

    .line 136
    return-object p0
.end method
