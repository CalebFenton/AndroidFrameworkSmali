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
.field private static final SYSTEM_PROPERTY_PACKER:Ljava/lang/String; = "java.util.jar.Pack200.Packer"

.field private static final SYSTEM_PROPERTY_UNPACKER:Ljava/lang/String; = "java.util.jar.Pack200.Unpacker"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static newPacker()Ljava/util/jar/Pack200$Packer;
    .locals 5

    #@0
    .prologue
    .line 53
    const-string/jumbo v2, "java.util.jar.Pack200.Packer"

    #@3
    const-string/jumbo v3, "org.apache.harmony.pack200.Pack200PackerAdapter"

    #@6
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 57
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Ljava/util/jar/Pack200$Packer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    return-object v2

    #@19
    .line 58
    :catch_0
    move-exception v1

    #@1a
    .line 59
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    #@1c
    new-instance v3, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v4, "Can\'t load class "

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-direct {v2, v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@33
    throw v2
.end method

.method public static newUnpacker()Ljava/util/jar/Pack200$Unpacker;
    .locals 5

    #@0
    .prologue
    .line 74
    const-string/jumbo v2, "java.util.jar.Pack200.Unpacker"

    #@3
    const-string/jumbo v3, "org.apache.harmony.unpack200.Pack200UnpackerAdapter"

    #@6
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 76
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Ljava/util/jar/Pack200$Unpacker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    return-object v2

    #@19
    .line 77
    :catch_0
    move-exception v1

    #@1a
    .line 78
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    #@1c
    new-instance v3, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v4, "Can\'t load class "

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-direct {v2, v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@33
    throw v2
.end method
