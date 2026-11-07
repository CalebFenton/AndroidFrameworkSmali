.class public final Landroid/icu/impl/coll/CollationRoot;
.super Ljava/lang/Object;
.source "CollationRoot.java"


# static fields
.field private static final blacklist exception:Ljava/lang/RuntimeException;

.field private static final blacklist rootSingleton:Landroid/icu/impl/coll/CollationTailoring;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "t":Landroid/icu/impl/coll/CollationTailoring;
    const/4 v1, 0x0

    .line 51
    .local v1, "e2":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v2, "coll/ucadata.icu"

    invoke-static {v2}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 52
    .local v2, "bytes":Ljava/nio/ByteBuffer;
    new-instance v3, Landroid/icu/impl/coll/CollationTailoring;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/icu/impl/coll/CollationTailoring;-><init>(Landroid/icu/impl/coll/SharedObject$Reference;)V

    .line 53
    .local v3, "t2":Landroid/icu/impl/coll/CollationTailoring;
    invoke-static {v4, v2, v3}, Landroid/icu/impl/coll/CollationDataReader;->read(Landroid/icu/impl/coll/CollationTailoring;Ljava/nio/ByteBuffer;Landroid/icu/impl/coll/CollationTailoring;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_11} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_11} :catch_13

    .line 56
    move-object v0, v3

    .end local v2    # "bytes":Ljava/nio/ByteBuffer;
    .end local v3    # "t2":Landroid/icu/impl/coll/CollationTailoring;
    goto :goto_23

    .line 61
    :catch_13
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/RuntimeException;
    move-object v1, v2

    goto :goto_24

    .line 57
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_16
    move-exception v2

    .line 58
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/util/MissingResourceException;

    const-string v4, "CollationRoot"

    const-string v5, "data/icudata/coll/ucadata.icu"

    const-string v6, "IOException while reading CLDR root data"

    invoke-direct {v3, v6, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 63
    .end local v2    # "e":Ljava/io/IOException;
    :goto_23
    nop

    .line 64
    :goto_24
    sput-object v0, Landroid/icu/impl/coll/CollationRoot;->rootSingleton:Landroid/icu/impl/coll/CollationTailoring;

    .line 65
    sput-object v1, Landroid/icu/impl/coll/CollationRoot;->exception:Ljava/lang/RuntimeException;

    .line 66
    .end local v0    # "t":Landroid/icu/impl/coll/CollationTailoring;
    .end local v1    # "e2":Ljava/lang/RuntimeException;
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist getData()Landroid/icu/impl/coll/CollationData;
    .registers 2

    .line 39
    invoke-static {}, Landroid/icu/impl/coll/CollationRoot;->getRoot()Landroid/icu/impl/coll/CollationTailoring;

    move-result-object v0

    .line 40
    .local v0, "root":Landroid/icu/impl/coll/CollationTailoring;
    iget-object v1, v0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    return-object v1
.end method

.method public static final blacklist getRoot()Landroid/icu/impl/coll/CollationTailoring;
    .registers 1

    .line 33
    sget-object v0, Landroid/icu/impl/coll/CollationRoot;->exception:Ljava/lang/RuntimeException;

    if-nez v0, :cond_7

    .line 36
    sget-object v0, Landroid/icu/impl/coll/CollationRoot;->rootSingleton:Landroid/icu/impl/coll/CollationTailoring;

    return-object v0

    .line 34
    :cond_7
    sget-object v0, Landroid/icu/impl/coll/CollationRoot;->exception:Ljava/lang/RuntimeException;

    throw v0
.end method

.method static final blacklist getSettings()Landroid/icu/impl/coll/CollationSettings;
    .registers 2

    .line 43
    invoke-static {}, Landroid/icu/impl/coll/CollationRoot;->getRoot()Landroid/icu/impl/coll/CollationTailoring;

    move-result-object v0

    .line 44
    .local v0, "root":Landroid/icu/impl/coll/CollationTailoring;
    iget-object v1, v0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/coll/CollationSettings;

    return-object v1
.end method
