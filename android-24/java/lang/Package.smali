.class public Ljava/lang/Package;
.super Ljava/lang/Object;
.source "Package.java"

# interfaces
.implements Ljava/lang/reflect/AnnotatedElement;


# static fields
.field private static mans:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Manifest;",
            ">;"
        }
    .end annotation
.end field

.field private static pkgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Package;",
            ">;"
        }
    .end annotation
.end field

.field private static urls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final implTitle:Ljava/lang/String;

.field private final implVendor:Ljava/lang/String;

.field private final implVersion:Ljava/lang/String;

.field private final transient loader:Ljava/lang/ClassLoader;

.field private transient packageInfo:Ljava/lang/Class;

.field private final pkgName:Ljava/lang/String;

.field private final sealBase:Ljava/net/URL;

.field private final specTitle:Ljava/lang/String;

.field private final specVendor:Ljava/lang/String;

.field private final specVersion:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/util/Map;
    .locals 1

    #@0
    sget-object v0, Ljava/lang/Package;->mans:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Ljava/util/Map;
    .locals 1

    #@0
    sget-object v0, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get2()Ljava/util/Map;
    .locals 1

    #@0
    sget-object v0, Ljava/lang/Package;->urls:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)Ljava/util/jar/Manifest;
    .locals 1
    .param p0, "fn"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Ljava/lang/Package;->loadManifest(Ljava/lang/String;)Ljava/util/jar/Manifest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/16 v2, 0xa

    #@2
    .line 620
    new-instance v0, Ljava/util/HashMap;

    #@4
    const/16 v1, 0x1f

    #@6
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@9
    sput-object v0, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    #@b
    .line 623
    new-instance v0, Ljava/util/HashMap;

    #@d
    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    #@10
    sput-object v0, Ljava/lang/Package;->urls:Ljava/util/Map;

    #@12
    .line 626
    new-instance v0, Ljava/util/HashMap;

    #@14
    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    #@17
    sput-object v0, Ljava/lang/Package;->mans:Ljava/util/Map;

    #@19
    .line 112
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "spectitle"    # Ljava/lang/String;
    .param p3, "specversion"    # Ljava/lang/String;
    .param p4, "specvendor"    # Ljava/lang/String;
    .param p5, "impltitle"    # Ljava/lang/String;
    .param p6, "implversion"    # Ljava/lang/String;
    .param p7, "implvendor"    # Ljava/lang/String;
    .param p8, "sealbase"    # Ljava/net/URL;
    .param p9, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 460
    iput-object p1, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    #@5
    .line 461
    iput-object p5, p0, Ljava/lang/Package;->implTitle:Ljava/lang/String;

    #@7
    .line 462
    iput-object p6, p0, Ljava/lang/Package;->implVersion:Ljava/lang/String;

    #@9
    .line 463
    iput-object p7, p0, Ljava/lang/Package;->implVendor:Ljava/lang/String;

    #@b
    .line 464
    iput-object p2, p0, Ljava/lang/Package;->specTitle:Ljava/lang/String;

    #@d
    .line 465
    iput-object p3, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    #@f
    .line 466
    iput-object p4, p0, Ljava/lang/Package;->specVendor:Ljava/lang/String;

    #@11
    .line 467
    iput-object p8, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    #@13
    .line 468
    iput-object p9, p0, Ljava/lang/Package;->loader:Ljava/lang/ClassLoader;

    #@15
    .line 458
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "man"    # Ljava/util/jar/Manifest;
    .param p3, "url"    # Ljava/net/URL;
    .param p4, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 479
    const/16 v11, 0x2e

    #@5
    const/16 v12, 0x2f

    #@7
    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@a
    move-result-object v11

    #@b
    const-string/jumbo v12, "/"

    #@e
    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v5

    #@12
    .line 480
    .local v5, "path":Ljava/lang/String;
    const/4 v7, 0x0

    #@13
    .line 481
    .local v7, "sealed":Ljava/lang/String;
    const/4 v8, 0x0

    #@14
    .line 482
    .local v8, "specTitle":Ljava/lang/String;
    const/4 v10, 0x0

    #@15
    .line 483
    .local v10, "specVersion":Ljava/lang/String;
    const/4 v9, 0x0

    #@16
    .line 484
    .local v9, "specVendor":Ljava/lang/String;
    const/4 v2, 0x0

    #@17
    .line 485
    .local v2, "implTitle":Ljava/lang/String;
    const/4 v4, 0x0

    #@18
    .line 486
    .local v4, "implVersion":Ljava/lang/String;
    const/4 v3, 0x0

    #@19
    .line 487
    .local v3, "implVendor":Ljava/lang/String;
    const/4 v6, 0x0

    #@1a
    .line 488
    .local v6, "sealBase":Ljava/net/URL;
    invoke-virtual {p2, v5}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    #@1d
    move-result-object v1

    #@1e
    .line 489
    .local v1, "attr":Ljava/util/jar/Attributes;
    if-eqz v1, :cond_0

    #@20
    .line 490
    sget-object v11, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    #@22
    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@25
    move-result-object v8

    #@26
    .line 491
    .local v8, "specTitle":Ljava/lang/String;
    sget-object v11, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    #@28
    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@2b
    move-result-object v10

    #@2c
    .line 492
    .local v10, "specVersion":Ljava/lang/String;
    sget-object v11, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    #@2e
    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@31
    move-result-object v9

    #@32
    .line 493
    .local v9, "specVendor":Ljava/lang/String;
    sget-object v11, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    #@34
    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    .line 494
    .local v2, "implTitle":Ljava/lang/String;
    sget-object v11, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    #@3a
    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    .line 495
    .local v4, "implVersion":Ljava/lang/String;
    sget-object v11, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    #@40
    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    .line 496
    .local v3, "implVendor":Ljava/lang/String;
    sget-object v11, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    #@46
    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@49
    move-result-object v7

    #@4a
    .line 498
    .end local v2    # "implTitle":Ljava/lang/String;
    .end local v3    # "implVendor":Ljava/lang/String;
    .end local v4    # "implVersion":Ljava/lang/String;
    .end local v7    # "sealed":Ljava/lang/String;
    .end local v8    # "specTitle":Ljava/lang/String;
    .end local v9    # "specVendor":Ljava/lang/String;
    .end local v10    # "specVersion":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    #@4d
    move-result-object v1

    #@4e
    .line 499
    if-eqz v1, :cond_7

    #@50
    .line 500
    if-nez v8, :cond_1

    #@52
    .line 501
    sget-object v11, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    #@54
    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@57
    move-result-object v8

    #@58
    .line 503
    :cond_1
    if-nez v10, :cond_2

    #@5a
    .line 504
    sget-object v11, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    #@5c
    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@5f
    move-result-object v10

    #@60
    .line 506
    :cond_2
    if-nez v9, :cond_3

    #@62
    .line 507
    sget-object v11, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    #@64
    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@67
    move-result-object v9

    #@68
    .line 509
    :cond_3
    if-nez v2, :cond_4

    #@6a
    .line 510
    sget-object v11, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    #@6c
    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    .line 512
    :cond_4
    if-nez v4, :cond_5

    #@72
    .line 513
    sget-object v11, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    #@74
    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@77
    move-result-object v4

    #@78
    .line 515
    :cond_5
    if-nez v3, :cond_6

    #@7a
    .line 516
    sget-object v11, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    #@7c
    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@7f
    move-result-object v3

    #@80
    .line 518
    :cond_6
    if-nez v7, :cond_7

    #@82
    .line 519
    sget-object v11, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    #@84
    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@87
    move-result-object v7

    #@88
    .line 522
    :cond_7
    const-string/jumbo v11, "true"

    #@8b
    invoke-virtual {v11, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8e
    move-result v11

    #@8f
    if-eqz v11, :cond_8

    #@91
    .line 523
    move-object/from16 v6, p3

    #@93
    .line 525
    .end local v6    # "sealBase":Ljava/net/URL;
    :cond_8
    iput-object p1, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    #@95
    .line 526
    iput-object v8, p0, Ljava/lang/Package;->specTitle:Ljava/lang/String;

    #@97
    .line 527
    iput-object v10, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    #@99
    .line 528
    iput-object v9, p0, Ljava/lang/Package;->specVendor:Ljava/lang/String;

    #@9b
    .line 529
    iput-object v2, p0, Ljava/lang/Package;->implTitle:Ljava/lang/String;

    #@9d
    .line 530
    iput-object v4, p0, Ljava/lang/Package;->implVersion:Ljava/lang/String;

    #@9f
    .line 531
    iput-object v3, p0, Ljava/lang/Package;->implVendor:Ljava/lang/String;

    #@a1
    .line 532
    iput-object v6, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    #@a3
    .line 533
    move-object/from16 v0, p4

    #@a5
    iput-object v0, p0, Ljava/lang/Package;->loader:Ljava/lang/ClassLoader;

    #@a7
    .line 478
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/lang/Package;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "man"    # Ljava/util/jar/Manifest;
    .param p3, "url"    # Ljava/net/URL;
    .param p4, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/lang/Package;-><init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;Ljava/lang/ClassLoader;)V

    #@3
    return-void
