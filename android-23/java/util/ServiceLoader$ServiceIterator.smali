.class Ljava/util/ServiceLoader$ServiceIterator;
.super Ljava/lang/Object;
.source "ServiceLoader.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ServiceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private isRead:Z

.field private queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final service:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final services:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/ServiceLoader;


# direct methods
.method public constructor <init>(Ljava/util/ServiceLoader;Ljava/util/ServiceLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ServiceLoader",
            "<TS;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 194
    .local p0, "this":Ljava/util/ServiceLoader$ServiceIterator;, "Ljava/util/ServiceLoader<TS;>.ServiceIterator;"
    .local p1, "this$0":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    .local p2, "sl":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    iput-object p1, p0, Ljava/util/ServiceLoader$ServiceIterator;->this$0:Ljava/util/ServiceLoader;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 190
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Ljava/util/ServiceLoader$ServiceIterator;->isRead:Z

    #@8
    .line 192
    new-instance v0, Ljava/util/LinkedList;

    #@a
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@d
    iput-object v0, p0, Ljava/util/ServiceLoader$ServiceIterator;->queue:Ljava/util/LinkedList;

    #@f
    .line 195
    invoke-static {p2}, Ljava/util/ServiceLoader;->-get0(Ljava/util/ServiceLoader;)Ljava/lang/ClassLoader;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Ljava/util/ServiceLoader$ServiceIterator;->classLoader:Ljava/lang/ClassLoader;

    #@15
    .line 196
    invoke-static {p2}, Ljava/util/ServiceLoader;->-get1(Ljava/util/ServiceLoader;)Ljava/lang/Class;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Ljava/util/ServiceLoader$ServiceIterator;->service:Ljava/lang/Class;

    #@1b
    .line 197
    invoke-static {p2}, Ljava/util/ServiceLoader;->-get2(Ljava/util/ServiceLoader;)Ljava/util/Set;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Ljava/util/ServiceLoader$ServiceIterator;->services:Ljava/util/Set;

    #@21
    .line 194
    return-void
.end method

.method private checkValidJavaClassName(Ljava/lang/String;)V
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 257
    .local p0, "this":Ljava/util/ServiceLoader$ServiceIterator;, "Ljava/util/ServiceLoader<TS;>.ServiceIterator;"
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    if-ge v1, v2, :cond_1

    #@7
    .line 258
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v0

    #@b
    .line 259
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_0

    #@11
    const/16 v2, 0x2e

    #@13
    if-eq v0, v2, :cond_0

    #@15
    .line 260
    new-instance v2, Ljava/util/ServiceConfigurationError;

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "Bad character \'"

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    const-string/jumbo v4, "\' in class name"

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-direct {v2, v3}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;)V

    #@35
    throw v2

    #@36
    .line 257
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@38
    goto :goto_0

    #@39
    .line 256
    .end local v0    # "ch":C
    :cond_1
    return-void
.end method

