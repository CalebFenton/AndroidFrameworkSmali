.class public final Landroid/hardware/usb/V1_0/Constants$PortMode;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/V1_0/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PortMode"
.end annotation


# static fields
.field public static final blacklist DFP:I = 0x2

.field public static final blacklist DRP:I = 0x3

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist NUM_MODES:I = 0x4

.field public static final blacklist UFP:I = 0x1


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/usb/V1_0/Constants;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/usb/V1_0/Constants;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
