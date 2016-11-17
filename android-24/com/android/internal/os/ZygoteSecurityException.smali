.class Lcom/android/internal/os/ZygoteSecurityException;
.super Ljava/lang/RuntimeException;
.source "ZygoteSecurityException.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3
    .line 23
    return-void
.end method
