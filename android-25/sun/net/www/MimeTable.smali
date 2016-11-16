.class public Lsun/net/www/MimeTable;
.super Ljava/lang/Object;
.source "MimeTable.java"

# interfaces
.implements Ljava/net/FileNameMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/MimeTable$1;,
        Lsun/net/www/MimeTable$DefaultInstanceHolder;
    }
.end annotation


# static fields
.field private static final fileMagic:Ljava/lang/String; = "#sun.net.www MIME content-types table"

.field private static final filePreamble:Ljava/lang/String; = "sun.net.www MIME content-types table"

.field protected static mailcapLocations:[Ljava/lang/String;

.field private static tempFileTemplate:Ljava/lang/String;


# instance fields
.field private entries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lsun/net/www/MimeEntry;",
            ">;"
        }
    .end annotation
.end field

.field private extensionMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lsun/net/www/MimeEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -set0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    sput-object p0, Lsun/net/www/MimeTable;->tempFileTemplate:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 52
    new-instance v0, Lsun/net/www/MimeTable$1;

    #@2
    invoke-direct {v0}, Lsun/net/www/MimeTable$1;-><init>()V

    #@5
    .line 51
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    .line 38
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    .line 40
    iput-object v0, p0, Lsun/net/www/MimeTable;->entries:Ljava/util/Hashtable;

    #@a
    .line 45
    new-instance v0, Ljava/util/Hashtable;

    #@c
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@f
    .line 44
    iput-object v0, p0, Lsun/net/www/MimeTable;->extensionMap:Ljava/util/Hashtable;

    #@11
    .line 78
    invoke-virtual {p0}, Lsun/net/www/MimeTable;->load()V

    #@14
    .line 77
    return-void
.end method

.method public static getDefaultTable()Lsun/net/www/MimeTable;
    .locals 1

    #@0
    .prologue
    .line 101
    sget-object v0, Lsun/net/www/MimeTable$DefaultInstanceHolder;->defaultInstance:Lsun/net/www/MimeTable;

    #@2
    return-object v0
.end method

