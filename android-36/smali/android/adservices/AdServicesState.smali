.class public Landroid/adservices/AdServicesState;
.super Ljava/lang/Object;
.source "AdServicesState.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist isAdServicesStateEnabled()Z
    .registers 1

    .line 30
    const/4 v0, 0x1

    return v0
.end method
