.class final Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/power/SuspendBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SuspendBlockerImpl"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private mReferenceCount:I

.field private final mTraceName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2941
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2942
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    #@7
    .line 2943
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v1, "SuspendBlocker ("

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string/jumbo v1, ")"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mTraceName:Ljava/lang/String;

    #@24
    .line 2941
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 4

    #@0
    .prologue
    .line 2963
    monitor-enter p0

    #@1
    .line 2964
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    iput v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    #@7
    .line 2965
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    #@9
    const/4 v1, 0x1

    #@a
    if-ne v0, v1, :cond_0

    #@c
    .line 2969
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mTraceName:Ljava/lang/String;

    #@e
    const-wide/32 v2, 0x20000

    #@11
    const/4 v1, 0x0

    #@12
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    #@15
    .line 2970
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    #@17
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-wrap20(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :cond_0
    monitor-exit p0

    #@1b
    .line 2962
    return-void

    #@1c
    .line 2963
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit p0

    #@1e
    throw v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 2949
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2950
    const-string/jumbo v0, "PowerManagerService"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Suspend blocker \""

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 2951
    const-string/jumbo v2, "\" was finalized without being released!"

    #@1c
    .line 2950
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 2952
    const/4 v0, 0x0

    #@28
    iput v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    #@2a
    .line 2953
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    #@2c
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-wrap21(Ljava/lang/String;)V

    #@2f
    .line 2954
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mTraceName:Ljava/lang/String;

    #@31
    const-wide/32 v2, 0x20000

    #@34
    const/4 v1, 0x0

    #@35
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 2957
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@3b
    .line 2947
    return-void

    #@3c
    .line 2956
    :catchall_0
    move-exception v0

    #@3d
    .line 2957
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@40
    .line 2956
    throw v0
.end method

.method public release()V
    .locals 4

    #@0
    .prologue
    .line 2977
    monitor-enter p0

    #@1
    .line 2978
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    #@3
    add-int/lit8 v0, v0, -0x1

    #@5
    iput v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    #@7
    .line 2979
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    #@9
    if-nez v0, :cond_1

    #@b
    .line 2983
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    #@d
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-wrap21(Ljava/lang/String;)V

    #@10
    .line 2984
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mTraceName:Ljava/lang/String;

    #@12
    const-wide/32 v2, 0x20000

    #@15
    const/4 v1, 0x0

    #@16
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_0
    :goto_0
    monitor-exit p0

    #@1a
    .line 2976
    return-void

    #@1b
    .line 2985
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    #@1d
    if-gez v0, :cond_0

    #@1f
    .line 2986
    const-string/jumbo v0, "PowerManagerService"

    #@22
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v2, "Suspend blocker \""

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 2987
    const-string/jumbo v2, "\" was released without being acquired!"

    #@37
    .line 2986
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    .line 2987
    new-instance v2, Ljava/lang/Throwable;

    #@41
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@44
    .line 2986
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@47
    .line 2988
    const/4 v0, 0x0

    #@48
    iput v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    goto :goto_0

    #@4b
    .line 2977
    :catchall_0
    move-exception v0

    #@4c
    monitor-exit p0

    #@4d
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2995
    monitor-enter p0

    #@1
    .line 2996
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    const-string/jumbo v1, ": ref count="

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v0

    #@1d
    monitor-exit p0

    #@1e
    return-object v0

    #@1f
    .line 2995
    :catchall_0
    move-exception v0

    #@20
    monitor-exit p0

    #@21
    throw v0
.end method
