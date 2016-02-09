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
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 35
    const-class v0, Ljava/lang/Object;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    #@9
    .line 21
    return-void
.end method
