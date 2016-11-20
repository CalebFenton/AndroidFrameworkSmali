.class public Lsun/misc/MetaIndex;
.super Ljava/lang/Object;
.source "MetaIndex.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static volatile jarMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Lsun/misc/MetaIndex;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contents:[Ljava/lang/String;

.field private isClassOnlyJar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/misc/MetaIndex;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lsun/misc/MetaIndex;->-assertionsDisabled:Z

    #@b
    .line 130
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .param p2, "isClassOnlyJar"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 254
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 256
    if-nez p1, :cond_0

    #@5
    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@a
    throw v0

    #@b
    .line 260
    :cond_0
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Ljava/lang/String;

    #@e
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, [Ljava/lang/String;

    #@14
    iput-object v0, p0, Lsun/misc/MetaIndex;->contents:[Ljava/lang/String;

    #@16
    .line 261
    iput-boolean p2, p0, Lsun/misc/MetaIndex;->isClassOnlyJar:Z

    #@18
    .line 255
    return-void
.end method

.method public static forJar(Ljava/io/File;)Lsun/misc/MetaIndex;
    .locals 1
    .param p0, "jar"    # Ljava/io/File;

    #@0
    .prologue
    .line 148
    invoke-static {}, Lsun/misc/MetaIndex;->getJarMap()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lsun/misc/MetaIndex;

    #@a
    return-object v0
.end method

.method private static getJarMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Lsun/misc/MetaIndex;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 265
    sget-object v0, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 266
    const-class v1, Lsun/misc/MetaIndex;

    #@6
    monitor-enter v1

    #@7
    .line 267
    :try_start_0
    sget-object v0, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 268
    new-instance v0, Ljava/util/HashMap;

    #@d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@10
    sput-object v0, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit v1

    #@13
    .line 272
    :cond_1
    sget-boolean v0, Lsun/misc/MetaIndex;->-assertionsDisabled:Z

    #@15
    if-nez v0, :cond_3

    #@17
    sget-object v0, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;

    #@19
    if-eqz v0, :cond_2

    #@1b
    const/4 v0, 0x1

    #@1c
    :goto_0
    if-nez v0, :cond_3

    #@1e
    new-instance v0, Ljava/lang/AssertionError;

    #@20
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@23
    throw v0

    #@24
    .line 266
    :catchall_0
    move-exception v0

    #@25
    monitor-exit v1

    #@26
    throw v0

    #@27
    .line 272
    :cond_2
    const/4 v0, 0x0

    #@28
    goto :goto_0

    #@29
    .line 273
    :cond_3
    sget-object v0, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;

    #@2b
    return-object v0
.end method

.method public static declared-synchronized registerDirectory(Ljava/io/File;)V
    .locals 11
    .param p0, "dir"    # Ljava/io/File;

    #@0
    .prologue
    const-class v9, Lsun/misc/MetaIndex;

    #@2
    monitor-enter v9

    #@3
    .line 163
    :try_start_0
    new-instance v3, Ljava/io/File;

    #@5
    const-string/jumbo v8, "meta-index"

    #@8
    invoke-direct {v3, p0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@b
    .line 164
    .local v3, "indexFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v8

    #@f
    if-eqz v8, :cond_1

    #@11
    .line 166
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    #@13
    new-instance v8, Ljava/io/FileReader;

    #@15
    invoke-direct {v8, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    #@18
    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@1b
    .line 167
    .local v7, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    #@1c
    .line 168
    .local v5, "line":Ljava/lang/String;
    const/4 v1, 0x0

    #@1d
    .line 169
    .local v1, "curJarName":Ljava/lang/String;
    const/4 v4, 0x0

    #@1e
    .line 170
    .local v4, "isCurJarContainClassOnly":Z
    new-instance v0, Ljava/util/ArrayList;

    #@20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@23
    .line 171
    .local v0, "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lsun/misc/MetaIndex;->getJarMap()Ljava/util/Map;

    #@26
    move-result-object v6

    #@27
    .line 174
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Lsun/misc/MetaIndex;>;"
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    #@2a
    move-result-object p0

    #@2b
    .line 178
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    .line 179
    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_2

    #@31
    .line 180
    const-string/jumbo v8, "% VERSION 2"

    #@34
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v8

    #@38
    if-eqz v8, :cond_2

    #@3a
    .line 184
    .end local v1    # "curJarName":Ljava/lang/String;
    :cond_0
    :goto_0
    :sswitch_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    if-eqz v5, :cond_5

    #@40
    .line 185
    const/4 v8, 0x0

    #@41
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    #@44
    move-result v8

    #@45
    sparse-switch v8, :sswitch_data_0

    #@48
    .line 210
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    goto :goto_0

    #@4c
    .line 222
    .end local v0    # "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "isCurJarContainClassOnly":Z
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Lsun/misc/MetaIndex;>;"
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    #@4d
    :cond_1
    :goto_1
    monitor-exit v9

    #@4e
    .line 153
    return-void

    #@4f
    .line 181
    .restart local v0    # "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "curJarName":Ljava/lang/String;
    .restart local v4    # "isCurJarContainClassOnly":Z
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Lsun/misc/MetaIndex;>;"
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@52
    monitor-exit v9

    #@53
    .line 182
    return-void

    #@54
    .line 190
    .end local v1    # "curJarName":Ljava/lang/String;
    :sswitch_1
    if-eqz v1, :cond_3

    #@56
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@59
    move-result v8

    #@5a
    if-lez v8, :cond_3

    #@5c
    .line 191
    new-instance v8, Ljava/io/File;

    #@5e
    invoke-direct {v8, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@61
    .line 192
    new-instance v10, Lsun/misc/MetaIndex;

    #@63
    invoke-direct {v10, v0, v4}, Lsun/misc/MetaIndex;-><init>(Ljava/util/List;Z)V

    #@66
    .line 191
    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@69
    .line 195
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@6c
    .line 198
    :cond_3
    const/4 v8, 0x2

    #@6d
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    .line 199
    .local v1, "curJarName":Ljava/lang/String;
    const/4 v8, 0x0

    #@72
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    #@75
    move-result v8

    #@76
    const/16 v10, 0x21

    #@78
    if-ne v8, v10, :cond_4

    #@7a
    .line 200
    const/4 v4, 0x1

    #@7b
    goto :goto_0

    #@7c
    .line 201
    :cond_4
    if-eqz v4, :cond_0

    #@7e
    .line 202
    const/4 v4, 0x0

    #@7f
    goto :goto_0

    #@80
    .line 215
    .end local v1    # "curJarName":Ljava/lang/String;
    :cond_5
    if-eqz v1, :cond_6

    #@82
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@85
    move-result v8

    #@86
    if-lez v8, :cond_6

    #@88
    .line 216
    new-instance v8, Ljava/io/File;

    #@8a
    invoke-direct {v8, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@8d
    .line 217
    new-instance v10, Lsun/misc/MetaIndex;

    #@8f
    invoke-direct {v10, v0, v4}, Lsun/misc/MetaIndex;-><init>(Ljava/util/List;Z)V

    #@92
    .line 216
    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@95
    .line 220
    :cond_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@98
    goto :goto_1

    #@99
    .end local v0    # "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "indexFile":Ljava/io/File;
    .end local v4    # "isCurJarContainClassOnly":Z
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Lsun/misc/MetaIndex;>;"
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v8

    #@9a
    monitor-exit v9

    #@9b
    throw v8

    #@9c
    .line 185
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x23 -> :sswitch_1
        0x25 -> :sswitch_0
        0x40 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public mayContain(Ljava/lang/String;)Z
    .locals 4
    .param p1, "entry"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 237
    iget-boolean v2, p0, Lsun/misc/MetaIndex;->isClassOnlyJar:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    const-string/jumbo v2, ".class"

    #@8
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 241
    :cond_0
    iget-object v0, p0, Lsun/misc/MetaIndex;->contents:[Ljava/lang/String;

    #@10
    .line 242
    .local v0, "conts":[Ljava/lang/String;
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@12
    if-ge v1, v2, :cond_3

    #@14
    .line 243
    aget-object v2, v0, v1

    #@16
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_2

    #@1c
    .line 244
    const/4 v2, 0x1

    #@1d
    return v2

    #@1e
    .line 238
    .end local v0    # "conts":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1
    return v3

    #@1f
    .line 242
    .restart local v0    # "conts":[Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 247
    :cond_3
    return v3
.end method
