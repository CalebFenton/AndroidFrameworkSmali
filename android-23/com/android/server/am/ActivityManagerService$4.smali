.class final Lcom/android/server/am/ActivityManagerService$4;
.super Landroid/os/FileObserver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;
    .param p2, "$anonymous1"    # I

    #@0
    .prologue
    .line 4743
    invoke-direct {p0, p1, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method


# virtual methods
.method public declared-synchronized onEvent(ILjava/lang/String;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 4745
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$4;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method
