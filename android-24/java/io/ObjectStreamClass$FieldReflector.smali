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
.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final fields:[Ljava/io/ObjectStreamField;

.field private final numPrimFields:I

.field private final offsets:[I

.field private final readKeys:[J

.field private final typeCodes:[C

.field private final types:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final writeKeys:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1859
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    #@6
    .line 1856
    return-void
.end method

.method constructor <init>([Ljava/io/ObjectStreamField;)V
    .locals 11
    .param p1, "fields"    # [Ljava/io/ObjectStreamField;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1884
    iput-object p1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->fields:[Ljava/io/ObjectStreamField;

    #@6
    .line 1885
    array-length v4, p1

    #@7
    .line 1886
    .local v4, "nfields":I
    new-array v8, v4, [J

    #@9
    iput-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->readKeys:[J

    #@b
    .line 1887
    new-array v8, v4, [J

    #@d
    iput-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->writeKeys:[J

    #@f
    .line 1888
    new-array v8, v4, [I

    #@11
    iput-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    #@13
    .line 1889
    new-array v8, v4, [C

    #@15
    iput-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    #@17
    .line 1890
    new-instance v6, Ljava/util/ArrayList;

    #@19
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@1c
    .line 1891
    .local v6, "typeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    new-instance v7, Ljava/util/HashSet;

    #@1e
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    #@21
    .line 1894
    .local v7, "usedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    #@22
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_4

    #@24
    .line 1895
    aget-object v0, p1, v1

    #@26
    .line 1896
    .local v0, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    #@29
    move-result-object v5

    #@2a
    .line 1897
    .local v5, "rf":Ljava/lang/reflect/Field;
    if-eqz v5, :cond_1

    #@2c
    .line 1898
    sget-object v8, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    #@2e
    invoke-virtual {v8, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@31
    move-result-wide v2

    #@32
    .line 1899
    .local v2, "key":J
    :goto_1
    iget-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->readKeys:[J

    #@34
    aput-wide v2, v8, v1

    #@36
    .line 1900
    iget-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->writeKeys:[J

    #@38
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3b
    move-result-object v10

    #@3c
    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3f
    move-result v10

    #@40
    if-eqz v10, :cond_2

    #@42
    .end local v2    # "key":J
    :goto_2
    aput-wide v2, v8, v1

    #@44
    .line 1902
    iget-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    #@46
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getOffset()I

    #@49
    move-result v10

    #@4a
    aput v10, v8, v1

    #@4c
    .line 1903
    iget-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    #@4e
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getTypeCode()C

    #@51
    move-result v10

    #@52
    aput-char v10, v8, v1

    #@54
    .line 1904
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    #@57
    move-result v8

    #@58
    if-nez v8, :cond_0

    #@5a
    .line 1905
    if-eqz v5, :cond_3

    #@5c
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@5f
    move-result-object v8

    #@60
    :goto_3
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@63
    .line 1894
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@65
    goto :goto_0

    #@66
    .line 1898
    :cond_1
    const-wide/16 v2, -0x1

    #@68
    .restart local v2    # "key":J
    goto :goto_1

    #@69
    .line 1901
    :cond_2
    const-wide/16 v2, -0x1

    #@6b
    goto :goto_2

    #@6c
    .end local v2    # "key":J
    :cond_3
    move-object v8, v9

    #@6d
    .line 1905
    goto :goto_3

    #@6e
    .line 1909
    .end local v0    # "f":Ljava/io/ObjectStreamField;
    .end local v5    # "rf":Ljava/lang/reflect/Field;
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@71
    move-result v8

    #@72
    new-array v8, v8, [Ljava/lang/Class;

    #@74
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@77
    move-result-object v8

    #@78
    check-cast v8, [Ljava/lang/Class;

    #@7a
    iput-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->types:[Ljava/lang/Class;

    #@7c
    .line 1910
    iget-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->types:[Ljava/lang/Class;

    #@7e
    array-length v8, v8

    #@7f
    sub-int v8, v4, v8

    #@81
    iput v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    #@83
    .line 1883
    return-void
.end method


# virtual methods
.method getFields()[Ljava/io/ObjectStreamField;
    .locals 1

    #@0
    .prologue
    .line 1920
    iget-object v0, p0, Ljava/io/ObjectStreamClass$FieldReflector;->fields:[Ljava/io/ObjectStreamField;

    #@2
    return-object v0
.end method

.method getObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "vals"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 2038
    if-nez p1, :cond_0

    #@2
    .line 2039
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 2045
    :cond_0
    iget v0, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    #@a
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->fields:[Ljava/io/ObjectStreamField;

    #@c
    array-length v1, v1

    #@d
    if-ge v0, v1, :cond_1

    #@f
    .line 2046
    iget-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    #@11
    aget-char v1, v1, v0

    #@13
    sparse-switch v1, :sswitch_data_0

    #@16
    .line 2053
    new-instance v1, Ljava/lang/InternalError;

    #@18
    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    #@1b
    throw v1

    #@1c
    .line 2049
    :sswitch_0
    iget-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    #@1e
    aget v1, v1, v0

    #@20
    sget-object v2, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    #@22
    iget-object v3, p0, Ljava/io/ObjectStreamClass$FieldReflector;->readKeys:[J

    #@24
    aget-wide v4, v3, v0

    #@26
    invoke-virtual {v2, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    aput-object v2, p2, v1

    #@2c
    .line 2045
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 2037
    :cond_1
    return-void

    #@30
    .line 2046
    :sswitch_data_0
    .sparse-switch
        0x4c -> :sswitch_0
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method getPrimFieldValues(Ljava/lang/Object;[B)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "buf"    # [B

    #@0
    .prologue
    .line 1929
    if-nez p1, :cond_0

    #@2
    .line 1930
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v4

    #@8
    .line 1936
    :cond_0
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    iget v4, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    #@b
    if-ge v0, v4, :cond_1

    #@d
    .line 1937
    iget-object v4, p0, Ljava/io/ObjectStreamClass$FieldReflector;->readKeys:[J

    #@f
    aget-wide v2, v4, v0

    #@11
    .line 1938
    .local v2, "key":J
    iget-object v4, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    #@13
    aget v1, v4, v0

    #@15
    .line 1939
    .local v1, "off":I
    iget-object v4, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    #@17
    aget-char v4, v4, v0

    #@19
    sparse-switch v4, :sswitch_data_0

    #@1c
    .line 1973
    new-instance v4, Ljava/lang/InternalError;

    #@1e
    invoke-direct {v4}, Ljava/lang/InternalError;-><init>()V

    #@21
    throw v4

    #@22
    .line 1941
    :sswitch_0
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    #@24
    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    #@27
    move-result v4

    #@28
    invoke-static {p2, v1, v4}, Ljava/io/Bits;->putBoolean([BIZ)V

    #@2b
    .line 1936
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 1945
    :sswitch_1
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    #@30
    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    #@33
    move-result v4

    #@34
    aput-byte v4, p2, v1

    #@36
    goto :goto_1

    #@37
    .line 1949
    :sswitch_2
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    #@39
    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    #@3c
    move-result v4

    #@3d
    invoke-static {p2, v1, v4}, Ljava/io/Bits;->putChar([BIC)V

    #@40
    goto :goto_1

    #@41
    .line 1953
    :sswitch_3
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    #@43
    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    #@46
    move-result v4

    #@47
    invoke-static {p2, v1, v4}, Ljava/io/Bits;->putShort([BIS)V

    #@4a
    goto :goto_1

    #@4b
    .line 1957
    :sswitch_4
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    #@4d
    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    #@50
    move-result v4

    #@51
    invoke-static {p2, v1, v4}, Ljava/io/Bits;->putInt([BII)V

    #@54
    goto :goto_1

    #@55
    .line 1961
    :sswitch_5
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    #@57
    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    #@5a
    move-result v4

    #@5b
    invoke-static {p2, v1, v4}, Ljava/io/Bits;->putFloat([BIF)V

    #@5e
    goto :goto_1

    #@5f
    .line 1965
    :sswitch_6
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    #@61
    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    #@64
    move-result-wide v4

    #@65
    invoke-static {p2, v1, v4, v5}, Ljava/io/Bits;->putLong([BIJ)V

    #@68
    goto :goto_1

    #@69
    .line 1969
    :sswitch_7
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    #@6b
    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    #@6e
    move-result-wide v4

    #@6f
    invoke-static {p2, v1, v4, v5}, Ljava/io/Bits;->putDouble([BID)V

    #@72
    goto :goto_1

    #@73
    .line 1928
    .end local v1    # "off":I
    .end local v2    # "key":J
    :cond_1
    return-void

    #@74
    .line 1939
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x43 -> :sswitch_2
        0x44 -> :sswitch_7
        0x46 -> :sswitch_5
        0x49 -> :sswitch_4
        0x4a -> :sswitch_6
        0x53 -> :sswitch_3
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method setObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "vals"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 2066
    if-nez p1, :cond_0

    #@2
    .line 2067
    new-instance v5, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v5

    #@8
    .line 2069
    :cond_0
    iget v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    #@a
    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Ljava/io/ObjectStreamClass$FieldReflector;->fields:[Ljava/io/ObjectStreamField;

    #@c
    array-length v5, v5

    #@d
    if-ge v1, v5, :cond_4

    #@f
    .line 2070
    iget-object v5, p0, Ljava/io/ObjectStreamClass$FieldReflector;->writeKeys:[J

    #@11
    aget-wide v2, v5, v1

    #@13
    .line 2071
    .local v2, "key":J
    const-wide/16 v6, -0x1

    #@15
    cmp-long v5, v2, v6

    #@17
    if-nez v5, :cond_1

    #@19
    .line 2069
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 2074
    :cond_1
    iget-object v5, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    #@1e
    aget-char v5, v5, v1

    #@20
    sparse-switch v5, :sswitch_data_0

    #@23
    .line 2094
    new-instance v5, Ljava/lang/InternalError;

    #@25
    invoke-direct {v5}, Ljava/lang/InternalError;-><init>()V

    #@28
    throw v5

    #@29
    .line 2077
    :sswitch_0
    iget-object v5, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    #@2b
    aget v5, v5, v1

    #@2d
    aget-object v4, p2, v5

    #@2f
    .line 2078
    .local v4, "val":Ljava/lang/Object;
    if-eqz v4, :cond_2

    #@31
    .line 2079
    iget-object v5, p0, Ljava/io/ObjectStreamClass$FieldReflector;->types:[Ljava/lang/Class;

    #@33
    iget v6, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    #@35
    sub-int v6, v1, v6

    #@37
    aget-object v5, v5, v6

    #@39
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@3c
    move-result v5

    #@3d
    if-eqz v5, :cond_3

    #@3f
    .line 2090
    :cond_2
    sget-object v5, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    #@41
    invoke-virtual {v5, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@44
    goto :goto_1

    #@45
    .line 2081
    :cond_3
    iget-object v5, p0, Ljava/io/ObjectStreamClass$FieldReflector;->fields:[Ljava/io/ObjectStreamField;

    #@47
    aget-object v5, v5, v1

    #@49
    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    #@4c
    move-result-object v0

    #@4d
    .line 2082
    .local v0, "f":Ljava/lang/reflect/Field;
    new-instance v5, Ljava/lang/ClassCastException;

    #@4f
    .line 2083
    new-instance v6, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v7, "cannot assign instance of "

    #@57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    .line 2084
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5e
    move-result-object v7

    #@5f
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@62
    move-result-object v7

    #@63
    .line 2083
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    .line 2084
    const-string/jumbo v7, " to field "

    #@6a
    .line 2083
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    .line 2085
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    #@71
    move-result-object v7

    #@72
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@75
    move-result-object v7

    #@76
    .line 2083
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v6

    #@7a
    .line 2085
    const-string/jumbo v7, "."

    #@7d
    .line 2083
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v6

    #@81
    .line 2086
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@84
    move-result-object v7

    #@85
    .line 2083
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v6

    #@89
    .line 2086
    const-string/jumbo v7, " of type "

    #@8c
    .line 2083
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v6

    #@90
    .line 2087
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@93
    move-result-object v7

    #@94
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@97
    move-result-object v7

    #@98
    .line 2083
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v6

    #@9c
    .line 2087
    const-string/jumbo v7, " in instance of "

    #@9f
    .line 2083
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v6

    #@a3
    .line 2088
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a6
    move-result-object v7

    #@a7
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@aa
    move-result-object v7

    #@ab
    .line 2083
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v6

    #@af
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v6

    #@b3
    .line 2082
    invoke-direct {v5, v6}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@b6
    throw v5

    #@b7
    .line 2065
    .end local v0    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "key":J
    .end local v4    # "val":Ljava/lang/Object;
    :cond_4
    return-void

    #@b8
    .line 2074
    :sswitch_data_0
    .sparse-switch
        0x4c -> :sswitch_0
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method setPrimFieldValues(Ljava/lang/Object;[B)V
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "buf"    # [B

    #@0
    .prologue
    .line 1984
    if-nez p1, :cond_0

    #@2
    .line 1985
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1987
    :cond_0
    const/4 v6, 0x0

    #@9
    .local v6, "i":I
    :goto_0
    iget v0, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    #@b
    if-ge v6, v0, :cond_2

    #@d
    .line 1988
    iget-object v0, p0, Ljava/io/ObjectStreamClass$FieldReflector;->writeKeys:[J

    #@f
    aget-wide v2, v0, v6

    #@11
    .line 1989
    .local v2, "key":J
    const-wide/16 v0, -0x1

    #@13
    cmp-long v0, v2, v0

    #@15
    if-nez v0, :cond_1

    #@17
    .line 1987
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1992
    :cond_1
    iget-object v0, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    #@1c
    aget v7, v0, v6

    #@1e
    .line 1993
    .local v7, "off":I
    iget-object v0, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    #@20
    aget-char v0, v0, v6

    #@22
    sparse-switch v0, :sswitch_data_0

    #@25
    .line 2027
    new-instance v0, Ljava/lang/InternalError;

    #@27
    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    #@2a
    throw v0

    #@2b
    .line 1995
    :sswitch_0
    sget-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    #@2d
    invoke-static {p2, v7}, Ljava/io/Bits;->getBoolean([BI)Z

    #@30
    move-result v1

    #@31
    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    #@34
    goto :goto_1

    #@35
    .line 1999
    :sswitch_1
    sget-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    #@37
    aget-byte v1, p2, v7

    #@39
    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    #@3c
    goto :goto_1

    #@3d
    .line 2003
    :sswitch_2
    sget-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    #@3f
    invoke-static {p2, v7}, Ljava/io/Bits;->getChar([BI)C

    #@42
    move-result v1

    #@43
    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putChar(Ljava/lang/Object;JC)V

    #@46
    goto :goto_1

    #@47
    .line 2007
    :sswitch_3
    sget-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    #@49
    invoke-static {p2, v7}, Ljava/io/Bits;->getShort([BI)S

    #@4c
    move-result v1

    #@4d
    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    #@50
    goto :goto_1

    #@51
    .line 2011
    :sswitch_4
    sget-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    #@53
    invoke-static {p2, v7}, Ljava/io/Bits;->getInt([BI)I

    #@56
    move-result v1

    #@57
    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    #@5a
    goto :goto_1

    #@5b
    .line 2015
    :sswitch_5
    sget-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    #@5d
    invoke-static {p2, v7}, Ljava/io/Bits;->getFloat([BI)F

    #@60
    move-result v1

    #@61
    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    #@64
    goto :goto_1

    #@65
    .line 2019
    :sswitch_6
    sget-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    #@67
    invoke-static {p2, v7}, Ljava/io/Bits;->getLong([BI)J

    #@6a
    move-result-wide v4

    #@6b
    move-object v1, p1

    #@6c
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    #@6f
    goto :goto_1

    #@70
    .line 2023
    :sswitch_7
    sget-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    #@72
    invoke-static {p2, v7}, Ljava/io/Bits;->getDouble([BI)D

    #@75
    move-result-wide v4

    #@76
    move-object v1, p1

    #@77
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    #@7a
    goto :goto_1

    #@7b
    .line 1983
    .end local v2    # "key":J
    .end local v7    # "off":I
    :cond_2
    return-void

    #@7c
    .line 1993
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x43 -> :sswitch_2
        0x44 -> :sswitch_7
        0x46 -> :sswitch_5
        0x49 -> :sswitch_4
        0x4a -> :sswitch_6
        0x53 -> :sswitch_3
        0x5a -> :sswitch_0
    .end sparse-switch
.end method