.end method

.method private static defineSystemPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Package;
    .locals 1
    .param p0, "iname"    # Ljava/lang/String;
    .param p1, "fn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 570
    new-instance v0, Ljava/lang/Package$1;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/lang/Package$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Package;

    #@b
    return-object v0
.end method

.method static getPackage(Ljava/lang/Class;)Ljava/lang/Package;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Package;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    #@1
    .line 329
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 330
    .local v2, "name":Ljava/lang/String;
    const/16 v3, 0x2e

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@a
    move-result v1

    #@b
    .line 331
    .local v1, "i":I
    const/4 v3, -0x1

    #@c
    if-eq v1, v3, :cond_1

    #@e
    .line 332
    const/4 v3, 0x0

    #@f
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 333
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@16
    move-result-object v0

    #@17
    .line 334
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    #@19
    .line 335
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    #@1c
    move-result-object v3

    #@1d
    return-object v3

    #@1e
    .line 337
    :cond_0
    invoke-static {v2}, Ljava/lang/Package;->getSystemPackage(Ljava/lang/String;)Ljava/lang/Package;

    #@21
    move-result-object v3

    #@22
    return-object v3

    #@23
    .line 340
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_1
    return-object v4
.end method

.method public static getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 281
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    .line 282
    .local v0, "l":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    #@6
    .line 283
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 285
    :cond_0
    invoke-static {p0}, Ljava/lang/Package;->getSystemPackage(Ljava/lang/String;)Ljava/lang/Package;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method private getPackageInfo()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 382
    iget-object v1, p0, Ljava/lang/Package;->packageInfo:Ljava/lang/Class;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 384
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iget-object v2, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, ".package-info"

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    iget-object v2, p0, Ljava/lang/Package;->loader:Ljava/lang/ClassLoader;

    #@1c
    const/4 v3, 0x0

    #@1d
    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Ljava/lang/Package;->packageInfo:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 391
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/lang/Package;->packageInfo:Ljava/lang/Class;

    #@25
    return-object v1

    #@26
    .line 385
    :catch_0
    move-exception v0

    #@27
    .line 388
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const-class v1, Ljava/lang/Package$1PackageInfoProxy;

    #@29
    iput-object v1, p0, Ljava/lang/Package;->packageInfo:Ljava/lang/Class;

    #@2b
    goto :goto_0
