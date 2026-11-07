.class public final Landroid/os/PowerManagerProto$WakeLock;
.super Ljava/lang/Object;
.source "PowerManagerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManagerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WakeLock"
.end annotation


# static fields
.field public static final greylist-max-o HELD:J = 0x10800000003L

.field public static final greylist-max-o INTERNAL_COUNT:J = 0x10500000004L

.field public static final greylist-max-o PACKAGE_NAME:J = 0x10900000002L

.field public static final greylist-max-o TAG:J = 0x10900000001L

.field public static final greylist-max-o WORK_SOURCE:J = 0x10b00000005L


# direct methods
.method public constructor blacklist <init>(Landroid/os/PowerManagerProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/PowerManagerProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
