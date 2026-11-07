.class public final Landroid/os/strictmode/UntaggedSocketViolation;
.super Landroid/os/strictmode/Violation;
.source "UntaggedSocketViolation.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 21
    const-string v0, "Untagged socket detected; use TrafficStats.setTrafficStatsTag() to track all network usage"

    invoke-direct {p0, v0}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method
