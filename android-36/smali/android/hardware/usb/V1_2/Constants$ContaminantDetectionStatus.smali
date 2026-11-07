.class public final Landroid/hardware/usb/V1_2/Constants$ContaminantDetectionStatus;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/V1_2/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ContaminantDetectionStatus"
.end annotation


# static fields
.field public static final blacklist DETECTED:I = 0x3

.field public static final blacklist DISABLED:I = 0x1

.field public static final blacklist NOT_DETECTED:I = 0x2

.field public static final blacklist NOT_SUPPORTED:I


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

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
