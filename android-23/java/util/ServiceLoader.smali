.class public final Ljava/util/ServiceLoader;
.super Ljava/lang/Object;
.source "ServiceLoader.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ServiceLoader$ServiceIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

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


# direct methods
.method static synthetic -get0(Ljava/util/ServiceLoader;)Ljava/lang/ClassLoader;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/ServiceLoader;->classLoader:Ljava/lang/ClassLoader;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/util/ServiceLoader;)Ljava/lang/Class;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/ServiceLoader;->service:Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Ljava/util/ServiceLoader;)Ljava/util/Set;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/ServiceLoader;->services:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 77
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    if-nez p1, :cond_0

    #@5
    .line 81
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "service == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 83
    :cond_0
    iput-object p1, p0, Ljava/util/ServiceLoader;->service:Ljava/lang/Class;

    #@10
    .line 84
    iput-object p2, p0, Ljava/util/ServiceLoader;->classLoader:Ljava/lang/ClassLoader;

    #@12
    .line 85
    new-instance v0, Ljava/util/HashSet;

    #@14
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@17
    iput-object v0, p0, Ljava/util/ServiceLoader;->services:Ljava/util/Set;

    #@19
    .line 86
    invoke-virtual {p0}, Ljava/util/ServiceLoader;->reload()V

    #@1c
    .line 77
    return-void
.end method

.method private internalLoad()V
    .locals 4

    #@0
    .prologue
    .line 126
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    iget-object v2, p0, Ljava/util/ServiceLoader;->services:Ljava/util/Set;

    #@2
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    #@5
    .line 128
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "META-INF/services/"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    iget-object v3, p0, Ljava/util/ServiceLoader;->service:Ljava/lang/Class;

    #@13
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 129
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/ServiceLoader;->services:Ljava/util/Set;

    #@21
    iget-object v3, p0, Ljava/util/ServiceLoader;->classLoader:Ljava/lang/ClassLoader;

    #@23
    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    #@26
    move-result-object v3

    #@27
    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    #@2a
    move-result-object v3

    #@2b
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 125
    return-void

    #@2f
    .line 130
    .end local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@30
    .line 131
    .local v0, "e":Ljava/io/IOException;
    return-void
.end method

.method public static load(Ljava/lang/Class;)Ljava/util/ServiceLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)",
            "Ljava/util/ServiceLoader",
            "<TS;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 142
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    invoke-static {p0, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/ServiceLoader",
            "<TS;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 119
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    if-nez p1, :cond_0

    #@2
    .line 120
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object p1

    #@6
    .line 122
    :cond_0
    new-instance v0, Ljava/util/ServiceLoader;

    #@8
    invoke-direct {v0, p0, p1}, Ljava/util/ServiceLoader;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    #@b
    return-object v0
.end method

.method public static loadFromSystemProperty(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)TS;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    const/4 v4, 0x0

    #@1
    .line 169
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 170
    .local v1, "className":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@b
    .line 171
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@12
    move-result-object v0

    #@13
    .line 172
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-object v3

    #@17
    return-object v3

    #@18
    .line 174
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object v4

    #@19
    .line 175
    .end local v1    # "className":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@1a
    .line 176
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/Error;

    #@1c
    invoke-direct {v3, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@1f
    throw v3
.end method

.method public static loadInstalled(Ljava/lang/Class;)Ljava/util/ServiceLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)",
            "Ljava/util/ServiceLoader",
            "<TS;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 152
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    .line 153
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    #@6
    .line 154
    :goto_0
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    #@9
    move-result-object v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 155
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    #@f
    move-result-object v0

    #@10
    goto :goto_0

    #@11
    .line 158
    :cond_0
    invoke-static {p0, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    #@14
    move-result-object v1

    #@15
    return-object v1
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TS;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 107
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    new-instance v0, Ljava/util/ServiceLoader$ServiceIterator;

    #@2
    invoke-direct {v0, p0, p0}, Ljava/util/ServiceLoader$ServiceIterator;-><init>(Ljava/util/ServiceLoader;Ljava/util/ServiceLoader;)V

    #@5
    return-object v0
.end method

.method public reload()V
    .locals 0

    #@0
    .prologue
    .line 93
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    invoke-direct {p0}, Ljava/util/ServiceLoader;->internalLoad()V

    #@3
    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 182
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ServiceLoader for "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Ljava/util/ServiceLoader;->service:Ljava/lang/Class;

    #@e
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method
