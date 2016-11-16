.class final Lsun/util/logging/LoggingSupport$1;
.super Ljava/lang/Object;
.source "LoggingSupport.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/logging/LoggingSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Lsun/util/logging/LoggingProxy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 50
    invoke-virtual {p0}, Lsun/util/logging/LoggingSupport$1;->run()Lsun/util/logging/LoggingProxy;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Lsun/util/logging/LoggingProxy;
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 54
    :try_start_0
    const-string/jumbo v5, "java.util.logging.LoggingProxyImpl"

    #@4
    const/4 v6, 0x1

    #@5
    const/4 v7, 0x0

    #@6
    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@9
    move-result-object v0

    #@a
    .line 55
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "INSTANCE"

    #@d
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v4

    #@11
    .line 56
    .local v4, "f":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@15
    .line 57
    const/4 v5, 0x0

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v5

    #@1a
    check-cast v5, Lsun/util/logging/LoggingProxy;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    return-object v5

    #@1d
    .line 62
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    #@1e
    .line 63
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/AssertionError;

    #@20
    invoke-direct {v5, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@23
    throw v5

    #@24
    .line 60
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    #@25
    .line 61
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    new-instance v5, Ljava/lang/AssertionError;

    #@27
    invoke-direct {v5, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2a
    throw v5

    #@2b
    .line 58
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v1

    #@2c
    .line 59
    .local v1, "cnf":Ljava/lang/ClassNotFoundException;
    return-object v8
.end method
