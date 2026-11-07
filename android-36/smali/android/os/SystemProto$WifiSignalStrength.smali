.class public final Landroid/os/SystemProto$WifiSignalStrength;
.super Ljava/lang/Object;
.source "SystemProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WifiSignalStrength"
.end annotation


# static fields
.field public static final greylist-max-o GOOD:I = 0x3

.field public static final greylist-max-o GREAT:I = 0x4

.field public static final greylist-max-o MODERATE:I = 0x2

.field public static final greylist-max-o NAME:J = 0x10e00000001L

.field public static final greylist-max-o NONE:I = 0x0

.field public static final greylist-max-o POOR:I = 0x1

.field public static final greylist-max-o TOTAL:J = 0x10b00000002L


# direct methods
.method public constructor blacklist <init>(Landroid/os/SystemProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/SystemProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
