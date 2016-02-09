.class final Landroid/os/StrictMode$5;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 6

    #@0
    .prologue
    .line 1603
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 1604
    .local v0, "now":J
    invoke-static {}, Landroid/os/StrictMode;->-get4()J

    #@7
    move-result-wide v2

    #@8
    sub-long v2, v0, v2

    #@a
    const-wide/16 v4, 0x7530

    #@c
    cmp-long v2, v2, v4

    #@e
    if-lez v2, :cond_0

    #@10
    .line 1605
    invoke-static {v0, v1}, Landroid/os/StrictMode;->-set0(J)J

    #@13
    .line 1606
    invoke-static {}, Landroid/os/StrictMode;->conditionallyCheckInstanceCounts()V

    #@16
    .line 1608
    :cond_0
    const/4 v2, 0x1

    #@17
    return v2
.end method
