.class Lcom/android/server/power/ShutdownThread$8;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->uncrypt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$progressListener:Landroid/os/RecoverySystem$ProgressListener;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;Landroid/os/RecoverySystem$ProgressListener;[Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/ShutdownThread;
    .param p2, "val$progressListener"    # Landroid/os/RecoverySystem$ProgressListener;
    .param p3, "val$done"    # [Z

    #@0
    .prologue
    .line 696
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$8;->this$0:Lcom/android/server/power/ShutdownThread;

    #@2
    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$8;->val$progressListener:Landroid/os/RecoverySystem$ProgressListener;

    #@4
    iput-object p3, p0, Lcom/android/server/power/ShutdownThread$8;->val$done:[Z

    #@6
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 699
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$8;->this$0:Lcom/android/server/power/ShutdownThread;

    #@3
    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->-get0(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    #@6
    move-result-object v3

    #@7
    .line 700
    const-string/jumbo v4, "recovery"

    #@a
    .line 699
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Landroid/os/RecoverySystem;

    #@10
    .line 701
    .local v2, "rs":Landroid/os/RecoverySystem;
    const/4 v1, 0x0

    #@11
    .line 703
    .local v1, "filename":Ljava/lang/String;
    :try_start_0
    sget-object v3, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    #@13
    const/4 v4, 0x0

    #@14
    const/4 v5, 0x0

    #@15
    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 704
    .local v1, "filename":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$8;->this$0:Lcom/android/server/power/ShutdownThread;

    #@1b
    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->-get0(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    #@1e
    move-result-object v3

    #@1f
    new-instance v4, Ljava/io/File;

    #@21
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@24
    iget-object v5, p0, Lcom/android/server/power/ShutdownThread$8;->val$progressListener:Landroid/os/RecoverySystem$ProgressListener;

    #@26
    invoke-static {v3, v4, v5}, Landroid/os/RecoverySystem;->processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 708
    .end local v1    # "filename":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$8;->val$done:[Z

    #@2b
    const/4 v4, 0x1

    #@2c
    aput-boolean v4, v3, v6

    #@2e
    .line 698
    return-void

    #@2f
    .line 705
    :catch_0
    move-exception v0

    #@30
    .line 706
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "ShutdownThread"

    #@33
    const-string/jumbo v4, "Error uncrypting file"

    #@36
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    goto :goto_0
.end method
