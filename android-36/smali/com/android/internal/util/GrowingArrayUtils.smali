.class public final Lcom/android/internal/util/GrowingArrayUtils;
.super Ljava/lang/Object;
.source "GrowingArrayUtils.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 32
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist append([FIF)[F
    .registers 5
    .param p0, "array"    # [F
    .param p1, "currentSize"    # I
    .param p2, "element"    # F

    .line 109
    nop

    .line 111
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-le v0, v1, :cond_13

    .line 112
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedFloatArray(I)[F

    move-result-object v0

    .line 113
    .local v0, "newArray":[F
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    move-object p0, v0

    .line 116
    .end local v0    # "newArray":[F
    :cond_13
    aput p2, p0, p1

    .line 117
    return-object p0
.end method

.method public static greylist-max-r append([III)[I
    .registers 5
    .param p0, "array"    # [I
    .param p1, "currentSize"    # I
    .param p2, "element"    # I

    .line 64
    nop

    .line 66
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-le v0, v1, :cond_13

    .line 67
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    .line 68
    .local v0, "newArray":[I
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    move-object p0, v0

    .line 71
    .end local v0    # "newArray":[I
    :cond_13
    aput p2, p0, p1

    .line 72
    return-object p0
.end method

.method public static blacklist append([JIJ)[J
    .registers 6
    .param p0, "array"    # [J
    .param p1, "currentSize"    # I
    .param p2, "element"    # J

    .line 79
    nop

    .line 81
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-le v0, v1, :cond_13

    .line 82
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    .line 83
    .local v0, "newArray":[J
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    move-object p0, v0

    .line 86
    .end local v0    # "newArray":[J
    :cond_13
    aput-wide p2, p0, p1

    .line 87
    return-object p0
.end method

.method public static greylist-max-r append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .param p1, "currentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .line 46
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    nop

    .line 48
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-le v0, v1, :cond_1c

    .line 50
    nop

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    .line 50
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 52
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    move-object p0, v0

    .line 55
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_1c
    aput-object p2, p0, p1

    .line 56
    return-object p0
.end method

.method public static blacklist append([ZIZ)[Z
    .registers 5
    .param p0, "array"    # [Z
    .param p1, "currentSize"    # I
    .param p2, "element"    # Z

    .line 94
    nop

    .line 96
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-le v0, v1, :cond_13

    .line 97
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedBooleanArray(I)[Z

    move-result-object v0

    .line 98
    .local v0, "newArray":[Z
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    move-object p0, v0

    .line 101
    .end local v0    # "newArray":[Z
    :cond_13
    aput-boolean p2, p0, p1

    .line 102
    return-object p0
.end method

.method public static blacklist growSize(I)I
    .registers 2
    .param p0, "currentSize"    # I

    .line 212
    const/4 v0, 0x4

    if-gt p0, v0, :cond_6

    const/16 v0, 0x8

    goto :goto_8

    :cond_6
    mul-int/lit8 v0, p0, 0x2

    :goto_8
    return v0
.end method

.method public static blacklist insert([IIII)[I
    .registers 7
    .param p0, "array"    # [I
    .param p1, "currentSize"    # I
    .param p2, "index"    # I
    .param p3, "element"    # I

    .line 153
    nop

    .line 155
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-gt v0, v1, :cond_10

    .line 156
    add-int/lit8 v0, p2, 0x1

    sub-int v1, p1, p2

    invoke-static {p0, p2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    aput p3, p0, p2

    .line 158
    return-object p0

    .line 161
    :cond_10
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    .line 162
    .local v0, "newArray":[I
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    aput p3, v0, p2

    .line 164
    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    return-object v0
.end method

.method public static blacklist insert([JIIJ)[J
    .registers 8
    .param p0, "array"    # [J
    .param p1, "currentSize"    # I
    .param p2, "index"    # I
    .param p3, "element"    # J

    .line 172
    nop

    .line 174
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-gt v0, v1, :cond_10

    .line 175
    add-int/lit8 v0, p2, 0x1

    sub-int v1, p1, p2

    invoke-static {p0, p2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    aput-wide p3, p0, p2

    .line 177
    return-object p0

    .line 180
    :cond_10
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    .line 181
    .local v0, "newArray":[J
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    aput-wide p3, v0, p2

    .line 183
    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    return-object v0
.end method

.method public static blacklist insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .param p1, "currentSize"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;)[TT;"
        }
    .end annotation

    .line 132
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p3, "element":Ljava/lang/Object;, "TT;"
    nop

    .line 134
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-gt v0, v1, :cond_10

    .line 135
    add-int/lit8 v0, p2, 0x1

    sub-int v1, p1, p2

    invoke-static {p0, p2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    aput-object p3, p0, p2

    .line 137
    return-object p0

    .line 141
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 142
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    .line 141
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 143
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    aput-object p3, v0, p2

    .line 145
    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    return-object v0
.end method

.method public static blacklist insert([ZIIZ)[Z
    .registers 7
    .param p0, "array"    # [Z
    .param p1, "currentSize"    # I
    .param p2, "index"    # I
    .param p3, "element"    # Z

    .line 191
    nop

    .line 193
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-gt v0, v1, :cond_10

    .line 194
    add-int/lit8 v0, p2, 0x1

    sub-int v1, p1, p2

    invoke-static {p0, p2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    aput-boolean p3, p0, p2

    .line 196
    return-object p0

    .line 199
    :cond_10
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedBooleanArray(I)[Z

    move-result-object v0

    .line 200
    .local v0, "newArray":[Z
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    aput-boolean p3, v0, p2

    .line 202
    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    return-object v0
.end method
