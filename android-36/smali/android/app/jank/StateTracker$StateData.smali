.class public Landroid/app/jank/StateTracker$StateData;
.super Ljava/lang/Object;
.source "StateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/jank/StateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateData"
.end annotation


# instance fields
.field public blacklist mProcessed:Z

.field public blacklist mStateDataKey:Ljava/lang/String;

.field public blacklist mVsyncIdEnd:J

.field public blacklist mVsyncIdStart:J

.field public blacklist mWidgetCategory:Ljava/lang/String;

.field public blacklist mWidgetId:Ljava/lang/String;

.field public blacklist mWidgetState:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
