.class public final Landroid/icu/impl/coll/CollationRoot;
.super Ljava/lang/Object;
.source "CollationRoot.java"


# static fields
.field private static final exception:Ljava/lang/RuntimeException;

.field private static final rootSingleton:Landroid/icu/impl/coll/CollationTailoring;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    .line 44
    const/4 v4, 0x0

    #@1
    .line 45
    .local v4, "t":Landroid/icu/impl/coll/CollationTailoring;
    const/4 v3, 0x0

    #@2
    .line 47
    .local v3, "e2":Ljava/lang/RuntimeException;
    :try_start_0
    const-string/jumbo v6, "coll/ucadata.icu"

    #@5
    invoke-static {v6}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    #@8
    move-result-object v0

    #@9
    .line 48
    .local v0, "bytes":Ljava/nio/ByteBuffer;
    new-instance v5, Landroid/icu/impl/coll/CollationTailoring;

    #@b
    const/4 v6, 0x0

    #@c
    invoke-direct {v5, v6}, Landroid/icu/impl/coll/CollationTailoring;-><init>(Landroid/icu/impl/coll/SharedObject$Reference;)V

    #@f
    .line 49
    .local v5, "t2":Landroid/icu/impl/coll/CollationTailoring;
    const/4 v6, 0x0

    #@10
    invoke-static {v6, v0, v5}, Landroid/icu/impl/coll/CollationDataReader;->read(Landroid/icu/impl/coll/CollationTailoring;Ljava/nio/ByteBuffer;Landroid/icu/impl/coll/CollationTailoring;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 52
    move-object v4, v5

    #@14
    .line 60
    .end local v0    # "bytes":Ljava/nio/ByteBuffer;
    .end local v5    # "t2":Landroid/icu/impl/coll/CollationTailoring;
    .local v2, "e":Ljava/lang/RuntimeException;
    .local v3, "e2":Ljava/lang/RuntimeException;
    :goto_0
    sput-object v4, Landroid/icu/impl/coll/CollationRoot;->rootSingleton:Landroid/icu/impl/coll/CollationTailoring;

    #@16
    .line 61
    sput-object v3, Landroid/icu/impl/coll/CollationRoot;->exception:Ljava/lang/RuntimeException;

    #@18
    .line 24
    return-void

    #@19
    .line 57
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .local v3, "e2":Ljava/lang/RuntimeException;
    :catch_0
    move-exception v2

    #@1a
    .line 58
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    move-object v3, v2

    #@1b
    .local v3, "e2":Ljava/lang/RuntimeException;
    goto :goto_0

    #@1c
    .line 53
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .local v3, "e2":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    #@1d
    .line 54
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/util/MissingResourceException;

    #@1f
    .line 55
    .end local v3    # "e2":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "IOException while reading CLDR root data"

    #@22
    .line 56
    const-string/jumbo v7, "CollationRoot"

    #@25
    const-string/jumbo v8, "data/icudt55b/coll/ucadata.icu"

    #@28
    .line 54
    invoke-direct {v3, v6, v7, v8}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2b
    .local v3, "e2":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final getData()Landroid/icu/impl/coll/CollationData;
    .locals 2

    #@0
    .prologue
    .line 35
    invoke-static {}, Landroid/icu/impl/coll/CollationRoot;->getRoot()Landroid/icu/impl/coll/CollationTailoring;

    #@3
    move-result-object v0

    #@4
    .line 36
    .local v0, "root":Landroid/icu/impl/coll/CollationTailoring;
    iget-object v1, v0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    #@6
    return-object v1
.end method

.method public static final getRoot()Landroid/icu/impl/coll/CollationTailoring;
    .locals 1

    #@0
    .prologue
    .line 29
    sget-object v0, Landroid/icu/impl/coll/CollationRoot;->exception:Ljava/lang/RuntimeException;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 30
    sget-object v0, Landroid/icu/impl/coll/CollationRoot;->exception:Ljava/lang/RuntimeException;

    #@6
    throw v0

    #@7
    .line 32
    :cond_0
    sget-object v0, Landroid/icu/impl/coll/CollationRoot;->rootSingleton:Landroid/icu/impl/coll/CollationTailoring;

    #@9
    return-object v0
.end method

.method static final getSettings()Landroid/icu/impl/coll/CollationSettings;
    .locals 2

    #@0
    .prologue
    .line 39
    invoke-static {}, Landroid/icu/impl/coll/CollationRoot;->getRoot()Landroid/icu/impl/coll/CollationTailoring;

    #@3
    move-result-object v0

    #@4
    .line 40
    .local v0, "root":Landroid/icu/impl/coll/CollationTailoring;
    iget-object v1, v0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@6
    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/icu/impl/coll/CollationSettings;

    #@c
    return-object v1
.end method
