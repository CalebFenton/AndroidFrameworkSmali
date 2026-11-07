.class public abstract Landroid/net/http/BidirectionalStream;
.super Ljava/lang/Object;
.source "BidirectionalStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/BidirectionalStream$Callback;,
        Landroid/net/http/BidirectionalStream$Builder;,
        Landroid/net/http/BidirectionalStream$BidirectionalStreamPriority;
    }
.end annotation


# static fields
.field public static final whitelist STREAM_PRIORITY_HIGHEST:I = 0x4

.field public static final whitelist STREAM_PRIORITY_IDLE:I = 0x0

.field public static final whitelist STREAM_PRIORITY_LOW:I = 0x2

.field public static final whitelist STREAM_PRIORITY_LOWEST:I = 0x1

.field public static final whitelist STREAM_PRIORITY_MEDIUM:I = 0x3


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist cancel()V
.end method

.method public abstract whitelist flush()V
.end method

.method public abstract whitelist getHeaders()Landroid/net/http/HeaderBlock;
.end method

.method public abstract whitelist getHttpMethod()Ljava/lang/String;
.end method

.method public abstract whitelist getPriority()I
.end method

.method public abstract whitelist getTrafficStatsTag()I
.end method

.method public abstract whitelist getTrafficStatsUid()I
.end method

.method public abstract whitelist hasTrafficStatsTag()Z
.end method

.method public abstract whitelist hasTrafficStatsUid()Z
.end method

.method public abstract whitelist isDelayRequestHeadersUntilFirstFlushEnabled()Z
.end method

.method public abstract whitelist isDone()Z
.end method

.method public abstract whitelist read(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract whitelist start()V
.end method

.method public abstract whitelist write(Ljava/nio/ByteBuffer;Z)V
.end method
