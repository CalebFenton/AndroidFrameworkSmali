.class public Ljava/lang/Package;
.super Ljava/lang/Object;
.source "Package.java"

# interfaces
.implements Ljava/lang/reflect/AnnotatedElement;


# static fields
.field private static greylist-max-o mans:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Manifest;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o pkgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Package;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o urls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o implTitle:Ljava/lang/String;

.field private final greylist-max-o implVendor:Ljava/lang/String;

.field private final greylist-max-o implVersion:Ljava/lang/String;

.field private final transient greylist-max-o loader:Ljava/lang/ClassLoader;

.field private transient greylist-max-o packageInfo:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final greylist-max-o pkgName:Ljava/lang/String;

.field private final greylist-max-o sealBase:Ljava/net/URL;

.field private final greylist-max-o specTitle:Ljava/lang/String;

.field private final greylist-max-o specVendor:Ljava/lang/String;

.field private final greylist-max-o specVersion:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmans()Ljava/util/Map;
    .registers 1

    sget-object v0, Ljava/lang/Package;->mans:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetpkgs()Ljava/util/Map;
    .registers 1

    sget-object v0, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgeturls()Ljava/util/Map;
    .registers 1

    sget-object v0, Ljava/lang/Package;->urls:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smloadManifest(Ljava/lang/String;)Ljava/util/jar/Manifest;
    .registers 1

    invoke-static {p0}, Ljava/lang/Package;->loadManifest(Ljava/lang/String;)Ljava/util/jar/Manifest;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 633
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    .line 636
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljava/lang/Package;->urls:Ljava/util/Map;

    .line 639
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljava/lang/Package;->mans:Ljava/util/Map;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "spectitle"    # Ljava/lang/String;
    .param p3, "specversion"    # Ljava/lang/String;
    .param p4, "specvendor"    # Ljava/lang/String;
    .param p5, "impltitle"    # Ljava/lang/String;
    .param p6, "implversion"    # Ljava/lang/String;
    .param p7, "implvendor"    # Ljava/lang/String;
    .param p8, "sealbase"    # Ljava/net/URL;
    .param p9, "loader"    # Ljava/lang/ClassLoader;

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    iput-object p1, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    .line 474
    iput-object p5, p0, Ljava/lang/Package;->implTitle:Ljava/lang/String;

    .line 475
    iput-object p6, p0, Ljava/lang/Package;->implVersion:Ljava/lang/String;

    .line 476
    iput-object p7, p0, Ljava/lang/Package;->implVendor:Ljava/lang/String;

    .line 477
    iput-object p2, p0, Ljava/lang/Package;->specTitle:Ljava/lang/String;

    .line 478
    iput-object p3, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    .line 479
    iput-object p4, p0, Ljava/lang/Package;->specVendor:Ljava/lang/String;

    .line 480
    iput-object p8, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    .line 481
    iput-object p9, p0, Ljava/lang/Package;->loader:Ljava/lang/ClassLoader;

    .line 482
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "man"    # Ljava/util/jar/Manifest;
    .param p3, "url"    # Ljava/net/URL;
    .param p4, "loader"    # Ljava/lang/ClassLoader;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 494
    .local v1, "sealed":Ljava/lang/String;
    const/4 v2, 0x0

    .line 495
    .local v2, "specTitle":Ljava/lang/String;
    const/4 v3, 0x0

    .line 496
    .local v3, "specVersion":Ljava/lang/String;
    const/4 v4, 0x0

    .line 497
    .local v4, "specVendor":Ljava/lang/String;
    const/4 v5, 0x0

    .line 498
    .local v5, "implTitle":Ljava/lang/String;
    const/4 v6, 0x0

    .line 499
    .local v6, "implVersion":Ljava/lang/String;
    const/4 v7, 0x0

    .line 500
    .local v7, "implVendor":Ljava/lang/String;
    const/4 v8, 0x0

    .line 501
    .local v8, "sealBase":Ljava/net/URL;
    invoke-virtual {p2, v0}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v9

    .line 502
    .local v9, "attr":Ljava/util/jar/Attributes;
    if-eqz v9, :cond_49

    .line 503
    sget-object v10, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 504
    sget-object v10, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 505
    sget-object v10, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    .line 506
    sget-object v10, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    .line 507
    sget-object v10, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    .line 508
    sget-object v10, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 509
    sget-object v10, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v1

    .line 511
    :cond_49
    invoke-virtual {p2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v9

    .line 512
    if-eqz v9, :cond_87

    .line 513
    if-nez v2, :cond_57

    .line 514
    sget-object v10, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 516
    :cond_57
    if-nez v3, :cond_5f

    .line 517
    sget-object v10, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 519
    :cond_5f
    if-nez v4, :cond_67

    .line 520
    sget-object v10, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    .line 522
    :cond_67
    if-nez v5, :cond_6f

    .line 523
    sget-object v10, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    .line 525
    :cond_6f
    if-nez v6, :cond_77

    .line 526
    sget-object v10, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    .line 528
    :cond_77
    if-nez v7, :cond_7f

    .line 529
    sget-object v10, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 531
    :cond_7f
    if-nez v1, :cond_87

    .line 532
    sget-object v10, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v1

    .line 535
    :cond_87
    const-string v10, "true"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_90

    .line 536
    move-object v8, p3

    .line 538
    :cond_90
    iput-object p1, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    .line 539
    iput-object v2, p0, Ljava/lang/Package;->specTitle:Ljava/lang/String;

    .line 540
    iput-object v3, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    .line 541
    iput-object v4, p0, Ljava/lang/Package;->specVendor:Ljava/lang/String;

    .line 542
    iput-object v5, p0, Ljava/lang/Package;->implTitle:Ljava/lang/String;

    .line 543
    iput-object v6, p0, Ljava/lang/Package;->implVersion:Ljava/lang/String;

    .line 544
    iput-object v7, p0, Ljava/lang/Package;->implVendor:Ljava/lang/String;

    .line 545
    iput-object v8, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    .line 546
    iput-object p4, p0, Ljava/lang/Package;->loader:Ljava/lang/ClassLoader;

    .line 547
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/lang/Package-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/lang/Package;-><init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private static greylist-max-o defineSystemPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Package;
    .registers 3
    .param p0, "iname"    # Ljava/lang/String;
    .param p1, "fn"    # Ljava/lang/String;

    .line 583
    new-instance v0, Ljava/lang/Package$1;

    invoke-direct {v0, p0, p1}, Ljava/lang/Package$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Package;

    return-object v0
.end method

.method static greylist-max-o getPackage(Ljava/lang/Class;)Ljava/lang/Package;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Package;"
        }
    .end annotation

    .line 330
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 332
    .local v1, "i":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_22

    .line 333
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 335
    .local v2, "cl":Ljava/lang/ClassLoader;
    if-eqz v2, :cond_1d

    .line 336
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v3

    return-object v3

    .line 338
    :cond_1d
    invoke-static {v0}, Ljava/lang/Package;->getSystemPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v3

    return-object v3

    .line 341
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    :cond_22
    const/4 v2, 0x0

    return-object v2
