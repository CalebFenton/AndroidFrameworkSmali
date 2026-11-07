.class Ldalvik/system/DexPathList$Element;
.super Ljava/lang/Object;
.source "DexPathList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/DexPathList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Element"
.end annotation


# instance fields
.field private final greylist dexFile:Ldalvik/system/DexFile;

.field private greylist-max-o initialized:Z

.field private final greylist path:Ljava/io/File;

.field private final blacklist pathIsDirectory:Ljava/lang/Boolean;

.field private greylist-max-o urlHandler:Llibcore/io/ClassPathURLStreamHandler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetdexFile(Ldalvik/system/DexPathList$Element;)Ldalvik/system/DexFile;
    .registers 1

    iget-object p0, p0, Ldalvik/system/DexPathList$Element;->dexFile:Ldalvik/system/DexFile;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDexPath(Ldalvik/system/DexPathList$Element;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Ldalvik/system/DexPathList$Element;->getDexPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Ldalvik/system/DexFile;)V
    .registers 3
    .param p1, "dexFile"    # Ldalvik/system/DexFile;

    .line 685
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldalvik/system/DexPathList$Element;-><init>(Ldalvik/system/DexFile;Ljava/io/File;)V

    .line 686
    return-void
.end method

.method public constructor greylist <init>(Ldalvik/system/DexFile;Ljava/io/File;)V
    .registers 5
    .param p1, "dexFile"    # Ldalvik/system/DexFile;
    .param p2, "dexZipPath"    # Ljava/io/File;

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    if-nez p1, :cond_10

    if-eqz p2, :cond_8

    goto :goto_10

    .line 676
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Either dexFile or path must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_10
    :goto_10
    iput-object p1, p0, Ldalvik/system/DexPathList$Element;->dexFile:Ldalvik/system/DexFile;

    .line 679
    iput-object p2, p0, Ldalvik/system/DexPathList$Element;->path:Ljava/io/File;

    .line 681
    iget-object v0, p0, Ldalvik/system/DexPathList$Element;->path:Ljava/io/File;

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    goto :goto_24

    :cond_1a
    iget-object v0, p0, Ldalvik/system/DexPathList$Element;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_24
    iput-object v0, p0, Ldalvik/system/DexPathList$Element;->pathIsDirectory:Ljava/lang/Boolean;

    .line 682
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "path"    # Ljava/io/File;

    .line 689
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ldalvik/system/DexPathList$Element;-><init>(Ldalvik/system/DexFile;Ljava/io/File;)V

    .line 690
    return-void
.end method

.method public constructor greylist <init>(Ljava/io/File;ZLjava/io/File;Ldalvik/system/DexFile;)V
    .registers 7
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "isDirectory"    # Z
    .param p3, "zip"    # Ljava/io/File;
    .param p4, "dexFile"    # Ldalvik/system/DexFile;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 703
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    move-object v0, p4

    :goto_5
    if-eqz p1, :cond_9

    move-object v1, p1

    goto :goto_a

    :cond_9
    move-object v1, p3

    :goto_a
    invoke-direct {p0, v0, v1}, Ldalvik/system/DexPathList$Element;-><init>(Ldalvik/system/DexFile;Ljava/io/File;)V

    .line 704
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Warning: Using deprecated Element constructor. Do not use internal APIs, this constructor will be removed in the future."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 706
    if-eqz p1, :cond_23

    if-nez p3, :cond_1b

    if-nez p4, :cond_1b

    goto :goto_23

    .line 707
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Using dir and zip|dexFile no longer supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    :cond_23
    :goto_23
    if-eqz p2, :cond_32

    if-nez p3, :cond_2a

    if-nez p4, :cond_2a

    goto :goto_32

    .line 711
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported argument combination."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :cond_32
    :goto_32
    return-void
.end method

.method private greylist-max-o getDexPath()Ljava/lang/String;
    .registers 3

    .line 719
    iget-object v0, p0, Ldalvik/system/DexPathList$Element;->path:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 720
    iget-object v0, p0, Ldalvik/system/DexPathList$Element;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_14

    :cond_e
    iget-object v0, p0, Ldalvik/system/DexPathList$Element;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :goto_14
    return-object v1

    .line 721
    :cond_15
    iget-object v0, p0, Ldalvik/system/DexPathList$Element;->dexFile:Ldalvik/system/DexFile;

    if-eqz v0, :cond_20

    .line 723
    iget-object v0, p0, Ldalvik/system/DexPathList$Element;->dexFile:Ldalvik/system/DexFile;

    invoke-virtual {v0}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 725
    :cond_20
    return-object v1
.end method


