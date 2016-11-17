.class public Lcom/android/internal/util/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/MessageUtils$DuplicateConstantError;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final DEFAULT_PREFIXES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 31
    const-class v0, Lcom/android/internal/util/MessageUtils;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/internal/util/MessageUtils;->TAG:Ljava/lang/String;

    #@8
    .line 118
    const/4 v0, 0x2

    #@9
    new-array v0, v0, [Ljava/lang/String;

    #@b
    const-string/jumbo v1, "CMD_"

    #@e
    const/4 v2, 0x0

    #@f
    aput-object v1, v0, v2

    #@11
    const-string/jumbo v1, "EVENT_"

    #@14
    const/4 v2, 0x1

    #@15
    aput-object v1, v0, v2

    #@17
    sput-object v0, Lcom/android/internal/util/MessageUtils;->DEFAULT_PREFIXES:[Ljava/lang/String;

    #@19
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "classNames"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 129
    sget-object v0, Lcom/android/internal/util/MessageUtils;->DEFAULT_PREFIXES:[Ljava/lang/String;

    #@2
    invoke-static {p0, v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 22
    .param p0, "classes"    # [Ljava/lang/Class;
    .param p1, "prefixes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 52
    new-instance v9, Landroid/util/SparseArray;

    #@2
    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    #@5
    .line 53
    .local v9, "messageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v15, 0x0

    #@6
    move-object/from16 v0, p0

    #@8
    array-length v0, v0

    #@9
    move/from16 v19, v0

    #@b
    move/from16 v18, v15

    #@d
    :goto_0
    move/from16 v0, v18

    #@f
    move/from16 v1, v19

    #@11
    if-ge v0, v1, :cond_8

    #@13
    aget-object v2, p0, v18

    #@15
    .line 54
    .local v2, "c":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    .line 59
    .local v3, "className":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result-object v8

    #@1d
    .line 65
    .local v8, "fields":[Ljava/lang/reflect/Field;
    const/4 v15, 0x0

    #@1e
    array-length v0, v8

    #@1f
    move/from16 v20, v0

    #@21
    move/from16 v17, v15

    #@23
    :goto_1
    move/from16 v0, v17

    #@25
    move/from16 v1, v20

    #@27
    if-ge v0, v1, :cond_1

    #@29
    aget-object v7, v8, v17

    #@2b
    .line 66
    .local v7, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    #@2e
    move-result v10

    #@2f
    .line 67
    .local v10, "modifiers":I
    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    #@32
    move-result v15

    #@33
    if-eqz v15, :cond_2

    #@35
    const/4 v15, 0x0

    #@36
    :goto_2
    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    #@39
    move-result v16

    #@3a
    if-eqz v16, :cond_3

    #@3c
    const/16 v16, 0x0

    #@3e
    :goto_3
    or-int v15, v15, v16

    #@40
    if-eqz v15, :cond_4

    #@42
    .line 65
    :cond_0
    :goto_4
    add-int/lit8 v15, v17, 0x1

    #@44
    move/from16 v17, v15

    #@46
    goto :goto_1

    #@47
    .line 60
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "fields":[Ljava/lang/reflect/Field;
    .end local v10    # "modifiers":I
    :catch_0
    move-exception v5

    #@48
    .line 61
    .local v5, "e":Ljava/lang/SecurityException;
    sget-object v15, Lcom/android/internal/util/MessageUtils;->TAG:Ljava/lang/String;

    #@4a
    new-instance v16, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v17, "Can\'t list fields of class "

    #@52
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v16

    #@56
    move-object/from16 v0, v16

    #@58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v16

    #@5c
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v16

    #@60
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    .line 53
    .end local v5    # "e":Ljava/lang/SecurityException;
    :cond_1
    add-int/lit8 v15, v18, 0x1

    #@65
    move/from16 v18, v15

    #@67
    goto :goto_0

    #@68
    .line 67
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    .restart local v8    # "fields":[Ljava/lang/reflect/Field;
    .restart local v10    # "modifiers":I
    :cond_2
    const/4 v15, 0x1

    #@69
    goto :goto_2

    #@6a
    :cond_3
    const/16 v16, 0x1

    #@6c
    goto :goto_3

    #@6d
    .line 71
    :cond_4
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@70
    move-result-object v11

    #@71
    .line 72
    .local v11, "name":Ljava/lang/String;
    const/4 v15, 0x0

    #@72
    move-object/from16 v0, p1

    #@74
    array-length v0, v0

    #@75
    move/from16 v16, v0

    #@77
    :goto_5
    move/from16 v0, v16

    #@79
    if-ge v15, v0, :cond_0

    #@7b
    aget-object v12, p1, v15

    #@7d
    .line 74
    .local v12, "prefix":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@80
    move-result v21

    #@81
    if-nez v21, :cond_5

    #@83
    .line 72
    :goto_6
    add-int/lit8 v15, v15, 0x1

    #@85
    goto :goto_5

    #@86
    .line 81
    :cond_5
    const/16 v21, 0x1

    #@88
    :try_start_1
    move/from16 v0, v21

    #@8a
    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    #@8d
    .line 86
    const/16 v21, 0x0

    #@8f
    :try_start_2
    move-object/from16 v0, v21

    #@91
    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    #@94
    move-result v14

    #@95
    .line 95
    .local v14, "value":I
    :try_start_3
    invoke-virtual {v9, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@98
    move-result-object v13

    #@99
    check-cast v13, Ljava/lang/String;

    #@9b
    .line 96
    .local v13, "previousName":Ljava/lang/String;
    if-eqz v13, :cond_6

    #@9d
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a0
    move-result v21

    #@a1
    if-eqz v21, :cond_7

    #@a3
    .line 100
    :cond_6
    invoke-virtual {v9, v14, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@a6
    goto :goto_6

    #@a7
    .line 105
    .end local v13    # "previousName":Ljava/lang/String;
    .end local v14    # "value":I
    :catch_1
    move-exception v4

    #@a8
    .local v4, "e":Ljava/lang/Exception;
    goto :goto_6

    #@a9
    .line 87
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    #@aa
    .local v6, "e":Ljava/lang/Throwable;
    goto :goto_4

    #@ab
    .line 97
    .end local v6    # "e":Ljava/lang/Throwable;
    .restart local v13    # "previousName":Ljava/lang/String;
    .restart local v14    # "value":I
    :cond_7
    new-instance v21, Lcom/android/internal/util/MessageUtils$DuplicateConstantError;

    #@ad
    move-object/from16 v0, v21

    #@af
    invoke-direct {v0, v11, v13, v14}, Lcom/android/internal/util/MessageUtils$DuplicateConstantError;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@b2
    throw v21
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1

    #@b3
    .line 112
    .end local v2    # "c":Ljava/lang/Class;
    .end local v3    # "className":Ljava/lang/String;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "fields":[Ljava/lang/reflect/Field;
    .end local v10    # "modifiers":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "prefix":Ljava/lang/String;
    .end local v13    # "previousName":Ljava/lang/String;
    .end local v14    # "value":I
    :cond_8
    return-object v9
.end method
