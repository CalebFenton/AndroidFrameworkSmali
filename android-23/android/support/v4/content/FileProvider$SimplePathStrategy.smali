.class Landroid/support/v4/content/FileProvider$SimplePathStrategy;
.super Ljava/lang/Object;
.source "FileProvider.java"

# interfaces
.implements Landroid/support/v4/content/FileProvider$PathStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/FileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimplePathStrategy"
.end annotation


# instance fields
.field private final mAuthority:Ljava/lang/String;

.field private final mRoots:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;

    #@0
    .prologue
    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 632
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/support/v4/content/FileProvider$SimplePathStrategy;->mRoots:Ljava/util/HashMap;

    #@a
    .line 635
    iput-object p1, p0, Landroid/support/v4/content/FileProvider$SimplePathStrategy;->mAuthority:Ljava/lang/String;

    #@c
    .line 634
    return-void
.end method


# virtual methods
.method public addRoot(Ljava/lang/String;Ljava/io/File;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/io/File;

    #@0
    .prologue
    .line 643
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 644
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Name must not be empty"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 649
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object p2

    #@13
    .line 655
    iget-object v1, p0, Landroid/support/v4/content/FileProvider$SimplePathStrategy;->mRoots:Ljava/util/HashMap;

    #@15
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 642
    return-void

    #@19
    .line 650
    :catch_0
    move-exception v0

    #@1a
    .line 651
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1c
    .line 652
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "Failed to resolve canonical path for "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 651
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@33
    throw v1
.end method

.method public getFileForUri(Landroid/net/Uri;)Ljava/io/File;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 698
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 700
    .local v2, "path":Ljava/lang/String;
    const/16 v6, 0x2f

    #@7
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->indexOf(II)I

    #@a
    move-result v4

    #@b
    .line 701
    .local v4, "splitIndex":I
    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e
    move-result-object v6

    #@f
    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v5

    #@13
    .line 702
    .local v5, "tag":Ljava/lang/String;
    add-int/lit8 v6, v4, 0x1

    #@15
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@18
    move-result-object v6

    #@19
    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 704
    iget-object v6, p0, Landroid/support/v4/content/FileProvider$SimplePathStrategy;->mRoots:Ljava/util/HashMap;

    #@1f
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Ljava/io/File;

    #@25
    .line 705
    .local v3, "root":Ljava/io/File;
    if-nez v3, :cond_0

    #@27
    .line 706
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@29
    new-instance v7, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v8, "Unable to find configured root for "

    #@31
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v7

    #@35
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v7

    #@39
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v7

    #@3d
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v6

    #@41
    .line 709
    :cond_0
    new-instance v1, Ljava/io/File;

    #@43
    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@46
    .line 711
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    move-result-object v1

    #@4a
    .line 716
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@51
    move-result-object v7

    #@52
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@55
    move-result v6

    #@56
    if-nez v6, :cond_1

    #@58
    .line 717
    new-instance v6, Ljava/lang/SecurityException;

    #@5a
    const-string/jumbo v7, "Resolved path jumped beyond configured root"

    #@5d
    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@60
    throw v6

    #@61
    .line 712
    :catch_0
    move-exception v0

    #@62
    .line 713
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@64
    new-instance v7, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v8, "Failed to resolve canonical path for "

    #@6c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v7

    #@70
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v7

    #@74
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v7

    #@78
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v6

    #@7c
    .line 720
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    return-object v1
.end method

.method public getUriForFile(Ljava/io/File;)Landroid/net/Uri;
    .locals 9
    .param p1, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 662
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v2

    #@4
    .line 668
    .local v2, "path":Ljava/lang/String;
    const/4 v1, 0x0

    #@5
    .line 669
    .local v1, "mostSpecific":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    iget-object v6, p0, Landroid/support/v4/content/FileProvider$SimplePathStrategy;->mRoots:Ljava/util/HashMap;

    #@7
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@a
    move-result-object v6

    #@b
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v4

    #@f
    .end local v1    # "mostSpecific":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    .local v4, "root$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v6

    #@13
    if-eqz v6, :cond_2

    #@15
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Ljava/util/Map$Entry;

    #@1b
    .line 670
    .local v3, "root":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1e
    move-result-object v6

    #@1f
    check-cast v6, Ljava/io/File;

    #@21
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    .line 671
    .local v5, "rootPath":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_0

    #@2b
    if-eqz v1, :cond_1

    #@2d
    .line 672
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@30
    move-result v7

    #@31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@34
    move-result-object v6

    #@35
    check-cast v6, Ljava/io/File;

    #@37
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@3e
    move-result v6

    #@3f
    if-le v7, v6, :cond_0

    #@41
    .line 673
    :cond_1
    move-object v1, v3

    #@42
    .local v1, "mostSpecific":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    goto :goto_0

    #@43
    .line 663
    .end local v1    # "mostSpecific":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "root":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    .end local v4    # "root$iterator":Ljava/util/Iterator;
    .end local v5    # "rootPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@44
    .line 664
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@46
    new-instance v7, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v8, "Failed to resolve canonical path for "

    #@4e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v7

    #@52
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v7

    #@56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v7

    #@5a
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v6

    #@5e
    .line 677
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v4    # "root$iterator":Ljava/util/Iterator;
    :cond_2
    if-nez v1, :cond_3

    #@60
    .line 678
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@62
    .line 679
    new-instance v7, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v8, "Failed to find configured root that contains "

    #@6a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v7

    #@6e
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v7

    #@72
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v7

    #@76
    .line 678
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@79
    throw v6

    #@7a
    .line 683
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@7d
    move-result-object v6

    #@7e
    check-cast v6, Ljava/io/File;

    #@80
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@83
    move-result-object v5

    #@84
    .line 684
    .restart local v5    # "rootPath":Ljava/lang/String;
    const-string/jumbo v6, "/"

    #@87
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@8a
    move-result v6

    #@8b
    if-eqz v6, :cond_4

    #@8d
    .line 685
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@90
    move-result v6

    #@91
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@94
    move-result-object v2

    #@95
    .line 691
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@9d
    move-result-object v6

    #@9e
    check-cast v6, Ljava/lang/String;

    #@a0
    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@a3
    move-result-object v6

    #@a4
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v6

    #@a8
    const/16 v7, 0x2f

    #@aa
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v6

    #@ae
    const-string/jumbo v7, "/"

    #@b1
    invoke-static {v2, v7}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b4
    move-result-object v7

    #@b5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v6

    #@b9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v2

    #@bd
    .line 692
    new-instance v6, Landroid/net/Uri$Builder;

    #@bf
    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    #@c2
    const-string/jumbo v7, "content"

    #@c5
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@c8
    move-result-object v6

    #@c9
    .line 693
    iget-object v7, p0, Landroid/support/v4/content/FileProvider$SimplePathStrategy;->mAuthority:Ljava/lang/String;

    #@cb
    .line 692
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@ce
    move-result-object v6

    #@cf
    invoke-virtual {v6, v2}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@d2
    move-result-object v6

    #@d3
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@d6
    move-result-object v6

    #@d7
    return-object v6

    #@d8
    .line 687
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@db
    move-result v6

    #@dc
    add-int/lit8 v6, v6, 0x1

    #@de
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@e1
    move-result-object v2

    #@e2
    goto :goto_1
.end method
