.class final Lcom/android/internal/os/SamplingProfilerIntegration$2;
.super Ljava/lang/Object;
.source "SamplingProfilerIntegration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshot(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$packageInfo:Landroid/content/pm/PackageInfo;

.field final synthetic val$processName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .locals 0
    .param p1, "val$processName"    # Ljava/lang/String;
    .param p2, "val$packageInfo"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/internal/os/SamplingProfilerIntegration$2;->val$processName:Ljava/lang/String;

    #@2
    iput-object p2, p0, Lcom/android/internal/os/SamplingProfilerIntegration$2;->val$packageInfo:Landroid/content/pm/PackageInfo;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/SamplingProfilerIntegration$2;->val$processName:Ljava/lang/String;

    #@3
    iget-object v1, p0, Lcom/android/internal/os/SamplingProfilerIntegration$2;->val$packageInfo:Landroid/content/pm/PackageInfo;

    #@5
    invoke-static {v0, v1}, Lcom/android/internal/os/SamplingProfilerIntegration;->-wrap0(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 139
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->-get0()Ljava/util/concurrent/atomic/AtomicBoolean;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@f
    .line 135
    return-void

    #@10
    .line 138
    :catchall_0
    move-exception v0

    #@11
    .line 139
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->-get0()Ljava/util/concurrent/atomic/AtomicBoolean;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@18
    .line 138
    throw v0
.end method
