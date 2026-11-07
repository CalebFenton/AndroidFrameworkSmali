.class public final Landroid/os/UidProto$Package$Service;
.super Ljava/lang/Object;
.source "UidProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidProto$Package;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Service"
.end annotation


# static fields
.field public static final greylist-max-o LAUNCH_COUNT:J = 0x10500000004L

.field public static final greylist-max-o NAME:J = 0x10900000001L

.field public static final greylist-max-o START_COUNT:J = 0x10500000003L

.field public static final greylist-max-o START_DURATION_MS:J = 0x10300000002L


# direct methods
.method public constructor blacklist <init>(Landroid/os/UidProto$Package;)V
    .registers 2
    .param p1, "this$1"    # Landroid/os/UidProto$Package;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