.end method

.method public static getPackages()[Ljava/lang/Package;
    .locals 2
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 303
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    .line 304
    .local v0, "l":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    #@6
    .line 305
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getPackages()[Ljava/lang/Package;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 307
    :cond_0
    invoke-static {}, Ljava/lang/Package;->getSystemPackages()[Ljava/lang/Package;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method static getSystemPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 540
    sget-object v3, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    #@2
    monitor-enter v3

    #@3
    .line 541
    :try_start_0
    sget-object v2, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    #@5
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Ljava/lang/Package;

    #@b
    .line 542
    .local v1, "pkg":Ljava/lang/Package;
    if-nez v1, :cond_0

    #@d
    .line 543
    const/16 v2, 0x2e

    #@f
    const/16 v4, 0x2f

    #@11
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    const-string/jumbo v4, "/"

    #@18
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object p0

    #@1c
    .line 544
    invoke-static {p0}, Ljava/lang/Package;->getSystemPackage0(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 545
    .local v0, "fn":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@22
    .line 546
    invoke-static {p0, v0}, Ljava/lang/Package;->defineSystemPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Package;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result-object v1

    #@26
    .end local v0    # "fn":Ljava/lang/String;
    :cond_0
    monitor-exit v3

    #@27
    .line 549
    return-object v1

    #@28
    .line 540
    .end local v1    # "pkg":Ljava/lang/Package;
    :catchall_0
    move-exception v2

    #@29
    monitor-exit v3

    #@2a
    throw v2
.end method

.method private static native getSystemPackage0(Ljava/lang/String;)Ljava/lang/String;
.end method

.method static getSystemPackages()[Ljava/lang/Package;
    .locals 5

    #@0
    .prologue
    .line 558
    invoke-static {}, Ljava/lang/Package;->getSystemPackages0()[Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 559
    .local v1, "names":[Ljava/lang/String;
    sget-object v3, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    #@6
    monitor-enter v3

    #@7
    .line 560
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v2, v1

    #@9
    if-ge v0, v2, :cond_0

    #@b
    .line 561
    aget-object v2, v1, v0

    #@d
    aget-object v4, v1, v0

    #@f
    invoke-static {v4}, Ljava/lang/Package;->getSystemPackage0(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    invoke-static {v2, v4}, Ljava/lang/Package;->defineSystemPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Package;

    #@16
    .line 560
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 563
    :cond_0
    sget-object v2, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    #@1b
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@1e
    move-result-object v2

    #@1f
    sget-object v4, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    #@21
    invoke-interface {v4}, Ljava/util/Map;->size()I

    #@24
    move-result v4

    #@25
    new-array v4, v4, [Ljava/lang/Package;

    #@27
    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, [Ljava/lang/Package;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    monitor-exit v3

    #@2e
    return-object v2

    #@2f
    .line 559
    :catchall_0
    move-exception v2

    #@30
    monitor-exit v3

    #@31
    throw v2
.end method

.method private static native getSystemPackages0()[Ljava/lang/String;
.end method

.method private static loadManifest(Ljava/lang/String;)Ljava/util/jar/Manifest;
    .locals 10
    .param p0, "fn"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 610
    const/4 v1, 0x0

    #@2
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    #@3
    .local v3, "jis":Ljava/util/jar/JarInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    #@5
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8
    .line 611
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/util/jar/JarInputStream;

    #@a
    const/4 v5, 0x0

    #@b
    invoke-direct {v4, v2, v5}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@e
    .line 613
    .local v4, "jis":Ljava/util/jar/JarInputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->getManifest()Ljava/util/jar/Manifest;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    #@11
    .end local v3    # "jis":Ljava/util/jar/JarInputStream;
    move-result-object v8

    #@12
    .line 616
    if-eqz v4, :cond_0

    #@14
    :try_start_3
    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@17
    :cond_0
    move-object v6, v7

    #@18
    :goto_0
    if-eqz v2, :cond_1

    #@1a
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    #@1d
    :cond_1
    move-object v5, v6

    #@1e
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    #@20
    :try_start_5
    throw v5

    #@21
    .line 614
    :catch_0
    move-exception v0

    #@22
    .local v0, "e":Ljava/io/IOException;
    move-object v3, v4

    #@23
    .end local v4    # "jis":Ljava/util/jar/JarInputStream;
    .local v3, "jis":Ljava/util/jar/JarInputStream;
    move-object v1, v2

    #@24
    .line 615
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "jis":Ljava/util/jar/JarInputStream;
    :goto_2
    return-object v7

    #@25
    .line 616
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "jis":Ljava/util/jar/JarInputStream;
    :catch_1
    move-exception v6

    #@26
    goto :goto_0

    #@27
    :catch_2
    move-exception v5

    #@28
    if-eqz v6, :cond_2

    #@2a
    if-eq v6, v5, :cond_1

    #@2c
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    #@2f
    move-object v5, v6

    #@30
    goto :goto_1

    #@31
    .line 613
    :cond_3
    return-object v8

    #@32
    .line 616
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "jis":Ljava/util/jar/JarInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .local v3, "jis":Ljava/util/jar/JarInputStream;
    :catch_3
    move-exception v5

    #@33
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "jis":Ljava/util/jar/JarInputStream;
    :goto_3
    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@34
    :catchall_0
    move-exception v6

    #@35
    move-object v9, v6

    #@36
    move-object v6, v5

    #@37
    move-object v5, v9

    #@38
    :goto_4
    if-eqz v3, :cond_4

    #@3a
    :try_start_7
    invoke-virtual {v3}, Ljava/util/jar/JarInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    #@3d
    :cond_4
    move-object v8, v6

    #@3e
    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    #@40
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    #@43
    :cond_6
    move-object v6, v8

    #@44
    :cond_7
    :goto_6
    if-eqz v6, :cond_8

    #@46
    :try_start_9
    throw v6

    #@47
    .line 614
    :catch_4
    move-exception v0

    #@48
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    #@49
    .line 616
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v8

    #@4a
    if-eqz v6, :cond_5

    #@4c
    if-eq v6, v8, :cond_4

    #@4e
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@51
    move-object v8, v6

    #@52
    goto :goto_5

    #@53
    :catch_6
    move-exception v6

    #@54
    if-eqz v8, :cond_7

    #@56
    if-eq v8, v6, :cond_6

    #@58
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@5b
    move-object v6, v8

    #@5c
    goto :goto_6

    #@5d
    :cond_8
    throw v5
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    #@5e
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "jis":Ljava/util/jar/JarInputStream;
    :catchall_1
    move-exception v5

    #@5f
    move-object v6, v7

    #@60
    goto :goto_4

    #@61
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v5

    #@62
    move-object v6, v7

    #@63
    move-object v1, v2

    #@64
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v1, "fis":Ljava/io/FileInputStream;
    goto :goto_4

    #@65
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "jis":Ljava/util/jar/JarInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "jis":Ljava/util/jar/JarInputStream;
    :catchall_3
    move-exception v5

    #@66
    move-object v6, v7

    #@67
    move-object v3, v4

    #@68
    .end local v4    # "jis":Ljava/util/jar/JarInputStream;
    .local v3, "jis":Ljava/util/jar/JarInputStream;
    move-object v1, v2

    #@69
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    #@6a
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "jis":Ljava/util/jar/JarInputStream;
    :catch_7
    move-exception v5

    #@6b
    move-object v1, v2

    #@6c
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    #@6d
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "jis":Ljava/util/jar/JarInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "jis":Ljava/util/jar/JarInputStream;
    :catch_8
    move-exception v5

    #@6e
    move-object v3, v4

    #@6f
    .end local v4    # "jis":Ljava/util/jar/JarInputStream;
    .local v3, "jis":Ljava/util/jar/JarInputStream;
    move-object v1, v2

    #@70
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3
.end method


# virtual methods
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    #@0
    .prologue
    .line 399
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    #@0
    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)[TA;"
        }
    .end annotation

    #@0
    .prologue
    .line 408
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    #@0
    .prologue
    .line 424
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    #@0
    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDeclaredAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)[TA;"
        }
    .end annotation

    #@0
    .prologue
    .line 433
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getImplementationTitle()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Ljava/lang/Package;->implTitle:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getImplementationVendor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Ljava/lang/Package;->implVendor:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getImplementationVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Ljava/lang/Package;->implVersion:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSpecificationTitle()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Ljava/lang/Package;->specTitle:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSpecificationVendor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Ljava/lang/Package;->specVendor:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSpecificationVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 349
    iget-object v0, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isCompatibleWith(Ljava/lang/String;)Z
    .locals 13
    .param p1, "desired"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, -0x1

    #@1
    const/4 v11, 0x1

    #@2
    const/4 v8, 0x0

    #@3
    .line 231
    iget-object v9, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    #@5
    if-eqz v9, :cond_0

    #@7
    iget-object v9, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    #@9
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@c
    move-result v9

    #@d
    if-ge v9, v11, :cond_1

    #@f
    .line 232
    :cond_0
    new-instance v8, Ljava/lang/NumberFormatException;

    #@11
    const-string/jumbo v9, "Empty version string"

    #@14
    invoke-direct {v8, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@17
    throw v8

    #@18
    .line 235
    :cond_1
    iget-object v9, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    #@1a
    const-string/jumbo v10, "\\."

    #@1d
    invoke-virtual {v9, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@20
    move-result-object v6

    #@21
    .line 236
    .local v6, "sa":[Ljava/lang/String;
    array-length v9, v6

    #@22
    new-array v7, v9, [I

    #@24
    .line 237
    .local v7, "si":[I
    const/4 v3, 0x0

    #@25
    .local v3, "i":I
    :goto_0
    array-length v9, v6

    #@26
    if-ge v3, v9, :cond_3

    #@28
    .line 238
    aget-object v9, v6, v3

    #@2a
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2d
    move-result v9

    #@2e
    aput v9, v7, v3

    #@30
    .line 239
    aget v9, v7, v3

    #@32
    if-gez v9, :cond_2

    #@34
    .line 240
    new-instance v8, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v9, ""

    #@3c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v8

    #@40
    aget v9, v7, v3

    #@42
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v8

    #@46
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v8

    #@4a
    invoke-static {v8}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@4d
    move-result-object v8

    #@4e
    throw v8

    #@4f
    .line 237
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@51
    goto :goto_0

    #@52
    .line 243
    :cond_3
    const-string/jumbo v9, "\\."

    #@55
    invoke-virtual {p1, v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    .line 244
    .local v1, "da":[Ljava/lang/String;
    array-length v9, v1

    #@5a
    new-array v2, v9, [I

    #@5c
    .line 245
    .local v2, "di":[I
    const/4 v3, 0x0

    #@5d
    :goto_1
    array-length v9, v1

    #@5e
    if-ge v3, v9, :cond_5

    #@60
    .line 246
    aget-object v9, v1, v3

    #@62
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@65
    move-result v9

    #@66
    aput v9, v2, v3

    #@68
    .line 247
    aget v9, v2, v3

    #@6a
    if-gez v9, :cond_4

    #@6c
    .line 248
    new-instance v8, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v9, ""

    #@74
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v8

    #@78
    aget v9, v2, v3

    #@7a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v8

    #@7e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v8

    #@82
    invoke-static {v8}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@85
    move-result-object v8

    #@86
    throw v8

    #@87
    .line 245
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@89
    goto :goto_1

    #@8a
    .line 251
    :cond_5
    array-length v9, v2

    #@8b
    array-length v10, v7

    #@8c
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    #@8f
    move-result v4

    #@90
    .line 252
    .local v4, "len":I
    const/4 v3, 0x0

    #@91
    :goto_2
    if-ge v3, v4, :cond_a

    #@93
    .line 253
    array-length v9, v2

    #@94
    if-ge v3, v9, :cond_6

    #@96
    aget v0, v2, v3

    #@98
    .line 254
    .local v0, "d":I
    :goto_3
    array-length v9, v7

    #@99
    if-ge v3, v9, :cond_7

    #@9b
    aget v5, v7, v3

    #@9d
    .line 255
    .local v5, "s":I
    :goto_4
    if-ge v5, v0, :cond_8

    #@9f
    .line 256
    return v8

    #@a0
    .line 253
    .end local v0    # "d":I
    .end local v5    # "s":I
    :cond_6
    const/4 v0, 0x0

    #@a1
    .restart local v0    # "d":I
    goto :goto_3

    #@a2
    :cond_7
    move v5, v8

    #@a3
    .line 254
    goto :goto_4

    #@a4
    .line 257
    .restart local v5    # "s":I
    :cond_8
    if-le v5, v0, :cond_9

    #@a6
    .line 258
    return v11

    #@a7
    .line 252
    :cond_9
    add-int/lit8 v3, v3, 0x1

    #@a9
    goto :goto_2

    #@aa
    .line 260
    .end local v0    # "d":I
    .end local v5    # "s":I
    :cond_a
    return v11
.end method

.method public isSealed()Z
    .locals 1

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isSealed(Ljava/net/URL;)Z
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    #@2
    invoke-virtual {p1, v0}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "package "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method
