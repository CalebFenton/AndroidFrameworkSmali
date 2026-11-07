.class public Landroid/media/SubtitleTrack$Cue;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SubtitleTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cue"
.end annotation


# instance fields
.field public greylist-max-o mEndTimeMs:J

.field public greylist-max-o mInnerTimesMs:[J

.field public greylist-max-o mNextInRun:Landroid/media/SubtitleTrack$Cue;

.field public greylist-max-o mRunID:J

.field public greylist-max-o mStartTimeMs:J


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o onTime(J)V
    .registers 3
    .param p1, "timeMs"    # J

    .line 591
    return-void
.end method
