.class Ljava/util/zip/ZipFile$CleanableResource;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CleanableResource"
.end annotation


# instance fields
.field final blacklist cleanable:Ljava/lang/ref/Cleaner$Cleanable;

.field final blacklist guard:Ldalvik/system/CloseGuard;

.field blacklist inflaterCache:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/util/zip/Inflater;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist istreams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field blacklist zsrc:Ljava/util/zip/ZipFile$Source;


# direct methods
.method constructor blacklist <init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipCoder;Ljava/io/File;I)V
    .registers 11
    .param p1, "zf"    # Ljava/util/zip/ZipFile;
    .param p2, "zc"    # Ljava/util/zip/ZipCoder;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 774
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .end local p1    # "zf":Ljava/util/zip/ZipFile;
    .end local p2    # "zc":Ljava/util/zip/ZipCoder;
    .end local p3    # "file":Ljava/io/File;
    .end local p4    # "mode":I
    .local v1, "zf":Ljava/util/zip/ZipFile;
    .local v2, "zc":Ljava/util/zip/ZipCoder;
    .local v3, "file":Ljava/io/File;
    .local v4, "mode":I
    invoke-direct/range {v0 .. v5}, Ljava/util/zip/ZipFile$CleanableResource;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipCoder;Ljava/io/File;IZ)V

    .line 775
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipCoder;Ljava/io/File;IZ)V
    .registers 8
    .param p1, "zf"    # Ljava/util/zip/ZipFile;
    .param p2, "zc"    # Ljava/util/zip/ZipCoder;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "mode"    # I
    .param p5, "enableZipPathValidator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipFile$CleanableResource;->guard:Ldalvik/system/CloseGuard;

    .line 780
    invoke-static {}, Ljdk/internal/ref/CleanerFactory;->cleaner()Ljava/lang/ref/Cleaner;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Ljava/lang/ref/Cleaner;->register(Ljava/lang/Object;Ljava/lang/Runnable;)Ljava/lang/ref/Cleaner$Cleanable;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipFile$CleanableResource;->cleanable:Ljava/lang/ref/Cleaner$Cleanable;

    .line 781
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipFile$CleanableResource;->istreams:Ljava/util/Set;

    .line 782
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipFile$CleanableResource;->inflaterCache:Ljava/util/Deque;

    .line 783
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    invoke-static {p3, v0, p2, p5}, Ljava/util/zip/ZipFile$Source;->get(Ljava/io/File;ZLjava/util/zip/ZipCoder;Z)Ljava/util/zip/ZipFile$Source;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    .line 785
    iget-object v0, p0, Ljava/util/zip/ZipFile$CleanableResource;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "ZipFile.close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 786
    return-void
.end method


# virtual methods
.method blacklist clean()V
    .registers 2

    .line 789
    iget-object v0, p0, Ljava/util/zip/ZipFile$CleanableResource;->cleanable:Ljava/lang/ref/Cleaner$Cleanable;

    invoke-interface {v0}, Ljava/lang/ref/Cleaner$Cleanable;->clean()V

    .line 790
    return-void
.end method

.method blacklist getInflater()Ljava/util/zip/Inflater;
    .registers 4

    .line 798
    iget-object v0, p0, Ljava/util/zip/ZipFile$CleanableResource;->inflaterCache:Ljava/util/Deque;

    monitor-enter v0

    .line 799
    :try_start_3
    iget-object v1, p0, Ljava/util/zip/ZipFile$CleanableResource;->inflaterCache:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/Inflater;

    move-object v2, v1

    .local v2, "inf":Ljava/util/zip/Inflater;
    if-eqz v1, :cond_10

    .line 800
    monitor-exit v0

    return-object v2

    .line 802
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_18

    .line 803
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    return-object v0

    .line 802
    .end local v2    # "inf":Ljava/util/zip/Inflater;
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method blacklist releaseInflater(Ljava/util/zip/Inflater;)V
    .registers 4
    .param p1, "inf"    # Ljava/util/zip/Inflater;

    .line 810
    iget-object v0, p0, Ljava/util/zip/ZipFile$CleanableResource;->inflaterCache:Ljava/util/Deque;

    .line 811
    .local v0, "inflaters":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/util/zip/Inflater;>;"
    if-eqz v0, :cond_16

    .line 812
    monitor-enter v0

    .line 814
    :try_start_5
    iget-object v1, p0, Ljava/util/zip/ZipFile$CleanableResource;->inflaterCache:Ljava/util/Deque;

    if-ne v0, v1, :cond_11

    .line 815
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->reset()V

    .line 816
    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 817
    monitor-exit v0

    return-void

    .line 819
    :cond_11
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v1

    .line 822
    :cond_16
    :goto_16
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->end()V

    .line 823
    return-void
