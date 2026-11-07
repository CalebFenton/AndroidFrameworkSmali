.class public final Landroid/hardware/TriggerEvent;
.super Ljava/lang/Object;
.source "TriggerEvent.java"


# instance fields
.field public whitelist sensor:Landroid/hardware/Sensor;

.field public whitelist timestamp:J

.field public final whitelist values:[F


# direct methods
.method constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-array v0, p1, [F

    iput-object v0, p0, Landroid/hardware/TriggerEvent;->values:[F

    .line 61
    return-void
.end method
