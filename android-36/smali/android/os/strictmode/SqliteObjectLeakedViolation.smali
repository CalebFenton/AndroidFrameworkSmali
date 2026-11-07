.class public final Landroid/os/strictmode/SqliteObjectLeakedViolation;
.super Landroid/os/strictmode/Violation;
.source "SqliteObjectLeakedViolation.java"


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "originStack"    # Ljava/lang/Throwable;

    .line 22
    invoke-direct {p0, p1}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p2}, Landroid/os/strictmode/SqliteObjectLeakedViolation;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 24
    return-void
.end method
