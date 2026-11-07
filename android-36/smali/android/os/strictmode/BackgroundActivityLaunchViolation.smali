.class public Landroid/os/strictmode/BackgroundActivityLaunchViolation;
.super Landroid/os/strictmode/Violation;
.source "BackgroundActivityLaunchViolation.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method
