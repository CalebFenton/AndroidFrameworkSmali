.class final Ljava/io/ObjectStreamClass$RecordSupport;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectStreamClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RecordSupport"
.end annotation


# static fields
.field private static final blacklist PRIM_VALUE_EXTRACTORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/invoke/MethodHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 23

    .line 2822
    const-class v0, [B

    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 2824
    .local v1, "lkp":Ljava/lang/invoke/MethodHandles$Lookup;
    :try_start_6
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 2825
    invoke-static {v0}, Ljava/lang/invoke/MethodHandles;->arrayElementGetter(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/io/Bits;

    const-string v6, "getShort"

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 2826
    invoke-static {v7, v0, v9}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v7

    invoke-virtual {v1, v5, v6, v7}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v7, Ljava/io/Bits;

    const-string v9, "getInt"

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v12, v8, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v12, v11

    .line 2827
    invoke-static {v10, v0, v12}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v10

    invoke-virtual {v1, v7, v9, v10}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v7

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v10, Ljava/io/Bits;

    const-string v12, "getLong"

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-array v14, v8, [Ljava/lang/Class;

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v14, v11

    .line 2828
    invoke-static {v13, v0, v14}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v13

    invoke-virtual {v1, v10, v12, v13}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v10

    move-object v12, v9

    move-object v9, v10

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v13, Ljava/io/Bits;

    const-string v14, "getFloat"

    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move/from16 v16, v11

    new-array v11, v8, [Ljava/lang/Class;

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v11, v16

    .line 2829
    invoke-static {v15, v0, v11}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v11

    invoke-virtual {v1, v13, v14, v11}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v11

    move-object v13, v12

    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v14, Ljava/io/Bits;

    const-string v15, "getDouble"

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v3, v16

    .line 2830
    invoke-static {v8, v0, v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v1, v14, v15, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    sget-object v14, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/io/Bits;

    const-string v8, "getChar"

    sget-object v15, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v20, v2

    move-object/from16 v21, v4

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v4, v16

    .line 2831
    invoke-static {v15, v0, v4}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v1, v3, v8, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v15

    move/from16 v2, v16

    sget-object v16, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/io/Bits;

    const-string v4, "getBoolean"

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move/from16 v22, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v2, v22

    .line 2832
    invoke-static {v8, v0, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v1, v3, v4, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v17

    .line 2824
    move-object v8, v13

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v13, v20

    move-object/from16 v4, v21

    invoke-static/range {v2 .. v17}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ljava/io/ObjectStreamClass$RecordSupport;->PRIM_VALUE_EXTRACTORS:Ljava/util/Map;
    :try_end_cb
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_cb} :catch_cd
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_cb} :catch_cd

    .line 2836
    nop

    .line 2837
    .end local v1    # "lkp":Ljava/lang/invoke/MethodHandles$Lookup;
    return-void

    .line 2834
    .restart local v1    # "lkp":Ljava/lang/invoke/MethodHandles$Lookup;
    :catch_cd
    move-exception v0

    .line 2835
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/InternalError;

    const-string v3, "Can\'t lookup Bits.getXXX"

    invoke-direct {v2, v3, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 2690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist deserializationCtr(Ljava/io/ObjectStreamClass;)Ljava/lang/invoke/MethodHandle;
    .registers 8
    .param p0, "desc"    # Ljava/io/ObjectStreamClass;

    .line 2700
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->-$$Nest$fgetdeserializationCtr(Ljava/io/ObjectStreamClass;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 2701
    .local v0, "mh":Ljava/lang/invoke/MethodHandle;
    if-eqz v0, :cond_7

    return-object v0

    .line 2702
    :cond_7
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->-$$Nest$fgetdeserializationCtrs(Ljava/io/ObjectStreamClass;)Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;->get([Ljava/io/ObjectStreamField;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 2703
    if-eqz v0, :cond_1a

    invoke-static {p0, v0}, Ljava/io/ObjectStreamClass;->-$$Nest$fputdeserializationCtr(Ljava/io/ObjectStreamClass;Ljava/lang/invoke/MethodHandle;)V

    return-object v0

    .line 2708
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    .line 2709
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/io/ObjectStreamClass$RecordSupport$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Ljava/io/ObjectStreamClass$RecordSupport$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    .line 2710
    .local v3, "pa":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<[Ljava/lang/reflect/RecordComponent;>;"
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/reflect/RecordComponent;
    :try_end_2c
    .catch Ljava/security/PrivilegedActionException; {:try_start_1a .. :try_end_2c} :catch_82

    .line 2713
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "pa":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<[Ljava/lang/reflect/RecordComponent;>;"
    .local v4, "recordComponents":[Ljava/lang/reflect/RecordComponent;
    nop

    .line 2717
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getRecordConstructor()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 2721
    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 2725
    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, [B

    aput-object v5, v3, v2

    const-class v5, [Ljava/lang/Object;

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v0, v1, v3}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 2727
    array-length v1, v4

    sub-int/2addr v1, v6

    .local v1, "i":I
    :goto_59
    if-ltz v1, :cond_72

    .line 2728
    aget-object v3, v4, v1

    invoke-virtual {v3}, Ljava/lang/reflect/RecordComponent;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2729
    .local v3, "name":Ljava/lang/String;
    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/reflect/RecordComponent;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 2733
    .local v5, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3, v5, p0}, Ljava/io/ObjectStreamClass$RecordSupport;->streamFieldExtractor(Ljava/lang/String;Ljava/lang/Class;Ljava/io/ObjectStreamClass;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    .line 2736
    .local v6, "combiner":Ljava/lang/invoke/MethodHandle;
    invoke-static {v0, v1, v6}, Ljava/lang/invoke/MethodHandles;->foldArguments(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 2727
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "combiner":Ljava/lang/invoke/MethodHandle;
    add-int/lit8 v1, v1, -0x1

    goto :goto_59

    .line 2743
    .end local v1    # "i":I
    :cond_72
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->-$$Nest$fgetdeserializationCtrs(Ljava/io/ObjectStreamClass;)Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;

    move-result-object v1

    .line 2744
    invoke-virtual {p0, v2}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;->putIfAbsentAndGet([Ljava/io/ObjectStreamField;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/io/ObjectStreamClass;->-$$Nest$fputdeserializationCtr(Ljava/io/ObjectStreamClass;Ljava/lang/invoke/MethodHandle;)V

    .line 2743
    return-object v1

    .line 2711
    .end local v4    # "recordComponents":[Ljava/lang/reflect/RecordComponent;
    :catch_82
    move-exception v1

    .line 2712
    .local v1, "e":Ljava/security/PrivilegedActionException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v1}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist numberPrimValues(Ljava/io/ObjectStreamClass;)I
    .registers 5
    .param p0, "desc"    # Ljava/io/ObjectStreamClass;

    .line 2749
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getFields()[Ljava/io/ObjectStreamField;

    move-result-object v0

    .line 2750
    .local v0, "fields":[Ljava/io/ObjectStreamField;
    const/4 v1, 0x0

    .line 2751
    .local v1, "primValueCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    array-length v3, v0

    if-ge v2, v3, :cond_16

    .line 2752
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2753
    add-int/lit8 v1, v1, 0x1

    .line 2751
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2757
    .end local v2    # "i":I
    :cond_16
    return v1
.end method

.method private static blacklist streamFieldExtractor(Ljava/lang/String;Ljava/lang/Class;Ljava/io/ObjectStreamClass;)Ljava/lang/invoke/MethodHandle;
    .registers 13
    .param p0, "pName"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 2768
    .local p1, "pType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v1

    .line 2770
    .local v1, "fields":[Ljava/io/ObjectStreamField;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    array-length v3, v1

    const-class v4, [B

    const/4 v5, 0x1

    if-ge v2, v3, :cond_d4

    .line 2771
    aget-object v3, v1, v2

    .line 2772
    .local v3, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2773
    .local v6, "fName":Ljava/lang/String;
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    .line 2774
    nop

    .line 2770
    .end local v3    # "f":Ljava/io/ObjectStreamField;
    .end local v6    # "fName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2776
    .restart local v3    # "f":Ljava/io/ObjectStreamField;
    .restart local v6    # "fName":Ljava/lang/String;
    :cond_1c
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 2777
    .local v7, "fType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_ad

    .line 2780
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 2782
    sget-object v4, Ljava/io/ObjectStreamClass$RecordSupport;->PRIM_VALUE_EXTRACTORS:Ljava/util/Map;

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/invoke/MethodHandle;

    .line 2783
    .local v4, "mh":Ljava/lang/invoke/MethodHandle;
    if-eqz v4, :cond_63

    .line 2788
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getOffset()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v4, v5, v8}, Ljava/lang/invoke/MethodHandles;->insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    .line 2791
    new-array v8, v5, [Ljava/lang/Class;

    const-class v9, [Ljava/lang/Object;

    aput-object v9, v8, v0

    invoke-static {v4, v5, v8}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 2794
    .end local v4    # "mh":Ljava/lang/invoke/MethodHandle;
    .local v0, "mh":Ljava/lang/invoke/MethodHandle;
    if-eq p1, v7, :cond_62

    .line 2795
    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 2797
    :cond_62
    return-object v0

    .line 2784
    .end local v0    # "mh":Ljava/lang/invoke/MethodHandle;
    .restart local v4    # "mh":Ljava/lang/invoke/MethodHandle;
    :cond_63
    new-instance v0, Ljava/lang/InternalError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected type: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2800
    .end local v4    # "mh":Ljava/lang/invoke/MethodHandle;
    :cond_7c
    const-class v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/invoke/MethodHandles;->arrayElementGetter(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v8

    .line 2803
    .local v8, "mh":Ljava/lang/invoke/MethodHandle;
    invoke-static {p2}, Ljava/io/ObjectStreamClass$RecordSupport;->numberPrimValues(Ljava/io/ObjectStreamClass;)I

    move-result v9

    sub-int v9, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v5, v9}, Ljava/lang/invoke/MethodHandles;->insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v8

    .line 2806
    new-array v5, v5, [Ljava/lang/Class;

    aput-object v4, v5, v0

    invoke-static {v8, v0, v5}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 2809
    .end local v8    # "mh":Ljava/lang/invoke/MethodHandle;
    .restart local v0    # "mh":Ljava/lang/invoke/MethodHandle;
    const-class v4, Ljava/lang/Object;

    if-eq p1, v4, :cond_ac

    .line 2810
    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 2812
    :cond_ac
    return-object v0

    .line 2778
    .end local v0    # "mh":Ljava/lang/invoke/MethodHandle;
    :cond_ad
    new-instance v0, Ljava/lang/InternalError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " unassignable, pType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2817
    .end local v2    # "i":I
    .end local v3    # "f":Ljava/io/ObjectStreamField;
    .end local v6    # "fName":Ljava/lang/String;
    .end local v7    # "fType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_d4
    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, [Ljava/lang/Object;

    aput-object v3, v2, v0

    invoke-static {p1, v4, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandles;->empty(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method
