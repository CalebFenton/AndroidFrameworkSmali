.class Ldalvik/system/DexPathList$NativeLibraryElement;
.super Ljava/lang/Object;
.source "DexPathList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/DexPathList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NativeLibraryElement"
.end annotation


# instance fields
.field private greylist-max-o initialized:Z

.field private final greylist path:Ljava/io/File;

.field private greylist-max-o urlHandler:Llibcore/io/ClassPathURLStreamHandler;

.field private final greylist-max-o zipDir:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "dir"    # Ljava/io/File;

    .line 822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 823
    iput-object p1, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->path:Ljava/io/File;

    .line 824
    const/4 v0, 0x0

    iput-object v0, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->zipDir:Ljava/lang/String;

    .line 827
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .param p1, "zip"    # Ljava/io/File;
    .param p2, "zipDir"    # Ljava/lang/String;

    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 830
    iput-object p1, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->path:Ljava/io/File;

    .line 831
    iput-object p2, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->zipDir:Ljava/lang/String;

    .line 835
    if-eqz p2, :cond_a

    .line 838
    return-void

    .line 836
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 907
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 908
    :cond_4
    instance-of v1, p1, Ldalvik/system/DexPathList$NativeLibraryElement;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 909
    :cond_a
    move-object v1, p1

    check-cast v1, Ldalvik/system/DexPathList$NativeLibraryElement;

    .line 910
    .local v1, "that":Ldalvik/system/DexPathList$NativeLibraryElement;
    iget-object v3, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->path:Ljava/io/File;

    iget-object v4, v1, Ldalvik/system/DexPathList$NativeLibraryElement;->path:Ljava/io/File;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->zipDir:Ljava/lang/String;

    iget-object v4, v1, Ldalvik/system/DexPathList$NativeLibraryElement;->zipDir:Ljava/lang/String;

    .line 911
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    .line 910
    :goto_23
    return v0
.end method

.method public greylist-max-o findNativeLibrary(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 885
    invoke-virtual {p0}, Ldalvik/system/DexPathList$NativeLibraryElement;->maybeInit()V

    .line 887
    iget-object v0, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->zipDir:Ljava/lang/String;

    if-nez v0, :cond_1a

    .line 888
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->path:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 889
    .local v0, "entryPath":Ljava/lang/String;
    invoke-static {v0}, Llibcore/io/IoUtils;->canOpenReadOnly(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 890
    return-object v0

    .line 889
    .end local v0    # "entryPath":Ljava/lang/String;
    :cond_19
    goto :goto_5d

    .line 892
    :cond_1a
    iget-object v0, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->urlHandler:Llibcore/io/ClassPathURLStreamHandler;

    if-eqz v0, :cond_5d

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->zipDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 897
    .local v0, "entryName":Ljava/lang/String;
    iget-object v1, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->urlHandler:Llibcore/io/ClassPathURLStreamHandler;

    invoke-virtual {v1, v0}, Llibcore/io/ClassPathURLStreamHandler;->isEntryStored(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 898
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->path:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 892
    .end local v0    # "entryName":Ljava/lang/String;
    :cond_5d
    :goto_5d
    nop

    .line 902
    :cond_5e
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 916
    iget-object v0, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->path:Ljava/io/File;

    iget-object v1, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->zipDir:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized greylist-max-o maybeInit()V
    .registers 5

    monitor-enter p0

    .line 851
    :try_start_1
    iget-boolean v0, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->initialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3f

    if-eqz v0, :cond_7

    .line 852
    monitor-exit p0

    return-void

    .line 855
    :cond_7
    :try_start_7
    iget-object v0, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->zipDir:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_10

    .line 856
    iput-boolean v1, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->initialized:Z
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_3f

    .line 857
    monitor-exit p0

    return-void

    .line 863
    .end local p0    # "this":Ldalvik/system/DexPathList$NativeLibraryElement;
    :cond_10
    :try_start_10
    new-instance v0, Llibcore/io/ClassPathURLStreamHandler;

    iget-object v2, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->path:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Llibcore/io/ClassPathURLStreamHandler;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->urlHandler:Llibcore/io/ClassPathURLStreamHandler;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1e} :catch_1f
    .catchall {:try_start_10 .. :try_end_1e} :catchall_3f

    .line 874
    goto :goto_3b

    .line 865
    :catch_1f
    move-exception v0

    .line 872
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open zip file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->path:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 873
    const/4 v2, 0x0

    iput-object v2, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->urlHandler:Llibcore/io/ClassPathURLStreamHandler;

    .line 881
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_3b
    iput-boolean v1, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->initialized:Z
    :try_end_3d
    .catchall {:try_start_20 .. :try_end_3d} :catchall_3f

    .line 882
    monitor-exit p0

    return-void

    .line 850
    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 842
    iget-object v0, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->zipDir:Ljava/lang/String;

    const-string v1, "\""

    if-nez v0, :cond_20

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "directory \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->path:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 845
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zip file \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->path:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 846
    iget-object v2, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->zipDir:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_57

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", dir \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ldalvik/system/DexPathList$NativeLibraryElement;->zipDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_59

    :cond_57
    const-string v1, ""

    :goto_59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 845
    return-object v0
.end method
