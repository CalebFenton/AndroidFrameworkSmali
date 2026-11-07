.class Lsun/util/logging/LoggingSupport$1;
.super Ljava/lang/Object;
.source "LoggingSupport.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/logging/LoggingSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Lsun/util/logging/LoggingProxy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 49
    invoke-virtual {p0}, Lsun/util/logging/LoggingSupport$1;->run()Lsun/util/logging/LoggingProxy;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Lsun/util/logging/LoggingProxy;
    .registers 5

    .line 54
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "java.util.logging.LoggingProxyImpl"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 55
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "INSTANCE"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 56
    .local v3, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 57
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/util/logging/LoggingProxy;
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_17} :catch_26
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_17} :catch_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_17} :catch_18

    return-object v2

    .line 62
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "f":Ljava/lang/reflect/Field;
    :catch_18
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 60
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1f
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 58
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_26
    move-exception v1

    .line 59
    .local v1, "cnf":Ljava/lang/ClassNotFoundException;
    return-object v0
.end method
