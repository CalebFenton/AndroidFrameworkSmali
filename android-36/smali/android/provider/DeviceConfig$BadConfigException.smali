.class public Landroid/provider/DeviceConfig$BadConfigException;
.super Ljava/lang/Exception;
.source "DeviceConfig.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/DeviceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BadConfigException"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1863
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
