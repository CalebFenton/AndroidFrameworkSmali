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
.field private blacklist done:Z

.field private final blacklist entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/DiskLruCache;

.field private final blacklist written:[Z


# direct methods
.method private constructor blacklist <init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Entry;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 835
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    iput-object p2, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 837
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {p2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$800(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    move-result p2

    if-eqz p2, :cond_f

    const/4 p1, 0x0

    goto :goto_15

    :cond_f
    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2200(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_15
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->written:[Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$1;)V
    .registers 4

    .line 830
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/DiskLruCache$Editor;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic blacklist access$1700(Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .registers 1

    .line 830
    iget-object p0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    return-object p0
.end method

.method static synthetic blacklist access$1800(Lcom/android/okhttp/internal/DiskLruCache$Editor;)[Z
    .registers 1

    .line 830
    iget-object p0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->written:[Z

    return-object p0
.end method


# virtual methods
.method public blacklist abort()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 935
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter v0

    .line 936
    :try_start_3
    iget-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_1d

    .line 939
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_18

    .line 940
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    const/4 v2, 0x0

    # invokes: Lcom/android/okhttp/internal/DiskLruCache;->completeEdit(Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V
    invoke-static {v1, p0, v2}, Lcom/android/okhttp/internal/DiskLruCache;->access$2500(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_23

    :cond_18
    :goto_18
    const/4 v1, 0x1

    .line 942
    iput-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->done:Z

    .line 943
    monitor-exit v0

    return-void

    .line 937
    :cond_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 943
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_16

    throw p0
.end method

.method public blacklist abortUnlessCommitted()V
    .registers 4

    .line 947
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter v0

    .line 948
    :try_start_3
    iget-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_16

    if-ne v1, p0, :cond_18

    .line 950
    :try_start_f
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    const/4 v2, 0x0

    # invokes: Lcom/android/okhttp/internal/DiskLruCache;->completeEdit(Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V
    invoke-static {v1, p0, v2}, Lcom/android/okhttp/internal/DiskLruCache;->access$2500(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_15} :catch_18
    .catchall {:try_start_f .. :try_end_15} :catchall_16

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_1a

    .line 954
    :catch_18
    :cond_18
    :goto_18
    :try_start_18
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_16

    throw p0
.end method

.method public blacklist commit()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 919
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter v0

    .line 920
    :try_start_3
    iget-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_1c

    .line 923
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_18

    .line 924
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # invokes: Lcom/android/okhttp/internal/DiskLruCache;->completeEdit(Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V
    invoke-static {v1, p0, v2}, Lcom/android/okhttp/internal/DiskLruCache;->access$2500(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_22

    .line 926
    :cond_18
    :goto_18
    iput-boolean v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->done:Z

    .line 927
    monitor-exit v0

    return-void

    .line 921
    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 927
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_16

    throw p0
.end method

.method blacklist detach()V
    .registers 4

    .line 847
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    if-ne v0, p0, :cond_2b

    const/4 v0, 0x0

    .line 848
    :goto_9
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2200(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 850
    :try_start_11
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2300(Lcom/android/okhttp/internal/DiskLruCache;)Lcom/android/okhttp/internal/io/FileSystem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1400(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_22} :catch_22

    :catch_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 855
    :cond_25
    iget-object p0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    const/4 v0, 0x0

    # setter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {p0, v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$902(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    :cond_2b
    return-void
.end method

.method public blacklist newSink(I)Lcom/android/okhttp/okio/Sink;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 887
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter v0

    .line 888
    :try_start_3
    iget-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_43

    .line 891
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1

    if-eq v1, p0, :cond_17

    .line 892
    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->NULL_SINK:Lcom/android/okhttp/okio/Sink;
    invoke-static {}, Lcom/android/okhttp/internal/DiskLruCache;->access$2400()Lcom/android/okhttp/okio/Sink;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    goto :goto_49

    .line 894
    :cond_17
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$800(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 895
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->written:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 897
    :cond_24
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1400(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v1

    aget-object p1, v1, p1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_15

    .line 900
    :try_start_2c
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2300(Lcom/android/okhttp/internal/DiskLruCache;)Lcom/android/okhttp/internal/io/FileSystem;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/okhttp/internal/io/FileSystem;->sink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;

    move-result-object p1
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_36} :catch_3d
    .catchall {:try_start_2c .. :try_end_36} :catchall_15

    .line 904
    :try_start_36
    new-instance v1, Lcom/android/okhttp/internal/DiskLruCache$Editor$1;

    invoke-direct {v1, p0, p1}, Lcom/android/okhttp/internal/DiskLruCache$Editor$1;-><init>(Lcom/android/okhttp/internal/DiskLruCache$Editor;Lcom/android/okhttp/okio/Sink;)V

    monitor-exit v0

    return-object v1

    .line 902
    :catch_3d
    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->NULL_SINK:Lcom/android/okhttp/okio/Sink;
    invoke-static {}, Lcom/android/okhttp/internal/DiskLruCache;->access$2400()Lcom/android/okhttp/okio/Sink;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 889
    :cond_43
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 911
    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_36 .. :try_end_4a} :catchall_15

    throw p0
.end method

.method public blacklist newSource(I)Lcom/android/okhttp/okio/Source;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 864
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter v0

    .line 865
    :try_start_3
    iget-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_33

    .line 868
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$800(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_2d

    if-eq v1, p0, :cond_19

    goto :goto_31

    .line 872
    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2300(Lcom/android/okhttp/internal/DiskLruCache;)Lcom/android/okhttp/internal/io/FileSystem;

    move-result-object v1

    iget-object p0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;
    invoke-static {p0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1300(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-interface {v1, p0}, Lcom/android/okhttp/internal/io/FileSystem;->source(Ljava/io/File;)Lcom/android/okhttp/okio/Source;

    move-result-object p0
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_2b} :catch_2f
    .catchall {:try_start_19 .. :try_end_2b} :catchall_2d

    :try_start_2b
    monitor-exit v0

    return-object p0

    :catchall_2d
    move-exception p0

    goto :goto_39

    .line 874
    :catch_2f
    monitor-exit v0

    return-object v2

    .line 869
    :cond_31
    :goto_31
    monitor-exit v0

    return-object v2

    .line 866
    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 876
    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_2d

    throw p0
.end method
