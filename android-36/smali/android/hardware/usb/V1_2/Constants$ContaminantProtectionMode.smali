.class public final Landroid/hardware/usb/V1_2/Constants$ContaminantProtectionMode;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/V1_2/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ContaminantProtectionMode"
.end annotation


# static fields
.field public static final blacklist FORCE_DISABLE:I = 0x4

.field public static final blacklist FORCE_SINK:I = 0x1

.field public static final blacklist FORCE_SOURCE:I = 0x2

.field public static final blacklist NONE:I


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/usb/V1_2/Constants;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/usb/V1_2/Constants;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
