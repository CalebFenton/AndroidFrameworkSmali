.class public Landroid/net/connectivity/org/chromium/base/WrappedClassLoader;
.super Ljava/lang/ClassLoader;
.source "WrappedClassLoader.java"


# instance fields
.field private final blacklist mPrimaryClassLoader:Ljava/lang/ClassLoader;

.field private final blacklist mSecondaryClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "primary"    # Ljava/lang/ClassLoader;
    .param p2, "secondary"    # Ljava/lang/ClassLoader;

    .line 17
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 18
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/WrappedClassLoader;->mPrimaryClassLoader:Ljava/lang/ClassLoader;

    .line 19
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/base/WrappedClassLoader;->mSecondaryClassLoader:Ljava/lang/ClassLoader;

    .line 20
    return-void
.end method


# virtual methods
.method protected whitelist test-api findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 25
    :try_start_0
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/WrappedClassLoader;->mPrimaryClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 26
    :catch_7
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :try_start_8
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/WrappedClassLoader;->mSecondaryClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_e} :catch_f

    return-object v1

    .line 29
    :catch_f
    move-exception v1

    .line 30
    .local v1, "e2":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0, v1}, Ljava/lang/ClassNotFoundException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 31
    throw v0
.end method

.method public whitelist test-api findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    .line 42
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/WrappedClassLoader;->mPrimaryClassLoader:Ljava/lang/ClassLoader;

    instance-of v1, v1, Ldalvik/system/BaseDexClassLoader;

    if-eqz v1, :cond_12

    .line 43
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/WrappedClassLoader;->mPrimaryClassLoader:Ljava/lang/ClassLoader;

    check-cast v1, Ldalvik/system/BaseDexClassLoader;

    invoke-virtual {v1, p1}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_12

    return-object v0

    .line 46
    :cond_12
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/WrappedClassLoader;->mSecondaryClassLoader:Ljava/lang/ClassLoader;

    instance-of v1, v1, Ldalvik/system/BaseDexClassLoader;

    if-eqz v1, :cond_20

    .line 47
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/WrappedClassLoader;->mSecondaryClassLoader:Ljava/lang/ClassLoader;

    check-cast v1, Ldalvik/system/BaseDexClassLoader;

    invoke-virtual {v1, p1}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_20
    return-object v0
.end method
