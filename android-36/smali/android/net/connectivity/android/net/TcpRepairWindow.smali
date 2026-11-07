.class public final Landroid/net/connectivity/android/net/TcpRepairWindow;
.super Ljava/lang/Object;
.source "TcpRepairWindow.java"


# instance fields
.field public final blacklist maxWindow:I

.field public final blacklist rcvWnd:I

.field public final blacklist rcvWndScale:I

.field public final blacklist rcvWup:I

.field public final blacklist sndWl1:I

.field public final blacklist sndWnd:I


# direct methods
.method public constructor blacklist <init>(IIIIII)V
    .registers 7
    .param p1, "sndWl1"    # I
    .param p2, "sndWnd"    # I
    .param p3, "maxWindow"    # I
    .param p4, "rcvWnd"    # I
    .param p5, "rcvWup"    # I
    .param p6, "rcvWndScale"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Landroid/net/connectivity/android/net/TcpRepairWindow;->sndWl1:I

    .line 39
    iput p2, p0, Landroid/net/connectivity/android/net/TcpRepairWindow;->sndWnd:I

    .line 40
    iput p3, p0, Landroid/net/connectivity/android/net/TcpRepairWindow;->maxWindow:I

    .line 41
    iput p4, p0, Landroid/net/connectivity/android/net/TcpRepairWindow;->rcvWnd:I

    .line 42
    iput p5, p0, Landroid/net/connectivity/android/net/TcpRepairWindow;->rcvWup:I

    .line 43
    iput p6, p0, Landroid/net/connectivity/android/net/TcpRepairWindow;->rcvWndScale:I

    .line 44
    return-void
.end method
