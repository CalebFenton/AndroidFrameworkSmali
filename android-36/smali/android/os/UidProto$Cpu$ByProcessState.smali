.class public final Landroid/os/UidProto$Cpu$ByProcessState;
.super Ljava/lang/Object;
.source "UidProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidProto$Cpu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ByProcessState"
.end annotation


# static fields
.field public static final greylist-max-o BY_FREQUENCY:J = 0x20b00000002L

.field public static final greylist-max-o PROCESS_STATE:J = 0x10e00000001L


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

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
