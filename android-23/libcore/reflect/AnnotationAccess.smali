.class public final Llibcore/reflect/AnnotationAccess;
.super Ljava/lang/Object;
.source "AnnotationAccess.java"


# static fields
.field private static final NO_ARGUMENTS:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final VISIBILITY_BUILD:B = 0x0t

.field private static final VISIBILITY_RUNTIME:B = 0x1t

.field private static final VISIBILITY_SYSTEM:B = 0x2t


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static annotationSetToAnnotations(Ljava/lang/Class;I)Ljava/util/List;
    .locals 11
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 614
    .local p0, "context":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    #@2
    .line 615
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@5
    move-result-object v9

    #@6
    return-object v9

    #@7
    .line 618
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@a
    move-result-object v4

    #@b
    .line 619
    .local v4, "dex":Lcom/android/dex/Dex;
    invoke-virtual {v4, p1}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    #@e
    move-result-object v7

    #@f
    .line 620
    .local v7, "setIn":Lcom/android/dex/Dex$Section;
    invoke-virtual {v7}, Lcom/android/dex/Dex$Section;->readInt()I

    #@12
    move-result v8

    #@13
    .line 621
    .local v8, "size":I
    new-instance v6, Ljava/util/ArrayList;

    #@15
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    #@18
    .line 623
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    const/4 v5, 0x0

    #@19
    .local v5, "i":I
    :goto_0
    if-ge v5, v8, :cond_3

    #@1b
    .line 624
    invoke-virtual {v7}, Lcom/android/dex/Dex$Section;->readInt()I

    #@1e
    move-result v3

    #@1f
    .line 625
    .local v3, "annotationOffset":I
    invoke-virtual {v4, v3}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    #@22
    move-result-object v2

    #@23
    .line 626
    .local v2, "annotationIn":Lcom/android/dex/Dex$Section;
    invoke-virtual {v2}, Lcom/android/dex/Dex$Section;->readAnnotation()Lcom/android/dex/Annotation;

    #@26
    move-result-object v0

    #@27
    .line 627
    .local v0, "annotation":Lcom/android/dex/Annotation;
    invoke-virtual {v0}, Lcom/android/dex/Annotation;->getVisibility()B

    #@2a
    move-result v9

    #@2b
    const/4 v10, 0x1

    #@2c
    if-eq v9, v10, :cond_2

    #@2e
    .line 623
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@30
    goto :goto_0

    #@31
    .line 631
    :cond_2
    invoke-virtual {v0}, Lcom/android/dex/Annotation;->getTypeIndex()I

    #@34
    move-result v9

    #@35
    invoke-static {p0, v4, v9}, Llibcore/reflect/AnnotationAccess;->getAnnotationClass(Ljava/lang/Class;Lcom/android/dex/Dex;I)Ljava/lang/Class;

    #@38
    move-result-object v1

    #@39
    .line 632
    .local v1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz v1, :cond_1

    #@3b
    .line 633
    invoke-virtual {v0}, Lcom/android/dex/Annotation;->getReader()Lcom/android/dex/EncodedValueReader;

    #@3e
    move-result-object v9

    #@3f
    invoke-static {p0, v4, v1, v9}, Llibcore/reflect/AnnotationAccess;->toAnnotationInstance(Ljava/lang/Class;Lcom/android/dex/Dex;Ljava/lang/Class;Lcom/android/dex/EncodedValueReader;)Ljava/lang/annotation/Annotation;

    #@42
    move-result-object v9

    #@43
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@46
    goto :goto_1

    #@47
    .line 636
    .end local v0    # "annotation":Lcom/android/dex/Annotation;
    .end local v1    # "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v2    # "annotationIn":Lcom/android/dex/Dex$Section;
    .end local v3    # "annotationOffset":I
    :cond_3
    return-object v6
.end method

