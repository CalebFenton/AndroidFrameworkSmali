.class Landroid/icu/impl/ICUResourceBundle$1AllChildrenSink;
.super Landroid/icu/impl/UResource$Sink;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/ICUResourceBundle;->getAllChildrenWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AllChildrenSink"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/icu/impl/ICUResourceBundle;

.field final synthetic blacklist val$sink:Landroid/icu/impl/UResource$Sink;


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/ICUResourceBundle;Landroid/icu/impl/UResource$Sink;)V
    .registers 3
    .param p1, "this$0"    # Landroid/icu/impl/ICUResourceBundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 451
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle$1AllChildrenSink;->this$0:Landroid/icu/impl/ICUResourceBundle;

    iput-object p2, p0, Landroid/icu/impl/ICUResourceBundle$1AllChildrenSink;->val$sink:Landroid/icu/impl/UResource$Sink;

    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 20
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 454
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v4

    .line 455
    .local v4, "itemsTable":Landroid/icu/impl/UResource$Table;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d
    invoke-interface {v4, v5, v1, v2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v6

    if-eqz v6, :cond_db

    .line 456
    invoke-virtual {v2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_d2

    .line 459
    invoke-virtual {v2}, Landroid/icu/impl/UResource$Value;->getAliasString()Ljava/lang/String;

    move-result-object v8

    .line 460
    .local v8, "aliasPath":Ljava/lang/String;
    iget-object v6, v0, Landroid/icu/impl/ICUResourceBundle$1AllChildrenSink;->this$0:Landroid/icu/impl/ICUResourceBundle;

    iget-object v6, v6, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v9, v6, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->loader:Ljava/lang/ClassLoader;

    const/4 v14, 0x0

    iget-object v15, v0, Landroid/icu/impl/ICUResourceBundle$1AllChildrenSink;->this$0:Landroid/icu/impl/ICUResourceBundle;

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v15}, Landroid/icu/impl/ICUResourceBundle;->getAliasedResource(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v6

    .line 463
    .local v6, "aliasedResource":Landroid/icu/impl/ICUResourceBundle;
    move-object v7, v6

    check-cast v7, Landroid/icu/impl/ICUResourceBundleImpl;

    .line 464
    .local v7, "aliasedResourceImpl":Landroid/icu/impl/ICUResourceBundleImpl;
    new-instance v9, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;

    invoke-direct {v9}, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;-><init>()V

    .line 465
    .local v9, "aliasedValue":Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;
    iget-object v10, v7, Landroid/icu/impl/ICUResourceBundleImpl;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v10, v10, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iput-object v10, v9, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    .line 466
    invoke-virtual {v7}, Landroid/icu/impl/ICUResourceBundleImpl;->getResource()I

    move-result v10

    iput v10, v9, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    .line 468
    invoke-virtual {v9}, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->getType()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_52

    .line 469
    iget-object v10, v0, Landroid/icu/impl/ICUResourceBundle$1AllChildrenSink;->val$sink:Landroid/icu/impl/UResource$Sink;

    invoke-virtual {v10, v1, v9, v3}, Landroid/icu/impl/UResource$Sink;->put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V

    goto/16 :goto_d1

    .line 477
    :cond_52
    const/4 v10, 0x2

    .line 478
    .local v10, "aliasedValueType":I
    const-string v12, "/LOCALE/"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 479
    .local v12, "tablePath":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/icu/impl/UResource$Key;->clone()Landroid/icu/impl/UResource$Key;

    move-result-object v13

    .line 480
    .local v13, "keyCopy":Landroid/icu/impl/UResource$Key;
    iget-object v14, v0, Landroid/icu/impl/ICUResourceBundle$1AllChildrenSink;->val$sink:Landroid/icu/impl/UResource$Sink;

    invoke-virtual {v14, v13, v9, v3}, Landroid/icu/impl/UResource$Sink;->put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V

    .line 481
    :goto_66
    if-ne v10, v11, :cond_d1

    invoke-virtual {v6}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/impl/ICUResourceBundle;

    move-result-object v14

    if-eqz v14, :cond_d1

    .line 482
    invoke-virtual {v6}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/impl/ICUResourceBundle;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v14

    .line 483
    .local v14, "newAliasedResource":Landroid/icu/impl/ICUResourceBundle;
    iget-object v15, v14, Landroid/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    iget-object v11, v6, Landroid/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_82

    .line 484
    move-object v6, v14

    goto :goto_ad

    .line 491
    :cond_82
    const/16 v11, 0x2f

    invoke-virtual {v12, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 492
    .end local v12    # "tablePath":Ljava/lang/String;
    .local v11, "tablePath":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "/"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v15, v14, Landroid/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 493
    iget-object v12, v0, Landroid/icu/impl/ICUResourceBundle$1AllChildrenSink;->this$0:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v12, v11}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v6

    move-object v12, v11

    .line 495
    .end local v11    # "tablePath":Ljava/lang/String;
    .restart local v12    # "tablePath":Ljava/lang/String;
    :goto_ad
    move-object v7, v6

    check-cast v7, Landroid/icu/impl/ICUResourceBundleImpl;

    .line 496
    new-instance v11, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;

    invoke-direct {v11}, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;-><init>()V

    move-object v9, v11

    .line 497
    iget-object v11, v7, Landroid/icu/impl/ICUResourceBundleImpl;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v11, v11, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iput-object v11, v9, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    .line 498
    invoke-virtual {v7}, Landroid/icu/impl/ICUResourceBundleImpl;->getResource()I

    move-result v11

    iput v11, v9, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    .line 499
    invoke-virtual {v9}, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->getType()I

    move-result v10

    .line 500
    invoke-virtual {v1}, Landroid/icu/impl/UResource$Key;->clone()Landroid/icu/impl/UResource$Key;

    move-result-object v13

    .line 501
    iget-object v11, v0, Landroid/icu/impl/ICUResourceBundle$1AllChildrenSink;->val$sink:Landroid/icu/impl/UResource$Sink;

    invoke-virtual {v11, v13, v9, v3}, Landroid/icu/impl/UResource$Sink;->put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V

    .line 502
    .end local v14    # "newAliasedResource":Landroid/icu/impl/ICUResourceBundle;
    const/4 v11, 0x2

    goto :goto_66

    .line 504
    .end local v6    # "aliasedResource":Landroid/icu/impl/ICUResourceBundle;
    .end local v7    # "aliasedResourceImpl":Landroid/icu/impl/ICUResourceBundleImpl;
    .end local v8    # "aliasPath":Ljava/lang/String;
    .end local v9    # "aliasedValue":Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;
    .end local v10    # "aliasedValueType":I
    .end local v12    # "tablePath":Ljava/lang/String;
    .end local v13    # "keyCopy":Landroid/icu/impl/UResource$Key;
    :cond_d1
    :goto_d1
    goto :goto_d7

    .line 505
    :cond_d2
    iget-object v6, v0, Landroid/icu/impl/ICUResourceBundle$1AllChildrenSink;->val$sink:Landroid/icu/impl/UResource$Sink;

    invoke-virtual {v6, v1, v2, v3}, Landroid/icu/impl/UResource$Sink;->put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V

    .line 455
    :goto_d7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_d

    .line 508
    .end local v5    # "i":I
    :cond_db
    return-void
.end method
