.class final Ljava/lang/Package$1;
.super Ljava/lang/Object;
.source "Package.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/Package;->defineSystemPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Package;
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
        "Ljava/lang/Package;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fn:Ljava/lang/String;

.field final synthetic val$iname:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "val$iname"    # Ljava/lang/String;
    .param p2, "val$fn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 570
    iput-object p1, p0, Ljava/lang/Package$1;->val$iname:Ljava/lang/String;

    #@2
    iput-object p2, p0, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 571
    invoke-virtual {p0}, Ljava/lang/Package$1;->run()Ljava/lang/Package;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Package;
    .locals 17

    #@0
    .prologue
    .line 572
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Ljava/lang/Package$1;->val$iname:Ljava/lang/String;

    #@4
    .line 574
    .local v2, "name":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Package;->-get2()Ljava/util/Map;

    #@7
    move-result-object v5

    #@8
    move-object/from16 v0, p0

    #@a
    iget-object v6, v0, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    #@c
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Ljava/net/URL;

    #@12
    .line 575
    .local v4, "url":Ljava/net/URL;
    if-nez v4, :cond_0

    #@14
    .line 577
    new-instance v16, Ljava/io/File;

    #@16
    move-object/from16 v0, p0

    #@18
    iget-object v5, v0, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    #@1a
    move-object/from16 v0, v16

    #@1c
    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1f
    .line 579
    .local v16, "file":Ljava/io/File;
    :try_start_0
    invoke-static/range {v16 .. v16}, Lsun/net/www/ParseUtil;->fileToEncodedURL(Ljava/io/File;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result-object v4

    #@23
    .line 582
    :goto_0
    if-eqz v4, :cond_0

    #@25
    .line 583
    invoke-static {}, Ljava/lang/Package;->-get2()Ljava/util/Map;

    #@28
    move-result-object v5

    #@29
    move-object/from16 v0, p0

    #@2b
    iget-object v6, v0, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    #@2d
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 585
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isFile()Z

    #@33
    move-result v5

    #@34
    if-eqz v5, :cond_0

    #@36
    .line 586
    invoke-static {}, Ljava/lang/Package;->-get0()Ljava/util/Map;

    #@39
    move-result-object v5

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-object v6, v0, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    #@3e
    move-object/from16 v0, p0

    #@40
    iget-object v7, v0, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    #@42
    invoke-static {v7}, Ljava/lang/Package;->-wrap0(Ljava/lang/String;)Ljava/util/jar/Manifest;

    #@45
    move-result-object v7

    #@46
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    .line 591
    .end local v16    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@4c
    move-result v5

    #@4d
    add-int/lit8 v5, v5, -0x1

    #@4f
    const/4 v6, 0x0

    #@50
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    const/16 v6, 0x2f

    #@56
    const/16 v7, 0x2e

    #@58
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    .line 593
    invoke-static {}, Ljava/lang/Package;->-get0()Ljava/util/Map;

    #@5f
    move-result-object v5

    #@60
    move-object/from16 v0, p0

    #@62
    iget-object v6, v0, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    #@64
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@67
    move-result-object v3

    #@68
    check-cast v3, Ljava/util/jar/Manifest;

    #@6a
    .line 594
    .local v3, "man":Ljava/util/jar/Manifest;
    if-eqz v3, :cond_1

    #@6c
    .line 595
    new-instance v1, Ljava/lang/Package;

    #@6e
    const/4 v5, 0x0

    #@6f
    const/4 v6, 0x0

    #@70
    invoke-direct/range {v1 .. v6}, Ljava/lang/Package;-><init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/lang/Package;)V

    #@73
    .line 600
    .local v1, "pkg":Ljava/lang/Package;
    :goto_1
    invoke-static {}, Ljava/lang/Package;->-get1()Ljava/util/Map;

    #@76
    move-result-object v5

    #@77
    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7a
    .line 601
    return-object v1

    #@7b
    .line 580
    .end local v1    # "pkg":Ljava/lang/Package;
    .end local v3    # "man":Ljava/util/jar/Manifest;
    .restart local v16    # "file":Ljava/io/File;
    :catch_0
    move-exception v15

    #@7c
    .local v15, "e":Ljava/net/MalformedURLException;
    goto :goto_0

    #@7d
    .line 597
    .end local v15    # "e":Ljava/net/MalformedURLException;
    .end local v16    # "file":Ljava/io/File;
    .restart local v3    # "man":Ljava/util/jar/Manifest;
    :cond_1
    new-instance v1, Ljava/lang/Package;

    #@7f
    const/4 v7, 0x0

    #@80
    const/4 v8, 0x0

    #@81
    const/4 v9, 0x0

    #@82
    .line 598
    const/4 v10, 0x0

    #@83
    const/4 v11, 0x0

    #@84
    const/4 v12, 0x0

    #@85
    const/4 v13, 0x0

    #@86
    const/4 v14, 0x0

    #@87
    move-object v5, v1

    #@88
    move-object v6, v2

    #@89
    .line 597
    invoke-direct/range {v5 .. v14}, Ljava/lang/Package;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/ClassLoader;)V

    #@8c
    .restart local v1    # "pkg":Ljava/lang/Package;
    goto :goto_1
.end method
