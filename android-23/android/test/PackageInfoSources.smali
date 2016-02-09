.class public Landroid/test/PackageInfoSources;
.super Ljava/lang/Object;
.source "PackageInfoSources.java"


# static fields
.field private static classPathSource:Landroid/test/ClassPathPackageInfoSource;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static forClassPath(Ljava/lang/ClassLoader;)Landroid/test/ClassPathPackageInfoSource;
    .locals 1
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 30
    sget-object v0, Landroid/test/PackageInfoSources;->classPathSource:Landroid/test/ClassPathPackageInfoSource;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 31
    new-instance v0, Landroid/test/ClassPathPackageInfoSource;

    #@6
    invoke-direct {v0}, Landroid/test/ClassPathPackageInfoSource;-><init>()V

    #@9
    sput-object v0, Landroid/test/PackageInfoSources;->classPathSource:Landroid/test/ClassPathPackageInfoSource;

    #@b
    .line 32
    sget-object v0, Landroid/test/PackageInfoSources;->classPathSource:Landroid/test/ClassPathPackageInfoSource;

    #@d
    invoke-virtual {v0, p0}, Landroid/test/ClassPathPackageInfoSource;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@10
    .line 34
    :cond_0
    sget-object v0, Landroid/test/PackageInfoSources;->classPathSource:Landroid/test/ClassPathPackageInfoSource;

    #@12
    return-object v0
.end method
