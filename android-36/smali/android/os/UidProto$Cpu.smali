.class public final Landroid/os/UidProto$Cpu;
.super Ljava/lang/Object;
.source "UidProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Cpu"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UidProto$Cpu$ByProcessState;,
        Landroid/os/UidProto$Cpu$ByFrequency;
    }
.end annotation


# static fields
.field public static final greylist-max-o BACKGROUND:I = 0x3

.field public static final greylist-max-o BY_FREQUENCY:J = 0x20b00000003L

.field public static final greylist-max-o BY_PROCESS_STATE:J = 0x20b00000004L

.field public static final greylist-max-o CACHED:I = 0x6

.field public static final greylist-max-o FOREGROUND:I = 0x2

.field public static final greylist-max-o FOREGROUND_SERVICE:I = 0x1

.field public static final greylist-max-o HEAVY_WEIGHT:I = 0x5

.field public static final greylist-max-o SYSTEM_DURATION_MS:J = 0x10300000002L

.field public static final greylist-max-o TOP:I = 0x0

.field public static final greylist-max-o TOP_SLEEPING:I = 0x4

.field public static final greylist-max-o USER_DURATION_MS:J = 0x10300000001L


# direct methods
.method public constructor blacklist <init>(Landroid/os/UidProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/UidProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
