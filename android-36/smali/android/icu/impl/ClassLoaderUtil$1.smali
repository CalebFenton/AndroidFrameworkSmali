.class Landroid/icu/impl/ClassLoaderUtil$1;
.super Ljava/lang/Object;
.source "ClassLoaderUtil.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/ClassLoaderUtil;->getBootstrapClassLoader()Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist run()Landroid/icu/impl/ClassLoaderUtil$BootstrapClassLoader;
    .registers 2

    .line 61
    new-instance v0, Landroid/icu/impl/ClassLoaderUtil$BootstrapClassLoader;

    invoke-direct {v0}, Landroid/icu/impl/ClassLoaderUtil$BootstrapClassLoader;-><init>()V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 58
    invoke-virtual {p0}, Landroid/icu/impl/ClassLoaderUtil$1;->run()Landroid/icu/impl/ClassLoaderUtil$BootstrapClassLoader;

    move-result-object v0

    return-object v0
.end method
