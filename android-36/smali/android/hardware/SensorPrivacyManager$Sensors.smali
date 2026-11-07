.class public Landroid/hardware/SensorPrivacyManager$Sensors;
.super Ljava/lang/Object;
.source "SensorPrivacyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorPrivacyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sensors"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorPrivacyManager$Sensors$Sensor;
    }
.end annotation


# static fields
.field public static final whitelist CAMERA:I = 0x2

.field public static final whitelist MICROPHONE:I = 0x1


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
