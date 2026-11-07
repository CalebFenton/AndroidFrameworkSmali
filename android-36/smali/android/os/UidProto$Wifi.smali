.class public final Landroid/os/UidProto$Wifi;
.super Ljava/lang/Object;
.source "UidProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Wifi"
.end annotation


# static fields
.field public static final greylist-max-o APPORTIONED_SCAN:J = 0x10b00000003L

.field public static final greylist-max-o BACKGROUND_SCAN:J = 0x10b00000004L

.field public static final greylist-max-o FULL_WIFI_LOCK_DURATION_MS:J = 0x10300000001L

.field public static final greylist-max-o RUNNING_DURATION_MS:J = 0x10300000002L


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

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
