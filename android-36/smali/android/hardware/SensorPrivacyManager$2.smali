.class Landroid/hardware/SensorPrivacyManager$2;
.super Ljava/lang/Object;
.source "SensorPrivacyManager.java"

# interfaces
.implements Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILjava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$listener:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

.field final synthetic blacklist val$sensor:I


# direct methods
.method constructor blacklist <init>(Landroid/hardware/SensorPrivacyManager;ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .registers 4
    .param p1, "this$0"    # Landroid/hardware/SensorPrivacyManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 525
    iput p2, p0, Landroid/hardware/SensorPrivacyManager$2;->val$sensor:I

    iput-object p3, p0, Landroid/hardware/SensorPrivacyManager$2;->val$listener:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onSensorPrivacyChanged(IZ)V
    .registers 3
    .param p1, "sensor"    # I
    .param p2, "enabled"    # Z

    .line 534
    return-void
.end method

.method public whitelist onSensorPrivacyChanged(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;)V
    .registers 4
    .param p1, "params"    # Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;

    .line 528
    invoke-virtual {p1}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->getSensor()I

    move-result v0

    iget v1, p0, Landroid/hardware/SensorPrivacyManager$2;->val$sensor:I

    if-ne v0, v1, :cond_d

    .line 529
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager$2;->val$listener:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    invoke-interface {v0, p1}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;->onSensorPrivacyChanged(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;)V

    .line 531
    :cond_d
    return-void
.end method
