.class public final Landroid/os/CpuUsageProto$Load;
.super Ljava/lang/Object;
.source "CpuUsageProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CpuUsageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Load"
.end annotation


# static fields
.field public static final blacklist LOAD1:J = 0x10200000001L

.field public static final blacklist LOAD15:J = 0x10200000003L

.field public static final blacklist LOAD5:J = 0x10200000002L


# direct methods
.method public constructor blacklist <init>(Landroid/os/CpuUsageProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/CpuUsageProto;
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
