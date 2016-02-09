.class public final Lcom/android/okhttp/internal/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/android/okhttp/internal/DiskLruCache;

.field private final written:[Z


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/internal/DiskLruCache$Editor;)[Z
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->written:[Z

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->hasErrors:Z

    #@2
    return p1
.end method

.method private constructor <init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Entry;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p2, "entry"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@0
    .prologue
    .line 833
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 834
    iput-object p2, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@7
    .line 835
    invoke-static {p2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get5(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    const/4 v0, 0x0

    #@e
    :goto_0
    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->written:[Z

    #@10
    .line 833
    return-void

    #@11
    .line 835
    :cond_0
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->-get6(Lcom/android/okhttp/internal/DiskLruCache;)I

    #@14
    move-result v0

    #@15
    new-array v0, v0, [Z

    #@17
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p2, "entry"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/DiskLruCache$Editor;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Entry;)V

    #@3
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 911
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@2
    monitor-enter v1

    #@3
    .line 912
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {v0, p0, v2}, Lcom/android/okhttp/internal/DiskLruCache;->-wrap3(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 910
    return-void

    #@b
    .line 911
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public abortUnlessCommitted()V
    .locals 4

    #@0
    .prologue
    .line 917
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@2
    monitor-enter v2

    #@3
    .line 918
    :try_start_0
    iget-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->committed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v1, :cond_0

    #@7
    .line 920
    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@9
    const/4 v3, 0x0

    #@a
    invoke-static {v1, p0, v3}, Lcom/android/okhttp/internal/DiskLruCache;->-wrap3(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    :cond_0
    :goto_0
    monitor-exit v2

    #@e
    .line 916
    return-void

    #@f
    .line 917
    :catchall_0
    move-exception v1

    #@10
    monitor-exit v2

    #@11
    throw v1

    #@12
    .line 921
    :catch_0
    move-exception v0

    #@13
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method public commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 895
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@2
    monitor-enter v1

    #@3
    .line 896
    :try_start_0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->hasErrors:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 897
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v0, p0, v2}, Lcom/android/okhttp/internal/DiskLruCache;->-wrap3(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V

    #@d
    .line 898
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@f
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@11
    invoke-static {v0, v2}, Lcom/android/okhttp/internal/DiskLruCache;->-wrap1(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    #@14
    .line 902
    :goto_0
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->committed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    .line 894
    return-void

    #@19
    .line 900
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@1b
    const/4 v2, 0x1

    #@1c
    invoke-static {v0, p0, v2}, Lcom/android/okhttp/internal/DiskLruCache;->-wrap3(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    goto :goto_0

    #@20
    .line 895
    :catchall_0
    move-exception v0

    #@21
    monitor-exit v1

    #@22
    throw v0
.end method

.method public newSink(I)Lcom/android/okhttp/okio/Sink;
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 866
    iget-object v4, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@2
    monitor-enter v4

    #@3
    .line 867
    :try_start_0
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@5
    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@8
    move-result-object v3

    #@9
    if-eq v3, p0, :cond_0

    #@b
    .line 868
    new-instance v3, Ljava/lang/IllegalStateException;

    #@d
    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    #@10
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 866
    :catchall_0
    move-exception v3

    #@12
    monitor-exit v4

    #@13
    throw v3

    #@14
    .line 870
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@16
    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get5(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    #@19
    move-result v3

    #@1a
    if-nez v3, :cond_1

    #@1c
    .line 871
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->written:[Z

    #@1e
    const/4 v5, 0x1

    #@1f
    aput-boolean v5, v3, p1

    #@21
    .line 873
    :cond_1
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@23
    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get2(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    #@26
    move-result-object v3

    #@27
    aget-object v0, v3, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    .line 876
    .local v0, "dirtyFile":Ljava/io/File;
    :try_start_2
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@2b
    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache;->-get3(Lcom/android/okhttp/internal/DiskLruCache;)Lcom/android/okhttp/internal/io/FileSystem;

    #@2e
    move-result-object v3

    #@2f
    invoke-interface {v3, v0}, Lcom/android/okhttp/internal/io/FileSystem;->sink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@32
    move-result-object v2

    #@33
    .line 880
    .local v2, "sink":Lcom/android/okhttp/okio/Sink;
    :try_start_3
    new-instance v3, Lcom/android/okhttp/internal/DiskLruCache$Editor$1;

    #@35
    invoke-direct {v3, p0, v2}, Lcom/android/okhttp/internal/DiskLruCache$Editor$1;-><init>(Lcom/android/okhttp/internal/DiskLruCache$Editor;Lcom/android/okhttp/okio/Sink;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@38
    monitor-exit v4

    #@39
    return-object v3

    #@3a
    .line 877
    .end local v2    # "sink":Lcom/android/okhttp/okio/Sink;
    :catch_0
    move-exception v1

    #@3b
    .line 878
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-static {}, Lcom/android/okhttp/internal/DiskLruCache;->-get0()Lcom/android/okhttp/okio/Sink;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3e
    move-result-object v3

    #@3f
    monitor-exit v4

    #@40
    return-object v3
.end method

.method public newSource(I)Lcom/android/okhttp/okio/Source;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 843
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@3
    monitor-enter v2

    #@4
    .line 844
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@6
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@9
    move-result-object v1

    #@a
    if-eq v1, p0, :cond_0

    #@c
    .line 845
    new-instance v1, Ljava/lang/IllegalStateException;

    #@e
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@11
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 843
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1

    #@15
    .line 847
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@17
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get5(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_1

    #@1d
    monitor-exit v2

    #@1e
    .line 848
    return-object v4

    #@1f
    .line 851
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@21
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->-get3(Lcom/android/okhttp/internal/DiskLruCache;)Lcom/android/okhttp/internal/io/FileSystem;

    #@24
    move-result-object v1

    #@25
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@27
    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get0(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    #@2a
    move-result-object v3

    #@2b
    aget-object v3, v3, p1

    #@2d
    invoke-interface {v1, v3}, Lcom/android/okhttp/internal/io/FileSystem;->source(Ljava/io/File;)Lcom/android/okhttp/okio/Source;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@30
    move-result-object v1

    #@31
    monitor-exit v2

    #@32
    return-object v1

    #@33
    .line 852
    :catch_0
    move-exception v0

    #@34
    .local v0, "e":Ljava/io/FileNotFoundException;
    monitor-exit v2

    #@35
    .line 853
    return-object v4
.end method
