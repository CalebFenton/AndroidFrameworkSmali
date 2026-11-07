.class public final Landroid/os/UidProto$Cpu$ByFrequency;
.super Ljava/lang/Object;
.source "UidProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidProto$Cpu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ByFrequency"
.end annotation


# static fields
.field public static final greylist-max-o FREQUENCY_INDEX:J = 0x10500000001L

.field public static final greylist-max-o SCREEN_OFF_DURATION_MS:J = 0x10300000003L

.field public static final greylist-max-o TOTAL_DURATION_MS:J = 0x10300000002L


# direct methods
.method public constructor blacklist <init>(Landroid/os/UidProto$Cpu;)V
    .registers 2
    .param p1, "this$1"    # Landroid/os/UidProto$Cpu;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
