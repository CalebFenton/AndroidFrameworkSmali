.class public Landroid/database/StaleDataException;
.super Ljava/lang/RuntimeException;
.source "StaleDataException.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 28
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method
