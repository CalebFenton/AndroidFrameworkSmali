.class final Landroid/os/SystemService$1;
.super Ljava/lang/Object;
.source "SystemService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemService;
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
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 53
    invoke-static {}, Landroid/os/SystemService;->-get0()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    monitor-enter v1

    #@5
    .line 54
    :try_start_0
    invoke-static {}, Landroid/os/SystemService;->-get0()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 52
    return-void

    #@e
    .line 53
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method
