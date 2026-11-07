.class public final synthetic Landroid/provider/DeviceConfig$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public final synthetic blacklist f$1:Landroid/provider/DeviceConfig$Properties;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/DeviceConfig$$ExternalSyntheticLambda0;->f$0:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    iput-object p2, p0, Landroid/provider/DeviceConfig$$ExternalSyntheticLambda0;->f$1:Landroid/provider/DeviceConfig$Properties;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/provider/DeviceConfig$$ExternalSyntheticLambda0;->f$0:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    iget-object v1, p0, Landroid/provider/DeviceConfig$$ExternalSyntheticLambda0;->f$1:Landroid/provider/DeviceConfig$Properties;

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->lambda$handleChange$1(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
