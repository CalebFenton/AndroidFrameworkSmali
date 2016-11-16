.class Ljava/lang/Integer$IntegerCache;
.super Ljava/lang/Object;
.source "Integer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerCache"
.end annotation


# static fields
.field static final cache:[Ljava/lang/Integer;

.field static final high:I

.field static final low:I = -0x80


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    .line 632
    const/16 v0, 0x7f

    #@2
    .line 634
    .local v0, "h":I
    const-string/jumbo v6, "java.lang.Integer.IntegerCache.high"

    #@5
    invoke-static {v6}, Lsun/misc/VM;->getSavedProperty(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 635
    .local v2, "integerCacheHighPropValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@b
    .line 636
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@e
    move-result v1

    #@f
    .line 637
    .local v1, "i":I
    const/16 v6, 0x7f

    #@11
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    #@14
    move-result v1

    #@15
    .line 639
    const v6, 0x7fffff7e

    #@18
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    #@1b
    move-result v0

    #@1c
    .line 641
    .end local v1    # "i":I
    :cond_0
    sput v0, Ljava/lang/Integer$IntegerCache;->high:I

    #@1e
    .line 643
    sget v6, Ljava/lang/Integer$IntegerCache;->high:I

    #@20
    add-int/lit16 v6, v6, 0x80

    #@22
    add-int/lit8 v6, v6, 0x1

    #@24
    new-array v6, v6, [Ljava/lang/Integer;

    #@26
    sput-object v6, Ljava/lang/Integer$IntegerCache;->cache:[Ljava/lang/Integer;

    #@28
    .line 644
    const/16 v3, -0x80

    #@2a
    .line 645
    .local v3, "j":I
    const/4 v5, 0x0

    #@2b
    .local v5, "k":I
    :goto_0
    sget-object v6, Ljava/lang/Integer$IntegerCache;->cache:[Ljava/lang/Integer;

    #@2d
    array-length v6, v6

    #@2e
    if-ge v5, v6, :cond_1

    #@30
    .line 646
    sget-object v6, Ljava/lang/Integer$IntegerCache;->cache:[Ljava/lang/Integer;

    #@32
    new-instance v7, Ljava/lang/Integer;

    #@34
    add-int/lit8 v4, v3, 0x1

    #@36
    .end local v3    # "j":I
    .local v4, "j":I
    invoke-direct {v7, v3}, Ljava/lang/Integer;-><init>(I)V

    #@39
    aput-object v7, v6, v5

    #@3b
    .line 645
    add-int/lit8 v5, v5, 0x1

    #@3d
    move v3, v4

    #@3e
    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_0

    #@3f
    .line 625
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
