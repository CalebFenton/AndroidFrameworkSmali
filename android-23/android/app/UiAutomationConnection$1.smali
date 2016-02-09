.class Landroid/app/UiAutomationConnection$1;
.super Ljava/lang/Thread;
.source "UiAutomationConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/UiAutomationConnection;->executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/UiAutomationConnection;

.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$sink:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Landroid/app/UiAutomationConnection;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/UiAutomationConnection;
    .param p2, "val$sink"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "val$command"    # Ljava/lang/String;

    #@0
    .prologue
    .line 238
    iput-object p1, p0, Landroid/app/UiAutomationConnection$1;->this$0:Landroid/app/UiAutomationConnection;

    #@2
    iput-object p2, p0, Landroid/app/UiAutomationConnection$1;->val$sink:Landroid/os/ParcelFileDescriptor;

    #@4
    iput-object p3, p0, Landroid/app/UiAutomationConnection$1;->val$command:Ljava/lang/String;

    #@6
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    #@0
    .prologue
    .line 240
    const/4 v1, 0x0

    #@1
    .line 241
    .local v1, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    #@2
    .line 242
    .local v3, "out":Ljava/io/OutputStream;
    const/4 v5, 0x0

    #@3
    .line 245
    .local v5, "process":Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@6
    move-result-object v7

    #@7
    iget-object v8, p0, Landroid/app/UiAutomationConnection$1;->val$command:Ljava/lang/String;

    #@9
    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    #@c
    move-result-object v5

    #@d
    .line 247
    .local v5, "process":Ljava/lang/Process;
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    #@10
    move-result-object v1

    #@11
    .line 248
    .local v1, "in":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    #@13
    iget-object v7, p0, Landroid/app/UiAutomationConnection$1;->val$sink:Landroid/os/ParcelFileDescriptor;

    #@15
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@18
    move-result-object v7

    #@19
    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 250
    .end local v3    # "out":Ljava/io/OutputStream;
    .local v4, "out":Ljava/io/OutputStream;
    const/16 v7, 0x2000

    #@1e
    :try_start_1
    new-array v0, v7, [B

    #@20
    .line 252
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@23
    move-result v6

    #@24
    .line 253
    .local v6, "readByteCount":I
    if-gez v6, :cond_1

    #@26
    .line 261
    if-eqz v5, :cond_0

    #@28
    .line 262
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    #@2b
    .line 264
    :cond_0
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@2e
    .line 265
    iget-object v7, p0, Landroid/app/UiAutomationConnection$1;->val$sink:Landroid/os/ParcelFileDescriptor;

    #@30
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@33
    .line 239
    return-void

    #@34
    .line 256
    :cond_1
    const/4 v7, 0x0

    #@35
    :try_start_2
    invoke-virtual {v4, v0, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@38
    goto :goto_0

    #@39
    .line 258
    .end local v0    # "buffer":[B
    .end local v6    # "readByteCount":I
    :catch_0
    move-exception v2

    #@3a
    .local v2, "ioe":Ljava/io/IOException;
    move-object v3, v4

    #@3b
    .line 259
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v5    # "process":Ljava/lang/Process;
    :goto_1
    :try_start_3
    new-instance v7, Ljava/lang/RuntimeException;

    #@3d
    const-string/jumbo v8, "Error running shell command"

    #@40
    invoke-direct {v7, v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@43
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@44
    .line 260
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    #@45
    .line 261
    :goto_2
    if-eqz v5, :cond_2

    #@47
    .line 262
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    #@4a
    .line 264
    :cond_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@4d
    .line 265
    iget-object v8, p0, Landroid/app/UiAutomationConnection$1;->val$sink:Landroid/os/ParcelFileDescriptor;

    #@4f
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@52
    .line 260
    throw v7

    #@53
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .restart local v5    # "process":Ljava/lang/Process;
    :catchall_1
    move-exception v7

    #@54
    move-object v3, v4

    #@55
    .end local v4    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    goto :goto_2

    #@56
    .line 258
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v5    # "process":Ljava/lang/Process;
    .local v3, "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    #@57
    .restart local v2    # "ioe":Ljava/io/IOException;
    goto :goto_1
.end method
