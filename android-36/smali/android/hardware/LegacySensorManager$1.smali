.class Landroid/hardware/LegacySensorManager$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "LegacySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/LegacySensorManager;-><init>(Landroid/hardware/SensorManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/hardware/LegacySensorManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/LegacySensorManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onRotationChanged(I)V
    .registers 2
    .param p1, "rotation"    # I

    .line 60
    invoke-static {p1}, Landroid/hardware/LegacySensorManager;->onRotationChanged(I)V

    .line 61
    return-void
.end method
