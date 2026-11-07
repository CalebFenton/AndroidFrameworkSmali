.class Landroid/icu/impl/ClassLoaderUtil$BootstrapClassLoader;
.super Ljava/lang/ClassLoader;
.source "ClassLoaderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ClassLoaderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BootstrapClassLoader"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 39
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 40
    return-void
.end method
