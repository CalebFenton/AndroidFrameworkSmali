.class final Landroid/app/Instrumentation$Idler;
.super Ljava/lang/Object;
.source "Instrumentation.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Idler"
.end annotation


# instance fields
.field private final mCallback:Ljava/lang/Runnable;

.field private mIdle:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1999
    iput-object p1, p0, Landroid/app/Instrumentation$Idler;->mCallback:Ljava/lang/Runnable;

    #@5
    .line 2000
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Landroid/app/Instrumentation$Idler;->mIdle:Z

    #@8
    .line 1998
    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 1

    #@0
    .prologue
    .line 2004
    iget-object v0, p0, Landroid/app/Instrumentation$Idler;->mCallback:Ljava/lang/Runnable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2005
    iget-object v0, p0, Landroid/app/Instrumentation$Idler;->mCallback:Ljava/lang/Runnable;

    #@6
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@9
    .line 2007
    :cond_0
    monitor-enter p0

    #@a
    .line 2008
    const/4 v0, 0x1

    #@b
    :try_start_0
    iput-boolean v0, p0, Landroid/app/Instrumentation$Idler;->mIdle:Z

    #@d
    .line 2009
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 2011
    const/4 v0, 0x0

    #@12
    return v0

    #@13
    .line 2007
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public waitForIdle()V
    .locals 2

    #@0
    .prologue
    .line 2015
    monitor-enter p0

    #@1
    .line 2016
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Landroid/app/Instrumentation$Idler;->mIdle:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v1, :cond_0

    #@5
    .line 2018
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8
    goto :goto_0

    #@9
    .line 2019
    :catch_0
    move-exception v0

    #@a
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@b
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit p0

    #@c
    .line 2014
    return-void

    #@d
    .line 2015
    :catchall_0
    move-exception v1

    #@e
    monitor-exit p0

    #@f
    throw v1
.end method
