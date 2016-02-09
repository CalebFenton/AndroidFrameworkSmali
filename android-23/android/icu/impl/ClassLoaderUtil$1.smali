.class final Landroid/icu/impl/ClassLoaderUtil$1;
.super Ljava/lang/Object;
.source "ClassLoaderUtil.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/ClassLoaderUtil;->getBootstrapClassLoader()Ljava/lang/ClassLoader;
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
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run()Landroid/icu/impl/ClassLoaderUtil$BootstrapClassLoader;
    .locals 1

    #@0
    .prologue
    .line 56
    new-instance v0, Landroid/icu/impl/ClassLoaderUtil$BootstrapClassLoader;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/ClassLoaderUtil$BootstrapClassLoader;-><init>()V

    #@5
    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/icu/impl/ClassLoaderUtil$1;->run()Landroid/icu/impl/ClassLoaderUtil$BootstrapClassLoader;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
