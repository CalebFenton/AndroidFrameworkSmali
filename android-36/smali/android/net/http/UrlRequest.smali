.class public abstract Landroid/net/http/UrlRequest;
.super Ljava/lang/Object;
.source "UrlRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/UrlRequest$StatusListener;,
        Landroid/net/http/UrlRequest$Status;,
        Landroid/net/http/UrlRequest$UrlRequestStatus;,
        Landroid/net/http/UrlRequest$Callback;,
        Landroid/net/http/UrlRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist REQUEST_PRIORITY_HIGHEST:I = 0x4

.field public static final whitelist REQUEST_PRIORITY_IDLE:I = 0x0

.field public static final whitelist REQUEST_PRIORITY_LOW:I = 0x2

.field public static final whitelist REQUEST_PRIORITY_LOWEST:I = 0x1

.field public static final whitelist REQUEST_PRIORITY_MEDIUM:I = 0x3


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist cancel()V
.end method

.method public abstract whitelist followRedirect()V
.end method

.method public abstract whitelist getHeaders()Landroid/net/http/HeaderBlock;
.end method

.method public abstract whitelist getHttpMethod()Ljava/lang/String;
.end method

.method public abstract whitelist getPriority()I
.end method

.method public abstract whitelist getStatus(Landroid/net/http/UrlRequest$StatusListener;)V
.end method

.method public abstract whitelist getTrafficStatsTag()I
.end method

.method public abstract whitelist getTrafficStatsUid()I
.end method

.method public abstract whitelist hasTrafficStatsTag()Z
.end method

.method public abstract whitelist hasTrafficStatsUid()Z
.end method

.method public abstract whitelist isCacheDisabled()Z
.end method

.method public abstract whitelist isDirectExecutorAllowed()Z
.end method

.method public abstract whitelist isDone()Z
.end method

.method public abstract whitelist read(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract whitelist start()V
.end method
