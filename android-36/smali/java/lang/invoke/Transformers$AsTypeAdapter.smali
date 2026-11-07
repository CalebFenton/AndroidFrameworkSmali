.class Ljava/lang/invoke/Transformers$AsTypeAdapter;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsTypeAdapter"
.end annotation


# instance fields
.field private final blacklist target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor blacklist <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V
    .registers 3
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;

    .line 1801
    invoke-direct {p0, p2}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 1802
    iput-object p1, p0, Ljava/lang/invoke/Transformers$AsTypeAdapter;->target:Ljava/lang/invoke/MethodHandle;

    .line 1803
    return-void
.end method

.method private blacklist adaptArgument(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .registers 11
    .param p1, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p3, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class<",
            "*>;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2049
    .local p2, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2050
    invoke-static {p1, p3, p2}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 2051
    return-void

    .line 2054
    :cond_a
    invoke-virtual {p4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 2055
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 2056
    invoke-static {p2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v0

    .line 2057
    .local v0, "fromBaseType":C
    invoke-static {p4}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v1

    .line 2058
    .local v1, "toBaseType":C
    sparse-switch v0, :sswitch_data_18a

    .line 2081
    invoke-direct {p0}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->throwWrongMethodTypeException()V

    .line 2083
    .end local v0    # "fromBaseType":C
    .end local v1    # "toBaseType":C
    goto/16 :goto_188

    .line 2078
    .restart local v0    # "fromBaseType":C
    .restart local v1    # "toBaseType":C
    :sswitch_26
    invoke-direct {p0, p3, v1}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->writePrimitiveVoidAs(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;C)V

    .line 2079
    return-void

    .line 2063
    :sswitch_2a
    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v2

    invoke-direct {p0, p3, v1, v2}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->writePrimitiveShortAs(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;CS)V

    .line 2064
    return-void

    .line 2072
    :sswitch_32
    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v2

    invoke-direct {p0, p3, v1, v2, v3}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->writePrimitiveLongAs(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;CJ)V

    .line 2073
    return-void

    .line 2069
    :sswitch_3a
    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v2

    invoke-direct {p0, p3, v1, v2}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->writePrimitiveIntAs(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;CI)V

    .line 2070
    return-void

    .line 2075
    :sswitch_42
    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v2

    invoke-direct {p0, p3, v1, v2}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->writePrimitiveFloatAs(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;CF)V

    .line 2076
    return-void

    .line 2066
    :sswitch_4a
    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v2

    invoke-direct {p0, p3, v1, v2}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->writePrimitiveCharAs(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;CC)V

    .line 2067
    return-void

    .line 2060
    :sswitch_52
    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v2

    invoke-direct {p0, p3, v1, v2}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->writePrimitiveByteAs(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;CB)V

    .line 2061
    return-void

    .line 2084
    .end local v0    # "fromBaseType":C
    .end local v1    # "toBaseType":C
    :cond_5a
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 2085
    .local v0, "value":Ljava/lang/Object;
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p4, v1, :cond_65

    .line 2086
    return-void

    .line 2088
    :cond_65
    if-eqz v0, :cond_f6

    .line 2091
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lsun/invoke/util/Wrapper;->isWrapperType(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 2092
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p4}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->throwClassCastException(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2094
    :cond_78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lsun/invoke/util/Wrapper;->forWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v1

    .line 2095
    .local v1, "fromWrapper":Lsun/invoke/util/Wrapper;
    invoke-static {p4}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v2

    .line 2096
    .local v2, "toWrapper":Lsun/invoke/util/Wrapper;
    invoke-virtual {v2, v1}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v3

    if-nez v3, :cond_8d

    .line 2097
    invoke-static {p2, p4}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->throwClassCastException(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2100
    :cond_8d
    invoke-virtual {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar()C

    move-result v3

    .line 2101
    .local v3, "toChar":C
    invoke-virtual {v1}, Lsun/invoke/util/Wrapper;->basicTypeChar()C

    move-result v4

    sparse-switch v4, :sswitch_data_1a8

    .line 2127
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 2103
    :sswitch_9e
    move-object v4, v0

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    .line 2104
    return-void

    .line 2109
    :sswitch_a9
    move-object v4, v0

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    invoke-direct {p0, p3, v3, v4}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->writePrimitiveShortAs(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;CS)V

    .line 2110
    return-void

    .line 2118
    :sswitch_b4
    move-object v4, v0

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, p3, v3, v4, v5}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->writePrimitiveLongAs(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;CJ)V

    .line 2119
    return-void

    .line 2115
    :sswitch_bf
    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, p3, v3, v4}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->writePrimitiveIntAs(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;CI)V

    .line 2116
    return-void

    .line 2121
    :sswitch_ca
    move-object v4, v0

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-direct {p0, p3, v3, v4}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->writePrimitiveFloatAs(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;CF)V

    .line 2122
    return-void

    .line 2124
    :sswitch_d5
    move-object v4, v0

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {p0, p3, v3, v4, v5}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->writePrimitiveDoubleAs(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;CD)V

    .line 2125
    return-void

    .line 2112
    :sswitch_e0
    move-object v4, v0

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-direct {p0, p3, v3, v4}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->writePrimitiveCharAs(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;CC)V

    .line 2113
    return-void

    .line 2106
    :sswitch_eb
    move-object v4, v0

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-direct {p0, p3, v3, v4}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->writePrimitiveByteAs(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;CB)V

    .line 2107
    return-void

    .line 2089
    .end local v1    # "fromWrapper":Lsun/invoke/util/Wrapper;
    .end local v2    # "toWrapper":Lsun/invoke/util/Wrapper;
    .end local v3    # "toChar":C
    :cond_f6
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2131
    .end local v0    # "value":Ljava/lang/Object;
    :cond_fc
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_16c

    .line 2133
    invoke-static {p2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v0

    .line 2134
    .local v0, "fromBaseType":C
    invoke-static {v0}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->getBoxedPrimitiveClass(C)Ljava/lang/Class;

    move-result-object v1

    .line 2136
    .local v1, "fromBoxed":Ljava/lang/Class;
    if-eqz v1, :cond_115

    invoke-virtual {p4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_115

    .line 2137
    invoke-direct {p0}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->throwWrongMethodTypeException()V

    .line 2141
    :cond_115
    sparse-switch v0, :sswitch_data_1ca

    .line 2170
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 2143
    :sswitch_11e
    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 2144
    .local v2, "boxed":Ljava/lang/Object;
    goto :goto_168

    .line 2167
    .end local v2    # "boxed":Ljava/lang/Object;
    :sswitch_127
    const/4 v2, 0x0

    .line 2168
    .restart local v2    # "boxed":Ljava/lang/Object;
    goto :goto_168

    .line 2149
    .end local v2    # "boxed":Ljava/lang/Object;
    :sswitch_129
    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    .line 2150
    .restart local v2    # "boxed":Ljava/lang/Object;
    goto :goto_168

    .line 2158
    .end local v2    # "boxed":Ljava/lang/Object;
    :sswitch_132
    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2159
    .restart local v2    # "boxed":Ljava/lang/Object;
    goto :goto_168

    .line 2155
    .end local v2    # "boxed":Ljava/lang/Object;
    :sswitch_13b
    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2156
    .restart local v2    # "boxed":Ljava/lang/Object;
    goto :goto_168

    .line 2161
    .end local v2    # "boxed":Ljava/lang/Object;
    :sswitch_144
    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 2162
    .restart local v2    # "boxed":Ljava/lang/Object;
    goto :goto_168

    .line 2164
    .end local v2    # "boxed":Ljava/lang/Object;
    :sswitch_14d
    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 2165
    .restart local v2    # "boxed":Ljava/lang/Object;
    goto :goto_168

    .line 2152
    .end local v2    # "boxed":Ljava/lang/Object;
    :sswitch_156
    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .line 2153
    .restart local v2    # "boxed":Ljava/lang/Object;
    goto :goto_168

    .line 2146
    .end local v2    # "boxed":Ljava/lang/Object;
    :sswitch_15f
    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 2147
    .restart local v2    # "boxed":Ljava/lang/Object;
    nop

    .line 2172
    :goto_168
    invoke-virtual {p3, v2, p4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2173
    return-void

    .line 2176
    .end local v0    # "fromBaseType":C
    .end local v1    # "fromBoxed":Ljava/lang/Class;
    .end local v2    # "boxed":Ljava/lang/Object;
    :cond_16c
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 2177
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_185

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_185

    .line 2178
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p4}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->throwClassCastException(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2180
    :cond_185
    invoke-virtual {p3, v0, p4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2183
    .end local v0    # "value":Ljava/lang/Object;
    :goto_188
    return-void

    nop

    :sswitch_data_18a
    .sparse-switch
        0x42 -> :sswitch_52
        0x43 -> :sswitch_4a
        0x46 -> :sswitch_42
        0x49 -> :sswitch_3a
        0x4a -> :sswitch_32
        0x53 -> :sswitch_2a
        0x56 -> :sswitch_26
    .end sparse-switch

    :sswitch_data_1a8
    .sparse-switch
        0x42 -> :sswitch_eb
        0x43 -> :sswitch_e0
        0x44 -> :sswitch_d5
        0x46 -> :sswitch_ca
        0x49 -> :sswitch_bf
        0x4a -> :sswitch_b4
        0x53 -> :sswitch_a9
        0x5a -> :sswitch_9e
    .end sparse-switch

    :sswitch_data_1ca
    .sparse-switch
        0x42 -> :sswitch_15f
        0x43 -> :sswitch_156
        0x44 -> :sswitch_14d
        0x46 -> :sswitch_144
        0x49 -> :sswitch_13b
        0x4a -> :sswitch_132
        0x53 -> :sswitch_129
        0x56 -> :sswitch_127
        0x5a -> :sswitch_11e
    .end sparse-switch
.end method

.method private blacklist adaptArguments(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;)V
    .registers 8
    .param p1, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    .line 1828
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    .line 1829
    .local v0, "fromTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v1, p0, Ljava/lang/invoke/Transformers$AsTypeAdapter;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v1

    .line 1830
    .local v1, "toTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    array-length v3, v0

    if-ge v2, v3, :cond_20

    .line 1831
    aget-object v3, v0, v2

    aget-object v4, v1, v2

    invoke-direct {p0, p1, v3, p2, v4}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->adaptArgument(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 1830
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1833
    .end local v2    # "i":I
    :cond_20
    return-void
.end method

.method private blacklist adaptReturnValue(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;)V
    .registers 5
    .param p1, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    .line 1837
    iget-object v0, p0, Ljava/lang/invoke/Transformers$AsTypeAdapter;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v0

    .line 1838
    .local v0, "fromType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v1

    .line 1839
    .local v1, "toType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, v0, p2, v1}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->adaptArgument(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 1840
    return-void
.end method

.method private static blacklist getBoxedPrimitiveClass(C)Ljava/lang/Class;
    .registers 2
    .param p0, "baseType"    # C

    .line 2022
    sparse-switch p0, :sswitch_data_1e

    .line 2040
    const/4 v0, 0x0

    return-object v0

    .line 2024
    :sswitch_5
    const-class v0, Ljava/lang/Boolean;

    return-object v0

    .line 2028
    :sswitch_8
    const-class v0, Ljava/lang/Short;

    return-object v0

    .line 2034
    :sswitch_b
    const-class v0, Ljava/lang/Long;

    return-object v0

    .line 2032
    :sswitch_e
    const-class v0, Ljava/lang/Integer;

    return-object v0

    .line 2036
    :sswitch_11
    const-class v0, Ljava/lang/Float;

    return-object v0

    .line 2038
    :sswitch_14
    const-class v0, Ljava/lang/Double;

    return-object v0

    .line 2030
    :sswitch_17
    const-class v0, Ljava/lang/Character;

    return-object v0

    .line 2026
    :sswitch_1a
    const-class v0, Ljava/lang/Byte;

    return-object v0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x42 -> :sswitch_1a
        0x43 -> :sswitch_17
        0x44 -> :sswitch_14
        0x46 -> :sswitch_11
        0x49 -> :sswitch_e
        0x4a -> :sswitch_b
        0x53 -> :sswitch_8
        0x5a -> :sswitch_5
    .end sparse-switch
.end method

.method private static blacklist throwClassCastException(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5
    .param p0, "from"    # Ljava/lang/Class;
    .param p1, "to"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 1849
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot cast from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist throwWrongMethodTypeException()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/invoke/WrongMethodTypeException;
        }
    .end annotation

    .line 1843
    new-instance v0, Ljava/lang/invoke/WrongMethodTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1844
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/lang/invoke/Transformers$AsTypeAdapter;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/invoke/WrongMethodTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist writePrimitiveByteAs(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;CB)V
    .registers 6
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "baseType"    # C
    .param p3, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/invoke/WrongMethodTypeException;
        }
    .end annotation

    .line 1854
    sparse-switch p2, :sswitch_data_24

    .line 1874
    invoke-direct {p0}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->throwWrongMethodTypeException()V

    .line 1876
    return-void

    .line 1859
    :sswitch_7
    int-to-short v0, p3

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    .line 1860
    return-void

    .line 1865
    :sswitch_c
    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    .line 1866
    return-void

    .line 1862
    :sswitch_11
    invoke-virtual {p1, p3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    .line 1863
    return-void

    .line 1868
    :sswitch_15
    int-to-float v0, p3

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    .line 1869
    return-void

    .line 1871
    :sswitch_1a
    int-to-double v0, p3

    invoke-virtual {p1, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 1872
    return-void

    .line 1856
    :sswitch_1f
    invoke-virtual {p1, p3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    .line 1857
    return-void

    nop

    :sswitch_data_24
    .sparse-switch
        0x42 -> :sswitch_1f
        0x44 -> :sswitch_1a
        0x46 -> :sswitch_15
        0x49 -> :sswitch_11
        0x4a -> :sswitch_c
        0x53 -> :sswitch_7
    .end sparse-switch
.end method

.method private blacklist writePrimitiveCharAs(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;CC)V
    .registers 6
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "baseType"    # C
    .param p3, "value"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/invoke/WrongMethodTypeException;
        }
    .end annotation

    .line 1904
    packed-switch p2, :pswitch_data_1e

    .line 1921
    :pswitch_3
    invoke-direct {p0}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->throwWrongMethodTypeException()V

    .line 1923
    return-void

    .line 1912
    :pswitch_7
    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    .line 1913
    return-void

    .line 1909
    :pswitch_c
    invoke-virtual {p1, p3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    .line 1910
    return-void

    .line 1915
    :pswitch_10
    int-to-float v0, p3

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    .line 1916
    return-void

    .line 1918
    :pswitch_15
    int-to-double v0, p3

    invoke-virtual {p1, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 1919
    return-void

    .line 1906
    :pswitch_1a
    invoke-virtual {p1, p3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    .line 1907
    return-void

    :pswitch_data_1e
    .packed-switch 0x43
        :pswitch_1a
        :pswitch_15
        :pswitch_3
        :pswitch_10
        :pswitch_3
        :pswitch_3
        :pswitch_c
        :pswitch_7
    .end packed-switch
.end method

.method private blacklist writePrimitiveDoubleAs(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;CD)V
    .registers 5
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "baseType"    # C
    .param p3, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/invoke/WrongMethodTypeException;
        }
    .end annotation

    .line 1981
    packed-switch p2, :pswitch_data_c

    .line 1986
    invoke-direct {p0}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->throwWrongMethodTypeException()V

    .line 1988
    return-void

    .line 1983
    :pswitch_7
    invoke-virtual {p1, p3, p4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 1984
    return-void

    nop

    :pswitch_data_c
    .packed-switch 0x44
        :pswitch_7
    .end packed-switch
.end method

.method private blacklist writePrimitiveFloatAs(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;CF)V
    .registers 6
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "baseType"    # C
    .param p3, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/invoke/WrongMethodTypeException;
        }
    .end annotation

    .line 1966
    packed-switch p2, :pswitch_data_10

    .line 1974
    :pswitch_3
    invoke-direct {p0}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->throwWrongMethodTypeException()V

    .line 1976
    return-void

    .line 1968
    :pswitch_7
    invoke-virtual {p1, p3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    .line 1969
    return-void

    .line 1971
    :pswitch_b
    float-to-double v0, p3

    invoke-virtual {p1, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 1972
    return-void

    :pswitch_data_10
    .packed-switch 0x44
        :pswitch_b
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method private blacklist writePrimitiveIntAs(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;CI)V
    .registers 6
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "baseType"    # C
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/invoke/WrongMethodTypeException;
        }
    .end annotation

    .line 1927
    packed-switch p2, :pswitch_data_1e

    .line 1941
    :pswitch_3
    invoke-direct {p0}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->throwWrongMethodTypeException()V

    .line 1943
    invoke-direct {p0}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->throwWrongMethodTypeException()V

    .line 1944
    return-void

    .line 1932
    :pswitch_a
    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    .line 1933
    return-void

    .line 1929
    :pswitch_f
    invoke-virtual {p1, p3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    .line 1930
    return-void

    .line 1935
    :pswitch_13
    int-to-float v0, p3

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    .line 1936
    return-void

    .line 1938
    :pswitch_18
    int-to-double v0, p3

    invoke-virtual {p1, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 1939
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x44
        :pswitch_18
        :pswitch_3
        :pswitch_13
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method

.method private blacklist writePrimitiveLongAs(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;CJ)V
    .registers 7
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "baseType"    # C
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/invoke/WrongMethodTypeException;
        }
    .end annotation

    .line 1948
    sparse-switch p2, :sswitch_data_16

    .line 1959
    invoke-direct {p0}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->throwWrongMethodTypeException()V

    .line 1961
    return-void

    .line 1950
    :sswitch_7
    invoke-virtual {p1, p3, p4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    .line 1951
    return-void

    .line 1953
    :sswitch_b
    long-to-float v0, p3

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    .line 1954
    return-void

    .line 1956
    :sswitch_10
    long-to-double v0, p3

    invoke-virtual {p1, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 1957
    return-void

    nop

    :sswitch_data_16
    .sparse-switch
        0x44 -> :sswitch_10
        0x46 -> :sswitch_b
        0x4a -> :sswitch_7
    .end sparse-switch
.end method

.method private blacklist writePrimitiveShortAs(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;CS)V
    .registers 6
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "baseType"    # C
    .param p3, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/invoke/WrongMethodTypeException;
        }
    .end annotation

    .line 1881
    sparse-switch p2, :sswitch_data_1e

    .line 1898
    invoke-direct {p0}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->throwWrongMethodTypeException()V

    .line 1900
    return-void

    .line 1883
    :sswitch_7
    invoke-virtual {p1, p3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    .line 1884
    return-void

    .line 1889
    :sswitch_b
    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    .line 1890
    return-void

    .line 1886
    :sswitch_10
    invoke-virtual {p1, p3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    .line 1887
    return-void

    .line 1892
    :sswitch_14
    int-to-float v0, p3

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    .line 1893
    return-void

    .line 1895
    :sswitch_19
    int-to-double v0, p3

    invoke-virtual {p1, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 1896
    return-void

    :sswitch_data_1e
    .sparse-switch
        0x44 -> :sswitch_19
        0x46 -> :sswitch_14
        0x49 -> :sswitch_10
        0x4a -> :sswitch_b
        0x53 -> :sswitch_7
    .end sparse-switch
.end method

.method private blacklist writePrimitiveVoidAs(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;C)V
    .registers 5
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "baseType"    # C

    .line 1991
    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_2e

    .line 2017
    invoke-direct {p0}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->throwWrongMethodTypeException()V

    .line 2019
    return-void

    .line 1993
    :sswitch_8
    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    .line 1994
    return-void

    .line 1999
    :sswitch_c
    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    .line 2000
    return-void

    .line 2008
    :sswitch_10
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    .line 2009
    return-void

    .line 2005
    :sswitch_16
    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    .line 2006
    return-void

    .line 2011
    :sswitch_1a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    .line 2012
    return-void

    .line 2014
    :sswitch_1f
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 2015
    return-void

    .line 2002
    :sswitch_25
    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    .line 2003
    return-void

    .line 1996
    :sswitch_29
    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    .line 1997
    return-void

    nop

    :sswitch_data_2e
    .sparse-switch
        0x42 -> :sswitch_29
        0x43 -> :sswitch_25
        0x44 -> :sswitch_1f
        0x46 -> :sswitch_1a
        0x49 -> :sswitch_16
        0x4a -> :sswitch_10
        0x53 -> :sswitch_c
        0x5a -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public blacklist transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 7
    .param p1, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1807
    iget-object v0, p0, Ljava/lang/invoke/Transformers$AsTypeAdapter;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 1808
    .local v0, "targetFrame":Ldalvik/system/EmulatedStackFrame;
    new-instance v1, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 1809
    .local v1, "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    new-instance v2, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 1812
    .local v2, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v1, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1813
    invoke-virtual {v2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1814
    invoke-direct {p0, v1, v2}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->adaptArguments(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;)V

    .line 1817
    iget-object v3, p0, Ljava/lang/invoke/Transformers$AsTypeAdapter;->target:Ljava/lang/invoke/MethodHandle;

    invoke-static {v3, v0}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->invokeFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 1819
    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame;->getMethodType()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_3f

    .line 1821
    invoke-virtual {v1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->makeReturnValueAccessor()V

    .line 1822
    invoke-virtual {v2, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->makeReturnValueAccessor()V

    .line 1823
    invoke-direct {p0, v1, v2}, Ljava/lang/invoke/Transformers$AsTypeAdapter;->adaptReturnValue(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;)V

    .line 1825
    :cond_3f
    return-void
.end method
