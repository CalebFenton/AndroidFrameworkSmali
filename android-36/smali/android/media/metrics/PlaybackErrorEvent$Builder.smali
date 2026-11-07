.class public final Landroid/media/metrics/PlaybackErrorEvent$Builder;
.super Ljava/lang/Object;
.source "PlaybackErrorEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/metrics/PlaybackErrorEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mErrorCode:I

.field private blacklist mException:Ljava/lang/Exception;

.field private blacklist mMetricsBundle:Landroid/os/Bundle;

.field private blacklist mSubErrorCode:I

.field private blacklist mTimeSinceCreatedMillis:J


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mErrorCode:I

    .line 322
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mTimeSinceCreatedMillis:J

    .line 323
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mMetricsBundle:Landroid/os/Bundle;

    .line 329
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/metrics/PlaybackErrorEvent;
    .registers 10

    .line 383
    iget-object v0, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_20

    .line 385
    iget-object v0, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .local v0, "stack":Ljava/lang/String;
    goto :goto_22

    .line 387
    .end local v0    # "stack":Ljava/lang/String;
    :cond_20
    const/4 v0, 0x0

    move-object v2, v0

    .line 390
    .local v2, "stack":Ljava/lang/String;
    :goto_22
    new-instance v1, Landroid/media/metrics/PlaybackErrorEvent;

    iget v3, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mErrorCode:I

    iget v4, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mSubErrorCode:I

    iget-wide v5, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mTimeSinceCreatedMillis:J

    iget-object v7, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mMetricsBundle:Landroid/os/Bundle;

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/media/metrics/PlaybackErrorEvent;-><init>(Ljava/lang/String;IIJLandroid/os/Bundle;Landroid/media/metrics/PlaybackErrorEvent-IA;)V

    .line 396
    .local v1, "o":Landroid/media/metrics/PlaybackErrorEvent;
    return-object v1
.end method

.method public whitelist setErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 344
    iput p1, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mErrorCode:I

    .line 345
    return-object p0
.end method

.method public whitelist setException(Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;
    .registers 2
    .param p1, "value"    # Ljava/lang/Exception;

    .line 336
    iput-object p1, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mException:Ljava/lang/Exception;

    .line 337
    return-object p0
.end method

.method public whitelist setMetricsBundle(Landroid/os/Bundle;)Landroid/media/metrics/PlaybackErrorEvent$Builder;
    .registers 2
    .param p1, "metricsBundle"    # Landroid/os/Bundle;

    .line 375
    iput-object p1, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mMetricsBundle:Landroid/os/Bundle;

    .line 376
    return-object p0
.end method

.method public whitelist setSubErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 353
    iput p1, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mSubErrorCode:I

    .line 354
    return-object p0
.end method

.method public whitelist setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackErrorEvent$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 364
    iput-wide p1, p0, Landroid/media/metrics/PlaybackErrorEvent$Builder;->mTimeSinceCreatedMillis:J

    .line 365
    return-object p0
.end method
