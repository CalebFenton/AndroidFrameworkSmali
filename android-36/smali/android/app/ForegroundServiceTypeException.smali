.class public abstract Landroid/app/ForegroundServiceTypeException;
.super Landroid/app/ServiceStartNotAllowedException;
.source "ForegroundServiceTypeException.java"


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Landroid/app/ServiceStartNotAllowedException;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method
