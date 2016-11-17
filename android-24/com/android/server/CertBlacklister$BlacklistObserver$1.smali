.class Lcom/android/server/CertBlacklister$BlacklistObserver$1;
.super Ljava/lang/Thread;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/CertBlacklister$BlacklistObserver;->writeBlacklist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/CertBlacklister$BlacklistObserver;


# direct methods
.method constructor <init>(Lcom/android/server/CertBlacklister$BlacklistObserver;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/CertBlacklister$BlacklistObserver;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    #@0
    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$1:Lcom/android/server/CertBlacklister$BlacklistObserver;

    #@2
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    #@0
    .prologue
    .line 79
    iget-object v5, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$1:Lcom/android/server/CertBlacklister$BlacklistObserver;

    #@2
    invoke-static {v5}, Lcom/android/server/CertBlacklister$BlacklistObserver;->-get1(Lcom/android/server/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    #@5
    move-result-object v6

    #@6
    monitor-enter v6

    #@7
    .line 80
    :try_start_0
    iget-object v5, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$1:Lcom/android/server/CertBlacklister$BlacklistObserver;

    #@9
    invoke-virtual {v5}, Lcom/android/server/CertBlacklister$BlacklistObserver;->getValue()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 81
    .local v0, "blacklist":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@f
    .line 82
    const-string/jumbo v5, "CertBlacklister"

    #@12
    const-string/jumbo v7, "Certificate blacklist changed, updating..."

    #@15
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 83
    const/4 v2, 0x0

    #@19
    .line 86
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_1
    const-string/jumbo v5, "journal"

    #@1c
    const-string/jumbo v7, ""

    #@1f
    iget-object v8, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$1:Lcom/android/server/CertBlacklister$BlacklistObserver;

    #@21
    invoke-static {v8}, Lcom/android/server/CertBlacklister$BlacklistObserver;->-get1(Lcom/android/server/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    #@24
    move-result-object v8

    #@25
    invoke-static {v5, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    #@28
    move-result-object v4

    #@29
    .line 88
    .local v4, "tmp":Ljava/io/File;
    const/4 v5, 0x1

    #@2a
    const/4 v7, 0x0

    #@2b
    invoke-virtual {v4, v5, v7}, Ljava/io/File;->setReadable(ZZ)Z

    #@2e
    .line 90
    new-instance v3, Ljava/io/FileOutputStream;

    #@30
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@33
    .line 91
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    #@3a
    .line 93
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@3d
    .line 95
    new-instance v5, Ljava/io/File;

    #@3f
    iget-object v7, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$1:Lcom/android/server/CertBlacklister$BlacklistObserver;

    #@41
    invoke-static {v7}, Lcom/android/server/CertBlacklister$BlacklistObserver;->-get0(Lcom/android/server/CertBlacklister$BlacklistObserver;)Ljava/lang/String;

    #@44
    move-result-object v7

    #@45
    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@48
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@4b
    .line 96
    const-string/jumbo v5, "CertBlacklister"

    #@4e
    const-string/jumbo v7, "Certificate blacklist updated"

    #@51
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@54
    .line 100
    :try_start_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@57
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .end local v4    # "tmp":Ljava/io/File;
    :cond_0
    :goto_0
    monitor-exit v6

    #@58
    .line 78
    return-void

    #@59
    .line 97
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    #@5a
    .line 98
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string/jumbo v5, "CertBlacklister"

    #@5d
    const-string/jumbo v7, "Failed to write blacklist"

    #@60
    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@63
    .line 100
    :try_start_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@66
    goto :goto_0

    #@67
    .line 79
    .end local v0    # "blacklist":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    #@68
    monitor-exit v6

    #@69
    throw v5

    #@6a
    .line 99
    .restart local v0    # "blacklist":Ljava/lang/String;
    :catchall_1
    move-exception v5

    #@6b
    .line 100
    :goto_2
    :try_start_6
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@6e
    .line 99
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@6f
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "tmp":Ljava/io/File;
    :catchall_2
    move-exception v5

    #@70
    move-object v2, v3

    #@71
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v2, "out":Ljava/io/FileOutputStream;
    goto :goto_2

    #@72
    .line 97
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    #@73
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v3

    #@74
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
