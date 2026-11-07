.class public final Landroid/os/strictmode/CustomViolation;
.super Landroid/os/strictmode/Violation;
.source "CustomViolation.java"


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0, p1}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method
