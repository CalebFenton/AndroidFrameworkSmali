.class public final Landroid/os/BackTraceProto$Stack;
.super Ljava/lang/Object;
.source "BackTraceProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BackTraceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Stack"
.end annotation


# static fields
.field public static final greylist-max-o DUMP:J = 0x10900000002L

.field public static final greylist-max-o DUMP_DURATION_NS:J = 0x10300000003L

.field public static final greylist-max-o PID:J = 0x10500000001L


# direct methods
.method public constructor blacklist <init>(Landroid/os/BackTraceProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/BackTraceProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
