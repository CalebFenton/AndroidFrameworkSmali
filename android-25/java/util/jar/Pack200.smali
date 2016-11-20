.class public abstract Ljava/util/jar/Pack200;
.super Ljava/lang/Object;
.source "Pack200.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/Pack200$Packer;,
        Ljava/util/jar/Pack200$Unpacker;
    }
.end annotation


# static fields
.field private static final PACK_PROVIDER:Ljava/lang/String; = "java.util.jar.Pack200.Packer"

.field private static final UNPACK_PROVIDER:Ljava/lang/String; = "java.util.jar.Pack200.Unpacker"

.field private static packerImpl:Ljava/lang/Class;

.field private static unpackerImpl:Ljava/lang/Class;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static declared-synchronized newInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .param p0, "prop"    # Ljava/lang/String;

    #@0
    .prologue
    const-class v7, Ljava/util/jar/Pack200;

    #@2
    monitor-enter v7

    #@3
    .line 733
    :try_start_0
    const-string/jumbo v5, "(unknown)"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .line 735
    .local v5, "implName":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v6, "java.util.jar.Pack200.Packer"

    #@9
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v6

    #@d
    if-eqz v6, :cond_1

    #@f
    sget-object v4, Ljava/util/jar/Pack200;->packerImpl:Ljava/lang/Class;

    #@11
    .line 736
    .local v4, "impl":Ljava/lang/Class;
    :goto_0
    if-nez v4, :cond_0

    #@13
    .line 739
    new-instance v6, Lsun/security/action/GetPropertyAction;

    #@15
    const-string/jumbo v8, ""

    #@18
    invoke-direct {v6, p0, v8}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 738
    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@1e
    move-result-object v6

    #@1f
    move-object v0, v6

    #@20
    check-cast v0, Ljava/lang/String;

    #@22
    move-object v5, v0

    #@23
    .line 740
    if-eqz v5, :cond_0

    #@25
    const-string/jumbo v6, ""

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v6

    #@2c
    if-eqz v6, :cond_2

    #@2e
    .line 750
    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    move-result-object v6

    #@32
    monitor-exit v7

    #@33
    return-object v6

    #@34
    .line 735
    .end local v4    # "impl":Ljava/lang/Class;
    :cond_1
    :try_start_2
    sget-object v4, Ljava/util/jar/Pack200;->unpackerImpl:Ljava/lang/Class;

    #@36
    .restart local v4    # "impl":Ljava/lang/Class;
    goto :goto_0

    #@37
    .line 741
    :cond_2
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3a
    move-result-object v4

    #@3b
    goto :goto_1

    #@3c
    .line 759
    .end local v4    # "impl":Ljava/lang/Class;
    :catch_0
    move-exception v2

    #@3d
    .line 760
    .local v2, "e":Ljava/lang/IllegalAccessException;
    :try_start_3
    new-instance v6, Ljava/lang/Error;

    #@3f
    new-instance v8, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v9, "Cannot access class: "

    #@47
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v8

    #@4b
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v8

    #@4f
    .line 761
    const-string/jumbo v9, ":\ncheck property "

    #@52
    .line 760
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v8

    #@56
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v8

    #@5a
    .line 762
    const-string/jumbo v9, " in your properties file."

    #@5d
    .line 760
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v8

    #@61
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v8

    #@65
    invoke-direct {v6, v8, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@68
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@69
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v5    # "implName":Ljava/lang/String;
    :catchall_0
    move-exception v6

    #@6a
    monitor-exit v7

    #@6b
    throw v6

    #@6c
    .line 755
    .restart local v5    # "implName":Ljava/lang/String;
    :catch_1
    move-exception v3

    #@6d
    .line 756
    .local v3, "e":Ljava/lang/InstantiationException;
    :try_start_4
    new-instance v6, Ljava/lang/Error;

    #@6f
    new-instance v8, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v9, "Could not instantiate: "

    #@77
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v8

    #@7b
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v8

    #@7f
    .line 757
    const-string/jumbo v9, ":\ncheck property "

    #@82
    .line 756
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v8

    #@86
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v8

    #@8a
    .line 758
    const-string/jumbo v9, " in your properties file."

    #@8d
    .line 756
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v8

    #@91
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v8

    #@95
    invoke-direct {v6, v8, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@98
    throw v6

    #@99
    .line 751
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    #@9a
    .line 752
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/lang/Error;

    #@9c
    new-instance v8, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v9, "Class not found: "

    #@a4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v8

    #@a8
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v8

    #@ac
    .line 753
    const-string/jumbo v9, ":\ncheck property "

    #@af
    .line 752
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v8

    #@b3
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v8

    #@b7
    .line 754
    const-string/jumbo v9, " in your properties file."

    #@ba
    .line 752
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v8

    #@be
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v8

    #@c2
    invoke-direct {v6, v8, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c5
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static declared-synchronized newPacker()Ljava/util/jar/Pack200$Packer;
    .locals 2

    #@0
    .prologue
    const-class v1, Ljava/util/jar/Pack200;

    #@2
    monitor-enter v1

    #@3
    .line 134
    :try_start_0
    const-string/jumbo v0, "java.util.jar.Pack200.Packer"

    #@6
    invoke-static {v0}, Ljava/util/jar/Pack200;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/jar/Pack200$Packer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    return-object v0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public static newUnpacker()Ljava/util/jar/Pack200$Unpacker;
    .locals 1

    #@0
    .prologue
    .line 160
    const-string/jumbo v0, "java.util.jar.Pack200.Unpacker"

    #@3
    invoke-static {v0}, Ljava/util/jar/Pack200;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/util/jar/Pack200$Unpacker;

    #@9
    return-object v0
.end method