.end method

.method public whitelist test-api run()V
    .registers 10

    .line 826
    const/4 v0, 0x0

    .line 828
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v1, p0, Ljava/util/zip/ZipFile$CleanableResource;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 831
    iget-object v1, p0, Ljava/util/zip/ZipFile$CleanableResource;->inflaterCache:Ljava/util/Deque;

    .line 832
    .local v1, "inflaters":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/util/zip/Inflater;>;"
    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 833
    monitor-enter v1

    .line 837
    :goto_c
    :try_start_c
    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/Inflater;

    move-object v4, v3

    .local v4, "inf":Ljava/util/zip/Inflater;
    if-eqz v3, :cond_19

    .line 838
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    goto :goto_c

    .line 841
    :cond_19
    iput-object v2, p0, Ljava/util/zip/ZipFile$CleanableResource;->inflaterCache:Ljava/util/Deque;

    .line 842
    .end local v4    # "inf":Ljava/util/zip/Inflater;
    monitor-exit v1

    goto :goto_20

    :catchall_1d
    move-exception v2

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_1d

    throw v2

    .line 846
    :cond_20
    :goto_20
    iget-object v3, p0, Ljava/util/zip/ZipFile$CleanableResource;->istreams:Ljava/util/Set;

    if-eqz v3, :cond_58

    .line 847
    iget-object v3, p0, Ljava/util/zip/ZipFile$CleanableResource;->istreams:Ljava/util/Set;

    monitor-enter v3

    .line 848
    :try_start_27
    iget-object v4, p0, Ljava/util/zip/ZipFile$CleanableResource;->istreams:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_53

    .line 849
    iget-object v4, p0, Ljava/util/zip/ZipFile$CleanableResource;->istreams:Ljava/util/Set;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/io/InputStream;

    invoke-interface {v4, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/io/InputStream;

    .line 850
    .local v4, "copy":[Ljava/io/InputStream;
    iget-object v6, p0, Ljava/util/zip/ZipFile$CleanableResource;->istreams:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 851
    array-length v6, v4

    :goto_40
    if-ge v5, v6, :cond_53

    aget-object v7, v4, v5
    :try_end_44
    .catchall {:try_start_27 .. :try_end_44} :catchall_55

    .line 853
    .local v7, "is":Ljava/io/InputStream;
    :try_start_44
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48
    .catchall {:try_start_44 .. :try_end_47} :catchall_55

    .line 857
    goto :goto_50

    .line 854
    :catch_48
    move-exception v8

    .line 855
    .local v8, "e":Ljava/io/IOException;
    if-nez v0, :cond_4d

    move-object v0, v8

    goto :goto_50

    .line 856
    :cond_4d
    :try_start_4d
    invoke-virtual {v0, v8}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 851
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "e":Ljava/io/IOException;
    :goto_50
    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    .line 860
    .end local v4    # "copy":[Ljava/io/InputStream;
    :cond_53
    monitor-exit v3

    goto :goto_58

    :catchall_55
    move-exception v2

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_4d .. :try_end_57} :catchall_55

    throw v2

    .line 864
    :cond_58
    :goto_58
    iget-object v3, p0, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    if-eqz v3, :cond_75

    .line 865
    iget-object v3, p0, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    monitor-enter v3

    .line 867
    :try_start_5f
    iget-object v4, p0, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    invoke-static {v4}, Ljava/util/zip/ZipFile$Source;->release(Ljava/util/zip/ZipFile$Source;)V

    .line 868
    iput-object v2, p0, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_66} :catch_69
    .catchall {:try_start_5f .. :try_end_66} :catchall_67

    .line 872
    goto :goto_71

    .line 873
    :catchall_67
    move-exception v2

    goto :goto_73

    .line 869
    :catch_69
    move-exception v2

    .line 870
    .local v2, "e":Ljava/io/IOException;
    if-nez v0, :cond_6e

    move-object v0, v2

    goto :goto_71

    .line 871
    :cond_6e
    :try_start_6e
    invoke-virtual {v0, v2}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 873
    .end local v2    # "e":Ljava/io/IOException;
    :goto_71
    monitor-exit v3

    goto :goto_75

    :goto_73
    monitor-exit v3
    :try_end_74
    .catchall {:try_start_6e .. :try_end_74} :catchall_67

    throw v2

    .line 875
    :cond_75
    :goto_75
    if-nez v0, :cond_78

    .line 878
    return-void

    .line 876
    :cond_78
    new-instance v2, Ljava/io/UncheckedIOException;

    invoke-direct {v2, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method