.method private readClass()V
    .locals 11

    #@0
    .prologue
    .line 221
    .local p0, "this":Ljava/util/ServiceLoader$ServiceIterator;, "Ljava/util/ServiceLoader<TS;>.ServiceIterator;"
    iget-object v8, p0, Ljava/util/ServiceLoader$ServiceIterator;->services:Ljava/util/Set;

    #@2
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v7

    #@6
    .local v7, "url$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v8

    #@a
    if-eqz v8, :cond_3

    #@c
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v6

    #@10
    check-cast v6, Ljava/net/URL;

    #@12
    .line 222
    .local v6, "url":Ljava/net/URL;
    const/4 v4, 0x0

    #@13
    .line 224
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    #@15
    new-instance v8, Ljava/io/InputStreamReader;

    #@17
    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    #@1a
    move-result-object v9

    #@1b
    const-string/jumbo v10, "UTF-8"

    #@1e
    invoke-direct {v8, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@21
    invoke-direct {v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 226
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@2a
    .line 228
    const/16 v8, 0x23

    #@2c
    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    #@2f
    move-result v1

    #@30
    .line 229
    .local v1, "commentStart":I
    const/4 v8, -0x1

    #@31
    if-eq v1, v8, :cond_1

    #@33
    .line 230
    const/4 v8, 0x0

    #@34
    invoke-virtual {v3, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    .line 232
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    .line 234
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@3f
    move-result v8

    #@40
    if-nez v8, :cond_0

    #@42
    .line 237
    move-object v0, v3

    #@43
    .line 238
    .local v0, "className":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/util/ServiceLoader$ServiceIterator;->checkValidJavaClassName(Ljava/lang/String;)V

    #@46
    .line 239
    iget-object v8, p0, Ljava/util/ServiceLoader$ServiceIterator;->queue:Ljava/util/LinkedList;

    #@48
    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    #@4b
    move-result v8

    #@4c
    if-nez v8, :cond_0

    #@4e
    .line 240
    iget-object v8, p0, Ljava/util/ServiceLoader$ServiceIterator;->queue:Ljava/util/LinkedList;

    #@50
    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@53
    goto :goto_1

    #@54
    .line 244
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "commentStart":I
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@55
    .local v2, "e":Ljava/lang/Exception;
    move-object v4, v5

    #@56
    .line 245
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    new-instance v8, Ljava/util/ServiceConfigurationError;

    #@58
    new-instance v9, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v10, "Couldn\'t read "

    #@60
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v9

    #@64
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v9

    #@68
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v9

    #@6c
    invoke-direct {v8, v9, v2}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6f
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@70
    .line 246
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    #@71
    .line 247
    :goto_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@74
    .line 246
    throw v8

    #@75
    .line 243
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_2
    const/4 v8, 0x1

    #@76
    :try_start_3
    iput-boolean v8, p0, Ljava/util/ServiceLoader$ServiceIterator;->isRead:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@78
    .line 247
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@7b
    goto :goto_0

    #@7c
    .line 220
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "url":Ljava/net/URL;
    :cond_3
    return-void

    #@7d
    .line 246
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v8

    #@7e
    move-object v4, v5

    #@7f
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    goto :goto_3

    #@80
    .line 244
    .local v4, "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    #@81
    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_2
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/ServiceLoader$ServiceIterator;, "Ljava/util/ServiceLoader<TS;>.ServiceIterator;"
    const/4 v0, 0x0

    #@1
    .line 201
    iget-boolean v1, p0, Ljava/util/ServiceLoader$ServiceIterator;->isRead:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 202
    invoke-direct {p0}, Ljava/util/ServiceLoader$ServiceIterator;->readClass()V

    #@8
    .line 204
    :cond_0
    iget-object v1, p0, Ljava/util/ServiceLoader$ServiceIterator;->queue:Ljava/util/LinkedList;

    #@a
    if-eqz v1, :cond_1

    #@c
    iget-object v1, p0, Ljava/util/ServiceLoader$ServiceIterator;->queue:Ljava/util/LinkedList;

    #@e
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_2

    #@14
    :cond_1
    :goto_0
    return v0

    #@15
    :cond_2
    const/4 v0, 0x1

    #@16
    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    #@0
    .prologue
    .line 209
    .local p0, "this":Ljava/util/ServiceLoader$ServiceIterator;, "Ljava/util/ServiceLoader<TS;>.ServiceIterator;"
    invoke-virtual {p0}, Ljava/util/ServiceLoader$ServiceIterator;->hasNext()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 210
    new-instance v2, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v2

    #@c
    .line 212
    :cond_0
    iget-object v2, p0, Ljava/util/ServiceLoader$ServiceIterator;->queue:Ljava/util/LinkedList;

    #@e
    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/String;

    #@14
    .line 214
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Ljava/util/ServiceLoader$ServiceIterator;->service:Ljava/lang/Class;

    #@16
    iget-object v3, p0, Ljava/util/ServiceLoader$ServiceIterator;->classLoader:Ljava/lang/ClassLoader;

    #@18
    invoke-virtual {v3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    move-result-object v2

    #@24
    return-object v2

    #@25
    .line 215
    :catch_0
    move-exception v1

    #@26
    .line 216
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/util/ServiceConfigurationError;

    #@28
    new-instance v3, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v4, "Couldn\'t instantiate class "

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-direct {v2, v3, v1}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3f
    throw v2
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 253
    .local p0, "this":Ljava/util/ServiceLoader$ServiceIterator;, "Ljava/util/ServiceLoader<TS;>.ServiceIterator;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
