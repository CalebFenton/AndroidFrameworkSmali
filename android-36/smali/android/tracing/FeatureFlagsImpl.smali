.class public final Landroid/tracing/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/tracing/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist clientSideProtoLogging()Z
    .registers 2

    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist perfettoIme()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist perfettoImeTracing()Z
    .registers 2

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public greylist perfettoProtologTracing()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public greylist perfettoTransitionTracing()Z
    .registers 2

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public greylist perfettoViewCaptureTracing()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public greylist perfettoWmDump()Z
    .registers 2

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public greylist perfettoWmDumpCts()Z
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public greylist perfettoWmTracing()Z
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public greylist systemServerLargePerfettoShmemBuffer()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method
