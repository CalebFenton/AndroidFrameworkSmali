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

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/server/BootReceiver;Ljava/lang/String;ILandroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BootReceiver;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # I
    .param p4, "val$db"    # Landroid/os/DropBoxManager;
    .param p5, "val$prefs"    # Landroid/content/SharedPreferences;
    .param p6, "val$headers"    # Ljava/lang/String;

    #@0
    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/server/BootReceiver$2;->this$0:Lcom/android/server/BootReceiver;

    #@2
    iput-object p4, p0, Lcom/android/server/BootReceiver$2;->val$db:Landroid/os/DropBoxManager;

    #@4
    iput-object p5, p0, Lcom/android/server/BootReceiver$2;->val$prefs:Landroid/content/SharedPreferences;

    #@6
    iput-object p6, p0, Lcom/android/server/BootReceiver$2;->val$headers:Ljava/lang/String;

    #@8
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    #@b
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 8
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 168
    :try_start_0
    new-instance v7, Ljava/io/File;

    #@2
    invoke-static {}, Lcom/android/server/BootReceiver;->-get1()Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    invoke-direct {v7, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@9
    .line 169
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 170
    iget-object v0, p0, Lcom/android/server/BootReceiver$2;->val$db:Landroid/os/DropBoxManager;

    #@11
    iget-object v1, p0, Lcom/android/server/BootReceiver$2;->val$prefs:Landroid/content/SharedPreferences;

    #@13
    iget-object v2, p0, Lcom/android/server/BootReceiver$2;->val$headers:Ljava/lang/String;

    #@15
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-static {}, Lcom/android/server/BootReceiver;->-get0()I

    #@1c
    move-result v4

    #@1d
    const-string/jumbo v5, "SYSTEM_TOMBSTONE"

    #@20
    invoke-static/range {v0 .. v5}, Lcom/android/server/BootReceiver;->-wrap0(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 166
    .end local v7    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    #@24
    .line 172
    :catch_0
    move-exception v6

    #@25
    .line 173
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "BootReceiver"

    #@28
    const-string/jumbo v1, "Can\'t log tombstone"

    #@2b
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    goto :goto_0
.end method
