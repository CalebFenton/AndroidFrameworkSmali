.class public Lcom/android/internal/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field private static final CACHE_SIZE:I = 0x49

.field private static sCache:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 37
    const/16 v0, 0x49

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    sput-object v0, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    #@6
    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet",
            "<TT;>;TT;)",
            "Landroid/util/ArraySet",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 344
    .local p0, "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    #@2
    .line 345
    new-instance p0, Landroid/util/ArraySet;

    #@4
    .end local p0    # "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    #@7
    .line 347
    .restart local p0    # "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@a
    .line 348
    return-object p0
.end method

.method public static add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 368
    .local p0, "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    #@2
    .line 369
    new-instance p0, Ljava/util/ArrayList;

    #@4
    .end local p0    # "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 371
    .restart local p0    # "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a
    .line 372
    return-object p0
.end method

.method public static appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    #@1
    .line 217
    if-eqz p1, :cond_1

    #@3
    .line 218
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    return-object p1

    #@a
    .line 219
    :cond_0
    array-length v0, p1

    #@b
    .line 220
    .local v0, "end":I
    add-int/lit8 v2, v0, 0x1

    #@d
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, [Ljava/lang/Object;

    #@13
    .line 221
    .local v1, "result":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@16
    .line 226
    :goto_0
    aput-object p2, v1, v0

    #@18
    .line 227
    return-object v1

    #@19
    .line 223
    .end local v0    # "end":I
    .end local v1    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_1
    const/4 v0, 0x0

    #@1a
    .line 224
    .restart local v0    # "end":I
    const/4 v2, 0x1

    #@1b
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, [Ljava/lang/Object;

    #@21
    .restart local v1    # "result":[Ljava/lang/Object;, "[TT;"
    goto :goto_0
.end method

.method public static appendInt([II)[I
    .locals 5
    .param p0, "cur"    # [I
    .param p1, "val"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 258
    if-nez p0, :cond_0

    #@3
    .line 259
    const/4 v3, 0x1

    #@4
    new-array v3, v3, [I

    #@6
    aput p1, v3, v4

    #@8
    return-object v3

    #@9
    .line 261
    :cond_0
    array-length v0, p0

    #@a
    .line 262
    .local v0, "N":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@d
    .line 263
    aget v3, p0, v1

    #@f
    if-ne v3, p1, :cond_1

    #@11
    .line 264
    return-object p0

    #@12
    .line 262
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 267
    :cond_2
    add-int/lit8 v3, v0, 0x1

    #@17
    new-array v2, v3, [I

    #@19
    .line 268
    .local v2, "ret":[I
    invoke-static {p0, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@1c
    .line 269
    aput p1, v2, v0

    #@1e
    .line 270
    return-object v2
.end method

.method public static appendLong([JJ)[J
    .locals 7
    .param p0, "cur"    # [J
    .param p1, "val"    # J

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 301
    if-nez p0, :cond_0

    #@3
    .line 302
    const/4 v3, 0x1

    #@4
    new-array v3, v3, [J

    #@6
    aput-wide p1, v3, v6

    #@8
    return-object v3

    #@9
    .line 304
    :cond_0
    array-length v0, p0

    #@a
    .line 305
    .local v0, "N":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@d
    .line 306
    aget-wide v4, p0, v1

    #@f
    cmp-long v3, v4, p1

    #@11
    if-nez v3, :cond_1

    #@13
    .line 307
    return-object p0

    #@14
    .line 305
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 310
    :cond_2
    add-int/lit8 v3, v0, 0x1

    #@19
    new-array v2, v3, [J

    #@1b
    .line 311
    .local v2, "ret":[J
    invoke-static {p0, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@1e
    .line 312
    aput-wide p1, v2, v0

    #@20
    .line 313
    return-object v2
.end method

.method public static cloneOrNull([J)[J
    .locals 1
    .param p0, "array"    # [J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 340
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [J

    #@9
    :cond_0
    return-object v0
.end method

.method public static contains(Landroid/util/ArraySet;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet",
            "<TT;>;TT;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 364
    .local p0, "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public static contains(Ljava/util/ArrayList;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 388
    .local p0, "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public static contains([II)Z
    .locals 4
    .param p0, "array"    # [I
    .param p1, "value"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 182
    if-nez p0, :cond_0

    #@3
    return v2

    #@4
    .line 183
    :cond_0
    array-length v3, p0

    #@5
    move v1, v2

    #@6
    :goto_0
    if-ge v1, v3, :cond_2

    #@8
    aget v0, p0, v1

    #@a
    .line 184
    .local v0, "element":I
    if-ne v0, p1, :cond_1

    #@c
    .line 185
    const/4 v1, 0x1

    #@d
    return v1

    #@e
    .line 183
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 188
    .end local v0    # "element":I
    :cond_2
    return v2
.end method

.method public static contains([JJ)Z
    .locals 7
    .param p0, "array"    # [J
    .param p1, "value"    # J

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 192
    if-nez p0, :cond_0

    #@3
    return v3

    #@4
    .line 193
    :cond_0
    array-length v4, p0

    #@5
    move v2, v3

    #@6
    :goto_0
    if-ge v2, v4, :cond_2

    #@8
    aget-wide v0, p0, v2

    #@a
    .line 194
    .local v0, "element":J
    cmp-long v5, v0, p1

    #@c
    if-nez v5, :cond_1

    #@e
    .line 195
    const/4 v2, 0x1

    #@f
    return v2

    #@10
    .line 193
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 198
    .end local v0    # "element":J
    :cond_2
    return v3
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 153
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public static containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "check":[Ljava/lang/Object;, "[TT;"
    const/4 v5, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 172
    if-nez p1, :cond_0

    #@4
    return v5

    #@5
    .line 173
    :cond_0
    array-length v3, p1

    #@6
    move v1, v2

    #@7
    :goto_0
    if-ge v1, v3, :cond_2

    #@9
    aget-object v0, p1, v1

    #@b
    .line 174
    .local v0, "checkItem":Ljava/lang/Object;, "TT;"
    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@e
    move-result v4

    #@f
    if-nez v4, :cond_1

    #@11
    .line 175
    return v2

    #@12
    .line 173
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 178
    .end local v0    # "checkItem":Ljava/lang/Object;, "TT;"
    :cond_2
    return v5
.end method

.method public static emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 108
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v2, Ljava/lang/Object;

    #@2
    if-ne p0, v2, :cond_0

    #@4
    .line 109
    sget-object v2, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@6
    return-object v2

    #@7
    .line 112
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->hashCode()I

    #@a
    move-result v2

    #@b
    const v3, 0x7fffffff

    #@e
    and-int/2addr v2, v3

    #@f
    rem-int/lit8 v0, v2, 0x49

    #@11
    .line 113
    .local v0, "bucket":I
    sget-object v2, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    #@13
    aget-object v1, v2, v0

    #@15
    .line 115
    .local v1, "cache":Ljava/lang/Object;
    if-eqz v1, :cond_1

    #@17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@1e
    move-result-object v2

    #@1f
    if-eq v2, p0, :cond_2

    #@21
    .line 116
    :cond_1
    const/4 v2, 0x0

    #@22
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    .line 117
    sget-object v2, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    #@28
    aput-object v1, v2, v0

    #@2a
    .line 122
    :cond_2
    check-cast v1, [Ljava/lang/Object;

    #@2c
    .end local v1    # "cache":Ljava/lang/Object;
    return-object v1
.end method

.method public static equals([B[BI)Z
    .locals 5
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B
    .param p2, "length"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 83
    if-gez p2, :cond_0

    #@4
    .line 84
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@9
    throw v1

    #@a
    .line 87
    :cond_0
    if-ne p0, p1, :cond_1

    #@c
    .line 88
    return v4

    #@d
    .line 90
    :cond_1
    if-eqz p0, :cond_2

    #@f
    if-nez p1, :cond_3

    #@11
    .line 91
    :cond_2
    return v3

    #@12
    .line 90
    :cond_3
    array-length v1, p0

    #@13
    if-lt v1, p2, :cond_2

    #@15
    array-length v1, p1

    #@16
    if-lt v1, p2, :cond_2

    #@18
    .line 93
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_5

    #@1b
    .line 94
    aget-byte v1, p0, v0

    #@1d
    aget-byte v2, p1, v0

    #@1f
    if-eq v1, v2, :cond_4

    #@21
    .line 95
    return v3

    #@22
    .line 93
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 98
    :cond_5
    return v4
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v2, -0x1

    #@1
    .line 161
    if-nez p0, :cond_0

    #@3
    return v2

    #@4
    .line 162
    :cond_0
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@6
    if-ge v0, v1, :cond_2

    #@8
    .line 163
    aget-object v1, p0, v0

    #@a
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    return v0

    #@11
    .line 162
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 165
    :cond_2
    return v2
.end method

.method public static isEmpty([I)Z
    .locals 3
    .param p0, "array"    # [I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 136
    if-eqz p0, :cond_0

    #@4
    array-length v2, p0

    #@5
    if-nez v2, :cond_1

    #@7
    :cond_0
    :goto_0
    return v0

    #@8
    :cond_1
    move v0, v1

    #@9
    goto :goto_0
.end method

.method public static isEmpty([J)Z
    .locals 3
    .param p0, "array"    # [J

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 143
    if-eqz p0, :cond_0

    #@4
    array-length v2, p0

    #@5
    if-nez v2, :cond_1

    #@7
    :cond_0
    :goto_0
    return v0

    #@8
    :cond_1
    move v0, v1

    #@9
    goto :goto_0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 129
    if-eqz p0, :cond_0

    #@4
    array-length v2, p0

    #@5
    if-nez v2, :cond_1

    #@7
    :cond_0
    :goto_0
    return v0

    #@8
    :cond_1
    move v0, v1

    #@9
    goto :goto_0
.end method

.method public static newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;
    .locals 1
    .param p1, "minLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 71
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0, p1}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, [Ljava/lang/Object;

    #@a
    return-object v0
.end method

.method public static newUnpaddedBooleanArray(I)[Z
    .locals 2
    .param p0, "minLen"    # I

    #@0
    .prologue
    .line 54
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@6
    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [Z

    #@c
    return-object v0
.end method

.method public static newUnpaddedByteArray(I)[B
    .locals 2
    .param p0, "minLen"    # I

    #@0
    .prologue
    .line 42
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@6
    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [B

    #@c
    return-object v0
.end method

.method public static newUnpaddedCharArray(I)[C
    .locals 2
    .param p0, "minLen"    # I

    #@0
    .prologue
    .line 46
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@6
    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [C

    #@c
    return-object v0
.end method

.method public static newUnpaddedFloatArray(I)[F
    .locals 2
    .param p0, "minLen"    # I

    #@0
    .prologue
    .line 62
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@6
    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [F

    #@c
    return-object v0
.end method

.method public static newUnpaddedIntArray(I)[I
    .locals 2
    .param p0, "minLen"    # I

    #@0
    .prologue
    .line 50
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@6
    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [I

    #@c
    return-object v0
.end method

.method public static newUnpaddedLongArray(I)[J
    .locals 2
    .param p0, "minLen"    # I

    #@0
    .prologue
    .line 58
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@6
    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [J

    #@c
    return-object v0
.end method

.method public static newUnpaddedObjectArray(I)[Ljava/lang/Object;
    .locals 2
    .param p0, "minLen"    # I

    #@0
    .prologue
    .line 66
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3
    move-result-object v0

    #@4
    const-class v1, Ljava/lang/Object;

    #@6
    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [Ljava/lang/Object;

    #@c
    return-object v0
.end method

.method public static referenceEquals(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/ArrayList",
            "<TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "b":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 396
    if-ne p0, p1, :cond_0

    #@4
    .line 397
    return v5

    #@5
    .line 400
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v2

    #@9
    .line 401
    .local v2, "sizeA":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v3

    #@d
    .line 402
    .local v3, "sizeB":I
    if-eqz p0, :cond_1

    #@f
    if-nez p1, :cond_2

    #@11
    .line 403
    :cond_1
    return v6

    #@12
    .line 402
    :cond_2
    if-ne v2, v3, :cond_1

    #@14
    .line 406
    const/4 v0, 0x0

    #@15
    .line 407
    .local v0, "diff":Z
    const/4 v1, 0x0

    #@16
    .end local v0    # "diff":Z
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    #@18
    if-eqz v0, :cond_4

    #@1a
    .line 410
    :cond_3
    if-eqz v0, :cond_6

    #@1c
    :goto_1
    return v6

    #@1d
    .line 408
    :cond_4
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v7

    #@25
    if-eq v4, v7, :cond_5

    #@27
    move v4, v5

    #@28
    :goto_2
    or-int/2addr v0, v4

    #@29
    .line 407
    .local v0, "diff":Z
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .end local v0    # "diff":Z
    :cond_5
    move v4, v6

    #@2d
    .line 408
    goto :goto_2

    #@2e
    :cond_6
    move v6, v5

    #@2f
    .line 410
    goto :goto_1
.end method

.method public static remove(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet",
            "<TT;>;TT;)",
            "Landroid/util/ArraySet",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    #@1
    .line 352
    if-nez p0, :cond_0

    #@3
    .line 353
    return-object v1

    #@4
    .line 355
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@7
    .line 356
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 357
    return-object v1

    #@e
    .line 359
    :cond_1
    return-object p0
.end method

.method public static remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    #@1
    .line 376
    if-nez p0, :cond_0

    #@3
    .line 377
    return-object v1

    #@4
    .line 379
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@7
    .line 380
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 381
    return-object v1

    #@e
    .line 383
    :cond_1
    return-object p0
.end method

.method public static removeElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 235
    if-eqz p1, :cond_3

    #@4
    .line 236
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@7
    move-result v3

    #@8
    if-nez v3, :cond_0

    #@a
    return-object p1

    #@b
    .line 237
    :cond_0
    array-length v1, p1

    #@c
    .line 238
    .local v1, "length":I
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@f
    .line 239
    aget-object v3, p1, v0

    #@11
    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_2

    #@17
    .line 240
    const/4 v3, 0x1

    #@18
    if-ne v1, v3, :cond_1

    #@1a
    .line 241
    return-object v5

    #@1b
    .line 243
    :cond_1
    add-int/lit8 v3, v1, -0x1

    #@1d
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, [Ljava/lang/Object;

    #@23
    .line 244
    .local v2, "result":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@26
    .line 245
    add-int/lit8 v3, v0, 0x1

    #@28
    sub-int v4, v1, v0

    #@2a
    add-int/lit8 v4, v4, -0x1

    #@2c
    invoke-static {p1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2f
    .line 246
    return-object v2

    #@30
    .line 238
    .end local v2    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_0

    #@33
    .line 250
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_3
    return-object p1
.end method

.method public static removeInt([II)[I
    .locals 5
    .param p0, "cur"    # [I
    .param p1, "val"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 277
    if-nez p0, :cond_0

    #@4
    .line 278
    return-object v3

    #@5
    .line 280
    :cond_0
    array-length v0, p0

    #@6
    .line 281
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    #@9
    .line 282
    aget v3, p0, v1

    #@b
    if-ne v3, p1, :cond_3

    #@d
    .line 283
    add-int/lit8 v3, v0, -0x1

    #@f
    new-array v2, v3, [I

    #@11
    .line 284
    .local v2, "ret":[I
    if-lez v1, :cond_1

    #@13
    .line 285
    invoke-static {p0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@16
    .line 287
    :cond_1
    add-int/lit8 v3, v0, -0x1

    #@18
    if-ge v1, v3, :cond_2

    #@1a
    .line 288
    add-int/lit8 v3, v1, 0x1

    #@1c
    sub-int v4, v0, v1

    #@1e
    add-int/lit8 v4, v4, -0x1

    #@20
    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@23
    .line 290
    :cond_2
    return-object v2

    #@24
    .line 281
    .end local v2    # "ret":[I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 293
    :cond_4
    return-object p0
.end method

.method public static removeLong([JJ)[J
    .locals 7
    .param p0, "cur"    # [J
    .param p1, "val"    # J

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 320
    if-nez p0, :cond_0

    #@4
    .line 321
    return-object v3

    #@5
    .line 323
    :cond_0
    array-length v0, p0

    #@6
    .line 324
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    #@9
    .line 325
    aget-wide v4, p0, v1

    #@b
    cmp-long v3, v4, p1

    #@d
    if-nez v3, :cond_3

    #@f
    .line 326
    add-int/lit8 v3, v0, -0x1

    #@11
    new-array v2, v3, [J

    #@13
    .line 327
    .local v2, "ret":[J
    if-lez v1, :cond_1

    #@15
    .line 328
    invoke-static {p0, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@18
    .line 330
    :cond_1
    add-int/lit8 v3, v0, -0x1

    #@1a
    if-ge v1, v3, :cond_2

    #@1c
    .line 331
    add-int/lit8 v3, v1, 0x1

    #@1e
    sub-int v4, v0, v1

    #@20
    add-int/lit8 v4, v4, -0x1

    #@22
    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@25
    .line 333
    :cond_2
    return-object v2

    #@26
    .line 324
    .end local v2    # "ret":[J
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 336
    :cond_4
    return-object p0
.end method

.method public static total([J)J
    .locals 6
    .param p0, "array"    # [J

    #@0
    .prologue
    .line 202
    const-wide/16 v0, 0x0

    #@2
    .line 203
    .local v0, "total":J
    const/4 v4, 0x0

    #@3
    array-length v5, p0

    #@4
    :goto_0
    if-ge v4, v5, :cond_0

    #@6
    aget-wide v2, p0, v4

    #@8
    .line 204
    .local v2, "value":J
    add-long/2addr v0, v2

    #@9
    .line 203
    add-int/lit8 v4, v4, 0x1

    #@b
    goto :goto_0

    #@c
    .line 206
    .end local v2    # "value":J
    :cond_0
    return-wide v0
.end method
