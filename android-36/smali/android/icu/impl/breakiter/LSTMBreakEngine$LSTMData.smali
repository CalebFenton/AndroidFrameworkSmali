.class public Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;
.super Ljava/lang/Object;
.source "LSTMBreakEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/breakiter/LSTMBreakEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LSTMData"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field public blacklist fBackwardB:[F

.field public blacklist fBackwardU:[[F

.field public blacklist fBackwardW:[[F

.field public blacklist fDict:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist fEmbedding:[[F

.field public blacklist fForwardB:[F

.field public blacklist fForwardU:[[F

.field public blacklist fForwardW:[[F

.field public blacklist fName:Ljava/lang/String;

.field public blacklist fOutputB:[F

.field public blacklist fOutputW:[[F

.field public blacklist fType:Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 84
    const-class v0, Landroid/icu/impl/breakiter/LSTMBreakEngine;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/util/UResourceBundle;)V
    .registers 23
    .param p1, "rb"    # Landroid/icu/util/UResourceBundle;

    .line 88
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v2, "embeddings"

    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getInt()I

    move-result v2

    .line 90
    .local v2, "embeddings":I
    const-string v3, "hunits"

    invoke-virtual {v1, v3}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getInt()I

    move-result v3

    .line 91
    .local v3, "hunits":I
    sget-object v4, Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;->UNKNOWN:Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

    iput-object v4, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fType:Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

    .line 92
    const-string v4, "model"

    invoke-virtual {v1, v4}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fName:Ljava/lang/String;

    .line 93
    const-string v4, "type"

    invoke-virtual {v1, v4}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "typeString":Ljava/lang/String;
    const-string v5, "codepoints"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 95
    sget-object v5, Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;->CODE_POINTS:Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

    iput-object v5, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fType:Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

    goto :goto_4e

    .line 96
    :cond_42
    const-string v5, "graphclust"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 97
    sget-object v5, Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;->GRAPHEME_CLUSTER:Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

    iput-object v5, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fType:Landroid/icu/impl/breakiter/LSTMBreakEngine$EmbeddingType;

    .line 99
    :cond_4e
    :goto_4e
    const-string v5, "dict"

    invoke-virtual {v1, v5}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, "dict":[Ljava/lang/String;
    const-string v6, "data"

    invoke-virtual {v1, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v6

    .line 101
    .local v6, "data":[I
    array-length v7, v6

    .line 102
    .local v7, "dataLen":I
    array-length v8, v5

    .line 103
    .local v8, "numIndex":I
    new-instance v9, Ljava/util/HashMap;

    add-int/lit8 v10, v8, 0x1

    invoke-direct {v9, v10}, Ljava/util/HashMap;-><init>(I)V

    iput-object v9, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fDict:Ljava/util/Map;

    .line 104
    const/4 v9, 0x0

    .line 105
    .local v9, "idx":I
    array-length v10, v5

    const/4 v11, 0x0

    :goto_70
    if-ge v11, v10, :cond_83

    aget-object v12, v5, v11

    .line 106
    .local v12, "embedding":Ljava/lang/String;
    iget-object v13, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fDict:Ljava/util/Map;

    add-int/lit8 v14, v9, 0x1

    .end local v9    # "idx":I
    .local v14, "idx":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v13, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .end local v12    # "embedding":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    move v9, v14

    goto :goto_70

    .line 108
    .end local v14    # "idx":I
    .restart local v9    # "idx":I
    :cond_83
    add-int/lit8 v10, v8, 0x1

    mul-int/2addr v10, v2

    .line 109
    .local v10, "mat1Size":I
    mul-int/lit8 v11, v2, 0x4

    mul-int/2addr v11, v3

    .line 110
    .local v11, "mat2Size":I
    mul-int/lit8 v12, v3, 0x4

    mul-int/2addr v12, v3

    .line 111
    .local v12, "mat3Size":I
    mul-int/lit8 v13, v3, 0x4

    .line 112
    .local v13, "mat4Size":I
    move v14, v11

    .line 113
    .local v14, "mat5Size":I
    move v15, v12

    .line 114
    .local v15, "mat6Size":I
    move/from16 v16, v13

    .line 115
    .local v16, "mat7Size":I
    mul-int/lit8 v17, v3, 0x2

    const/4 v1, 0x4

    mul-int/lit8 v17, v17, 0x4

    .line 116
    .local v17, "mat8Size":I
    const/16 v18, 0x4

    .line 117
    .local v18, "mat9Size":I
    nop

    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, "start":I
    move-object/from16 v19, v4

    .end local v4    # "typeString":Ljava/lang/String;
    .local v19, "typeString":Ljava/lang/String;
    add-int/lit8 v4, v8, 0x1

    invoke-static {v6, v1, v4, v2}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->-$$Nest$smmake2DArray([IIII)[[F

    move-result-object v4

    iput-object v4, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fEmbedding:[[F

    .line 120
    add-int/2addr v1, v10

    .line 121
    mul-int/lit8 v4, v3, 0x4

    invoke-static {v6, v1, v2, v4}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->-$$Nest$smmake2DArray([IIII)[[F

    move-result-object v4

    iput-object v4, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fForwardW:[[F

    .line 122
    add-int/2addr v1, v11

    .line 123
    mul-int/lit8 v4, v3, 0x4

    invoke-static {v6, v1, v3, v4}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->-$$Nest$smmake2DArray([IIII)[[F

    move-result-object v4

    iput-object v4, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fForwardU:[[F

    .line 124
    add-int/2addr v1, v12

    .line 125
    mul-int/lit8 v4, v3, 0x4

    invoke-static {v6, v1, v4}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->-$$Nest$smmake1DArray([III)[F

    move-result-object v4

    iput-object v4, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fForwardB:[F

    .line 126
    add-int/2addr v1, v13

    .line 127
    mul-int/lit8 v4, v3, 0x4

    invoke-static {v6, v1, v2, v4}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->-$$Nest$smmake2DArray([IIII)[[F

    move-result-object v4

    iput-object v4, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fBackwardW:[[F

    .line 128
    add-int/2addr v1, v14

    .line 129
    mul-int/lit8 v4, v3, 0x4

    invoke-static {v6, v1, v3, v4}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->-$$Nest$smmake2DArray([IIII)[[F

    move-result-object v4

    iput-object v4, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fBackwardU:[[F

    .line 130
    add-int/2addr v1, v15

    .line 131
    mul-int/lit8 v4, v3, 0x4

    invoke-static {v6, v1, v4}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->-$$Nest$smmake1DArray([III)[F

    move-result-object v4

    iput-object v4, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fBackwardB:[F

    .line 132
    add-int v1, v1, v16

    .line 133
    mul-int/lit8 v4, v3, 0x2

    move/from16 v20, v2

    const/4 v2, 0x4

    .end local v2    # "embeddings":I
    .local v20, "embeddings":I
    invoke-static {v6, v1, v4, v2}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->-$$Nest$smmake2DArray([IIII)[[F

    move-result-object v4

    iput-object v4, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fOutputW:[[F

    .line 134
    add-int v1, v1, v17

    .line 135
    invoke-static {v6, v1, v2}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->-$$Nest$smmake1DArray([III)[F

    move-result-object v2

    iput-object v2, v0, Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;->fOutputB:[F

    .line 136
    return-void
.end method