# virtual methods
.method public greylist-max-o findClass(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/List;)Ljava/lang/Class;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "definingContext"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 775
    .local p3, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v0, p0, Ldalvik/system/DexPathList$Element;->dexFile:Ldalvik/system/DexFile;

    if-eqz v0, :cond_b

    iget-object v0, p0, Ldalvik/system/DexPathList$Element;->dexFile:Ldalvik/system/DexFile;

    invoke-virtual {v0, p1, p2, p3}, Ldalvik/system/DexFile;->loadClassBinaryName(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/List;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_c

    .line 776
    :cond_b
    const/4 v0, 0x0

    .line 775
    :goto_c
    return-object v0
.end method

.method public greylist-max-o findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 780
    invoke-virtual {p0}, Ldalvik/system/DexPathList$Element;->maybeInit()V

    .line 782
    iget-object v0, p0, Ldalvik/system/DexPathList$Element;->urlHandler:Llibcore/io/ClassPathURLStreamHandler;

    if-eqz v0, :cond_e

    .line 783
    iget-object v0, p0, Ldalvik/system/DexPathList$Element;->urlHandler:Llibcore/io/ClassPathURLStreamHandler;

    invoke-virtual {v0, p1}, Llibcore/io/ClassPathURLStreamHandler;->getEntryUrlOrNull(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0

    .line 788
    :cond_e
    iget-object v0, p0, Ldalvik/system/DexPathList$Element;->path:Ljava/io/File;

    if-eqz v0, :cond_37

    iget-object v0, p0, Ldalvik/system/DexPathList$Element;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 789
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ldalvik/system/DexPathList$Element;->path:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 790
    .local v0, "resourceFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 792
    :try_start_27
    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1
    :try_end_2f
    .catch Ljava/net/MalformedURLException; {:try_start_27 .. :try_end_2f} :catch_30

    return-object v1

    .line 793
    :catch_30
    move-exception v1

    .line 794
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 799
    .end local v0    # "resourceFile":Ljava/io/File;
    .end local v1    # "ex":Ljava/net/MalformedURLException;
    :cond_37
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized greylist-max-o maybeInit()V
    .registers 5

    monitor-enter p0

    .line 740
    :try_start_1
    iget-boolean v0, p0, Ldalvik/system/DexPathList$Element;->initialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_48

    if-eqz v0, :cond_7

    .line 741
    monitor-exit p0

    return-void

    .line 744
    :cond_7
    :try_start_7
    iget-object v0, p0, Ldalvik/system/DexPathList$Element;->path:Ljava/io/File;

    const/4 v1, 0x1

    if-eqz v0, :cond_44

    iget-object v0, p0, Ldalvik/system/DexPathList$Element;->pathIsDirectory:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_48

    if-eqz v0, :cond_15

    goto :goto_44

    .line 752
    :cond_15
    :try_start_15
    new-instance v0, Llibcore/io/ClassPathURLStreamHandler;

    iget-object v2, p0, Ldalvik/system/DexPathList$Element;->path:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Llibcore/io/ClassPathURLStreamHandler;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ldalvik/system/DexPathList$Element;->urlHandler:Llibcore/io/ClassPathURLStreamHandler;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_23} :catch_24
    .catchall {:try_start_15 .. :try_end_23} :catchall_48

    .line 763
    goto :goto_40

    .line 754
    .end local p0    # "this":Ldalvik/system/DexPathList$Element;
    :catch_24
    move-exception v0

    .line 761
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open zip file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ldalvik/system/DexPathList$Element;->path:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 762
    const/4 v2, 0x0

    iput-object v2, p0, Ldalvik/system/DexPathList$Element;->urlHandler:Llibcore/io/ClassPathURLStreamHandler;

    .line 770
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_40
    iput-boolean v1, p0, Ldalvik/system/DexPathList$Element;->initialized:Z
    :try_end_42
    .catchall {:try_start_25 .. :try_end_42} :catchall_48

    .line 771
    monitor-exit p0

    return-void

    .line 745
    :cond_44
    :goto_44
    :try_start_44
    iput-boolean v1, p0, Ldalvik/system/DexPathList$Element;->initialized:Z
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_48

    .line 746
    monitor-exit p0

    return-void

    .line 739
    :catchall_48
    move-exception v0

    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 730
    iget-object v0, p0, Ldalvik/system/DexPathList$Element;->dexFile:Ldalvik/system/DexFile;

    const-string v1, "zip file \""

    const-string v2, "\""

    if-nez v0, :cond_2a

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ldalvik/system/DexPathList$Element;->pathIsDirectory:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v1, "directory \""

    :cond_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldalvik/system/DexPathList$Element;->path:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 732
    :cond_2a
    iget-object v0, p0, Ldalvik/system/DexPathList$Element;->path:Ljava/io/File;

    if-nez v0, :cond_48

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dex file \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldalvik/system/DexPathList$Element;->dexFile:Ldalvik/system/DexFile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 735
    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldalvik/system/DexPathList$Element;->path:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
