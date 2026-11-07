.class public Landroid/os/Binder$PropagateWorkSourceTransactListener;
.super Ljava/lang/Object;
.source "Binder.java"

# interfaces
.implements Landroid/os/Binder$ProxyTransactListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Binder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropagateWorkSourceTransactListener"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTransactEnded(Ljava/lang/Object;)V
    .registers 4
    .param p1, "session"    # Ljava/lang/Object;

    .line 873
    if-eqz p1, :cond_c

    .line 874
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 875
    .local v0, "token":J
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingWorkSource(J)V

    .line 877
    .end local v0    # "token":J
    :cond_c
    return-void
.end method

.method public whitelist onTransactStarted(Landroid/os/IBinder;I)Ljava/lang/Object;
    .registers 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "transactionCode"    # I

    .line 864
    invoke-static {}, Landroid/os/ThreadLocalWorkSource;->getUid()I

    move-result v0

    .line 865
    .local v0, "uid":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 866
    invoke-static {v0}, Landroid/os/Binder;->setCallingWorkSourceUid(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 868
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method
