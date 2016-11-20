.class Lcom/android/server/BootReceiver$2;
.super Landroid/os/FileObserver;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BootReceiver;->logBootEvents(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BootReceiver;

.field final synthetic val$db:Landroid/os/DropBoxManager;

.field final synthetic val$headers:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/BootReceiver;Ljava/lang/String;ILandroid/os/DropBoxManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BootReceiver;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # I
    .param p4, "val$db"    # Landroid/os/DropBoxManager;
    .param p5, "val$headers"    # Ljava/lang/String;

    #@0
    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/server/BootReceiver$2;->this$0:Lcom/android/server/BootReceiver;

    #@2
    iput-object p4, p0, Lcom/android/server/BootReceiver$2;->val$db:Landroid/os/DropBoxManager;

    #@4
    iput-object p5, p0, Lcom/android/server/BootReceiver$2;->val$headers:Ljava/lang/String;

    #@6
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    #@9
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 8
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 224
    invoke-static {}, Lcom/android/server/BootReceiver;->-wrap0()Ljava/util/HashMap;

    #@3
    move-result-object v1

    #@4
    .line 226
    .local v1, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_0
    new-instance v7, Ljava/io/File;

    #@6
    invoke-static {}, Lcom/android/server/BootReceiver;->-get1()Ljava/io/File;

    #@9
    move-result-object v0

    #@a
    invoke-direct {v7, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@d
    .line 227
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 228
    iget-object v0, p0, Lcom/android/server/BootReceiver$2;->val$db:Landroid/os/DropBoxManager;

    #@15
    iget-object v2, p0, Lcom/android/server/BootReceiver$2;->val$headers:Ljava/lang/String;

    #@17
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {}, Lcom/android/server/BootReceiver;->-get0()I

    #@1e
    move-result v4

    #@1f
    .line 229
    const-string/jumbo v5, "SYSTEM_TOMBSTONE"

    #@22
    .line 228
    invoke-static/range {v0 .. v5}, Lcom/android/server/BootReceiver;->-wrap1(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 234
    .end local v7    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/BootReceiver$2;->this$0:Lcom/android/server/BootReceiver;

    #@27
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver;->-wrap4(Lcom/android/server/BootReceiver;Ljava/util/HashMap;)V

    #@2a
    .line 223
    return-void

    #@2b
    .line 231
    :catch_0
    move-exception v6

    #@2c
    .line 232
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "BootReceiver"

    #@2f
    const-string/jumbo v2, "Can\'t log tombstone"

    #@32
    invoke-static {v0, v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@35
    goto :goto_0
.end method
