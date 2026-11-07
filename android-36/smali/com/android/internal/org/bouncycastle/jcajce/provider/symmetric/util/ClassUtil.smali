.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;
.super Ljava/lang/Object;
.source "ClassUtil.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "sourceClass"    # Ljava/lang/Class;
    .param p1, "className"    # Ljava/lang/String;

    .line 16
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 18
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_b

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 24
    :cond_b
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil$1;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil$1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_16} :catch_17

    return-object v1

    .line 44
    .end local v0    # "loader":Ljava/lang/ClassLoader;
    :catch_17
    move-exception v0

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method
