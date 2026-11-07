.class Ljava/lang/Package$1;
.super Ljava/lang/Object;
.source "Package.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/Package;->defineSystemPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Package;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Package;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$fn:Ljava/lang/String;

.field final synthetic blacklist val$iname:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 583
    iput-object p1, p0, Ljava/lang/Package$1;->val$iname:Ljava/lang/String;

    iput-object p2, p0, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 583
    invoke-virtual {p0}, Ljava/lang/Package$1;->run()Ljava/lang/Package;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Package;
    .registers 22

    .line 585
    move-object/from16 v1, p0

    iget-object v2, v1, Ljava/lang/Package$1;->val$iname:Ljava/lang/String;

    .line 587
    .local v2, "name":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Package;->-$$Nest$sfgeturls()Ljava/util/Map;

    move-result-object v0

    iget-object v3, v1, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/net/URL;

    .line 588
    .local v3, "url":Ljava/net/URL;
    if-nez v3, :cond_44

    .line 590
    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 592
    .local v4, "file":Ljava/io/File;
    :try_start_1b
    invoke-static {v4}, Lsun/net/www/ParseUtil;->fileToEncodedURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v0
    :try_end_1f
    .catch Ljava/net/MalformedURLException; {:try_start_1b .. :try_end_1f} :catch_21

    move-object v3, v0

    .line 594
    goto :goto_22

    .line 593
    :catch_21
    move-exception v0

    .line 595
    :goto_22
    if-eqz v3, :cond_42

    .line 596
    invoke-static {}, Ljava/lang/Package;->-$$Nest$sfgeturls()Ljava/util/Map;

    move-result-object v0

    iget-object v5, v1, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 599
    invoke-static {}, Ljava/lang/Package;->-$$Nest$sfgetmans()Ljava/util/Map;

    move-result-object v0

    iget-object v5, v1, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    iget-object v6, v1, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Package;->-$$Nest$smloadManifest(Ljava/lang/String;)Ljava/util/jar/Manifest;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    .end local v4    # "file":Ljava/io/File;
    :cond_42
    move-object v10, v3

    goto :goto_45

    .line 588
    :cond_44
    move-object v10, v3

    .line 604
    .end local v3    # "url":Ljava/net/URL;
    .local v10, "url":Ljava/net/URL;
    :goto_45
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    .line 606
    .end local v2    # "name":Ljava/lang/String;
    .local v8, "name":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Package;->-$$Nest$sfgetmans()Ljava/util/Map;

    move-result-object v0

    iget-object v2, v1, Ljava/lang/Package$1;->val$fn:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/util/jar/Manifest;

    .line 607
    .local v9, "man":Ljava/util/jar/Manifest;
    if-eqz v9, :cond_6f

    .line 608
    new-instance v7, Ljava/lang/Package;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Ljava/lang/Package;-><init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/lang/Package-IA;)V

    .local v7, "pkg":Ljava/lang/Package;
    goto :goto_83

    .line 610
    .end local v7    # "pkg":Ljava/lang/Package;
    :cond_6f
    new-instance v11, Ljava/lang/Package;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v8

    .end local v8    # "name":Ljava/lang/String;
    .local v12, "name":Ljava/lang/String;
    invoke-direct/range {v11 .. v20}, Ljava/lang/Package;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/ClassLoader;)V

    .end local v12    # "name":Ljava/lang/String;
    .restart local v8    # "name":Ljava/lang/String;
    move-object v7, v11

    .line 613
    .restart local v7    # "pkg":Ljava/lang/Package;
    :goto_83
    invoke-static {}, Ljava/lang/Package;->-$$Nest$sfgetpkgs()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    return-object v7
.end method
