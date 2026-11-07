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
.field private static final greylist-max-o PACK_PROVIDER:Ljava/lang/String; = "java.util.jar.Pack200.Packer"

.field private static final greylist-max-o UNPACK_PROVIDER:Ljava/lang/String; = "java.util.jar.Pack200.Unpacker"

.field private static greylist-max-o packerImpl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static greylist-max-o unpackerImpl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized greylist-max-o newInstance(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p0, "prop"    # Ljava/lang/String;

    const-class v0, Ljava/util/jar/Pack200;

    monitor-enter v0

    .line 792
    :try_start_3
    const-string v1, "(unknown)"
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_b5

    .line 794
    .local v1, "implName":Ljava/lang/String;
    :try_start_5
    const-string v2, "java.util.jar.Pack200.Packer"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Ljava/util/jar/Pack200;->packerImpl:Ljava/lang/Class;

    goto :goto_12

    :cond_10
    sget-object v2, Ljava/util/jar/Pack200;->unpackerImpl:Ljava/lang/Class;

    .line 795
    .local v2, "impl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_12
    if-nez v2, :cond_31

    .line 797
    new-instance v3, Lsun/security/action/GetPropertyAction;

    const-string v4, ""

    invoke-direct {v3, p0, v4}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    .line 799
    if-eqz v1, :cond_31

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 800
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 809
    :cond_31
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3
    :try_end_35
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_35} :catch_8b
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_35} :catch_61
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_35} :catch_37
    .catchall {:try_start_5 .. :try_end_35} :catchall_b5

    monitor-exit v0

    return-object v3

    .line 818
    .end local v2    # "impl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_37
    move-exception v2

    .line 819
    .local v2, "e":Ljava/lang/IllegalAccessException;
    :try_start_38
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot access class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":\ncheck property "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in your properties file."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 814
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_61
    move-exception v2

    .line 815
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not instantiate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":\ncheck property "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in your properties file."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 810
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_8b
    move-exception v2

    .line 811
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":\ncheck property "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in your properties file."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 791
    .end local v1    # "implName":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local p0    # "prop":Ljava/lang/String;
    :catchall_b5
    move-exception p0

    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_38 .. :try_end_b7} :catchall_b5

    throw p0
.end method

.method public static declared-synchronized whitelist test-api newPacker()Ljava/util/jar/Pack200$Packer;
    .registers 2

    const-class v0, Ljava/util/jar/Pack200;

    monitor-enter v0

    .line 135
    :try_start_3
    const-string v1, "java.util.jar.Pack200.Packer"

    invoke-static {v1}, Ljava/util/jar/Pack200;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/Pack200$Packer;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object v1

    .line 135
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static whitelist test-api newUnpacker()Ljava/util/jar/Pack200$Unpacker;
    .registers 1

    .line 162
    const-string v0, "java.util.jar.Pack200.Unpacker"

    invoke-static {v0}, Ljava/util/jar/Pack200;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Pack200$Unpacker;

    return-object v0
.end method
