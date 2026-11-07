.class public final Landroid/os/SystemProto$WifiSupplicantState;
.super Ljava/lang/Object;
.source "SystemProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WifiSupplicantState"
.end annotation


# static fields
.field public static final greylist-max-o ASSOCIATED:I = 0x7

.field public static final greylist-max-o ASSOCIATING:I = 0x6

.field public static final greylist-max-o AUTHENTICATING:I = 0x5

.field public static final greylist-max-o COMPLETED:I = 0xa

.field public static final greylist-max-o DISCONNECTED:I = 0x1

.field public static final greylist-max-o DORMANT:I = 0xb

.field public static final greylist-max-o FOUR_WAY_HANDSHAKE:I = 0x8

.field public static final greylist-max-o GROUP_HANDSHAKE:I = 0x9

.field public static final greylist-max-o INACTIVE:I = 0x3

.field public static final greylist-max-o INTERFACE_DISABLED:I = 0x2

.field public static final greylist-max-o INVALID:I = 0x0

.field public static final greylist-max-o NAME:J = 0x10e00000001L

.field public static final greylist-max-o SCANNING:I = 0x4

.field public static final greylist-max-o TOTAL:J = 0x10b00000002L

.field public static final greylist-max-o UNINITIALIZED:I = 0xc


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

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
