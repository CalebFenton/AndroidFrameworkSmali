.class public final Landroid/os/strictmode/LeakedClosableViolation;
.super Landroid/os/strictmode/Violation;
.source "LeakedClosableViolation.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "allocationSite"    # Ljava/lang/Throwable;

    .line 21
    invoke-direct {p0, p1}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p2}, Landroid/os/strictmode/LeakedClosableViolation;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 23
    return-void
.end method
