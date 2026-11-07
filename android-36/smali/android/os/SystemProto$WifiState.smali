.class public final Landroid/os/SystemProto$WifiState;
.super Ljava/lang/Object;
.source "SystemProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WifiState"
.end annotation


# static fields
.field public static final greylist-max-o NAME:J = 0x10e00000001L

.field public static final greylist-max-o OFF:I = 0x0

.field public static final greylist-max-o OFF_SCANNING:I = 0x1

.field public static final greylist-max-o ON_CONNECTED_P2P:I = 0x5

.field public static final greylist-max-o ON_CONNECTED_STA:I = 0x4

.field public static final greylist-max-o ON_CONNECTED_STA_P2P:I = 0x6

.field public static final greylist-max-o ON_DISCONNECTED:I = 0x3

.field public static final greylist-max-o ON_NO_NETWORKS:I = 0x2

.field public static final greylist-max-o SOFT_AP:I = 0x7

.field public static final greylist-max-o TOTAL:J = 0x10b00000002L


# direct methods
.method public constructor blacklist <init>(Landroid/os/SystemProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/SystemProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
