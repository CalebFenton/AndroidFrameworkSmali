.class Lcom/android/server/pm/PackageManagerService$23;
.super Ljava/lang/Thread;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->movePackageInternal(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$installedLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$measurePath:Ljava/io/File;

.field final synthetic val$moveId:I

.field final synthetic val$sizeBytes:J

.field final synthetic val$startFreeBytes:J


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$installedLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p3, "val$startFreeBytes"    # J
    .param p5, "val$measurePath"    # Ljava/io/File;
    .param p6, "val$sizeBytes"    # J
    .param p8, "val$moveId"    # I

    #@0
    .prologue
    .line 15979
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$23;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$23;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    #@4
    iput-wide p3, p0, Lcom/android/server/pm/PackageManagerService$23;->val$startFreeBytes:J

    #@6
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$23;->val$measurePath:Ljava/io/File;

    #@8
    iput-wide p6, p0, Lcom/android/server/pm/PackageManagerService$23;->val$sizeBytes:J

    #@a
    iput p8, p0, Lcom/android/server/pm/PackageManagerService$23;->val$moveId:I

    #@c
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@f
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    #@0
    .prologue
    const-wide/16 v4, 0x50

    #@2
    .line 15984
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$23;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    #@4
    const-wide/16 v2, 0x1

    #@6
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@8
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 15981
    return-void

    #@f
    .line 15987
    :catch_0
    move-exception v8

    #@10
    .line 15990
    :cond_0
    iget-wide v0, p0, Lcom/android/server/pm/PackageManagerService$23;->val$startFreeBytes:J

    #@12
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$23;->val$measurePath:Ljava/io/File;

    #@14
    invoke-virtual {v2}, Ljava/io/File;->getFreeSpace()J

    #@17
    move-result-wide v2

    #@18
    sub-long v6, v0, v2

    #@1a
    .line 15992
    .local v6, "deltaFreeBytes":J
    mul-long v0, v6, v4

    #@1c
    iget-wide v2, p0, Lcom/android/server/pm/PackageManagerService$23;->val$sizeBytes:J

    #@1e
    div-long/2addr v0, v2

    #@1f
    const-wide/16 v2, 0x0

    #@21
    .line 15991
    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    #@24
    move-result-wide v0

    #@25
    long-to-int v0, v0

    #@26
    add-int/lit8 v9, v0, 0xa

    #@28
    .line 15993
    .local v9, "progress":I
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$23;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2a
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-get4(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    #@2d
    move-result-object v0

    #@2e
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$23;->val$moveId:I

    #@30
    invoke-static {v0, v1, v9}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->-wrap1(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    #@33
    goto :goto_0
.end method