.end method

.method public static whitelist test-api getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 282
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/ClassLoader;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 283
    .local v0, "l":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_f

    .line 284
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v1

    return-object v1

    .line 286
    :cond_f
    invoke-static {p0}, Ljava/lang/Package;->getSystemPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o getPackageInfo()Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Ljava/lang/Package;->packageInfo:Ljava/lang/Class;

    if-nez v0, :cond_28

    .line 388
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".package-info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/Package;->loader:Ljava/lang/ClassLoader;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Package;->packageInfo:Ljava/lang/Class;
    :try_end_22
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_22} :catch_23

    .line 393
    goto :goto_28

    .line 389
    :catch_23
    move-exception v0

    .line 392
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const-class v1, Ljava/lang/Package$1PackageInfoProxy;

    iput-object v1, p0, Ljava/lang/Package;->packageInfo:Ljava/lang/Class;

    .line 395
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_28
    :goto_28
    iget-object v0, p0, Ljava/lang/Package;->packageInfo:Ljava/lang/Class;

    return-object v0
.end method

.method public static whitelist test-api getPackages()[Ljava/lang/Package;
    .registers 2
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 304
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/ClassLoader;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 305
    .local v0, "l":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_f

    .line 306
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getPackages()[Ljava/lang/Package;

    move-result-object v1

    return-object v1

    .line 308
    :cond_f
    invoke-static {}, Ljava/lang/Package;->getSystemPackages()[Ljava/lang/Package;

    move-result-object v1

    return-object v1
.end method

.method static greylist-max-o getSystemPackage(Ljava/lang/String;)Ljava/lang/Package;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .line 553
    sget-object v0, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    monitor-enter v0

    .line 554
    :try_start_3
    sget-object v1, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Package;

    .line 555
    .local v1, "pkg":Ljava/lang/Package;
    if-nez v1, :cond_27

    .line 556
    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object p0, v2

    .line 557
    invoke-static {p0}, Ljava/lang/Package;->getSystemPackage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, "fn":Ljava/lang/String;
    if-eqz v2, :cond_27

    .line 559
    invoke-static {p0, v2}, Ljava/lang/Package;->defineSystemPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v3

    move-object v1, v3

    .line 562
    .end local v2    # "fn":Ljava/lang/String;
    :cond_27
    monitor-exit v0

    return-object v1

    .line 563
    .end local v1    # "pkg":Ljava/lang/Package;
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private static native greylist-max-o getSystemPackage0(Ljava/lang/String;)Ljava/lang/String;
.end method

.method static greylist-max-o getSystemPackages()[Ljava/lang/Package;
    .registers 5

    .line 571
    invoke-static {}, Ljava/lang/Package;->getSystemPackages0()[Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "names":[Ljava/lang/String;
    sget-object v1, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    monitor-enter v1

    .line 573
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    :try_start_8
    array-length v3, v0

    if-ge v2, v3, :cond_19

    .line 574
    aget-object v3, v0, v2

    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/lang/Package;->getSystemPackage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/Package;->defineSystemPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Package;

    .line 573
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 576
    .end local v2    # "i":I
    :cond_19
    sget-object v2, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    sget-object v3, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Package;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Package;

    monitor-exit v1

    return-object v2

    .line 577
    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2f

    throw v2
.end method

.method private static native greylist-max-o getSystemPackages0()[Ljava/lang/String;
.end method

.method private static greylist-max-o loadManifest(Ljava/lang/String;)Ljava/util/jar/Manifest;
    .registers 5
    .param p0, "fn"    # Ljava/lang/String;

    .line 623
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_2a

    .line 624
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v1, Ljava/util/jar/JarInputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;Z)V
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_20

    .line 626
    .local v1, "jis":Ljava/util/jar/JarInputStream;
    :try_start_b
    invoke-virtual {v1}, Ljava/util/jar/JarInputStream;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_16

    .line 627
    :try_start_f
    invoke-virtual {v1}, Ljava/util/jar/JarInputStream;->close()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_20

    :try_start_12
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_2a

    .line 626
    return-object v2

    .line 623
    :catchall_16
    move-exception v2

    :try_start_17
    invoke-virtual {v1}, Ljava/util/jar/JarInputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v3

    :try_start_1c
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "fn":Ljava/lang/String;
    :goto_1f
    throw v2
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_20

    .end local v1    # "jis":Ljava/util/jar/JarInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "fn":Ljava/lang/String;
    :catchall_20
    move-exception v1

    :try_start_21
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_29

    :catchall_25
    move-exception v2

    :try_start_26
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "fn":Ljava/lang/String;
    :goto_29
    throw v1
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2a} :catch_2a

    .line 627
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "fn":Ljava/lang/String;
    :catch_2a
    move-exception v0

    .line 628
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public whitelist test-api getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 403
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 2

    .line 429
    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)[TA;"
        }
    .end annotation

    .line 422
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 438
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 2

    .line 454
    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDeclaredAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)[TA;"
        }
    .end annotation

    .line 447
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getImplementationTitle()Ljava/lang/String;
    .registers 2

    .line 162
    iget-object v0, p0, Ljava/lang/Package;->implTitle:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getImplementationVendor()Ljava/lang/String;
    .registers 2

    .line 184
    iget-object v0, p0, Ljava/lang/Package;->implVendor:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getImplementationVersion()Ljava/lang/String;
    .registers 2

    .line 175
    iget-object v0, p0, Ljava/lang/Package;->implVersion:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSpecificationTitle()Ljava/lang/String;
    .registers 2

    .line 131
    iget-object v0, p0, Ljava/lang/Package;->specTitle:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSpecificationVendor()Ljava/lang/String;
    .registers 2

    .line 154
    iget-object v0, p0, Ljava/lang/Package;->specVendor:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSpecificationVersion()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 350
    iget-object v0, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api isAnnotationPresent(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 413
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-super {p0, p1}, Ljava/lang/reflect/AnnotatedElement;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isCompatibleWith(Ljava/lang/String;)Z
    .registers 12
    .param p1, "desired"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    if-eqz v0, :cond_9c

    iget-object v0, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_9c

    .line 236
    iget-object v0, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    const-string v2, "\\."

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "sa":[Ljava/lang/String;
    array-length v4, v0

    new-array v4, v4, [I

    .line 238
    .local v4, "si":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1a
    array-length v6, v0

    const/16 v7, 0xa

    const-string v8, ""

    if-ge v5, v6, :cond_48

    .line 239
    aget-object v6, v0, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    .line 240
    aget v6, v4, v5

    if-ltz v6, :cond_30

    .line 238
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 241
    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v4, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;I)Ljava/lang/NumberFormatException;

    move-result-object v1

    throw v1

    .line 244
    .end local v5    # "i":I
    :cond_48
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "da":[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [I

    .line 246
    .local v3, "di":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_50
    array-length v6, v2

    if-ge v5, v6, :cond_7a

    .line 247
    aget-object v6, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v3, v5

    .line 248
    aget v6, v3, v5

    if-ltz v6, :cond_62

    .line 246
    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    .line 249
    :cond_62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v6, v3, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;I)Ljava/lang/NumberFormatException;

    move-result-object v1

    throw v1

    .line 252
    .end local v5    # "i":I
    :cond_7a
    array-length v5, v3

    array-length v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 253
    .local v5, "len":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_81
    if-ge v6, v5, :cond_9b

    .line 254
    array-length v7, v3

    const/4 v8, 0x0

    if-ge v6, v7, :cond_8a

    aget v7, v3, v6

    goto :goto_8b

    :cond_8a
    move v7, v8

    .line 255
    .local v7, "d":I
    :goto_8b
    array-length v9, v4

    if-ge v6, v9, :cond_91

    aget v9, v4, v6

    goto :goto_92

    :cond_91
    move v9, v8

    .line 256
    .local v9, "s":I
    :goto_92
    if-ge v9, v7, :cond_95

    .line 257
    return v8

    .line 258
    :cond_95
    if-le v9, v7, :cond_98

    .line 259
    return v1

    .line 253
    .end local v7    # "d":I
    .end local v9    # "s":I
    :cond_98
    add-int/lit8 v6, v6, 0x1

    goto :goto_81

    .line 261
    .end local v6    # "i":I
    :cond_9b
    return v1

    .line 233
    .end local v0    # "sa":[Ljava/lang/String;
    .end local v2    # "da":[Ljava/lang/String;
    .end local v3    # "di":[I
    .end local v4    # "si":[I
    .end local v5    # "len":I
    :cond_9c
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Empty version string"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api isSealed()Z
    .registers 2

    .line 193
    iget-object v0, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api isSealed(Ljava/net/URL;)Z
    .registers 3
    .param p1, "url"    # Ljava/net/URL;

    .line 204
    iget-object v0, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    invoke-virtual {p1, v0}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 366
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    .line 367
    .local v0, "targetSdkVersion":I
    const-string v1, "package "

    if-lez v0, :cond_24

    const/16 v2, 0x18

    if-gt v0, v2, :cond_24

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 372
    :cond_24
    iget-object v2, p0, Ljava/lang/Package;->specTitle:Ljava/lang/String;

    .line 373
    .local v2, "spec":Ljava/lang/String;
    iget-object v3, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    .line 374
    .local v3, "ver":Ljava/lang/String;
    if-eqz v2, :cond_44

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_44

    .line 375
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_46

    .line 377
    :cond_44
    const-string v2, ""

    .line 378
    :goto_46
    if-eqz v3, :cond_62

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_62

    .line 379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_64

    .line 381
    :cond_62
    const-string v3, ""

    .line 382
    :goto_64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
