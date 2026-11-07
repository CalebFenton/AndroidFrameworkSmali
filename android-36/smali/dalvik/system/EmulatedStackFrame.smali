.class public Ldalvik/system/EmulatedStackFrame;
.super Ljava/lang/Object;
.source "EmulatedStackFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/EmulatedStackFrame$Range;,
        Ldalvik/system/EmulatedStackFrame$RandomOrderStackFrameReader;,
        Ldalvik/system/EmulatedStackFrame$StackFrameReader;,
        Ldalvik/system/EmulatedStackFrame$StackFrameWriter;,
        Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;
    }
.end annotation


# instance fields
.field private final greylist-max-o references:[Ljava/lang/Object;

.field private final greylist-max-o stackFrame:[B

.field private final greylist-max-o type:Ljava/lang/invoke/MethodType;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetreferences(Ldalvik/system/EmulatedStackFrame;)[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Ldalvik/system/EmulatedStackFrame;->references:[Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetstackFrame(Ldalvik/system/EmulatedStackFrame;)[B
    .registers 1

    iget-object p0, p0, Ldalvik/system/EmulatedStackFrame;->stackFrame:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettype(Ldalvik/system/EmulatedStackFrame;)Ljava/lang/invoke/MethodType;
    .registers 1

    iget-object p0, p0, Ldalvik/system/EmulatedStackFrame;->type:Ljava/lang/invoke/MethodType;

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/lang/invoke/MethodType;[Ljava/lang/Object;[B)V
    .registers 4
    .param p1, "type"    # Ljava/lang/invoke/MethodType;
    .param p2, "references"    # [Ljava/lang/Object;
    .param p3, "stackFrame"    # [B

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Ldalvik/system/EmulatedStackFrame;->type:Ljava/lang/invoke/MethodType;

    .line 81
    iput-object p2, p0, Ldalvik/system/EmulatedStackFrame;->references:[Ljava/lang/Object;

    .line 82
    iput-object p3, p0, Ldalvik/system/EmulatedStackFrame;->stackFrame:[B

    .line 83
    return-void
.end method

.method public static greylist-max-o create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;
    .registers 8
    .param p0, "frameType"    # Ljava/lang/invoke/MethodType;

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "numRefs":I
    const/4 v1, 0x0

    .line 170
    .local v1, "frameSize":I
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_1d

    aget-object v5, v2, v4

    .line 171
    .local v5, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_15

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 174
    :cond_15
    invoke-static {v5}, Ldalvik/system/EmulatedStackFrame;->getSize(Ljava/lang/Class;)I

    move-result v6

    add-int/2addr v1, v6

    .line 170
    .end local v5    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 178
    :cond_1d
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v2

    .line 179
    .local v2, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 182
    :cond_2a
    invoke-static {v2}, Ldalvik/system/EmulatedStackFrame;->getSize(Ljava/lang/Class;)I

    move-result v3

    add-int/2addr v1, v3

    .line 185
    :goto_2f
    new-instance v3, Ldalvik/system/EmulatedStackFrame;

    new-array v4, v0, [Ljava/lang/Object;

    new-array v5, v1, [B

    invoke-direct {v3, p0, v4, v5}, Ldalvik/system/EmulatedStackFrame;-><init>(Ljava/lang/invoke/MethodType;[Ljava/lang/Object;[B)V

    return-object v3
.end method

.method public static greylist-max-o getSize(Ljava/lang/Class;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 289
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 293
    invoke-static {p0}, Ldalvik/system/EmulatedStackFrame;->is64BitPrimitive(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 294
    const/16 v0, 0x8

    return v0

    .line 296
    :cond_f
    const/4 v0, 0x4

    return v0

    .line 290
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type.isPrimitive() == false: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o is64BitPrimitive(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 281
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_b

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method


# virtual methods
.method public greylist-max-o copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V
    .registers 9
    .param p1, "other"    # Ldalvik/system/EmulatedStackFrame;
    .param p2, "fromRange"    # Ldalvik/system/EmulatedStackFrame$Range;
    .param p3, "referencesStart"    # I
    .param p4, "primitivesStart"    # I

    .line 236
    iget v0, p2, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    if-lez v0, :cond_f

    .line 237
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame;->references:[Ljava/lang/Object;

    iget v1, p2, Ldalvik/system/EmulatedStackFrame$Range;->referencesStart:I

    iget-object v2, p1, Ldalvik/system/EmulatedStackFrame;->references:[Ljava/lang/Object;

    iget v3, p2, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    invoke-static {v0, v1, v2, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    :cond_f
    iget v0, p2, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    if-lez v0, :cond_1e

    .line 242
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame;->stackFrame:[B

    iget v1, p2, Ldalvik/system/EmulatedStackFrame$Range;->stackFrameStart:I

    iget-object v2, p1, Ldalvik/system/EmulatedStackFrame;->stackFrame:[B

    iget v3, p2, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    invoke-static {v0, v1, v2, p4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    :cond_1e
    return-void
.end method

.method public greylist-max-o copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V
    .registers 8
    .param p1, "other"    # Ldalvik/system/EmulatedStackFrame;

    .line 251
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame;->type:Ljava/lang/invoke/MethodType;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    .line 252
    .local v0, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 253
    iget-object v1, p1, Ldalvik/system/EmulatedStackFrame;->references:[Ljava/lang/Object;

    iget-object v2, p1, Ldalvik/system/EmulatedStackFrame;->references:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Ldalvik/system/EmulatedStackFrame;->references:[Ljava/lang/Object;

    iget-object v4, p0, Ldalvik/system/EmulatedStackFrame;->references:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    goto :goto_47

    .line 254
    :cond_1f
    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->is64BitPrimitive(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 255
    iget-object v1, p0, Ldalvik/system/EmulatedStackFrame;->stackFrame:[B

    iget-object v2, p0, Ldalvik/system/EmulatedStackFrame;->stackFrame:[B

    array-length v2, v2

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    iget-object v4, p1, Ldalvik/system/EmulatedStackFrame;->stackFrame:[B

    iget-object v5, p1, Ldalvik/system/EmulatedStackFrame;->stackFrame:[B

    array-length v5, v5

    sub-int/2addr v5, v3

    invoke-static {v1, v2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_47

    .line 258
    :cond_36
    iget-object v1, p0, Ldalvik/system/EmulatedStackFrame;->stackFrame:[B

    iget-object v2, p0, Ldalvik/system/EmulatedStackFrame;->stackFrame:[B

    array-length v2, v2

    const/16 v3, 0x8

    sub-int/2addr v2, v3

    iget-object v4, p1, Ldalvik/system/EmulatedStackFrame;->stackFrame:[B

    iget-object v5, p1, Ldalvik/system/EmulatedStackFrame;->stackFrame:[B

    array-length v5, v5

    sub-int/2addr v5, v3

    invoke-static {v1, v2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    :goto_47
    return-void
.end method

.method public final greylist-max-o getMethodType()Ljava/lang/invoke/MethodType;
    .registers 2

    .line 88
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame;->type:Ljava/lang/invoke/MethodType;

    return-object v0
.end method

.method public greylist-max-o getReference(ILjava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 221
    .local p2, "referenceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame;->type:Ljava/lang/invoke/MethodType;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    aget-object v0, v0, p1

    if-ne p2, v0, :cond_13

    .line 225
    invoke-virtual {p0, p1}, Ldalvik/system/EmulatedStackFrame;->getReferenceIndex(I)I

    move-result v0

    .line 226
    .local v0, "referenceIndex":I
    iget-object v1, p0, Ldalvik/system/EmulatedStackFrame;->references:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1

    .line 222
    .end local v0    # "referenceIndex":I
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldalvik/system/EmulatedStackFrame;->type:Ljava/lang/invoke/MethodType;

    .line 223
    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getReferenceIndex(I)I
    .registers 6
    .param p1, "parameterIndex"    # I

    .line 192
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame;->type:Ljava/lang/invoke/MethodType;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    .line 193
    .local v0, "ptypes":[Ljava/lang/Class;
    const/4 v1, 0x0

    .line 194
    .local v1, "refIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, p1, :cond_17

    .line 195
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_14

    .line 196
    add-int/lit8 v1, v1, 0x1

    .line 194
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 199
    .end local v2    # "i":I
    :cond_17
    return v1
.end method

.method public greylist-max-o setReference(ILjava/lang/Object;)V
    .registers 7
    .param p1, "idx"    # I
    .param p2, "reference"    # Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame;->type:Ljava/lang/invoke/MethodType;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    .line 207
    .local v0, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-ltz p1, :cond_40

    array-length v1, v0

    if-ge p1, v1, :cond_40

    .line 210
    if-eqz p2, :cond_37

    aget-object v1, v0, p1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_37

    .line 211
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reference is not of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ldalvik/system/EmulatedStackFrame;->type:Ljava/lang/invoke/MethodType;

    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_37
    :goto_37
    invoke-virtual {p0, p1}, Ldalvik/system/EmulatedStackFrame;->getReferenceIndex(I)I

    move-result v1

    .line 214
    .local v1, "referenceIndex":I
    iget-object v2, p0, Ldalvik/system/EmulatedStackFrame;->references:[Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 215
    return-void

    .line 208
    .end local v1    # "referenceIndex":I
    :cond_40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o setReturnValueTo(Ljava/lang/Object;)V
    .registers 6
    .param p1, "reference"    # Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Ldalvik/system/EmulatedStackFrame;->type:Ljava/lang/invoke/MethodType;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    .line 265
    .local v0, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_38

    .line 269
    if-eqz p1, :cond_2e

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_2e

    .line 270
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reference is not of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_2e
    :goto_2e
    iget-object v1, p0, Ldalvik/system/EmulatedStackFrame;->references:[Ljava/lang/Object;

    iget-object v2, p0, Ldalvik/system/EmulatedStackFrame;->references:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v1, v2

    .line 274
    return-void

    .line 266
    :cond_38
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return type is not a reference type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
