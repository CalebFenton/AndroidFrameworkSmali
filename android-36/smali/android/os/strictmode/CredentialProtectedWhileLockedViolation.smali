.class public final Landroid/os/strictmode/CredentialProtectedWhileLockedViolation;
.super Landroid/os/strictmode/Violation;
.source "CredentialProtectedWhileLockedViolation.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method
