.class public final Landroid/os/instrumentation/MethodDescriptorParser;
.super Ljava/lang/Object;
.source "MethodDescriptorParser.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist parseMethodDescriptor(Ljava/lang/ClassLoader;Landroid/os/instrumentation/MethodDescriptor;)Ljava/lang/reflect/Executable;
    .registers 10
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "descriptor"    # Landroid/os/instrumentation/MethodDescriptor;

    .line 36
    :try_start_0
    iget-object v0, p1, Landroid/os/instrumentation/MethodDescriptor;->fullyQualifiedClassName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 37
    .local v0, "javaClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p1, Landroid/os/instrumentation/MethodDescriptor;->fullyQualifiedParameters:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Class;

    .line 38
    .local v1, "parameters":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p1, Landroid/os/instrumentation/MethodDescriptor;->fullyQualifiedParameters:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_110

    .line 39
    iget-object v3, p1, Landroid/os/instrumentation/MethodDescriptor;->fullyQualifiedParameters:[Ljava/lang/String;

    aget-object v3, v3, v2

    .line 40
    .local v3, "typeName":Ljava/lang/String;
    const-string v4, "[]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    .line 41
    .local v4, "isArrayType":Z
    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v4, :cond_29

    .line 42
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 44
    :cond_29
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_146

    :cond_30
    goto :goto_83

    :sswitch_31
    const-string/jumbo v5, "short"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/4 v5, 0x3

    goto :goto_84

    :sswitch_3c
    const-string v5, "float"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/4 v5, 0x6

    goto :goto_84

    :sswitch_46
    const-string v5, "boolean"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    move v5, v6

    goto :goto_84

    :sswitch_50
    const-string/jumbo v5, "long"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/4 v5, 0x5

    goto :goto_84

    :sswitch_5b
    const-string v6, "char"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    goto :goto_84

    :sswitch_64
    const-string v5, "byte"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/4 v5, 0x1

    goto :goto_84

    :sswitch_6e
    const-string/jumbo v5, "int"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/4 v5, 0x4

    goto :goto_84

    :sswitch_79
    const-string v5, "double"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/4 v5, 0x7

    goto :goto_84

    :goto_83
    const/4 v5, -0x1

    :goto_84
    packed-switch v5, :pswitch_data_168

    .line 70
    if-eqz v4, :cond_106

    invoke-virtual {p0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    goto/16 :goto_101

    .line 67
    :pswitch_8f
    if-eqz v4, :cond_98

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v5

    goto :goto_9a

    :cond_98
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    :goto_9a
    aput-object v5, v1, v2

    .line 68
    goto/16 :goto_10c

    .line 64
    :pswitch_9e
    if-eqz v4, :cond_a7

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v5

    goto :goto_a9

    :cond_a7
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    :goto_a9
    aput-object v5, v1, v2

    .line 65
    goto/16 :goto_10c

    .line 61
    :pswitch_ad
    if-eqz v4, :cond_b6

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v5

    goto :goto_b8

    :cond_b6
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    :goto_b8
    aput-object v5, v1, v2

    .line 62
    goto :goto_10c

    .line 58
    :pswitch_bb
    if-eqz v4, :cond_c4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v5

    goto :goto_c6

    :cond_c4
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    :goto_c6
    aput-object v5, v1, v2

    .line 59
    goto :goto_10c

    .line 55
    :pswitch_c9
    if-eqz v4, :cond_d2

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v5

    goto :goto_d4

    :cond_d2
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    :goto_d4
    aput-object v5, v1, v2

    .line 56
    goto :goto_10c

    .line 52
    :pswitch_d7
    if-eqz v4, :cond_e0

    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v5

    goto :goto_e2

    :cond_e0
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    :goto_e2
    aput-object v5, v1, v2

    .line 53
    goto :goto_10c

    .line 49
    :pswitch_e5
    if-eqz v4, :cond_ee

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v5

    goto :goto_f0

    :cond_ee
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    :goto_f0
    aput-object v5, v1, v2

    .line 50
    goto :goto_10c

    .line 46
    :pswitch_f3
    if-eqz v4, :cond_fc

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v5

    goto :goto_fe

    :cond_fc
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    :goto_fe
    aput-object v5, v1, v2

    .line 47
    goto :goto_10c

    .line 70
    :goto_101
    invoke-virtual {v5}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v5

    goto :goto_10a

    .line 71
    :cond_106
    invoke-virtual {p0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    :goto_10a
    aput-object v5, v1, v2

    .line 38
    .end local v3    # "typeName":Ljava/lang/String;
    .end local v4    # "isArrayType":Z
    :goto_10c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c

    .line 75
    .end local v2    # "i":I
    :cond_110
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;->executableMethodFileOffsetsV2()Z

    move-result v2

    if-eqz v2, :cond_125

    iget-object v2, p1, Landroid/os/instrumentation/MethodDescriptor;->methodName:Ljava/lang/String;

    const-string v3, "<init>"

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    return-object v2

    .line 79
    :cond_125
    iget-object v2, p1, Landroid/os/instrumentation/MethodDescriptor;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_12b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_12b} :catch_12c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_12b} :catch_12c

    return-object v2

    .line 80
    .end local v0    # "javaClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "parameters":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_12c
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The specified method cannot be found. Is this descriptor valid? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :sswitch_data_146
    .sparse-switch
        -0x4f08842f -> :sswitch_79
        0x197ef -> :sswitch_6e
        0x2e6108 -> :sswitch_64
        0x2e9356 -> :sswitch_5b
        0x32c67c -> :sswitch_50
        0x3db6c28 -> :sswitch_46
        0x5d0225c -> :sswitch_3c
        0x685847c -> :sswitch_31
    .end sparse-switch

    :pswitch_data_168
    .packed-switch 0x0
        :pswitch_f3
        :pswitch_e5
        :pswitch_d7
        :pswitch_c9
        :pswitch_bb
        :pswitch_ad
        :pswitch_9e
        :pswitch_8f
    .end packed-switch
.end method
