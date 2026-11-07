.class Ljava/io/ObjectStreamClass$FieldReflector;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectStreamClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldReflector"
.end annotation


# static fields
.field private static final blacklist unsafe:Ljdk/internal/misc/Unsafe;


# instance fields
.field private final greylist-max-o fields:[Ljava/io/ObjectStreamField;

.field private final greylist-max-o numPrimFields:I

.field private final greylist-max-o offsets:[I

.field private final greylist-max-o readKeys:[J

.field private final greylist-max-o typeCodes:[C

.field private final greylist-max-o types:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final greylist-max-o writeKeys:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2063
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Ljdk/internal/misc/Unsafe;

    return-void
.end method

.method constructor greylist-max-o <init>([Ljava/io/ObjectStreamField;)V
    .registers 14
    .param p1, "fields"    # [Ljava/io/ObjectStreamField;

    .line 2087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2088
    iput-object p1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->fields:[Ljava/io/ObjectStreamField;

    .line 2089
    array-length v0, p1

    .line 2090
    .local v0, "nfields":I
    new-array v1, v0, [J

    iput-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->readKeys:[J

    .line 2091
    new-array v1, v0, [J

    iput-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->writeKeys:[J

    .line 2092
    new-array v1, v0, [I

    iput-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    .line 2093
    new-array v1, v0, [C

    iput-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    .line 2094
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2095
    .local v1, "typeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2098
    .local v2, "usedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    if-ge v3, v0, :cond_6e

    .line 2099
    aget-object v4, p1, v3

    .line 2100
    .local v4, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v4}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v5

    .line 2101
    .local v5, "rf":Ljava/lang/reflect/Field;
    const-wide/16 v6, -0x1

    if-eqz v5, :cond_34

    .line 2102
    sget-object v8, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v8, v5}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    goto :goto_35

    :cond_34
    move-wide v8, v6

    .line 2103
    .local v8, "key":J
    :goto_35
    iget-object v10, p0, Ljava/io/ObjectStreamClass$FieldReflector;->readKeys:[J

    aput-wide v8, v10, v3

    .line 2104
    iget-object v10, p0, Ljava/io/ObjectStreamClass$FieldReflector;->writeKeys:[J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_47

    .line 2105
    move-wide v6, v8

    goto :goto_48

    :cond_47
    nop

    :goto_48
    aput-wide v6, v10, v3

    .line 2106
    iget-object v6, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    invoke-virtual {v4}, Ljava/io/ObjectStreamField;->getOffset()I

    move-result v7

    aput v7, v6, v3

    .line 2107
    iget-object v6, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    invoke-virtual {v4}, Ljava/io/ObjectStreamField;->getTypeCode()C

    move-result v7

    aput-char v7, v6, v3

    .line 2108
    invoke-virtual {v4}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_6b

    .line 2109
    if-eqz v5, :cond_67

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    goto :goto_68

    :cond_67
    const/4 v6, 0x0

    :goto_68
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2098
    .end local v4    # "f":Ljava/io/ObjectStreamField;
    .end local v5    # "rf":Ljava/lang/reflect/Field;
    .end local v8    # "key":J
    :cond_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 2113
    .end local v3    # "i":I
    :cond_6e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    iput-object v3, p0, Ljava/io/ObjectStreamClass$FieldReflector;->types:[Ljava/lang/Class;

    .line 2114
    iget-object v3, p0, Ljava/io/ObjectStreamClass$FieldReflector;->types:[Ljava/lang/Class;

    array-length v3, v3

    sub-int v3, v0, v3

    iput v3, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    .line 2115
    return-void
.end method


# virtual methods
.method greylist-max-o getFields()[Ljava/io/ObjectStreamField;
    .registers 2

    .line 2124
    iget-object v0, p0, Ljava/io/ObjectStreamClass$FieldReflector;->fields:[Ljava/io/ObjectStreamField;

    return-object v0
.end method

.method greylist-max-o getObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "vals"    # [Ljava/lang/Object;

    .line 2242
    if-eqz p1, :cond_2b

    .line 2249
    iget v0, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->fields:[Ljava/io/ObjectStreamField;

    array-length v1, v1

    if-ge v0, v1, :cond_2a

    .line 2250
    iget-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    aget-char v1, v1, v0

    sparse-switch v1, :sswitch_data_32

    .line 2257
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 2253
    :sswitch_16
    iget-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    aget v1, v1, v0

    sget-object v2, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Ljdk/internal/misc/Unsafe;

    iget-object v3, p0, Ljava/io/ObjectStreamClass$FieldReflector;->readKeys:[J

    aget-wide v3, v3, v0

    invoke-virtual {v2, p1, v3, v4}, Ljdk/internal/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p2, v1

    .line 2254
    nop

    .line 2249
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2260
    .end local v0    # "i":I
    :cond_2a
    return-void

    .line 2243
    :cond_2b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    nop

    :sswitch_data_32
    .sparse-switch
        0x4c -> :sswitch_16
        0x5b -> :sswitch_16
    .end sparse-switch
.end method

.method greylist-max-o getPrimFieldValues(Ljava/lang/Object;[B)V
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "buf"    # [B

    .line 2133
    if-eqz p1, :cond_6f

    .line 2140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    if-ge v0, v1, :cond_6e

    .line 2141
    iget-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->readKeys:[J

    aget-wide v1, v1, v0

    .line 2142
    .local v1, "key":J
    iget-object v3, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    aget v3, v3, v0

    .line 2143
    .local v3, "off":I
    iget-object v4, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    aget-char v4, v4, v0

    sparse-switch v4, :sswitch_data_76

    .line 2177
    new-instance v4, Ljava/lang/InternalError;

    invoke-direct {v4}, Ljava/lang/InternalError;-><init>()V

    throw v4

    .line 2145
    :sswitch_1c
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v4, p1, v1, v2}, Ljdk/internal/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v3, v4}, Ljava/io/Bits;->putBoolean([BIZ)V

    .line 2146
    goto :goto_6b

    .line 2157
    :sswitch_26
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v4, p1, v1, v2}, Ljdk/internal/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v4

    invoke-static {p2, v3, v4}, Ljava/io/Bits;->putShort([BIS)V

    .line 2158
    goto :goto_6b

    .line 2169
    :sswitch_30
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v4, p1, v1, v2}, Ljdk/internal/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v3, v4, v5}, Ljava/io/Bits;->putLong([BIJ)V

    .line 2170
    goto :goto_6b

    .line 2161
    :sswitch_3a
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v4, p1, v1, v2}, Ljdk/internal/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v3, v4}, Ljava/io/Bits;->putInt([BII)V

    .line 2162
    goto :goto_6b

    .line 2165
    :sswitch_44
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v4, p1, v1, v2}, Ljdk/internal/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {p2, v3, v4}, Ljava/io/Bits;->putFloat([BIF)V

    .line 2166
    goto :goto_6b

    .line 2173
    :sswitch_4e
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v4, p1, v1, v2}, Ljdk/internal/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p2, v3, v4, v5}, Ljava/io/Bits;->putDouble([BID)V

    .line 2174
    goto :goto_6b

    .line 2153
    :sswitch_58
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v4, p1, v1, v2}, Ljdk/internal/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v4

    invoke-static {p2, v3, v4}, Ljava/io/Bits;->putChar([BIC)V

    .line 2154
    goto :goto_6b

    .line 2149
    :sswitch_62
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v4, p1, v1, v2}, Ljdk/internal/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v4

    aput-byte v4, p2, v3

    .line 2150
    nop

    .line 2140
    .end local v1    # "key":J
    .end local v3    # "off":I
    :goto_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2180
    .end local v0    # "i":I
    :cond_6e
    return-void

    .line 2134
    :cond_6f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    nop

    :sswitch_data_76
    .sparse-switch
        0x42 -> :sswitch_62
        0x43 -> :sswitch_58
        0x44 -> :sswitch_4e
        0x46 -> :sswitch_44
        0x49 -> :sswitch_3a
        0x4a -> :sswitch_30
        0x53 -> :sswitch_26
        0x5a -> :sswitch_1c
    .end sparse-switch
.end method

.method greylist-max-o setObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 11
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "vals"    # [Ljava/lang/Object;

    .line 2270
    if-eqz p1, :cond_b1

    .line 2273
    iget v0, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->fields:[Ljava/io/ObjectStreamField;

    array-length v1, v1

    if-ge v0, v1, :cond_b0

    .line 2274
    iget-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->writeKeys:[J

    aget-wide v1, v1, v0

    .line 2275
    .local v1, "key":J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_15

    .line 2276
    goto/16 :goto_ac

    .line 2278
    :cond_15
    iget-object v3, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    aget-char v3, v3, v0

    sparse-switch v3, :sswitch_data_b8

    .line 2298
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    .line 2281
    :sswitch_22
    iget-object v3, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    aget v3, v3, v0

    aget-object v3, p2, v3

    .line 2282
    .local v3, "val":Ljava/lang/Object;
    if-eqz v3, :cond_a6

    iget-object v4, p0, Ljava/io/ObjectStreamClass$FieldReflector;->types:[Ljava/lang/Class;

    iget v5, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    sub-int v5, v0, v5

    aget-object v4, v4, v5

    .line 2283
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    goto :goto_a6

    .line 2285
    :cond_39
    iget-object v4, p0, Ljava/io/ObjectStreamClass$FieldReflector;->fields:[Ljava/io/ObjectStreamField;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v4

    .line 2286
    .local v4, "f":Ljava/lang/reflect/Field;
    new-instance v5, Ljava/lang/ClassCastException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot assign instance of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2288
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to field "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2289
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2290
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2291
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in instance of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2292
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2294
    .end local v4    # "f":Ljava/lang/reflect/Field;
    :cond_a6
    :goto_a6
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v4, p1, v1, v2, v3}, Ljdk/internal/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2295
    nop

    .line 2273
    .end local v1    # "key":J
    .end local v3    # "val":Ljava/lang/Object;
    :goto_ac
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 2301
    .end local v0    # "i":I
    :cond_b0
    return-void

    .line 2271
    :cond_b1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    nop

    :sswitch_data_b8
    .sparse-switch
        0x4c -> :sswitch_22
        0x5b -> :sswitch_22
    .end sparse-switch
.end method

.method greylist-max-o setPrimFieldValues(Ljava/lang/Object;[B)V
    .registers 11
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "buf"    # [B

    .line 2188
    if-eqz p1, :cond_81

    .line 2191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    if-ge v0, v1, :cond_80

    .line 2192
    iget-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->writeKeys:[J

    aget-wide v4, v1, v0

    .line 2193
    .local v4, "key":J
    const-wide/16 v1, -0x1

    cmp-long v1, v4, v1

    if-nez v1, :cond_14

    .line 2194
    move-object v3, p1

    goto/16 :goto_7c

    .line 2196
    :cond_14
    iget-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    aget v1, v1, v0

    .line 2197
    .local v1, "off":I
    iget-object v2, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    aget-char v2, v2, v0

    sparse-switch v2, :sswitch_data_88

    .line 2231
    move-object v3, p1

    .end local p1    # "obj":Ljava/lang/Object;
    .local v3, "obj":Ljava/lang/Object;
    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1

    .line 2199
    .end local v3    # "obj":Ljava/lang/Object;
    .restart local p1    # "obj":Ljava/lang/Object;
    :sswitch_26
    sget-object v2, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Ljdk/internal/misc/Unsafe;

    invoke-static {p2, v1}, Ljava/io/Bits;->getBoolean([BI)Z

    move-result v3

    invoke-virtual {v2, p1, v4, v5, v3}, Ljdk/internal/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    .line 2200
    move-object v3, p1

    goto :goto_7c

    .line 2211
    :sswitch_31
    sget-object v2, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Ljdk/internal/misc/Unsafe;

    invoke-static {p2, v1}, Ljava/io/Bits;->getShort([BI)S

    move-result v3

    invoke-virtual {v2, p1, v4, v5, v3}, Ljdk/internal/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 2212
    move-object v3, p1

    goto :goto_7c

    .line 2223
    :sswitch_3c
    sget-object v2, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Ljdk/internal/misc/Unsafe;

    invoke-static {p2, v1}, Ljava/io/Bits;->getLong([BI)J

    move-result-wide v6

    move-object v3, p1

    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v3    # "obj":Ljava/lang/Object;
    invoke-virtual/range {v2 .. v7}, Ljdk/internal/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 2224
    goto :goto_7c

    .line 2215
    .end local v3    # "obj":Ljava/lang/Object;
    .restart local p1    # "obj":Ljava/lang/Object;
    :sswitch_47
    move-object v3, p1

    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v3    # "obj":Ljava/lang/Object;
    sget-object p1, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Ljdk/internal/misc/Unsafe;

    invoke-static {p2, v1}, Ljava/io/Bits;->getInt([BI)I

    move-result v2

    invoke-virtual {p1, v3, v4, v5, v2}, Ljdk/internal/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2216
    goto :goto_7c

    .line 2219
    .end local v3    # "obj":Ljava/lang/Object;
    .restart local p1    # "obj":Ljava/lang/Object;
    :sswitch_52
    move-object v3, p1

    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v3    # "obj":Ljava/lang/Object;
    sget-object p1, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Ljdk/internal/misc/Unsafe;

    invoke-static {p2, v1}, Ljava/io/Bits;->getFloat([BI)F

    move-result v2

    invoke-virtual {p1, v3, v4, v5, v2}, Ljdk/internal/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    .line 2220
    goto :goto_7c

    .line 2227
    .end local v3    # "obj":Ljava/lang/Object;
    .restart local p1    # "obj":Ljava/lang/Object;
    :sswitch_5d
    move-object v3, p1

    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v3    # "obj":Ljava/lang/Object;
    sget-object v2, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Ljdk/internal/misc/Unsafe;

    invoke-static {p2, v1}, Ljava/io/Bits;->getDouble([BI)D

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljdk/internal/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    .line 2228
    goto :goto_7c

    .line 2207
    .end local v3    # "obj":Ljava/lang/Object;
    .restart local p1    # "obj":Ljava/lang/Object;
    :sswitch_68
    move-object v3, p1

    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v3    # "obj":Ljava/lang/Object;
    sget-object p1, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Ljdk/internal/misc/Unsafe;

    invoke-static {p2, v1}, Ljava/io/Bits;->getChar([BI)C

    move-result v2

    invoke-virtual {p1, v3, v4, v5, v2}, Ljdk/internal/misc/Unsafe;->putChar(Ljava/lang/Object;JC)V

    .line 2208
    goto :goto_7c

    .line 2203
    .end local v3    # "obj":Ljava/lang/Object;
    .restart local p1    # "obj":Ljava/lang/Object;
    :sswitch_73
    move-object v3, p1

    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v3    # "obj":Ljava/lang/Object;
    sget-object p1, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Ljdk/internal/misc/Unsafe;

    aget-byte v2, p2, v1

    invoke-virtual {p1, v3, v4, v5, v2}, Ljdk/internal/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 2204
    nop

    .line 2191
    .end local v1    # "off":I
    .end local v4    # "key":J
    :goto_7c
    add-int/lit8 v0, v0, 0x1

    move-object p1, v3

    goto :goto_3

    .line 2234
    .end local v0    # "i":I
    .end local v3    # "obj":Ljava/lang/Object;
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_80
    return-void

    .line 2189
    :cond_81
    move-object v3, p1

    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v3    # "obj":Ljava/lang/Object;
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :sswitch_data_88
    .sparse-switch
        0x42 -> :sswitch_73
        0x43 -> :sswitch_68
        0x44 -> :sswitch_5d
        0x46 -> :sswitch_52
        0x49 -> :sswitch_47
        0x4a -> :sswitch_3c
        0x53 -> :sswitch_31
        0x5a -> :sswitch_26
    .end sparse-switch
.end method
