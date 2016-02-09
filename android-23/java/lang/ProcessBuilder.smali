.class public final Ljava/lang/ProcessBuilder;
.super Ljava/lang/Object;
.source "ProcessBuilder.java"


# instance fields
.field private command:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private directory:Ljava/io/File;

.field private environment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private redirectErrorStream:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 60
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    if-nez p1, :cond_0

    #@5
    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "command == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 64
    :cond_0
    iput-object p1, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    #@10
    .line 67
    new-instance v0, Ljava/util/Hashtable;

    #@12
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    #@15
    move-result-object v1

    #@16
    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    #@19
    iput-object v0, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    #@1b
    .line 60
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@9
    invoke-direct {p0, v0}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    #@c
    .line 45
    return-void
.end method


# virtual methods
.method public command(Ljava/util/List;)Ljava/lang/ProcessBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/ProcessBuilder;"
        }
    .end annotation

    #@0
    .prologue
    .line 104
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    #@2
    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "command == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 107
    :cond_0
    iput-object p1, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    #@d
    .line 108
    return-object p0
.end method

.method public varargs command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;
    .locals 2
    .param p1, "command"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@9
    invoke-virtual {p0, v0}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public command()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public directory()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;
    .locals 0
    .param p1, "directory"    # Ljava/io/File;

    #@0
    .prologue
    .line 132
    iput-object p1, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    #@2
    .line 133
    return-object p0
.end method

.method public environment()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public redirectErrorStream(Z)Ljava/lang/ProcessBuilder;
    .locals 0
    .param p1, "redirectErrorStream"    # Z

    #@0
    .prologue
    .line 172
    iput-boolean p1, p0, Ljava/lang/ProcessBuilder;->redirectErrorStream:Z

    #@2
    .line 173
    return-object p0
.end method

.method public redirectErrorStream()Z
    .locals 1

    #@0
    .prologue
    .line 159
    iget-boolean v0, p0, Ljava/lang/ProcessBuilder;->redirectErrorStream:Z

    #@2
    return v0
.end method

.method public start()Ljava/lang/Process;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 189
    iget-object v6, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    #@2
    iget-object v7, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    #@4
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@7
    move-result v7

    #@8
    new-array v7, v7, [Ljava/lang/String;

    #@a
    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, [Ljava/lang/String;

    #@10
    .line 190
    .local v0, "cmdArray":[Ljava/lang/String;
    iget-object v6, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    #@12
    invoke-interface {v6}, Ljava/util/Map;->size()I

    #@15
    move-result v6

    #@16
    new-array v3, v6, [Ljava/lang/String;

    #@18
    .line 191
    .local v3, "envArray":[Ljava/lang/String;
    const/4 v4, 0x0

    #@19
    .line 192
    .local v4, "i":I
    iget-object v6, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    #@1b
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@1e
    move-result-object v6

    #@1f
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v2

    #@23
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v6

    #@27
    if-eqz v6, :cond_0

    #@29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    check-cast v1, Ljava/util/Map$Entry;

    #@2f
    .line 193
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v5, v4, 0x1

    #@31
    .end local v4    # "i":I
    .local v5, "i":I
    new-instance v7, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@39
    move-result-object v6

    #@3a
    check-cast v6, Ljava/lang/String;

    #@3c
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v6

    #@40
    const-string/jumbo v7, "="

    #@43
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@4a
    move-result-object v6

    #@4b
    check-cast v6, Ljava/lang/String;

    #@4d
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v6

    #@55
    aput-object v6, v3, v4

    #@57
    move v4, v5

    #@58
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    #@59
    .line 195
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-static {}, Ljava/lang/ProcessManager;->getInstance()Ljava/lang/ProcessManager;

    #@5c
    move-result-object v6

    #@5d
    iget-object v7, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    #@5f
    iget-boolean v8, p0, Ljava/lang/ProcessBuilder;->redirectErrorStream:Z

    #@61
    invoke-virtual {v6, v0, v3, v7, v8}, Ljava/lang/ProcessManager;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Z)Ljava/lang/Process;

    #@64
    move-result-object v6

    #@65
    return-object v6
.end method
