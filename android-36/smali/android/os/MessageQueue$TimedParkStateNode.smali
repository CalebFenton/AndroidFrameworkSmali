.class final Landroid/os/MessageQueue$TimedParkStateNode;
.super Landroid/os/MessageQueue$StateNode;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimedParkStateNode"
.end annotation


# instance fields
.field blacklist mWhenToWake:J


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 2578
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/os/MessageQueue$StateNode;-><init>(I)V

    .line 2579
    return-void
.end method