.method public static loadTable()Ljava/net/FileNameMap;
    .locals 1

    #@0
    .prologue
    .line 108
    invoke-static {}, Lsun/net/www/MimeTable;->getDefaultTable()Lsun/net/www/MimeTable;

    #@3
    move-result-object v0

    #@4
    .line 109
    .local v0, "mt":Lsun/net/www/MimeTable;
    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(Lsun/net/www/MimeEntry;)V
    .locals 4
    .param p1, "m"    # Lsun/net/www/MimeEntry;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 126
    :try_start_0
    iget-object v2, p0, Lsun/net/www/MimeTable;->entries:Ljava/util/Hashtable;

    #@3
    invoke-virtual {p1}, Lsun/net/www/MimeEntry;->getType()Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v2, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 128
    invoke-virtual {p1}, Lsun/net/www/MimeEntry;->getExtensions()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-object v0

    #@e
    .line 129
    .local v0, "exts":[Ljava/lang/String;
    if-nez v0, :cond_0

    #@10
    monitor-exit p0

    #@11
    .line 130
    return-void

    #@12
    .line 133
    :cond_0
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    :goto_0
    :try_start_1
    array-length v2, v0

    #@14
    if-ge v1, v2, :cond_1

    #@16
    .line 134
    iget-object v2, p0, Lsun/net/www/MimeTable;->extensionMap:Ljava/util/Hashtable;

    #@18
    aget-object v3, v0, v1

    #@1a
    invoke-virtual {v2, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    .line 133
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    :cond_1
    monitor-exit p0

    #@21
    .line 125
    return-void

    #@22
    .end local v0    # "exts":[Ljava/lang/String;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    #@23
    monitor-exit p0

    #@24
    throw v2
.end method

.method public declared-synchronized elements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lsun/net/www/MimeEntry;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 221
    :try_start_0
    iget-object v0, p0, Lsun/net/www/MimeTable;->entries:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method fill(Lsun/net/www/MimeEntry;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "entry"    # Lsun/net/www/MimeEntry;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 347
    const-string/jumbo v0, "description"

    #@3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 348
    invoke-virtual {p1, p3}, Lsun/net/www/MimeEntry;->setDescription(Ljava/lang/String;)V

    #@c
    .line 346
    :cond_0
    :goto_0
    return-void

    #@d
    .line 350
    :cond_1
    const-string/jumbo v0, "action"

    #@10
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 351
    invoke-virtual {p0, p3}, Lsun/net/www/MimeTable;->getActionCode(Ljava/lang/String;)I

    #@19
    move-result v0

    #@1a
    invoke-virtual {p1, v0}, Lsun/net/www/MimeEntry;->setAction(I)V

    #@1d
    goto :goto_0

    #@1e
    .line 353
    :cond_2
    const-string/jumbo v0, "application"

    #@21
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_3

    #@27
    .line 354
    invoke-virtual {p1, p3}, Lsun/net/www/MimeEntry;->setCommand(Ljava/lang/String;)V

    #@2a
    goto :goto_0

    #@2b
    .line 356
    :cond_3
    const-string/jumbo v0, "icon"

    #@2e
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_4

    #@34
    .line 357
    invoke-virtual {p1, p3}, Lsun/net/www/MimeEntry;->setImageFileName(Ljava/lang/String;)V

    #@37
    goto :goto_0

    #@38
    .line 359
    :cond_4
    const-string/jumbo v0, "file_extensions"

    #@3b
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_0

    #@41
    .line 360
    invoke-virtual {p1, p3}, Lsun/net/www/MimeEntry;->setExtensions(Ljava/lang/String;)V

    #@44
    goto :goto_0
.end method

.method public declared-synchronized find(Ljava/lang/String;)Lsun/net/www/MimeEntry;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 155
    :try_start_0
    iget-object v3, p0, Lsun/net/www/MimeTable;->entries:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Lsun/net/www/MimeEntry;

    #@9
    .line 156
    .local v1, "entry":Lsun/net/www/MimeEntry;
    if-nez v1, :cond_1

    #@b
    .line 158
    iget-object v3, p0, Lsun/net/www/MimeTable;->entries:Ljava/util/Hashtable;

    #@d
    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    #@10
    move-result-object v0

    #@11
    .line 159
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/net/www/MimeEntry;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 160
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Lsun/net/www/MimeEntry;

    #@1d
    .line 161
    .local v2, "wild":Lsun/net/www/MimeEntry;
    invoke-virtual {v2, p1}, Lsun/net/www/MimeEntry;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    monitor-exit p0

    #@24
    .line 162
    return-object v2

    #@25
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/net/www/MimeEntry;>;"
    .end local v2    # "wild":Lsun/net/www/MimeEntry;
    :cond_1
    monitor-exit p0

    #@26
    .line 167
    return-object v1

    #@27
    .end local v1    # "entry":Lsun/net/www/MimeEntry;
    :catchall_0
    move-exception v3

    #@28
    monitor-exit p0

    #@29
    throw v3
.end method

.method public declared-synchronized findByDescription(Ljava/lang/String;)Lsun/net/www/MimeEntry;
    .locals 3
    .param p1, "description"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 204
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/MimeTable;->elements()Ljava/util/Enumeration;

    #@4
    move-result-object v0

    #@5
    .line 205
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/net/www/MimeEntry;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 206
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lsun/net/www/MimeEntry;

    #@11
    .line 207
    .local v1, "entry":Lsun/net/www/MimeEntry;
    invoke-virtual {v1}, Lsun/net/www/MimeEntry;->getDescription()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    monitor-exit p0

    #@1c
    .line 208
    return-object v1

    #@1d
    .line 213
    .end local v1    # "entry":Lsun/net/www/MimeEntry;
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lsun/net/www/MimeTable;->find(Ljava/lang/String;)Lsun/net/www/MimeEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    move-result-object v2

    #@21
    monitor-exit p0

    #@22
    return-object v2

    #@23
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/net/www/MimeEntry;>;"
    :catchall_0
    move-exception v2

    #@24
    monitor-exit p0

    #@25
    throw v2
.end method

.method public declared-synchronized findByExt(Ljava/lang/String;)Lsun/net/www/MimeEntry;
    .locals 1
    .param p1, "fileExtension"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 200
    :try_start_0
    iget-object v0, p0, Lsun/net/www/MimeTable;->extensionMap:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lsun/net/www/MimeEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public findByFileName(Ljava/lang/String;)Lsun/net/www/MimeEntry;
    .locals 5
    .param p1, "fname"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v4, 0x2e

    #@2
    const/4 v3, 0x0

    #@3
    .line 175
    const-string/jumbo v0, ""

    #@6
    .line 177
    .local v0, "ext":Ljava/lang/String;
    const/16 v2, 0x23

    #@8
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@b
    move-result v1

    #@c
    .line 179
    .local v1, "i":I
    if-lez v1, :cond_0

    #@e
    .line 180
    add-int/lit8 v2, v1, -0x1

    #@10
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13
    move-result-object p1

    #@14
    .line 183
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    #@17
    move-result v1

    #@18
    .line 185
    const/16 v2, 0x2f

    #@1a
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@1d
    move-result v2

    #@1e
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@21
    move-result v1

    #@22
    .line 186
    const/16 v2, 0x3f

    #@24
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@27
    move-result v2

    #@28
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@2b
    move-result v1

    #@2c
    .line 188
    const/4 v2, -0x1

    #@2d
    if-eq v1, v2, :cond_1

    #@2f
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@32
    move-result v2

    #@33
    if-ne v2, v4, :cond_1

    #@35
    .line 189
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    .line 192
    :cond_1
    invoke-virtual {p0, v0}, Lsun/net/www/MimeTable;->findByExt(Ljava/lang/String;)Lsun/net/www/MimeEntry;

    #@40
    move-result-object v2

    #@41
    return-object v2
.end method

.method getActionCode(Ljava/lang/String;)I
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 378
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    sget-object v1, Lsun/net/www/MimeEntry;->actionKeywords:[Ljava/lang/String;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 379
    sget-object v1, Lsun/net/www/MimeEntry;->actionKeywords:[Ljava/lang/String;

    #@8
    aget-object v1, v1, v0

    #@a
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 380
    return v0

    #@11
    .line 378
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 384
    :cond_1
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public getAsProperties()Ljava/util/Properties;
    .locals 5

    #@0
    .prologue
    .line 400
    new-instance v2, Ljava/util/Properties;

    #@2
    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    #@5
    .line 401
    .local v2, "properties":Ljava/util/Properties;
    invoke-virtual {p0}, Lsun/net/www/MimeTable;->elements()Ljava/util/Enumeration;

    #@8
    move-result-object v0

    #@9
    .line 402
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/net/www/MimeEntry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 403
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lsun/net/www/MimeEntry;

    #@15
    .line 404
    .local v1, "entry":Lsun/net/www/MimeEntry;
    invoke-virtual {v1}, Lsun/net/www/MimeEntry;->getType()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v1}, Lsun/net/www/MimeEntry;->toProperty()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    goto :goto_0

    #@21
    .line 407
    .end local v1    # "entry":Lsun/net/www/MimeEntry;
    :cond_0
    return-object v2
.end method

.method public declared-synchronized getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 117
    :try_start_0
    invoke-virtual {p0, p1}, Lsun/net/www/MimeTable;->findByFileName(Ljava/lang/String;)Lsun/net/www/MimeEntry;

    #@5
    move-result-object v0

    #@6
    .line 118
    .local v0, "entry":Lsun/net/www/MimeEntry;
    if-eqz v0, :cond_0

    #@8
    .line 119
    invoke-virtual {v0}, Lsun/net/www/MimeEntry;->getType()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result-object v1

    #@c
    monitor-exit p0

    #@d
    return-object v1

    #@e
    :cond_0
    monitor-exit p0

    #@f
    .line 121
    return-object v1

    #@10
    .end local v0    # "entry":Lsun/net/www/MimeEntry;
    :catchall_0
    move-exception v1

    #@11
    monitor-exit p0

    #@12
    throw v1
.end method

.method getExtensions(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "list"    # Ljava/lang/String;

    #@0
    .prologue
    .line 367
    new-instance v3, Ljava/util/StringTokenizer;

    #@2
    const-string/jumbo v4, ","

    #@5
    invoke-direct {v3, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 368
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    #@b
    move-result v2

    #@c
    .line 369
    .local v2, "n":I
    new-array v0, v2, [Ljava/lang/String;

    #@e
    .line 370
    .local v0, "extensions":[Ljava/lang/String;
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@11
    .line 371
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    aput-object v4, v0, v1

    #@17
    .line 370
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 374
    :cond_0
    return-object v0
.end method

.method public declared-synchronized getSize()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 113
    :try_start_0
    iget-object v0, p0, Lsun/net/www/MimeTable;->entries:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method getTempFileTemplate()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 217
    sget-object v0, Lsun/net/www/MimeTable;->tempFileTemplate:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public declared-synchronized load()V
    .locals 9

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 230
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    #@3
    invoke-direct {v1}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .line 231
    .local v1, "entries":Ljava/util/Properties;
    const/4 v2, 0x0

    #@7
    .line 236
    .local v2, "file":Ljava/io/File;
    :try_start_1
    const-string/jumbo v6, "content.types.user.table"

    #@a
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v5

    #@e
    .line 237
    .local v5, "userTablePath":Ljava/lang/String;
    if-eqz v5, :cond_0

    #@10
    .line 238
    new-instance v3, Ljava/io/File;

    #@12
    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    .line 239
    .local v3, "file":Ljava/io/File;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@18
    .end local v2    # "file":Ljava/io/File;
    move-result v6

    #@19
    if-nez v6, :cond_1

    #@1b
    .line 241
    new-instance v2, Ljava/io/File;

    #@1d
    new-instance v6, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v7, "java.home"

    #@25
    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v7

    #@29
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    .line 242
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    #@2f
    .line 241
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    .line 243
    const-string/jumbo v7, "lib"

    #@36
    .line 241
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    .line 244
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    #@3c
    .line 241
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v6

    #@40
    .line 245
    const-string/jumbo v7, "content-types.properties"

    #@43
    .line 241
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4e
    .line 257
    .end local v3    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :goto_0
    :try_start_3
    new-instance v4, Ljava/io/BufferedInputStream;

    #@50
    new-instance v6, Ljava/io/FileInputStream;

    #@52
    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@55
    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@58
    .line 258
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {v1, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    #@5b
    .line 259
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5e
    .line 266
    :try_start_4
    invoke-virtual {p0, v1}, Lsun/net/www/MimeTable;->parse(Ljava/util/Properties;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@61
    monitor-exit p0

    #@62
    .line 229
    return-void

    #@63
    .line 250
    .end local v4    # "is":Ljava/io/InputStream;
    .local v2, "file":Ljava/io/File;
    :cond_0
    :try_start_5
    new-instance v3, Ljava/io/File;

    #@65
    new-instance v6, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v7, "java.home"

    #@6d
    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@70
    move-result-object v7

    #@71
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v6

    #@75
    .line 251
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    #@77
    .line 250
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v6

    #@7b
    .line 252
    const-string/jumbo v7, "lib"

    #@7e
    .line 250
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v6

    #@82
    .line 253
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    #@84
    .line 250
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v6

    #@88
    .line 254
    const-string/jumbo v7, "content-types.properties"

    #@8b
    .line 250
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v6

    #@8f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v6

    #@93
    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@96
    .restart local v3    # "file":Ljava/io/File;
    move-object v2, v3

    #@97
    .end local v3    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    goto :goto_0

    #@98
    .line 261
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "userTablePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@99
    .line 262
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_6
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9b
    new-instance v7, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v8, "Warning: default mime table not found: "

    #@a3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v7

    #@a7
    .line 263
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@aa
    move-result-object v8

    #@ab
    .line 262
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v7

    #@af
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v7

    #@b3
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@b6
    monitor-exit p0

    #@b7
    .line 264
    return-void

    #@b8
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "entries":Ljava/util/Properties;
    :catchall_0
    move-exception v6

    #@b9
    monitor-exit p0

    #@ba
    throw v6

    #@bb
    .line 261
    .restart local v1    # "entries":Ljava/util/Properties;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "userTablePath":Ljava/lang/String;
    :catch_1
    move-exception v0

    #@bc
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v2, v3

    #@bd
    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_1

    #@be
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :cond_1
    move-object v2, v3

    #@bf
    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_0
.end method

.method parse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "attrs"    # Ljava/lang/String;

    #@0
    .prologue
    .line 314
    new-instance v0, Lsun/net/www/MimeEntry;

    #@2
    invoke-direct {v0, p1}, Lsun/net/www/MimeEntry;-><init>(Ljava/lang/String;)V

    #@5
    .line 317
    .local v0, "newEntry":Lsun/net/www/MimeEntry;
    new-instance v2, Ljava/util/StringTokenizer;

    #@7
    const-string/jumbo v3, ";"

    #@a
    invoke-direct {v2, p2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 318
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 319
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 320
    .local v1, "pair":Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lsun/net/www/MimeTable;->parse(Ljava/lang/String;Lsun/net/www/MimeEntry;)V

    #@1a
    goto :goto_0

    #@1b
    .line 323
    .end local v1    # "pair":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lsun/net/www/MimeTable;->add(Lsun/net/www/MimeEntry;)V

    #@1e
    .line 313
    return-void
.end method

.method parse(Ljava/lang/String;Lsun/net/www/MimeEntry;)V
    .locals 5
    .param p1, "pair"    # Ljava/lang/String;
    .param p2, "entry"    # Lsun/net/www/MimeEntry;

    #@0
    .prologue
    .line 328
    const/4 v1, 0x0

    #@1
    .line 329
    .local v1, "name":Ljava/lang/String;
    const/4 v3, 0x0

    #@2
    .line 331
    .local v3, "value":Ljava/lang/String;
    const/4 v0, 0x0

    #@3
    .line 332
    .local v0, "gotName":Z
    new-instance v2, Ljava/util/StringTokenizer;

    #@5
    const-string/jumbo v4, "="

    #@8
    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 333
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_1

    #@11
    .line 334
    if-eqz v0, :cond_0

    #@13
    .line 335
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .local v3, "value":Ljava/lang/String;
    goto :goto_0

    #@1c
    .line 338
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 339
    .local v1, "name":Ljava/lang/String;
    const/4 v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 343
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p2, v1, v3}, Lsun/net/www/MimeTable;->fill(Lsun/net/www/MimeEntry;Ljava/lang/String;Ljava/lang/String;)V

    #@29
    .line 326
    return-void
.end method

.method parse(Ljava/util/Properties;)V
    .locals 5
    .param p1, "entries"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 271
    const-string/jumbo v4, "temp.file.template"

    #@3
    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Ljava/lang/String;

    #@9
    .line 272
    .local v1, "tempFileTemplate":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@b
    .line 273
    const-string/jumbo v4, "temp.file.template"

    #@e
    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 274
    sput-object v1, Lsun/net/www/MimeTable;->tempFileTemplate:Ljava/lang/String;

    #@13
    .line 278
    :cond_0
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    #@16
    move-result-object v3

    #@17
    .line 279
    .local v3, "types":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 280
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Ljava/lang/String;

    #@23
    .line 281
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    .line 282
    .local v0, "attrs":Ljava/lang/String;
    invoke-virtual {p0, v2, v0}, Lsun/net/www/MimeTable;->parse(Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    goto :goto_0

    #@2b
    .line 269
    .end local v0    # "attrs":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Lsun/net/www/MimeEntry;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 139
    :try_start_0
    iget-object v1, p0, Lsun/net/www/MimeTable;->entries:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lsun/net/www/MimeEntry;

    #@9
    .line 140
    .local v0, "entry":Lsun/net/www/MimeEntry;
    invoke-virtual {p0, v0}, Lsun/net/www/MimeTable;->remove(Lsun/net/www/MimeEntry;)Lsun/net/www/MimeEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v1

    #@d
    monitor-exit p0

    #@e
    return-object v1

    #@f
    .end local v0    # "entry":Lsun/net/www/MimeEntry;
    :catchall_0
    move-exception v1

    #@10
    monitor-exit p0

    #@11
    throw v1
.end method

.method public declared-synchronized remove(Lsun/net/www/MimeEntry;)Lsun/net/www/MimeEntry;
    .locals 4
    .param p1, "entry"    # Lsun/net/www/MimeEntry;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 144
    :try_start_0
    invoke-virtual {p1}, Lsun/net/www/MimeEntry;->getExtensions()[Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 145
    .local v0, "extensionKeys":[Ljava/lang/String;
    if-eqz v0, :cond_0

    #@7
    .line 146
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@9
    if-ge v1, v2, :cond_0

    #@b
    .line 147
    iget-object v2, p0, Lsun/net/www/MimeTable;->extensionMap:Ljava/util/Hashtable;

    #@d
    aget-object v3, v0, v1

    #@f
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 146
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 151
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lsun/net/www/MimeTable;->entries:Ljava/util/Hashtable;

    #@17
    invoke-virtual {p1}, Lsun/net/www/MimeEntry;->getType()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Lsun/net/www/MimeEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit p0

    #@22
    return-object v2

    #@23
    .end local v0    # "extensionKeys":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@24
    monitor-exit p0

    #@25
    throw v2
.end method

.method public declared-synchronized save(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 388
    if-nez p1, :cond_0

    #@3
    .line 389
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "user.home"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    .line 390
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    #@11
    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    .line 391
    const-string/jumbo v1, "lib"

    #@18
    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    .line 392
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    #@1e
    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 393
    const-string/jumbo v1, "content-types.properties"

    #@25
    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@30
    move-result-object p1

    #@31
    .line 396
    :cond_0
    new-instance v0, Ljava/io/File;

    #@33
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@36
    invoke-virtual {p0, v0}, Lsun/net/www/MimeTable;->saveAsProperties(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    move-result v0

    #@3a
    monitor-exit p0

    #@3b
    return v0

    #@3c
    :catchall_0
    move-exception v0

    #@3d
    monitor-exit p0

    #@3e
    throw v0
.end method

.method protected saveAsProperties(Ljava/io/File;)Z
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 411
    const/4 v1, 0x0

    #@1
    .line 413
    .local v1, "os":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    #@3
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .line 414
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p0}, Lsun/net/www/MimeTable;->getAsProperties()Ljava/util/Properties;

    #@9
    move-result-object v3

    #@a
    .line 415
    .local v3, "properties":Ljava/util/Properties;
    const-string/jumbo v6, "temp.file.template"

    #@d
    sget-object v7, Lsun/net/www/MimeTable;->tempFileTemplate:Ljava/lang/String;

    #@f
    invoke-virtual {v3, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 417
    const-string/jumbo v6, "user.name"

    #@15
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    .line 418
    .local v5, "user":Ljava/lang/String;
    if-eqz v5, :cond_1

    #@1b
    .line 419
    new-instance v6, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v7, "; customized for "

    #@23
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    .line 420
    .local v4, "tag":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v7, "sun.net.www MIME content-types table"

    #@37
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v3, v2, v6}, Ljava/util/Properties;->save(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@46
    .line 431
    .end local v4    # "tag":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    #@48
    .line 432
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@4b
    .line 436
    :cond_0
    :goto_1
    const/4 v6, 0x1

    #@4c
    return v6

    #@4d
    .line 423
    :cond_1
    :try_start_3
    const-string/jumbo v6, "sun.net.www MIME content-types table"

    #@50
    invoke-virtual {v3, v2, v6}, Ljava/util/Properties;->save(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@53
    goto :goto_0

    #@54
    .line 426
    .end local v3    # "properties":Ljava/util/Properties;
    .end local v5    # "user":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@55
    .local v0, "e":Ljava/io/IOException;
    move-object v1, v2

    #@56
    .line 427
    .end local v2    # "os":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@59
    .line 428
    const/4 v6, 0x0

    #@5a
    .line 431
    if-eqz v1, :cond_2

    #@5c
    .line 432
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    #@5f
    .line 428
    :cond_2
    :goto_3
    return v6

    #@60
    .line 432
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "properties":Ljava/util/Properties;
    .restart local v5    # "user":Ljava/lang/String;
    :catch_1
    move-exception v0

    #@61
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    #@62
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .end local v3    # "properties":Ljava/util/Properties;
    .end local v5    # "user":Ljava/lang/String;
    :catch_2
    move-exception v0

    #@63
    goto :goto_3

    #@64
    .line 430
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    #@65
    .line 431
    :goto_4
    if-eqz v1, :cond_3

    #@67
    .line 432
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    #@6a
    .line 430
    :cond_3
    :goto_5
    throw v6

    #@6b
    .line 432
    :catch_3
    move-exception v0

    #@6c
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_5

    #@6d
    .line 430
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    #@6e
    move-object v1, v2

    #@6f
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .local v1, "os":Ljava/io/FileOutputStream;
    goto :goto_4

    #@70
    .line 426
    .local v1, "os":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    #@71
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2
.end method
