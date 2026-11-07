.class public final synthetic Landroid/app/AppOpsManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    invoke-static {p1}, Landroid/app/AppOpsManager;->lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
