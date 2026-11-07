.class public Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "ShaderData.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ShaderData"

.field private static final blacklist OP_CODE:I = 0x2d


# instance fields
.field blacklist mShaderID:I

.field blacklist mShaderTextId:I

.field private blacklist mShaderValid:Z

.field blacklist mUniformBitmapMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mUniformFloatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[F>;"
        }
    .end annotation
.end field

.field blacklist mUniformIntMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field blacklist mUniformRawFloatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(IILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 10
    .param p1, "shaderID"    # I
    .param p2, "shaderTextId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[F>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[I>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p3, "floatMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[F>;"
    .local p4, "intMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    .local p5, "bitmapMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    .line 52
    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    .line 54
    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformBitmapMap:Ljava/util/HashMap;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderValid:Z

    .line 63
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderID:I

    .line 64
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderTextId:I

    .line 65
    if-eqz p3, :cond_4c

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    .line 69
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 70
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_29

    .line 75
    :cond_4c
    if-eqz p4, :cond_75

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformIntMap:Ljava/util/HashMap;

    .line 77
    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    .restart local v1    # "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformIntMap:Ljava/util/HashMap;

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_5d

    .line 81
    :cond_75
    if-eqz p5, :cond_9e

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformBitmapMap:Ljava/util/HashMap;

    .line 83
    invoke-virtual {p5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_86
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    .restart local v1    # "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformBitmapMap:Ljava/util/HashMap;

    invoke-virtual {p5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_86

    .line 87
    :cond_9e
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 22
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "shaderID"    # I
    .param p2, "shaderTextId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[F>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[I>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 246
    .local p3, "floatMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[F>;"
    .local p4, "intMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    .local p5, "bitmapMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/16 v4, 0x2d

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 247
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 249
    move/from16 v4, p2

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 250
    const/4 v5, 0x0

    if-nez v1, :cond_1a

    move v6, v5

    goto :goto_1e

    :cond_1a
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v6

    .line 251
    .local v6, "floatSize":I
    :goto_1e
    if-nez v2, :cond_22

    move v7, v5

    goto :goto_26

    :cond_22
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v7

    .line 252
    .local v7, "intSize":I
    :goto_26
    if-nez v3, :cond_2a

    move v8, v5

    goto :goto_2e

    :cond_2a
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v8

    .line 253
    .local v8, "bitmapSize":I
    :goto_2e
    shl-int/lit8 v9, v7, 0x8

    or-int/2addr v9, v6

    shl-int/lit8 v10, v8, 0x10

    or-int/2addr v9, v10

    .line 254
    .local v9, "sizes":I
    invoke-virtual {v0, v9}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 256
    if-lez v6, :cond_67

    .line 258
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_41
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_67

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 259
    .local v11, "name":Ljava/lang/String;
    invoke-virtual {v0, v11}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeUTF8(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [F

    .line 261
    .local v12, "values":[F
    array-length v13, v12

    invoke-virtual {v0, v13}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 263
    array-length v13, v12

    move v14, v5

    :goto_5c
    if-ge v14, v13, :cond_66

    aget v15, v12, v14

    .line 264
    .local v15, "value":F
    invoke-virtual {v0, v15}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 263
    .end local v15    # "value":F
    add-int/lit8 v14, v14, 0x1

    goto :goto_5c

    .line 266
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "values":[F
    :cond_66
    goto :goto_41

    .line 269
    :cond_67
    if-lez v7, :cond_97

    .line 270
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_71
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_97

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 271
    .restart local v11    # "name":Ljava/lang/String;
    invoke-virtual {v0, v11}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeUTF8(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    .line 273
    .local v12, "values":[I
    array-length v13, v12

    invoke-virtual {v0, v13}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 274
    array-length v13, v12

    move v14, v5

    :goto_8c
    if-ge v14, v13, :cond_96

    aget v15, v12, v14

    .line 275
    .local v15, "value":I
    invoke-virtual {v0, v15}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 274
    .end local v15    # "value":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_8c

    .line 277
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "values":[I
    :cond_96
    goto :goto_71

    .line 279
    :cond_97
    if-lez v8, :cond_be

    .line 280
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_be

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 281
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v0, v10}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeUTF8(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 283
    .local v11, "value":I
    invoke-virtual {v0, v11}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 284
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "value":I
    goto :goto_a1

    .line 286
    :cond_be
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 8
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 352
    const/16 v0, 0x2d

    const-string v1, "ShaderData"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 353
    const-string v1, "Shader"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 354
    const/4 v1, 0x0

    const-string/jumbo v2, "shaderID"

    const-string v3, "id of shader"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 355
    const/4 v2, 0x6

    const-string v3, " floatSize"

    const-string v4, "number of float uniforms"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 356
    const-string v3, " intSize"

    const-string v4, "number of int uniform"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 357
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 358
    const/4 v2, 0x5

    const-string v3, "floatName"

    const-string v4, "name of float uniform"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 359
    const-string v3, "length"

    invoke-virtual {v0, v1, v3, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 360
    const/16 v4, 0xa

    const-string v5, "VALUE"

    const-string v6, "float uniform (max 4)"

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 361
    const-string v4, "IntName"

    const-string v6, "id of shader text"

    invoke-virtual {v0, v2, v4, v6}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 362
    const-string v4, "length of uniform"

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 363
    const/16 v3, 0xb

    const-string v4, "int uniform (max 4)"

    invoke-virtual {v0, v3, v5, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 364
    const-string v3, "bitmapName"

    const-string v4, "name of bitmap"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 365
    const-string v2, "id of bitmap"

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 366
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 226
    const/16 v0, 0x2d

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 217
    const-string v0, "ShaderData"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 16
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 295
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 296
    .local v1, "shaderID":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 297
    .local v2, "shaderTextId":I
    const/4 v0, 0x0

    .line 298
    .local v0, "floatMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[F>;"
    const/4 v3, 0x0

    .line 299
    .local v3, "intMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    const/4 v4, 0x0

    .line 301
    .local v4, "bitmapMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v6

    .line 303
    .local v6, "sizes":I
    and-int/lit16 v7, v6, 0xff

    .line 304
    .local v7, "floatMapSize":I
    if-lez v7, :cond_38

    .line 305
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    .line 306
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1a
    if-ge v5, v7, :cond_38

    .line 307
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readUTF8()Ljava/lang/String;

    move-result-object v8

    .line 308
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v9

    .line 309
    .local v9, "len":I
    new-array v10, v9, [F

    .line 311
    .local v10, "val":[F
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_27
    if-ge v11, v9, :cond_32

    .line 312
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v12

    aput v12, v10, v11

    .line 311
    add-int/lit8 v11, v11, 0x1

    goto :goto_27

    .line 315
    .end local v11    # "j":I
    :cond_32
    invoke-virtual {v0, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "len":I
    .end local v10    # "val":[F
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 318
    .end local v5    # "i":I
    :cond_38
    shr-int/lit8 v5, v6, 0x8

    and-int/lit16 v8, v5, 0xff

    .line 320
    .local v8, "intMapSize":I
    if-lez v8, :cond_63

    .line 322
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v3, v5

    .line 323
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_45
    if-ge v5, v8, :cond_63

    .line 324
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readUTF8()Ljava/lang/String;

    move-result-object v9

    .line 325
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v10

    .line 326
    .local v10, "len":I
    new-array v11, v10, [I

    .line 327
    .local v11, "val":[I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_52
    if-ge v12, v10, :cond_5d

    .line 328
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v13

    aput v13, v11, v12

    .line 327
    add-int/lit8 v12, v12, 0x1

    goto :goto_52

    .line 330
    .end local v12    # "j":I
    :cond_5d
    invoke-virtual {v3, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "len":I
    .end local v11    # "val":[I
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    .line 333
    .end local v5    # "i":I
    :cond_63
    shr-int/lit8 v5, v6, 0x10

    and-int/lit16 v9, v5, 0xff

    .line 335
    .local v9, "bitmapMapSize":I
    if-lez v9, :cond_86

    .line 336
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v4, v5

    .line 337
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_70
    if-ge v5, v9, :cond_84

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readUTF8()Ljava/lang/String;

    move-result-object v10

    .line 339
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v11

    .line 340
    .local v11, "val":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "val":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    :cond_84
    move-object v5, v4

    goto :goto_87

    .line 335
    .end local v5    # "i":I
    :cond_86
    move-object v5, v4

    .line 343
    .end local v4    # "bitmapMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v5, "bitmapMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_87
    move-object v4, v3

    move-object v3, v0

    .end local v0    # "floatMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[F>;"
    .local v3, "floatMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[F>;"
    .local v4, "intMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;-><init>(IILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 370
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderValid:Z

    if-eqz v0, :cond_9

    .line 371
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderID:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadShader(ILcom/android/internal/widget/remotecompose/core/operations/ShaderData;)V

    .line 373
    :cond_9
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist enable(Z)V
    .registers 2
    .param p1, "shaderValid"    # Z

    .line 387
    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderValid:Z

    .line 388
    return-void
.end method

.method public blacklist getShaderTextId()I
    .registers 2

    .line 90
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderTextId:I

    return v0
.end method

.method public blacklist getUniformBitmapId(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformBitmapMap:Ljava/util/HashMap;

    if-eqz v0, :cond_11

    .line 154
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformBitmapMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_12

    .line 155
    :cond_11
    const/4 v0, -0x1

    .line 153
    :goto_12
    return v0
.end method

.method public blacklist getUniformBitmapNames()[Ljava/lang/String;
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformBitmapMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 143
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformBitmapMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUniformFloatNames()[Ljava/lang/String;
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 101
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUniformFloats(Ljava/lang/String;)[F
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    goto :goto_10

    :cond_d
    const/4 v0, 0x0

    new-array v0, v0, [F

    :goto_10
    return-object v0
.end method

.method public blacklist getUniformIntegerNames()[Ljava/lang/String;
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformIntMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 122
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformIntMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUniformInts(Ljava/lang/String;)[I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformIntMap:Ljava/util/HashMap;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformIntMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_10

    :cond_d
    const/4 v0, 0x0

    new-array v0, v0, [I

    :goto_10
    return-object v0
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 9
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 197
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    if-nez v0, :cond_5

    .line 198
    return-void

    .line 200
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 202
    .local v2, "value":[F
    array-length v3, v2

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v3, :cond_39

    aget v5, v2, v4

    .line 203
    .local v5, "v":F
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 204
    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v6

    invoke-virtual {p1, v6, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 202
    .end local v5    # "v":F
    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 207
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":[F
    :cond_39
    goto :goto_f

    .line 208
    :cond_3a
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 392
    nop

    .line 393
    const-string v0, "ShaderData"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderTextId:I

    .line 394
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "shaderTextId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderID:I

    .line 395
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "shaderID"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    .line 396
    const-string/jumbo v2, "uniformRawFloatMap"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/Map;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    .line 397
    const-string/jumbo v2, "uniformFloatMap"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/Map;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformBitmapMap:Ljava/util/HashMap;

    .line 398
    const-string/jumbo v2, "uniformBitmapMap"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/Map;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 399
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHADER DATA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 8
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 177
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    if-nez v0, :cond_5

    .line 178
    return-void

    .line 180
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 181
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 182
    .local v2, "value":[F
    const/4 v3, 0x0

    .line 183
    .local v3, "out":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    array-length v5, v2

    if-ge v4, v5, :cond_46

    .line 184
    aget v5, v2, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 185
    if-nez v3, :cond_37

    .line 186
    array-length v5, v2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    .line 188
    :cond_37
    aget v5, v2, v4

    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v5

    aput v5, v3, v4

    .line 183
    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 191
    .end local v4    # "i":I
    :cond_46
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    if-nez v3, :cond_4c

    move-object v5, v2

    goto :goto_4d

    :cond_4c
    move-object v5, v3

    :goto_4d
    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":[F
    .end local v3    # "out":[F
    goto :goto_f

    .line 193
    :cond_51
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 8
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 160
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderID:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderTextId:I

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformIntMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformBitmapMap:Ljava/util/HashMap;

    move-object v0, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 167
    return-void
.end method
