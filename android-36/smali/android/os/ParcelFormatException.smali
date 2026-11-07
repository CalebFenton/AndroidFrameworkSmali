.class public Landroid/os/ParcelFormatException;
.super Ljava/lang/RuntimeException;
.source "ParcelFormatException.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 27
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method
