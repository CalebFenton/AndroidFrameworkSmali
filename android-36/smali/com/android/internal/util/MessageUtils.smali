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
.field private static final blacklist DBG:Z = false

.field public static final blacklist DEFAULT_PREFIXES:[Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 33
    const-class v0, Lcom/android/internal/util/MessageUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/MessageUtils;->TAG:Ljava/lang/String;

    .line 121
    const-string v0, "CMD_"

    const-string v1, "EVENT_"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/MessageUtils;->DEFAULT_PREFIXES:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "classNames"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    sget-object v0, Lcom/android/internal/util/MessageUtils;->DEFAULT_PREFIXES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;
    .registers 21
    .param p0, "classes"    # [Ljava/lang/Class;
    .param p1, "prefixes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v3, v0

    .line 56
    .local v3, "messageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    array-length v4, v1

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v4, :cond_a3

    aget-object v7, v1, v6

    .line 57
    .local v7, "c":Ljava/lang/Class;
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 62
    .local v8, "className":Ljava/lang/String;
    :try_start_14
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_18} :catch_81

    move-object v9, v0

    .line 66
    .local v9, "fields":[Ljava/lang/reflect/Field;
    nop

    .line 68
    array-length v10, v9

    const/4 v11, 0x0

    :goto_1c
    if-ge v11, v10, :cond_9b

    aget-object v12, v9, v11

    .line 69
    .local v12, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v13

    .line 70
    .local v13, "modifiers":I
    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    const/4 v14, 0x1

    xor-int/2addr v0, v14

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v15

    xor-int/2addr v15, v14

    or-int/2addr v0, v15

    if-eqz v0, :cond_33

    .line 71
    goto :goto_7a

    .line 74
    :cond_33
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v15

    .line 75
    .local v15, "name":Ljava/lang/String;
    array-length v5, v2

    const/4 v14, 0x0

    :goto_39
    if-ge v14, v5, :cond_7a

    aget-object v1, v2, v14

    .line 77
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 78
    goto :goto_73

    .line 84
    :cond_44
    move-object/from16 v17, v1

    const/4 v1, 0x1

    .end local v1    # "prefix":Ljava/lang/String;
    .local v17, "prefix":Ljava/lang/String;
    :try_start_47
    invoke-virtual {v12, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_4a
    .catch Ljava/lang/SecurityException; {:try_start_47 .. :try_end_4a} :catch_71
    .catch Ljava/lang/IllegalAccessException; {:try_start_47 .. :try_end_4a} :catch_71

    .line 89
    const/4 v0, 0x0

    :try_start_4b
    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_4f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4b .. :try_end_4f} :catch_6f
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_4b .. :try_end_4f} :catch_6f
    .catch Ljava/lang/SecurityException; {:try_start_4b .. :try_end_4f} :catch_71
    .catch Ljava/lang/IllegalAccessException; {:try_start_4b .. :try_end_4f} :catch_71

    .line 95
    .local v0, "value":I
    nop

    .line 98
    :try_start_50
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v18, v16

    .line 99
    .local v18, "previousName":Ljava/lang/String;
    if-eqz v18, :cond_69

    move-object/from16 v1, v18

    .end local v18    # "previousName":Ljava/lang/String;
    .local v1, "previousName":Ljava/lang/String;
    invoke-virtual {v1, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_63

    goto :goto_6b

    .line 100
    :cond_63
    new-instance v2, Lcom/android/internal/util/MessageUtils$DuplicateConstantError;

    invoke-direct {v2, v15, v1, v0}, Lcom/android/internal/util/MessageUtils$DuplicateConstantError;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .end local v3    # "messageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v7    # "c":Ljava/lang/Class;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "fields":[Ljava/lang/reflect/Field;
    .end local v12    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "modifiers":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v17    # "prefix":Ljava/lang/String;
    .end local p0    # "classes":[Ljava/lang/Class;
    .end local p1    # "prefixes":[Ljava/lang/String;
    throw v2

    .line 99
    .end local v1    # "previousName":Ljava/lang/String;
    .restart local v3    # "messageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v7    # "c":Ljava/lang/Class;
    .restart local v8    # "className":Ljava/lang/String;
    .restart local v9    # "fields":[Ljava/lang/reflect/Field;
    .restart local v12    # "field":Ljava/lang/reflect/Field;
    .restart local v13    # "modifiers":I
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v17    # "prefix":Ljava/lang/String;
    .restart local v18    # "previousName":Ljava/lang/String;
    .restart local p0    # "classes":[Ljava/lang/Class;
    .restart local p1    # "prefixes":[Ljava/lang/String;
    :cond_69
    move-object/from16 v1, v18

    .line 103
    .end local v18    # "previousName":Ljava/lang/String;
    .restart local v1    # "previousName":Ljava/lang/String;
    :goto_6b
    invoke-virtual {v3, v0, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_6e
    .catch Ljava/lang/SecurityException; {:try_start_50 .. :try_end_6e} :catch_71
    .catch Ljava/lang/IllegalAccessException; {:try_start_50 .. :try_end_6e} :catch_71

    .line 111
    .end local v0    # "value":I
    .end local v1    # "previousName":Ljava/lang/String;
    goto :goto_73

    .line 90
    :catch_6f
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Throwable;
    goto :goto_7a

    .line 108
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_71
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    nop

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v17    # "prefix":Ljava/lang/String;
    :goto_73
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto :goto_39

    .line 68
    .end local v12    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "modifiers":I
    .end local v15    # "name":Ljava/lang/String;
    :cond_7a
    :goto_7a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto :goto_1c

    .line 63
    .end local v9    # "fields":[Ljava/lang/reflect/Field;
    :catch_81
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/android/internal/util/MessageUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t list fields of class "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    nop

    .line 56
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v7    # "c":Ljava/lang/Class;
    .end local v8    # "className":Ljava/lang/String;
    :cond_9b
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_c

    .line 115
    :cond_a3
    return-object v3
.end method
