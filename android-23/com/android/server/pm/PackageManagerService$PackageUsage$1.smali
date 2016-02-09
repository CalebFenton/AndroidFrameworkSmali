.class Lcom/android/server/pm/PackageManagerService$PackageUsage$1;
.super Ljava/lang/Thread;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$PackageUsage;->write(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$PackageUsage;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$PackageUsage;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/pm/PackageManagerService$PackageUsage;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    #@0
    .prologue
    .line 984
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;->this$1:Lcom/android/server/pm/PackageManagerService$PackageUsage;

    #@2
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 988
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;->this$1:Lcom/android/server/pm/PackageManagerService$PackageUsage;

    #@3
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->-wrap0(Lcom/android/server/pm/PackageManagerService$PackageUsage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .line 990
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;->this$1:Lcom/android/server/pm/PackageManagerService$PackageUsage;

    #@8
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->-get0(Lcom/android/server/pm/PackageManagerService$PackageUsage;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@f
    .line 986
    return-void

    #@10
    .line 989
    :catchall_0
    move-exception v0

    #@11
    .line 990
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;->this$1:Lcom/android/server/pm/PackageManagerService$PackageUsage;

    #@13
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->-get0(Lcom/android/server/pm/PackageManagerService$PackageUsage;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@1a
    .line 989
    throw v0
.end method