.method private static decodeValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/dex/Dex;Lcom/android/dex/EncodedValueReader;)Ljava/lang/Object;
    .locals 21
    .param p2, "dex"    # Lcom/android/dex/Dex;
    .param p3, "reader"    # Lcom/android/dex/EncodedValueReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/android/dex/Dex;",
            "Lcom/android/dex/EncodedValueReader;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    #@0
    .prologue
    .line 671
    .local p0, "context":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isArray()Z

    #@3
    move-result v18

    #@4
    if-eqz v18, :cond_1

    #@6
    .line 672
    invoke-virtual/range {p3 .. p3}, Lcom/android/dex/EncodedValueReader;->readArray()I

    #@9
    move-result v17

    #@a
    .line 673
    .local v17, "size":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@d
    move-result-object v6

    #@e
    .line 674
    .local v6, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move/from16 v0, v17

    #@10
    invoke-static {v6, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@13
    move-result-object v5

    #@14
    .line 675
    .local v5, "array":Ljava/lang/Object;
    const/4 v15, 0x0

    #@15
    .local v15, "i":I
    :goto_0
    move/from16 v0, v17

    #@17
    if-ge v15, v0, :cond_0

    #@19
    .line 676
    move-object/from16 v0, p0

    #@1b
    move-object/from16 v1, p2

    #@1d
    move-object/from16 v2, p3

    #@1f
    invoke-static {v0, v6, v1, v2}, Llibcore/reflect/AnnotationAccess;->decodeValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/dex/Dex;Lcom/android/dex/EncodedValueReader;)Ljava/lang/Object;

    #@22
    move-result-object v18

    #@23
    move-object/from16 v0, v18

    #@25
    invoke-static {v5, v15, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    #@28
    .line 675
    add-int/lit8 v15, v15, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 678
    :cond_0
    return-object v5

    #@2c
    .line 679
    .end local v5    # "array":Ljava/lang/Object;
    .end local v6    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "i":I
    .end local v17    # "size":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isEnum()Z

    #@2f
    move-result v18

    #@30
    if-eqz v18, :cond_2

    #@32
    .line 680
    invoke-virtual/range {p3 .. p3}, Lcom/android/dex/EncodedValueReader;->readEnum()I

    #@35
    move-result v13

    #@36
    .line 681
    .local v13, "fieldIndex":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/dex/Dex;->fieldIds()Ljava/util/List;

    #@39
    move-result-object v18

    #@3a
    move-object/from16 v0, v18

    #@3c
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v12

    #@40
    check-cast v12, Lcom/android/dex/FieldId;

    #@42
    .line 682
    .local v12, "fieldId":Lcom/android/dex/FieldId;
    invoke-virtual/range {p2 .. p2}, Lcom/android/dex/Dex;->strings()Ljava/util/List;

    #@45
    move-result-object v18

    #@46
    invoke-virtual {v12}, Lcom/android/dex/FieldId;->getNameIndex()I

    #@49
    move-result v19

    #@4a
    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4d
    move-result-object v14

    #@4e
    check-cast v14, Ljava/lang/String;

    #@50
    .line 685
    .local v14, "fieldName":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    #@52
    invoke-virtual {v0, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@55
    move-result-object v11

    #@56
    .line 686
    .local v11, "field":Ljava/lang/reflect/Field;
    const/16 v18, 0x0

    #@58
    move-object/from16 v0, v18

    #@5a
    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@5d
    move-result-object v18

    #@5e
    return-object v18

    #@5f
    .line 691
    .end local v11    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v7

    #@60
    .line 692
    .local v7, "e":Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/IllegalAccessError;

    #@62
    invoke-direct {v9}, Ljava/lang/IllegalAccessError;-><init>()V

    #@65
    .line 693
    .local v9, "error":Ljava/lang/IllegalAccessError;
    invoke-virtual {v9, v7}, Ljava/lang/IllegalAccessError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@68
    .line 694
    throw v9

    #@69
    .line 687
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    .end local v9    # "error":Ljava/lang/IllegalAccessError;
    :catch_1
    move-exception v8

    #@6a
    .line 688
    .local v8, "e":Ljava/lang/NoSuchFieldException;
    new-instance v10, Ljava/lang/NoSuchFieldError;

    #@6c
    invoke-direct {v10}, Ljava/lang/NoSuchFieldError;-><init>()V

    #@6f
    .line 689
    .local v10, "error":Ljava/lang/NoSuchFieldError;
    invoke-virtual {v10, v8}, Ljava/lang/NoSuchFieldError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@72
    .line 690
    throw v10

    #@73
    .line 696
    .end local v8    # "e":Ljava/lang/NoSuchFieldException;
    .end local v10    # "error":Ljava/lang/NoSuchFieldError;
    .end local v12    # "fieldId":Lcom/android/dex/FieldId;
    .end local v13    # "fieldIndex":I
    .end local v14    # "fieldName":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isAnnotation()Z

    #@76
    move-result v18

    #@77
    if-eqz v18, :cond_3

    #@79
    .line 698
    move-object/from16 v4, p1

    #@7b
    .line 699
    .local v4, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    move-object/from16 v0, p0

    #@7d
    move-object/from16 v1, p2

    #@7f
    move-object/from16 v2, p3

    #@81
    invoke-static {v0, v1, v4, v2}, Llibcore/reflect/AnnotationAccess;->toAnnotationInstance(Ljava/lang/Class;Lcom/android/dex/Dex;Ljava/lang/Class;Lcom/android/dex/EncodedValueReader;)Ljava/lang/annotation/Annotation;

    #@84
    move-result-object v18

    #@85
    return-object v18

    #@86
    .line 700
    .end local v4    # "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_3
    const-class v18, Ljava/lang/String;

    #@88
    move-object/from16 v0, p1

    #@8a
    move-object/from16 v1, v18

    #@8c
    if-ne v0, v1, :cond_4

    #@8e
    .line 701
    invoke-virtual/range {p3 .. p3}, Lcom/android/dex/EncodedValueReader;->readString()I

    #@91
    move-result v16

    #@92
    .line 702
    .local v16, "index":I
    move-object/from16 v0, p0

    #@94
    move-object/from16 v1, p2

    #@96
    move/from16 v2, v16

    #@98
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDexCacheString(Lcom/android/dex/Dex;I)Ljava/lang/String;

    #@9b
    move-result-object v18

    #@9c
    return-object v18

    #@9d
    .line 703
    .end local v16    # "index":I
    :cond_4
    const-class v18, Ljava/lang/Class;

    #@9f
    move-object/from16 v0, p1

    #@a1
    move-object/from16 v1, v18

    #@a3
    if-ne v0, v1, :cond_5

    #@a5
    .line 704
    invoke-virtual/range {p3 .. p3}, Lcom/android/dex/EncodedValueReader;->readType()I

    #@a8
    move-result v16

    #@a9
    .line 705
    .restart local v16    # "index":I
    move-object/from16 v0, p0

    #@ab
    move-object/from16 v1, p2

    #@ad
    move/from16 v2, v16

    #@af
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    #@b2
    move-result-object v18

    #@b3
    return-object v18

    #@b4
    .line 706
    .end local v16    # "index":I
    :cond_5
    sget-object v18, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@b6
    move-object/from16 v0, p1

    #@b8
    move-object/from16 v1, v18

    #@ba
    if-ne v0, v1, :cond_6

    #@bc
    .line 707
    invoke-virtual/range {p3 .. p3}, Lcom/android/dex/EncodedValueReader;->readByte()B

    #@bf
    move-result v18

    #@c0
    invoke-static/range {v18 .. v18}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@c3
    move-result-object v18

    #@c4
    return-object v18

    #@c5
    .line 708
    :cond_6
    sget-object v18, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@c7
    move-object/from16 v0, p1

    #@c9
    move-object/from16 v1, v18

    #@cb
    if-ne v0, v1, :cond_7

    #@cd
    .line 709
    invoke-virtual/range {p3 .. p3}, Lcom/android/dex/EncodedValueReader;->readShort()S

    #@d0
    move-result v18

    #@d1
    invoke-static/range {v18 .. v18}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@d4
    move-result-object v18

    #@d5
    return-object v18

    #@d6
    .line 710
    :cond_7
    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@d8
    move-object/from16 v0, p1

    #@da
    move-object/from16 v1, v18

    #@dc
    if-ne v0, v1, :cond_8

    #@de
    .line 711
    invoke-virtual/range {p3 .. p3}, Lcom/android/dex/EncodedValueReader;->readInt()I

    #@e1
    move-result v18

    #@e2
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e5
    move-result-object v18

    #@e6
    return-object v18

    #@e7
    .line 712
    :cond_8
    sget-object v18, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@e9
    move-object/from16 v0, p1

    #@eb
    move-object/from16 v1, v18

    #@ed
    if-ne v0, v1, :cond_9

    #@ef
    .line 713
    invoke-virtual/range {p3 .. p3}, Lcom/android/dex/EncodedValueReader;->readLong()J

    #@f2
    move-result-wide v18

    #@f3
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@f6
    move-result-object v18

    #@f7
    return-object v18

    #@f8
    .line 714
    :cond_9
    sget-object v18, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@fa
    move-object/from16 v0, p1

    #@fc
    move-object/from16 v1, v18

    #@fe
    if-ne v0, v1, :cond_a

    #@100
    .line 715
    invoke-virtual/range {p3 .. p3}, Lcom/android/dex/EncodedValueReader;->readFloat()F

    #@103
    move-result v18

    #@104
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@107
    move-result-object v18

    #@108
    return-object v18

    #@109
    .line 716
    :cond_a
    sget-object v18, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@10b
    move-object/from16 v0, p1

    #@10d
    move-object/from16 v1, v18

    #@10f
    if-ne v0, v1, :cond_b

    #@111
    .line 717
    invoke-virtual/range {p3 .. p3}, Lcom/android/dex/EncodedValueReader;->readDouble()D

    #@114
    move-result-wide v18

    #@115
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@118
    move-result-object v18

    #@119
    return-object v18

    #@11a
    .line 718
    :cond_b
    sget-object v18, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@11c
    move-object/from16 v0, p1

    #@11e
    move-object/from16 v1, v18

    #@120
    if-ne v0, v1, :cond_c

    #@122
    .line 719
    invoke-virtual/range {p3 .. p3}, Lcom/android/dex/EncodedValueReader;->readChar()C

    #@125
    move-result v18

    #@126
    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@129
    move-result-object v18

    #@12a
    return-object v18

    #@12b
    .line 720
    :cond_c
    sget-object v18, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@12d
    move-object/from16 v0, p1

    #@12f
    move-object/from16 v1, v18

    #@131
    if-ne v0, v1, :cond_d

    #@133
    .line 721
    invoke-virtual/range {p3 .. p3}, Lcom/android/dex/EncodedValueReader;->readBoolean()Z

    #@136
    move-result v18

    #@137
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@13a
    move-result-object v18

    #@13b
    return-object v18

    #@13c
    .line 724
    :cond_d
    new-instance v18, Ljava/lang/AssertionError;

    #@13e
    new-instance v19, Ljava/lang/StringBuilder;

    #@140
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@143
    const-string/jumbo v20, "Unexpected annotation value type: "

    #@146
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v19

    #@14a
    move-object/from16 v0, v19

    #@14c
    move-object/from16 v1, p1

    #@14e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v19

    #@152
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@155
    move-result-object v19

    #@156
    invoke-direct/range {v18 .. v19}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@159
    throw v18
.end method

.method private static getAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Lcom/android/dex/Annotation;
    .locals 14
    .param p0, "element"    # Ljava/lang/reflect/AnnotatedElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/android/dex/Annotation;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v13, 0x0

    #@1
    .line 185
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getAnnotationSetOffset(Ljava/lang/reflect/AnnotatedElement;)I

    #@4
    move-result v3

    #@5
    .line 186
    .local v3, "annotationSetOffset":I
    if-nez v3, :cond_0

    #@7
    .line 187
    return-object v13

    #@8
    .line 190
    :cond_0
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getDexClass(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;

    #@b
    move-result-object v7

    #@c
    .line 191
    .local v7, "dexClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@f
    move-result-object v6

    #@10
    .line 192
    .local v6, "dex":Lcom/android/dex/Dex;
    invoke-virtual {v6, v3}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    #@13
    move-result-object v9

    #@14
    .line 193
    .local v9, "setIn":Lcom/android/dex/Dex$Section;
    invoke-static {p1}, Llibcore/reflect/InternalNames;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 194
    .local v1, "annotationInternalName":Ljava/lang/String;
    const/4 v8, 0x0

    #@19
    .local v8, "i":I
    invoke-virtual {v9}, Lcom/android/dex/Dex$Section;->readInt()I

    #@1c
    move-result v10

    #@1d
    .local v10, "size":I
    :goto_0
    if-ge v8, v10, :cond_2

    #@1f
    .line 195
    invoke-virtual {v9}, Lcom/android/dex/Dex$Section;->readInt()I

    #@22
    move-result v2

    #@23
    .line 196
    .local v2, "annotationOffset":I
    invoke-virtual {v6, v2}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    #@26
    move-result-object v0

    #@27
    .line 200
    .local v0, "annotationIn":Lcom/android/dex/Dex$Section;
    invoke-virtual {v0}, Lcom/android/dex/Dex$Section;->readAnnotation()Lcom/android/dex/Annotation;

    #@2a
    move-result-object v4

    #@2b
    .line 201
    .local v4, "candidate":Lcom/android/dex/Annotation;
    invoke-virtual {v6}, Lcom/android/dex/Dex;->typeNames()Ljava/util/List;

    #@2e
    move-result-object v11

    #@2f
    invoke-virtual {v4}, Lcom/android/dex/Annotation;->getTypeIndex()I

    #@32
    move-result v12

    #@33
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v5

    #@37
    check-cast v5, Ljava/lang/String;

    #@39
    .line 202
    .local v5, "candidateInternalName":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v11

    #@3d
    if-eqz v11, :cond_1

    #@3f
    .line 203
    return-object v4

    #@40
    .line 194
    :cond_1
    add-int/lit8 v8, v8, 0x1

    #@42
    goto :goto_0

    #@43
    .line 207
    .end local v0    # "annotationIn":Lcom/android/dex/Dex$Section;
    .end local v2    # "annotationOffset":I
    .end local v4    # "candidate":Lcom/android/dex/Annotation;
    .end local v5    # "candidateInternalName":Ljava/lang/String;
    :cond_2
    return-object v13
.end method

.method public static getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    const/4 v3, 0x0

    #@1
    .line 68
    if-nez p1, :cond_0

    #@3
    .line 69
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v3, "annotationType == null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 72
    :cond_0
    invoke-static {p0, p1}, Llibcore/reflect/AnnotationAccess;->getDeclaredAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@f
    move-result-object v0

    #@10
    .line 73
    .local v0, "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    if-eqz v0, :cond_1

    #@12
    .line 74
    return-object v0

    #@13
    .line 77
    :cond_1
    invoke-static {p1}, Llibcore/reflect/AnnotationAccess;->isInherited(Ljava/lang/Class;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_3

    #@19
    .line 78
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_3

    #@1f
    .line 79
    invoke-static {v1, p1}, Llibcore/reflect/AnnotationAccess;->getDeclaredAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@22
    move-result-object v0

    #@23
    .line 80
    if-eqz v0, :cond_2

    #@25
    .line 81
    return-object v0

    #@26
    .line 78
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@29
    move-result-object v1

    #@2a
    goto :goto_0

    #@2b
    .line 86
    .end local v1    # "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    return-object v3
.end method

.method private static getAnnotationClass(Ljava/lang/Class;Lcom/android/dex/Dex;I)Ljava/lang/Class;
    .locals 5
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "typeIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/android/dex/Dex;",
            "I)",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 584
    .local p0, "context":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    .line 585
    .local v1, "result":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isAnnotation()Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 586
    new-instance v2, Ljava/lang/IncompatibleClassChangeError;

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "Expected annotation: "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-direct {v2, v3}, Ljava/lang/IncompatibleClassChangeError;-><init>(Ljava/lang/String;)V

    #@27
    throw v2
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 589
    .end local v1    # "result":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :catch_0
    move-exception v0

    #@29
    .line 590
    .local v0, "ncdfe":Ljava/lang/NoClassDefFoundError;
    const/4 v2, 0x0

    #@2a
    return-object v2

    #@2b
    .line 588
    .end local v0    # "ncdfe":Ljava/lang/NoClassDefFoundError;
    .restart local v1    # "result":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_0
    return-object v1
.end method

.method private static getAnnotationReader(Lcom/android/dex/Dex;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;I)Lcom/android/dex/EncodedValueReader;
    .locals 15
    .param p0, "dex"    # Lcom/android/dex/Dex;
    .param p1, "element"    # Ljava/lang/reflect/AnnotatedElement;
    .param p2, "annotationName"    # Ljava/lang/String;
    .param p3, "expectedFieldCount"    # I

    #@0
    .prologue
    .line 529
    invoke-static/range {p1 .. p1}, Llibcore/reflect/AnnotationAccess;->getAnnotationSetOffset(Ljava/lang/reflect/AnnotatedElement;)I

    #@3
    move-result v4

    #@4
    .line 530
    .local v4, "annotationSetOffset":I
    if-nez v4, :cond_0

    #@6
    .line 531
    const/4 v13, 0x0

    #@7
    return-object v13

    #@8
    .line 534
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    #@b
    move-result-object v11

    #@c
    .line 535
    .local v11, "setIn":Lcom/android/dex/Dex$Section;
    const/4 v1, 0x0

    #@d
    .line 538
    .local v1, "annotation":Lcom/android/dex/Annotation;
    const/4 v8, 0x0

    #@e
    .local v8, "i":I
    invoke-virtual {v11}, Lcom/android/dex/Dex$Section;->readInt()I

    #@11
    move-result v12

    #@12
    .local v12, "size":I
    :goto_0
    if-ge v8, v12, :cond_1

    #@14
    .line 539
    invoke-virtual {v11}, Lcom/android/dex/Dex$Section;->readInt()I

    #@17
    move-result v3

    #@18
    .line 540
    .local v3, "annotationOffset":I
    invoke-virtual {p0, v3}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    #@1b
    move-result-object v2

    #@1c
    .line 541
    .local v2, "annotationIn":Lcom/android/dex/Dex$Section;
    invoke-virtual {v2}, Lcom/android/dex/Dex$Section;->readAnnotation()Lcom/android/dex/Annotation;

    #@1f
    move-result-object v5

    #@20
    .line 542
    .local v5, "candidate":Lcom/android/dex/Annotation;
    invoke-virtual {p0}, Lcom/android/dex/Dex;->typeNames()Ljava/util/List;

    #@23
    move-result-object v13

    #@24
    invoke-virtual {v5}, Lcom/android/dex/Annotation;->getTypeIndex()I

    #@27
    move-result v14

    #@28
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v6

    #@2c
    check-cast v6, Ljava/lang/String;

    #@2e
    .line 543
    .local v6, "candidateAnnotationName":Ljava/lang/String;
    move-object/from16 v0, p2

    #@30
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v13

    #@34
    if-eqz v13, :cond_2

    #@36
    .line 544
    move-object v1, v5

    #@37
    .line 548
    .end local v1    # "annotation":Lcom/android/dex/Annotation;
    .end local v2    # "annotationIn":Lcom/android/dex/Dex$Section;
    .end local v3    # "annotationOffset":I
    .end local v5    # "candidate":Lcom/android/dex/Annotation;
    .end local v6    # "candidateAnnotationName":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_3

    #@39
    .line 549
    const/4 v13, 0x0

    #@3a
    return-object v13

    #@3b
    .line 538
    .restart local v1    # "annotation":Lcom/android/dex/Annotation;
    .restart local v2    # "annotationIn":Lcom/android/dex/Dex$Section;
    .restart local v3    # "annotationOffset":I
    .restart local v5    # "candidate":Lcom/android/dex/Annotation;
    .restart local v6    # "candidateAnnotationName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 552
    .end local v1    # "annotation":Lcom/android/dex/Annotation;
    .end local v2    # "annotationIn":Lcom/android/dex/Dex$Section;
    .end local v3    # "annotationOffset":I
    .end local v5    # "candidate":Lcom/android/dex/Annotation;
    .end local v6    # "candidateAnnotationName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Lcom/android/dex/Annotation;->getReader()Lcom/android/dex/EncodedValueReader;

    #@41
    move-result-object v9

    #@42
    .line 553
    .local v9, "reader":Lcom/android/dex/EncodedValueReader;
    invoke-virtual {v9}, Lcom/android/dex/EncodedValueReader;->readAnnotation()I

    #@45
    move-result v7

    #@46
    .line 554
    .local v7, "fieldCount":I
    invoke-virtual {p0}, Lcom/android/dex/Dex;->typeNames()Ljava/util/List;

    #@49
    move-result-object v13

    #@4a
    invoke-virtual {v9}, Lcom/android/dex/EncodedValueReader;->getAnnotationType()I

    #@4d
    move-result v14

    #@4e
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@51
    move-result-object v10

    #@52
    check-cast v10, Ljava/lang/String;

    #@54
    .line 555
    .local v10, "readerAnnotationName":Ljava/lang/String;
    move-object/from16 v0, p2

    #@56
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v13

    #@5a
    if-nez v13, :cond_4

    #@5c
    .line 556
    new-instance v13, Ljava/lang/AssertionError;

    #@5e
    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    #@61
    throw v13

    #@62
    .line 558
    :cond_4
    move/from16 v0, p3

    #@64
    if-eq v7, v0, :cond_5

    #@66
    .line 559
    const/4 v13, 0x0

    #@67
    return-object v13

    #@68
    .line 562
    :cond_5
    return-object v9
.end method

.method private static getAnnotationSetOffset(Ljava/lang/reflect/AnnotatedElement;)I
    .locals 14
    .param p0, "element"    # Ljava/lang/reflect/AnnotatedElement;

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 214
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getDexClass(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;

    #@4
    move-result-object v4

    #@5
    .line 215
    .local v4, "dexClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getDexAnnotationDirectoryOffset()I

    #@8
    move-result v6

    #@9
    .line 216
    .local v6, "directoryOffset":I
    if-nez v6, :cond_0

    #@b
    .line 217
    return v13

    #@c
    .line 220
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@f
    move-result-object v12

    #@10
    invoke-virtual {v12, v6}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    #@13
    move-result-object v5

    #@14
    .line 221
    .local v5, "directoryIn":Lcom/android/dex/Dex$Section;
    invoke-virtual {v5}, Lcom/android/dex/Dex$Section;->readInt()I

    #@17
    move-result v3

    #@18
    .line 222
    .local v3, "classSetOffset":I
    instance-of v12, p0, Ljava/lang/Class;

    #@1a
    if-eqz v12, :cond_1

    #@1c
    .line 223
    return v3

    #@1d
    .line 226
    :cond_1
    invoke-virtual {v5}, Lcom/android/dex/Dex$Section;->readInt()I

    #@20
    move-result v8

    #@21
    .line 227
    .local v8, "fieldsSize":I
    invoke-virtual {v5}, Lcom/android/dex/Dex$Section;->readInt()I

    #@24
    move-result v11

    #@25
    .line 228
    .local v11, "methodsSize":I
    invoke-virtual {v5}, Lcom/android/dex/Dex$Section;->readInt()I

    #@28
    .line 230
    instance-of v12, p0, Ljava/lang/reflect/Field;

    #@2a
    if-eqz v12, :cond_4

    #@2c
    .line 231
    check-cast p0, Ljava/lang/reflect/Field;

    #@2e
    .end local p0    # "element":Ljava/lang/reflect/AnnotatedElement;
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDexFieldIndex()I

    #@31
    move-result v7

    #@32
    .line 232
    .local v7, "fieldIndex":I
    const/4 v9, 0x0

    #@33
    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_3

    #@35
    .line 233
    invoke-virtual {v5}, Lcom/android/dex/Dex$Section;->readInt()I

    #@38
    move-result v1

    #@39
    .line 234
    .local v1, "candidateFieldIndex":I
    invoke-virtual {v5}, Lcom/android/dex/Dex$Section;->readInt()I

    #@3c
    move-result v0

    #@3d
    .line 235
    .local v0, "annotationSetOffset":I
    if-ne v1, v7, :cond_2

    #@3f
    .line 236
    return v0

    #@40
    .line 232
    :cond_2
    add-int/lit8 v9, v9, 0x1

    #@42
    goto :goto_0

    #@43
    .line 240
    .end local v0    # "annotationSetOffset":I
    .end local v1    # "candidateFieldIndex":I
    :cond_3
    return v13

    #@44
    .line 244
    .end local v7    # "fieldIndex":I
    .end local v9    # "i":I
    .restart local p0    # "element":Ljava/lang/reflect/AnnotatedElement;
    :cond_4
    mul-int/lit8 v12, v8, 0x8

    #@46
    invoke-virtual {v5, v12}, Lcom/android/dex/Dex$Section;->skip(I)V

    #@49
    .line 246
    instance-of v12, p0, Ljava/lang/reflect/Method;

    #@4b
    if-eqz v12, :cond_5

    #@4d
    check-cast p0, Ljava/lang/reflect/Method;

    #@4f
    .end local p0    # "element":Ljava/lang/reflect/AnnotatedElement;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDexMethodIndex()I

    #@52
    move-result v10

    #@53
    .line 248
    .local v10, "methodIndex":I
    :goto_1
    const/4 v9, 0x0

    #@54
    .restart local v9    # "i":I
    :goto_2
    if-ge v9, v11, :cond_7

    #@56
    .line 249
    invoke-virtual {v5}, Lcom/android/dex/Dex$Section;->readInt()I

    #@59
    move-result v2

    #@5a
    .line 250
    .local v2, "candidateMethodIndex":I
    invoke-virtual {v5}, Lcom/android/dex/Dex$Section;->readInt()I

    #@5d
    move-result v0

    #@5e
    .line 251
    .restart local v0    # "annotationSetOffset":I
    if-ne v2, v10, :cond_6

    #@60
    .line 252
    return v0

    #@61
    .line 247
    .end local v0    # "annotationSetOffset":I
    .end local v2    # "candidateMethodIndex":I
    .end local v9    # "i":I
    .end local v10    # "methodIndex":I
    .restart local p0    # "element":Ljava/lang/reflect/AnnotatedElement;
    :cond_5
    check-cast p0, Ljava/lang/reflect/Constructor;

    #@63
    .end local p0    # "element":Ljava/lang/reflect/AnnotatedElement;
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDexMethodIndex()I

    #@66
    move-result v10

    #@67
    .restart local v10    # "methodIndex":I
    goto :goto_1

    #@68
    .line 248
    .restart local v0    # "annotationSetOffset":I
    .restart local v2    # "candidateMethodIndex":I
    .restart local v9    # "i":I
    :cond_6
    add-int/lit8 v9, v9, 0x1

    #@6a
    goto :goto_2

    #@6b
    .line 256
    .end local v0    # "annotationSetOffset":I
    .end local v2    # "candidateMethodIndex":I
    :cond_7
    return v13
.end method

.method public static getAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/annotation/Annotation;"
        }
    .end annotation

    #@0
    .prologue
    .line 110
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Ljava/util/HashMap;

    #@2
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 111
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/lang/annotation/Annotation;>;"
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getDeclaredAnnotations(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/List;

    #@8
    move-result-object v6

    #@9
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v3

    #@d
    .local v3, "declaredAnnotation$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v6

    #@11
    if-eqz v6, :cond_0

    #@13
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Ljava/lang/annotation/Annotation;

    #@19
    .line 112
    .local v2, "declaredAnnotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    goto :goto_0

    #@21
    .line 114
    .end local v2    # "declaredAnnotation":Ljava/lang/annotation/Annotation;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@24
    move-result-object v5

    #@25
    .local v5, "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v5, :cond_3

    #@27
    .line 115
    invoke-static {v5}, Llibcore/reflect/AnnotationAccess;->getDeclaredAnnotations(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/List;

    #@2a
    move-result-object v6

    #@2b
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v3

    #@2f
    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_2

    #@35
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v2

    #@39
    check-cast v2, Ljava/lang/annotation/Annotation;

    #@3b
    .line 116
    .restart local v2    # "declaredAnnotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    #@3e
    move-result-object v0

    #@3f
    .line 117
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@42
    move-result v6

    #@43
    if-nez v6, :cond_1

    #@45
    invoke-static {v0}, Llibcore/reflect/AnnotationAccess;->isInherited(Ljava/lang/Class;)Z

    #@48
    move-result v6

    #@49
    if-eqz v6, :cond_1

    #@4b
    .line 118
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    goto :goto_2

    #@4f
    .line 114
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v2    # "declaredAnnotation":Ljava/lang/annotation/Annotation;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@52
    move-result-object v5

    #@53
    goto :goto_1

    #@54
    .line 124
    :cond_3
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@57
    move-result-object v1

    #@58
    .line 125
    .local v1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/annotation/Annotation;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    #@5b
    move-result v6

    #@5c
    new-array v6, v6, [Ljava/lang/annotation/Annotation;

    #@5e
    invoke-interface {v1, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@61
    move-result-object v6

    #@62
    check-cast v6, [Ljava/lang/annotation/Annotation;

    #@64
    return-object v6
.end method

.method public static getDeclaredAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .param p0, "element"    # Ljava/lang/reflect/AnnotatedElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    const/4 v1, 0x0

    #@1
    .line 169
    invoke-static {p0, p1}, Llibcore/reflect/AnnotationAccess;->getAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Lcom/android/dex/Annotation;

    #@4
    move-result-object v0

    #@5
    .line 170
    .local v0, "a":Lcom/android/dex/Annotation;
    if-eqz v0, :cond_0

    #@7
    .line 171
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getDexClass(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-static {v1, p1, v0}, Llibcore/reflect/AnnotationAccess;->toAnnotationInstance(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/dex/Annotation;)Ljava/lang/annotation/Annotation;

    #@e
    move-result-object v1

    #@f
    .line 170
    :cond_0
    return-object v1
.end method

.method public static getDeclaredAnnotations(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/List;
    .locals 2
    .param p0, "element"    # Ljava/lang/reflect/AnnotatedElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 160
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getAnnotationSetOffset(Ljava/lang/reflect/AnnotatedElement;)I

    #@3
    move-result v0

    #@4
    .line 161
    .local v0, "offset":I
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getDexClass(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    invoke-static {v1, v0}, Llibcore/reflect/AnnotationAccess;->annotationSetToAnnotations(Ljava/lang/Class;I)Ljava/util/List;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public static getDefaultValue(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 11
    .param p0, "method"    # Ljava/lang/reflect/Method;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 341
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    #@4
    move-result-object v0

    #@5
    .line 344
    .local v0, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@8
    move-result-object v2

    #@9
    .line 346
    .local v2, "dex":Lcom/android/dex/Dex;
    const-string/jumbo v8, "Ldalvik/annotation/AnnotationDefault;"

    #@c
    .line 345
    invoke-static {v2, v0, v8}, Llibcore/reflect/AnnotationAccess;->getOnlyAnnotationValue(Lcom/android/dex/Dex;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;)Lcom/android/dex/EncodedValueReader;

    #@f
    move-result-object v6

    #@10
    .line 347
    .local v6, "reader":Lcom/android/dex/EncodedValueReader;
    if-nez v6, :cond_0

    #@12
    .line 348
    return-object v10

    #@13
    .line 351
    :cond_0
    invoke-virtual {v6}, Lcom/android/dex/EncodedValueReader;->readAnnotation()I

    #@16
    move-result v3

    #@17
    .line 352
    .local v3, "fieldCount":I
    invoke-virtual {v6}, Lcom/android/dex/EncodedValueReader;->getAnnotationType()I

    #@1a
    move-result v8

    #@1b
    invoke-virtual {v0}, Ljava/lang/Class;->getDexTypeIndex()I

    #@1e
    move-result v9

    #@1f
    if-eq v8, v9, :cond_1

    #@21
    .line 353
    new-instance v8, Ljava/lang/AssertionError;

    #@23
    const-string/jumbo v9, "annotation value type != annotation class"

    #@26
    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@29
    throw v8

    #@2a
    .line 356
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@2d
    move-result-object v8

    #@2e
    invoke-virtual {v2, v8}, Lcom/android/dex/Dex;->findStringIndex(Ljava/lang/String;)I

    #@31
    move-result v5

    #@32
    .line 357
    .local v5, "methodNameIndex":I
    const/4 v4, 0x0

    #@33
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    #@35
    .line 358
    invoke-virtual {v6}, Lcom/android/dex/EncodedValueReader;->readAnnotationName()I

    #@38
    move-result v1

    #@39
    .line 359
    .local v1, "candidateNameIndex":I
    if-ne v1, v5, :cond_2

    #@3b
    .line 360
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@3e
    move-result-object v7

    #@3f
    .line 361
    .local v7, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, v7, v2, v6}, Llibcore/reflect/AnnotationAccess;->decodeValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/dex/Dex;Lcom/android/dex/EncodedValueReader;)Ljava/lang/Object;

    #@42
    move-result-object v8

    #@43
    return-object v8

    #@44
    .line 363
    .end local v7    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-virtual {v6}, Lcom/android/dex/EncodedValueReader;->skipValue()V

    #@47
    .line 357
    add-int/lit8 v4, v4, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 367
    .end local v1    # "candidateNameIndex":I
    :cond_3
    return-object v10
.end method

.method private static getDexClass(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;
    .locals 1
    .param p0, "element"    # Ljava/lang/reflect/AnnotatedElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 265
    instance-of v0, p0, Ljava/lang/Class;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 266
    check-cast p0, Ljava/lang/Class;

    #@6
    .line 265
    .end local p0    # "element":Ljava/lang/reflect/AnnotatedElement;
    :goto_0
    return-object p0

    #@7
    .line 267
    .restart local p0    # "element":Ljava/lang/reflect/AnnotatedElement;
    :cond_0
    check-cast p0, Ljava/lang/reflect/Member;

    #@9
    .end local p0    # "element":Ljava/lang/reflect/AnnotatedElement;
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    #@c
    move-result-object p0

    #@d
    goto :goto_0
.end method

.method public static getEnclosingClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    #@1
    .line 381
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@4
    move-result-object v0

    #@5
    .line 383
    .local v0, "dex":Lcom/android/dex/Dex;
    const-string/jumbo v2, "Ldalvik/annotation/EnclosingClass;"

    #@8
    .line 382
    invoke-static {v0, p0, v2}, Llibcore/reflect/AnnotationAccess;->getOnlyAnnotationValue(Lcom/android/dex/Dex;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;)Lcom/android/dex/EncodedValueReader;

    #@b
    move-result-object v1

    #@c
    .line 384
    .local v1, "reader":Lcom/android/dex/EncodedValueReader;
    if-nez v1, :cond_0

    #@e
    .line 385
    return-object v3

    #@f
    .line 387
    :cond_0
    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->readType()I

    #@12
    move-result v2

    #@13
    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    #@16
    move-result-object v2

    #@17
    return-object v2
.end method

.method public static getEnclosingMethodOrConstructor(Ljava/lang/Class;)Ljava/lang/reflect/AccessibleObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/AccessibleObject;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    #@1
    .line 399
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@4
    move-result-object v0

    #@5
    .line 401
    .local v0, "dex":Lcom/android/dex/Dex;
    const-string/jumbo v2, "Ldalvik/annotation/EnclosingMethod;"

    #@8
    .line 400
    invoke-static {v0, p0, v2}, Llibcore/reflect/AnnotationAccess;->getOnlyAnnotationValue(Lcom/android/dex/Dex;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;)Lcom/android/dex/EncodedValueReader;

    #@b
    move-result-object v1

    #@c
    .line 402
    .local v1, "reader":Lcom/android/dex/EncodedValueReader;
    if-nez v1, :cond_0

    #@e
    .line 403
    return-object v3

    #@f
    .line 405
    :cond_0
    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->readMethod()I

    #@12
    move-result v2

    #@13
    invoke-static {p0, v0, v2}, Llibcore/reflect/AnnotationAccess;->indexToMethod(Ljava/lang/Class;Lcom/android/dex/Dex;I)Ljava/lang/reflect/AccessibleObject;

    #@16
    move-result-object v2

    #@17
    return-object v2
.end method

.method public static getExceptions(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/Class;
    .locals 4
    .param p0, "element"    # Ljava/lang/reflect/AnnotatedElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 456
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getDexClass(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    .line 457
    .local v1, "dexClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@7
    move-result-object v0

    #@8
    .line 459
    .local v0, "dex":Lcom/android/dex/Dex;
    const-string/jumbo v3, "Ldalvik/annotation/Throws;"

    #@b
    .line 458
    invoke-static {v0, p0, v3}, Llibcore/reflect/AnnotationAccess;->getOnlyAnnotationValue(Lcom/android/dex/Dex;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;)Lcom/android/dex/EncodedValueReader;

    #@e
    move-result-object v2

    #@f
    .line 460
    .local v2, "reader":Lcom/android/dex/EncodedValueReader;
    if-nez v2, :cond_0

    #@11
    .line 461
    sget-object v3, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    #@13
    return-object v3

    #@14
    .line 463
    :cond_0
    const-class v3, [Ljava/lang/Class;

    #@16
    invoke-static {v1, v3, v0, v2}, Llibcore/reflect/AnnotationAccess;->decodeValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/dex/Dex;Lcom/android/dex/EncodedValueReader;)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, [Ljava/lang/Class;

    #@1c
    return-object v3
.end method

.method public static getInnerClassFlags(Ljava/lang/Class;I)I
    .locals 4
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)I"
        }
    .end annotation

    #@0
    .prologue
    .line 471
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@3
    move-result-object v0

    #@4
    .line 473
    .local v0, "dex":Lcom/android/dex/Dex;
    const-string/jumbo v2, "Ldalvik/annotation/InnerClass;"

    #@7
    const/4 v3, 0x2

    #@8
    .line 472
    invoke-static {v0, p0, v2, v3}, Llibcore/reflect/AnnotationAccess;->getAnnotationReader(Lcom/android/dex/Dex;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;I)Lcom/android/dex/EncodedValueReader;

    #@b
    move-result-object v1

    #@c
    .line 474
    .local v1, "reader":Lcom/android/dex/EncodedValueReader;
    if-nez v1, :cond_0

    #@e
    .line 475
    return p1

    #@f
    .line 477
    :cond_0
    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->readAnnotationName()I

    #@12
    .line 478
    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->readInt()I

    #@15
    move-result v2

    #@16
    return v2
.end method

.method public static getInnerClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    #@1
    .line 486
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@4
    move-result-object v0

    #@5
    .line 488
    .local v0, "dex":Lcom/android/dex/Dex;
    const-string/jumbo v3, "Ldalvik/annotation/InnerClass;"

    #@8
    const/4 v4, 0x2

    #@9
    .line 487
    invoke-static {v0, p0, v3, v4}, Llibcore/reflect/AnnotationAccess;->getAnnotationReader(Lcom/android/dex/Dex;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;I)Lcom/android/dex/EncodedValueReader;

    #@c
    move-result-object v1

    #@d
    .line 489
    .local v1, "reader":Lcom/android/dex/EncodedValueReader;
    if-nez v1, :cond_0

    #@f
    .line 490
    return-object v2

    #@10
    .line 492
    :cond_0
    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->readAnnotationName()I

    #@13
    .line 493
    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->readInt()I

    #@16
    .line 494
    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->readAnnotationName()I

    #@19
    .line 495
    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->peek()I

    #@1c
    move-result v3

    #@1d
    const/16 v4, 0x1e

    #@1f
    if-ne v3, v4, :cond_1

    #@21
    :goto_0
    return-object v2

    #@22
    .line 497
    :cond_1
    const-class v2, Ljava/lang/String;

    #@24
    invoke-static {p0, v2, v0, v1}, Llibcore/reflect/AnnotationAccess;->decodeValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/dex/Dex;Lcom/android/dex/EncodedValueReader;)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Ljava/lang/String;

    #@2a
    goto :goto_0
.end method

.method public static getMemberClasses(Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 416
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@3
    move-result-object v0

    #@4
    .line 418
    .local v0, "dex":Lcom/android/dex/Dex;
    const-string/jumbo v2, "Ldalvik/annotation/MemberClasses;"

    #@7
    .line 417
    invoke-static {v0, p0, v2}, Llibcore/reflect/AnnotationAccess;->getOnlyAnnotationValue(Lcom/android/dex/Dex;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;)Lcom/android/dex/EncodedValueReader;

    #@a
    move-result-object v1

    #@b
    .line 419
    .local v1, "reader":Lcom/android/dex/EncodedValueReader;
    if-nez v1, :cond_0

    #@d
    .line 420
    sget-object v2, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    #@f
    return-object v2

    #@10
    .line 422
    :cond_0
    const-class v2, [Ljava/lang/Class;

    #@12
    invoke-static {p0, v2, v0, v1}, Llibcore/reflect/AnnotationAccess;->decodeValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/dex/Dex;Lcom/android/dex/EncodedValueReader;)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, [Ljava/lang/Class;

    #@18
    return-object v2
.end method

.method private static getOnlyAnnotationValue(Lcom/android/dex/Dex;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;)Lcom/android/dex/EncodedValueReader;
    .locals 3
    .param p0, "dex"    # Lcom/android/dex/Dex;
    .param p1, "element"    # Ljava/lang/reflect/AnnotatedElement;
    .param p2, "annotationName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 571
    const/4 v1, 0x1

    #@2
    invoke-static {p0, p1, p2, v1}, Llibcore/reflect/AnnotationAccess;->getAnnotationReader(Lcom/android/dex/Dex;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;I)Lcom/android/dex/EncodedValueReader;

    #@5
    move-result-object v0

    #@6
    .line 572
    .local v0, "reader":Lcom/android/dex/EncodedValueReader;
    if-nez v0, :cond_0

    #@8
    .line 573
    return-object v2

    #@9
    .line 575
    :cond_0
    invoke-virtual {v0}, Lcom/android/dex/EncodedValueReader;->readAnnotationName()I

    #@c
    .line 576
    return-object v0
.end method

.method public static getParameterAnnotations(Ljava/lang/Class;I)[[Ljava/lang/annotation/Annotation;
    .locals 26
    .param p1, "methodDexIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)[[",
            "Ljava/lang/annotation/Annotation;"
        }
    .end annotation

    #@0
    .prologue
    .line 275
    .local p0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@3
    move-result-object v6

    #@4
    .line 276
    .local v6, "dex":Lcom/android/dex/Dex;
    invoke-virtual {v6}, Lcom/android/dex/Dex;->methodIds()Ljava/util/List;

    #@7
    move-result-object v22

    #@8
    move-object/from16 v0, v22

    #@a
    move/from16 v1, p1

    #@c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v22

    #@10
    check-cast v22, Lcom/android/dex/MethodId;

    #@12
    invoke-virtual/range {v22 .. v22}, Lcom/android/dex/MethodId;->getProtoIndex()I

    #@15
    move-result v17

    #@16
    .line 277
    .local v17, "protoIndex":I
    invoke-virtual {v6}, Lcom/android/dex/Dex;->protoIds()Ljava/util/List;

    #@19
    move-result-object v22

    #@1a
    move-object/from16 v0, v22

    #@1c
    move/from16 v1, v17

    #@1e
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v16

    #@22
    check-cast v16, Lcom/android/dex/ProtoId;

    #@24
    .line 278
    .local v16, "proto":Lcom/android/dex/ProtoId;
    invoke-virtual/range {v16 .. v16}, Lcom/android/dex/ProtoId;->getParametersOffset()I

    #@27
    move-result v22

    #@28
    move/from16 v0, v22

    #@2a
    invoke-virtual {v6, v0}, Lcom/android/dex/Dex;->readTypeList(I)Lcom/android/dex/TypeList;

    #@2d
    move-result-object v14

    #@2e
    .line 279
    .local v14, "parametersList":Lcom/android/dex/TypeList;
    invoke-virtual {v14}, Lcom/android/dex/TypeList;->getTypes()[S

    #@31
    move-result-object v20

    #@32
    .line 280
    .local v20, "types":[S
    move-object/from16 v0, v20

    #@34
    array-length v0, v0

    #@35
    move/from16 v21, v0

    #@37
    .line 282
    .local v21, "typesCount":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDexAnnotationDirectoryOffset()I

    #@3a
    move-result v8

    #@3b
    .line 283
    .local v8, "directoryOffset":I
    if-nez v8, :cond_0

    #@3d
    .line 284
    const-class v22, Ljava/lang/annotation/Annotation;

    #@3f
    const/16 v23, 0x2

    #@41
    move/from16 v0, v23

    #@43
    new-array v0, v0, [I

    #@45
    move-object/from16 v23, v0

    #@47
    const/16 v24, 0x0

    #@49
    aput v21, v23, v24

    #@4b
    const/16 v24, 0x0

    #@4d
    const/16 v25, 0x1

    #@4f
    aput v24, v23, v25

    #@51
    invoke-static/range {v22 .. v23}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@54
    move-result-object v22

    #@55
    check-cast v22, [[Ljava/lang/annotation/Annotation;

    #@57
    return-object v22

    #@58
    .line 287
    :cond_0
    invoke-virtual {v6, v8}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    #@5b
    move-result-object v7

    #@5c
    .line 288
    .local v7, "directoryIn":Lcom/android/dex/Dex$Section;
    invoke-virtual {v7}, Lcom/android/dex/Dex$Section;->readInt()I

    #@5f
    .line 289
    invoke-virtual {v7}, Lcom/android/dex/Dex$Section;->readInt()I

    #@62
    move-result v9

    #@63
    .line 290
    .local v9, "fieldsSize":I
    invoke-virtual {v7}, Lcom/android/dex/Dex$Section;->readInt()I

    #@66
    move-result v11

    #@67
    .line 291
    .local v11, "methodsSize":I
    invoke-virtual {v7}, Lcom/android/dex/Dex$Section;->readInt()I

    #@6a
    move-result v15

    #@6b
    .line 293
    .local v15, "parametersSize":I
    const/4 v10, 0x0

    #@6c
    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_1

    #@6e
    .line 294
    invoke-virtual {v7}, Lcom/android/dex/Dex$Section;->readInt()I

    #@71
    .line 295
    invoke-virtual {v7}, Lcom/android/dex/Dex$Section;->readInt()I

    #@74
    .line 293
    add-int/lit8 v10, v10, 0x1

    #@76
    goto :goto_0

    #@77
    .line 298
    :cond_1
    const/4 v10, 0x0

    #@78
    :goto_1
    if-ge v10, v11, :cond_2

    #@7a
    .line 299
    invoke-virtual {v7}, Lcom/android/dex/Dex$Section;->readInt()I

    #@7d
    .line 300
    invoke-virtual {v7}, Lcom/android/dex/Dex$Section;->readInt()I

    #@80
    .line 298
    add-int/lit8 v10, v10, 0x1

    #@82
    goto :goto_1

    #@83
    .line 303
    :cond_2
    const/4 v10, 0x0

    #@84
    :goto_2
    if-ge v10, v15, :cond_5

    #@86
    .line 304
    invoke-virtual {v7}, Lcom/android/dex/Dex$Section;->readInt()I

    #@89
    move-result v5

    #@8a
    .line 305
    .local v5, "candidateMethodDexIndex":I
    invoke-virtual {v7}, Lcom/android/dex/Dex$Section;->readInt()I

    #@8d
    move-result v3

    #@8e
    .line 306
    .local v3, "annotationSetRefListOffset":I
    move/from16 v0, p1

    #@90
    if-eq v5, v0, :cond_3

    #@92
    .line 303
    add-int/lit8 v10, v10, 0x1

    #@94
    goto :goto_2

    #@95
    .line 310
    :cond_3
    invoke-virtual {v6, v3}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    #@98
    move-result-object v18

    #@99
    .line 311
    .local v18, "refList":Lcom/android/dex/Dex$Section;
    invoke-virtual/range {v18 .. v18}, Lcom/android/dex/Dex$Section;->readInt()I

    #@9c
    move-result v13

    #@9d
    .line 312
    .local v13, "parameterCount":I
    new-array v0, v13, [[Ljava/lang/annotation/Annotation;

    #@9f
    move-object/from16 v19, v0

    #@a1
    .line 313
    .local v19, "result":[[Ljava/lang/annotation/Annotation;
    const/4 v12, 0x0

    #@a2
    .local v12, "p":I
    :goto_3
    if-ge v12, v13, :cond_4

    #@a4
    .line 314
    invoke-virtual/range {v18 .. v18}, Lcom/android/dex/Dex$Section;->readInt()I

    #@a7
    move-result v2

    #@a8
    .line 316
    .local v2, "annotationSetOffset":I
    move-object/from16 v0, p0

    #@aa
    invoke-static {v0, v2}, Llibcore/reflect/AnnotationAccess;->annotationSetToAnnotations(Ljava/lang/Class;I)Ljava/util/List;

    #@ad
    move-result-object v4

    #@ae
    .line 317
    .local v4, "annotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@b1
    move-result v22

    #@b2
    move/from16 v0, v22

    #@b4
    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    #@b6
    move-object/from16 v22, v0

    #@b8
    move-object/from16 v0, v22

    #@ba
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@bd
    move-result-object v22

    #@be
    check-cast v22, [Ljava/lang/annotation/Annotation;

    #@c0
    aput-object v22, v19, v12

    #@c2
    .line 313
    add-int/lit8 v12, v12, 0x1

    #@c4
    goto :goto_3

    #@c5
    .line 319
    .end local v2    # "annotationSetOffset":I
    .end local v4    # "annotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    :cond_4
    return-object v19

    #@c6
    .line 322
    .end local v3    # "annotationSetRefListOffset":I
    .end local v5    # "candidateMethodDexIndex":I
    .end local v12    # "p":I
    .end local v13    # "parameterCount":I
    .end local v18    # "refList":Lcom/android/dex/Dex$Section;
    .end local v19    # "result":[[Ljava/lang/annotation/Annotation;
    :cond_5
    const-class v22, Ljava/lang/annotation/Annotation;

    #@c8
    const/16 v23, 0x2

    #@ca
    move/from16 v0, v23

    #@cc
    new-array v0, v0, [I

    #@ce
    move-object/from16 v23, v0

    #@d0
    const/16 v24, 0x0

    #@d2
    aput v21, v23, v24

    #@d4
    const/16 v24, 0x0

    #@d6
    const/16 v25, 0x1

    #@d8
    aput v24, v23, v25

    #@da
    invoke-static/range {v22 .. v23}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@dd
    move-result-object v22

    #@de
    check-cast v22, [[Ljava/lang/annotation/Annotation;

    #@e0
    return-object v22
.end method

.method public static getSignature(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;
    .locals 8
    .param p0, "element"    # Ljava/lang/reflect/AnnotatedElement;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 433
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getDexClass(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;

    #@4
    move-result-object v2

    #@5
    .line 434
    .local v2, "dexClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@8
    move-result-object v1

    #@9
    .line 436
    .local v1, "dex":Lcom/android/dex/Dex;
    const-string/jumbo v6, "Ldalvik/annotation/Signature;"

    #@c
    .line 435
    invoke-static {v1, p0, v6}, Llibcore/reflect/AnnotationAccess;->getOnlyAnnotationValue(Lcom/android/dex/Dex;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;)Lcom/android/dex/EncodedValueReader;

    #@f
    move-result-object v3

    #@10
    .line 437
    .local v3, "reader":Lcom/android/dex/EncodedValueReader;
    if-nez v3, :cond_0

    #@12
    .line 438
    return-object v7

    #@13
    .line 440
    :cond_0
    const-class v6, [Ljava/lang/String;

    #@15
    invoke-static {v2, v6, v1, v3}, Llibcore/reflect/AnnotationAccess;->decodeValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/dex/Dex;Lcom/android/dex/EncodedValueReader;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, [Ljava/lang/String;

    #@1b
    .line 441
    .local v0, "array":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    .line 442
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    #@21
    array-length v7, v0

    #@22
    :goto_0
    if-ge v6, v7, :cond_1

    #@24
    aget-object v5, v0, v6

    #@26
    .line 443
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 442
    add-int/lit8 v6, v6, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 445
    .end local v5    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    return-object v6
.end method

.method private static indexToMethod(Ljava/lang/Class;Lcom/android/dex/Dex;I)Ljava/lang/reflect/AccessibleObject;
    .locals 9
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "methodIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/android/dex/Dex;",
            "I)",
            "Ljava/lang/reflect/AccessibleObject;"
        }
    .end annotation

    #@0
    .prologue
    .line 596
    .local p0, "context":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p2}, Lcom/android/dex/Dex;->declaringClassIndexFromMethodIndex(I)I

    #@3
    move-result v6

    #@4
    invoke-virtual {p0, p1, v6}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    .line 597
    .local v0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p2}, Lcom/android/dex/Dex;->nameIndexFromMethodIndex(I)I

    #@b
    move-result v6

    #@c
    invoke-virtual {p0, p1, v6}, Ljava/lang/Class;->getDexCacheString(Lcom/android/dex/Dex;I)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    .line 598
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1, p2}, Lcom/android/dex/Dex;->parameterTypeIndicesFromMethodIndex(I)[S

    #@13
    move-result-object v5

    #@14
    .line 599
    .local v5, "types":[S
    array-length v6, v5

    #@15
    new-array v4, v6, [Ljava/lang/Class;

    #@17
    .line 600
    .local v4, "parametersArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    #@18
    .local v2, "i":I
    :goto_0
    array-length v6, v5

    #@19
    if-ge v2, v6, :cond_0

    #@1b
    .line 601
    aget-short v6, v5, v2

    #@1d
    invoke-virtual {p0, p1, v6}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    #@20
    move-result-object v6

    #@21
    aput-object v6, v4, v2

    #@23
    .line 600
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 604
    :cond_0
    :try_start_0
    const-string/jumbo v6, "<init>"

    #@29
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v6

    #@2d
    if-eqz v6, :cond_1

    #@2f
    .line 605
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@32
    move-result-object v6

    #@33
    .line 604
    :goto_1
    return-object v6

    #@34
    .line 606
    :cond_1
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    move-result-object v6

    #@38
    goto :goto_1

    #@39
    .line 607
    :catch_0
    move-exception v1

    #@3a
    .line 608
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v6, Ljava/lang/IncompatibleClassChangeError;

    #@3c
    new-instance v7, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v8, "Couldn\'t find "

    #@44
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v7

    #@48
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4b
    move-result-object v8

    #@4c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v7

    #@50
    .line 609
    const-string/jumbo v8, "."

    #@53
    .line 608
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v7

    #@57
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v7

    #@5b
    .line 609
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@5e
    move-result-object v8

    #@5f
    .line 608
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v7

    #@63
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v7

    #@67
    invoke-direct {v6, v7}, Ljava/lang/IncompatibleClassChangeError;-><init>(Ljava/lang/String;)V

    #@6a
    throw v6
.end method

.method public static isAnnotationPresent(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v2, 0x1

    #@1
    .line 133
    if-nez p1, :cond_0

    #@3
    .line 134
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "annotationType == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 137
    :cond_0
    invoke-static {p0, p1}, Llibcore/reflect/AnnotationAccess;->isDeclaredAnnotationPresent(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 138
    return v2

    #@13
    .line 141
    :cond_1
    invoke-static {p1}, Llibcore/reflect/AnnotationAccess;->isInherited(Ljava/lang/Class;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_3

    #@19
    .line 142
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@1c
    move-result-object v0

    #@1d
    .local v0, "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_3

    #@1f
    .line 143
    invoke-static {v0, p1}, Llibcore/reflect/AnnotationAccess;->isDeclaredAnnotationPresent(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 144
    return v2

    #@26
    .line 142
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@29
    move-result-object v0

    #@2a
    goto :goto_0

    #@2b
    .line 149
    .end local v0    # "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const/4 v1, 0x0

    #@2c
    return v1
.end method

.method public static isAnonymousClass(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    #@1
    .line 505
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@4
    move-result-object v0

    #@5
    .line 507
    .local v0, "dex":Lcom/android/dex/Dex;
    const-string/jumbo v3, "Ldalvik/annotation/InnerClass;"

    #@8
    const/4 v4, 0x2

    #@9
    .line 506
    invoke-static {v0, p0, v3, v4}, Llibcore/reflect/AnnotationAccess;->getAnnotationReader(Lcom/android/dex/Dex;Ljava/lang/reflect/AnnotatedElement;Ljava/lang/String;I)Lcom/android/dex/EncodedValueReader;

    #@c
    move-result-object v1

    #@d
    .line 508
    .local v1, "reader":Lcom/android/dex/EncodedValueReader;
    if-nez v1, :cond_0

    #@f
    .line 509
    return v2

    #@10
    .line 511
    :cond_0
    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->readAnnotationName()I

    #@13
    .line 512
    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->readInt()I

    #@16
    .line 513
    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->readAnnotationName()I

    #@19
    .line 514
    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->peek()I

    #@1c
    move-result v3

    #@1d
    const/16 v4, 0x1e

    #@1f
    if-ne v3, v4, :cond_1

    #@21
    const/4 v2, 0x1

    #@22
    :cond_1
    return v2
.end method

.method public static isDeclaredAnnotationPresent(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "element"    # Ljava/lang/reflect/AnnotatedElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 180
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p0, p1}, Llibcore/reflect/AnnotationAccess;->getAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Lcom/android/dex/Annotation;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method private static isInherited(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 95
    .local p0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v0, Ljava/lang/annotation/Inherited;

    #@2
    invoke-static {p0, v0}, Llibcore/reflect/AnnotationAccess;->isDeclaredAnnotationPresent(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private static toAnnotationInstance(Ljava/lang/Class;Lcom/android/dex/Dex;Ljava/lang/Class;Lcom/android/dex/EncodedValueReader;)Ljava/lang/annotation/Annotation;
    .locals 12
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p3, "reader"    # Lcom/android/dex/EncodedValueReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/android/dex/Dex;",
            "Ljava/lang/Class",
            "<TA;>;",
            "Lcom/android/dex/EncodedValueReader;",
            ")TA;"
        }
    .end annotation

    #@0
    .prologue
    .line 647
    .local p0, "context":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-virtual {p3}, Lcom/android/dex/EncodedValueReader;->readAnnotation()I

    #@3
    move-result v1

    #@4
    .line 648
    .local v1, "fieldCount":I
    invoke-virtual {p3}, Lcom/android/dex/EncodedValueReader;->getAnnotationType()I

    #@7
    move-result v9

    #@8
    invoke-virtual {p0, p1, v9}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    #@b
    move-result-object v9

    #@c
    if-eq p2, v9, :cond_0

    #@e
    .line 649
    new-instance v9, Ljava/lang/AssertionError;

    #@10
    const-string/jumbo v10, "annotation value type != return type"

    #@13
    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@16
    throw v9

    #@17
    .line 651
    :cond_0
    new-array v3, v1, [Llibcore/reflect/AnnotationMember;

    #@19
    .line 652
    .local v3, "members":[Llibcore/reflect/AnnotationMember;
    const/4 v2, 0x0

    #@1a
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@1c
    .line 653
    invoke-virtual {p3}, Lcom/android/dex/EncodedValueReader;->readAnnotationName()I

    #@1f
    move-result v5

    #@20
    .line 654
    .local v5, "name":I
    invoke-virtual {p1}, Lcom/android/dex/Dex;->strings()Ljava/util/List;

    #@23
    move-result-object v9

    #@24
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v6

    #@28
    check-cast v6, Ljava/lang/String;

    #@2a
    .line 657
    .local v6, "nameString":Ljava/lang/String;
    :try_start_0
    sget-object v9, Llibcore/reflect/AnnotationAccess;->NO_ARGUMENTS:[Ljava/lang/Class;

    #@2c
    invoke-virtual {p2, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    move-result-object v4

    #@30
    .line 662
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@33
    move-result-object v7

    #@34
    .line 663
    .local v7, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, v7, p1, p3}, Llibcore/reflect/AnnotationAccess;->decodeValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/dex/Dex;Lcom/android/dex/EncodedValueReader;)Ljava/lang/Object;

    #@37
    move-result-object v8

    #@38
    .line 664
    .local v8, "value":Ljava/lang/Object;
    new-instance v9, Llibcore/reflect/AnnotationMember;

    #@3a
    invoke-direct {v9, v6, v8, v7, v4}, Llibcore/reflect/AnnotationMember;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    #@3d
    aput-object v9, v3, v2

    #@3f
    .line 652
    add-int/lit8 v2, v2, 0x1

    #@41
    goto :goto_0

    #@42
    .line 658
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@43
    .line 659
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v9, Ljava/lang/IncompatibleClassChangeError;

    #@45
    .line 660
    new-instance v10, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v11, "Couldn\'t find "

    #@4d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v10

    #@51
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@54
    move-result-object v11

    #@55
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v10

    #@59
    const-string/jumbo v11, "."

    #@5c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v10

    #@60
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v10

    #@64
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v10

    #@68
    .line 659
    invoke-direct {v9, v10}, Ljava/lang/IncompatibleClassChangeError;-><init>(Ljava/lang/String;)V

    #@6b
    throw v9

    #@6c
    .line 666
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .end local v5    # "name":I
    .end local v6    # "nameString":Ljava/lang/String;
    :cond_1
    invoke-static {p2, v3}, Llibcore/reflect/AnnotationFactory;->createAnnotation(Ljava/lang/Class;[Llibcore/reflect/AnnotationMember;)Ljava/lang/annotation/Annotation;

    #@6f
    move-result-object v9

    #@70
    return-object v9
.end method

.method private static toAnnotationInstance(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/dex/Annotation;)Ljava/lang/annotation/Annotation;
    .locals 2
    .param p2, "annotation"    # Lcom/android/dex/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TA;>;",
            "Lcom/android/dex/Annotation;",
            ")TA;"
        }
    .end annotation

    #@0
    .prologue
    .line 641
    .local p0, "context":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@3
    move-result-object v0

    #@4
    .line 642
    invoke-virtual {p2}, Lcom/android/dex/Annotation;->getReader()Lcom/android/dex/EncodedValueReader;

    #@7
    move-result-object v1

    #@8
    .line 641
    invoke-static {p0, v0, p1, v1}, Llibcore/reflect/AnnotationAccess;->toAnnotationInstance(Ljava/lang/Class;Lcom/android/dex/Dex;Ljava/lang/Class;Lcom/android/dex/EncodedValueReader;)Ljava/lang/annotation/Annotation;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method
