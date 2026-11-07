.class Lcom/android/internal/os/ZygoteSecurityException;
.super Ljava/lang/RuntimeException;
.source "ZygoteSecurityException.java"


# direct methods
.method constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method
