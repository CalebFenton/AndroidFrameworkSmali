.class public final Landroid/os/SystemPropertiesProto$Log;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Log"
.end annotation


# static fields
.field public static final greylist-max-o TAG_STATS_LOG:J = 0x10900000002L

.field public static final greylist-max-o TAG_WIFI_HAL:J = 0x10900000001L


# direct methods
.method public constructor blacklist <init>(Landroid/os/SystemPropertiesProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/SystemPropertiesProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
