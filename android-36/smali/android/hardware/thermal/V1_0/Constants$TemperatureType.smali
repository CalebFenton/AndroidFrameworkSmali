.class public final Landroid/hardware/thermal/V1_0/Constants$TemperatureType;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/thermal/V1_0/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TemperatureType"
.end annotation


# static fields
.field public static final blacklist BATTERY:I = 0x2

.field public static final blacklist CPU:I = 0x0

.field public static final blacklist GPU:I = 0x1

.field public static final blacklist SKIN:I = 0x3

.field public static final blacklist UNKNOWN:I = -0x1


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/thermal/V1_0/Constants;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/thermal/V1_0/Constants;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
