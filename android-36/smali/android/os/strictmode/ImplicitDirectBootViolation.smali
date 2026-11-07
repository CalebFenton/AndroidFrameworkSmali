.class public final Landroid/os/strictmode/ImplicitDirectBootViolation;
.super Landroid/os/strictmode/Violation;
.source "ImplicitDirectBootViolation.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    const-string v0, "Implicitly relying on automatic Direct Boot filtering; request explicit filtering with PackageManager.MATCH_DIRECT_BOOT flags"

    invoke-direct {p0, v0}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method
