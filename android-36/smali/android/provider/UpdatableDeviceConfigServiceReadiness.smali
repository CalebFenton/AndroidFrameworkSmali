.class public final Landroid/provider/UpdatableDeviceConfigServiceReadiness;
.super Ljava/lang/Object;
.source "UpdatableDeviceConfigServiceReadiness.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static whitelist shouldStartUpdatableService()Z
    .registers 1

    .line 26
    const/4 v0, 0x0

    return v0
.end method
