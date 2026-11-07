.class public Landroid/net/connectivity/org/chromium/net/impl/NativeCronetProvider;
.super Landroid/net/connectivity/org/chromium/net/CronetProvider;
.source "NativeCronetProvider.java"


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/CronetProvider;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method public blacklist createBuilder()Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 3

    .line 34
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/NativeCronetEngineBuilderWithLibraryLoaderImpl;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/NativeCronetProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/NativeCronetEngineBuilderWithLibraryLoaderImpl;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, "impl":Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    new-instance v1, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    invoke-direct {v1, v0}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;-><init>(Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;)V

    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 60
    if-eq p1, p0, :cond_16

    instance-of v0, p1, Landroid/net/connectivity/org/chromium/net/impl/NativeCronetProvider;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/NativeCronetProvider;->mContext:Landroid/content/Context;

    move-object v1, p1

    check-cast v1, Landroid/net/connectivity/org/chromium/net/impl/NativeCronetProvider;

    iget-object v1, v1, Landroid/net/connectivity/org/chromium/net/impl/NativeCronetProvider;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    .line 60
    :goto_17
    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 40
    const-string v0, "App-Packaged-Cronet-Provider"

    return-object v0
.end method

.method public blacklist getVersion()Ljava/lang/String;
    .registers 2

    .line 45
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/ImplVersion;->getCronetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 55
    const-class v0, Landroid/net/connectivity/org/chromium/net/impl/NativeCronetProvider;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/NativeCronetProvider;->mContext:Landroid/content/Context;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 50
    const/4 v0, 0x1

    return v0
.end method
