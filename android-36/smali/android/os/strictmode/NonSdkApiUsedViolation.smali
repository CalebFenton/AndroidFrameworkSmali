.class public final Landroid/os/strictmode/NonSdkApiUsedViolation;
.super Landroid/os/strictmode/Violation;
.source "NonSdkApiUsedViolation.java"


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method
