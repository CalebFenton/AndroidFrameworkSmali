.class public final Landroid/os/strictmode/IncorrectContextUseViolation;
.super Landroid/os/strictmode/Violation;
.source "IncorrectContextUseViolation.java"


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "originStack"    # Ljava/lang/Throwable;

    .line 33
    invoke-direct {p0, p1}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p2}, Landroid/os/strictmode/IncorrectContextUseViolation;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 35
    return-void
.end method
