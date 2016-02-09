.class Lcom/android/server/am/ActivityManagerService$22;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$heapdumpFile:Ljava/io/File;

.field final synthetic val$myProc:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "val$heapdumpFile"    # Ljava/io/File;
    .param p3, "val$myProc"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    .line 18233
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$22;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$22;->val$heapdumpFile:Ljava/io/File;

    #@4
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$22;->val$myProc:Lcom/android/server/am/ProcessRecord;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    #@0
    .prologue
    .line 18236
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$22;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    #@5
    move-result-object v6

    #@6
    invoke-virtual {v6}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@9
    move-result-object v6

    #@a
    .line 18238
    sget-object v7, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    #@c
    .line 18241
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@f
    move-result v8

    #@10
    .line 18239
    const/4 v9, 0x3

    #@11
    .line 18236
    invoke-virtual {v5, v6, v7, v9, v8}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    #@14
    .line 18242
    const/4 v3, 0x0

    #@15
    .line 18244
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$22;->val$heapdumpFile:Ljava/io/File;

    #@17
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    #@1a
    .line 18245
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$22;->val$heapdumpFile:Ljava/io/File;

    #@1c
    .line 18246
    const/high16 v6, 0x2e000000

    #@1e
    .line 18245
    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@21
    move-result-object v3

    #@22
    .line 18250
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$22;->val$myProc:Lcom/android/server/am/ProcessRecord;

    #@24
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 18251
    .local v4, "thread":Landroid/app/IApplicationThread;
    if-eqz v4, :cond_0

    #@28
    .line 18256
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$22;->val$heapdumpFile:Ljava/io/File;

    #@2a
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    const/4 v6, 0x1

    #@2f
    invoke-interface {v4, v6, v5, v3}, Landroid/app/IApplicationThread;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    .line 18263
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    #@34
    .line 18265
    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@37
    .line 18235
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "thread":Landroid/app/IApplicationThread;
    :cond_1
    :goto_1
    return-void

    #@38
    .line 18266
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "thread":Landroid/app/IApplicationThread;
    :catch_0
    move-exception v2

    #@39
    .local v2, "e":Ljava/io/IOException;
    goto :goto_1

    #@3a
    .line 18260
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "thread":Landroid/app/IApplicationThread;
    :catch_1
    move-exception v1

    #@3b
    .line 18261
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3e
    .line 18263
    if-eqz v3, :cond_1

    #@40
    .line 18265
    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@43
    goto :goto_1

    #@44
    .line 18266
    :catch_2
    move-exception v2

    #@45
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    #@46
    .line 18262
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    #@47
    .line 18263
    if-eqz v3, :cond_2

    #@49
    .line 18265
    :try_start_5
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@4c
    .line 18262
    :cond_2
    :goto_2
    throw v5

    #@4d
    .line 18266
    :catch_3
    move-exception v2

    #@4e
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    #@4f
    .line 18257
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "thread":Landroid/app/IApplicationThread;
    :catch_4
    move-exception v0

    #@50
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
