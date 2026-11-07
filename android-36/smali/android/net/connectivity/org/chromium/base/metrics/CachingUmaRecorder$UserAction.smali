.class Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$UserAction;
.super Ljava/lang/Object;
.source "CachingUmaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserAction"
.end annotation


# instance fields
.field private final blacklist mElapsedRealtimeMillis:J

.field private final blacklist mName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;J)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMillis"    # J

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$UserAction;->mName:Ljava/lang/String;

    .line 196
    iput-wide p2, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$UserAction;->mElapsedRealtimeMillis:J

    .line 197
    return-void
.end method


# virtual methods
.method blacklist flushTo(Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;)V
    .registers 5
    .param p1, "recorder"    # Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    .line 201
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$UserAction;->mName:Ljava/lang/String;

    iget-wide v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$UserAction;->mElapsedRealtimeMillis:J

    invoke-interface {p1, v0, v1, v2}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->recordUserAction(Ljava/lang/String;J)V

    .line 202
    return-void
.end method
