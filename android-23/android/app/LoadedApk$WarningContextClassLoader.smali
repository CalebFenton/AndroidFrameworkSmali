.class Landroid/app/LoadedApk$WarningContextClassLoader;
.super Ljava/lang/ClassLoader;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WarningContextClassLoader"
.end annotation


# static fields
.field private static warned:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 453
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Landroid/app/LoadedApk$WarningContextClassLoader;->warned:Z

    #@3
    .line 451
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 451
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/LoadedApk$WarningContextClassLoader;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;-><init>()V

    #@3
    return-void
.end method

.method private warn(Ljava/lang/String;)V
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 456
    sget-boolean v0, Landroid/app/LoadedApk$WarningContextClassLoader;->warned:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 457
    return-void

    #@5
    .line 459
    :cond_0
    const/4 v0, 0x1

    #@6
    sput-boolean v0, Landroid/app/LoadedApk$WarningContextClassLoader;->warned:Z

    #@8
    .line 460
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    #@13
    .line 461
    const-string/jumbo v0, "ActivityThread"

    #@16
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "ClassLoader."

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string/jumbo v2, ": "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 462
    const-string/jumbo v2, "The class loader returned by "

    #@30
    .line 461
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 463
    const-string/jumbo v2, "Thread.getContextClassLoader() may fail for processes "

    #@37
    .line 461
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 464
    const-string/jumbo v2, "that host multiple applications. You should explicitly "

    #@3e
    .line 461
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    .line 465
    const-string/jumbo v2, "specify a context class loader. For example: "

    #@45
    .line 461
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    .line 466
    const-string/jumbo v2, "Thread.setContextClassLoader(getClass().getClassLoader());"

    #@4c
    .line 461
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 455
    return-void
.end method


# virtual methods
.method public clearAssertionStatus()V
    .locals 1

    #@0
    .prologue
    .line 505
    const-string/jumbo v0, "clearAssertionStatus"

    #@3
    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    #@6
    .line 506
    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->clearAssertionStatus()V

    #@d
    .line 504
    return-void
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p1, "resName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 470
    const-string/jumbo v0, "getResource"

    #@3
    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    #@6
    .line 471
    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "resName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 480
    const-string/jumbo v0, "getResourceAsStream"

    #@3
    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    #@6
    .line 481
    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "resName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 475
    const-string/jumbo v0, "getResources"

    #@3
    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    #@6
    .line 476
    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 485
    const-string/jumbo v0, "loadClass"

    #@3
    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    #@6
    .line 486
    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public setClassAssertionStatus(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cname"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 490
    const-string/jumbo v0, "setClassAssertionStatus"

    #@3
    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    #@6
    .line 491
    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1, p2}, Ljava/lang/ClassLoader;->setClassAssertionStatus(Ljava/lang/String;Z)V

    #@d
    .line 489
    return-void
.end method

.method public setDefaultAssertionStatus(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 500
    const-string/jumbo v0, "setDefaultAssertionStatus"

    #@3
    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    #@6
    .line 501
    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->setDefaultAssertionStatus(Z)V

    #@d
    .line 499
    return-void
.end method

.method public setPackageAssertionStatus(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pname"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 495
    const-string/jumbo v0, "setPackageAssertionStatus"

    #@3
    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    #@6
    .line 496
    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1, p2}, Ljava/lang/ClassLoader;->setPackageAssertionStatus(Ljava/lang/String;Z)V

    #@d
    .line 494
    return-void
.end method
