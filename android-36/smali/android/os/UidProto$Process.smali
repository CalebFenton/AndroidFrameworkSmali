.class public final Landroid/os/UidProto$Process;
.super Ljava/lang/Object;
.source "UidProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Process"
.end annotation


# static fields
.field public static final greylist-max-o ANR_COUNT:J = 0x10500000006L

.field public static final greylist-max-o CRASH_COUNT:J = 0x10500000007L

.field public static final greylist-max-o FOREGROUND_DURATION_MS:J = 0x10300000004L

.field public static final greylist-max-o NAME:J = 0x10900000001L

.field public static final greylist-max-o START_COUNT:J = 0x10500000005L

.field public static final greylist-max-o SYSTEM_DURATION_MS:J = 0x10300000003L

.field public static final greylist-max-o USER_DURATION_MS:J = 0x10300000002L


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

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
