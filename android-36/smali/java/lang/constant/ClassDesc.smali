.class public interface abstract Ljava/lang/constant/ClassDesc;
.super Ljava/lang/Object;
.source "ClassDesc.java"

# interfaces
.implements Ljava/lang/constant/ConstantDesc;
.implements Ljava/lang/invoke/TypeDescriptor$OfField;


# annotations
.annotation system Ldalvik/annotation/PermittedSubclasses;
    value = {
        Ljava/lang/constant/PrimitiveClassDescImpl;,
        Ljava/lang/constant/ReferenceClassDescImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/constant/ConstantDesc;",
        "Ljava/lang/invoke/TypeDescriptor$OfField<",
        "Ljava/lang/constant/ClassDesc;",
        ">;"
    }
.end annotation


# direct methods
.method public static blacklist of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 80
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/constant/ConstantUtils;->validateBinaryClassName(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/constant/ConstantUtils;->binaryToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->ofDescriptor(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist of(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/constant/ClassDesc;
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .line 129
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/constant/ConstantUtils;->validateBinaryClassName(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 131
    invoke-static {p1}, Ljava/lang/constant/ClassDesc;->of(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    return-object v0

    .line 133
    :cond_14
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/constant/ConstantUtils;->validateMemberName(Ljava/lang/String;Z)Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/constant/ConstantUtils;->binaryToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->ofDescriptor(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofDescriptor(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;
    .registers 4
    .param p0, "descriptor"    # Ljava/lang/String;

    .line 165
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 170
    invoke-static {p0}, Ljava/lang/constant/ConstantUtils;->arrayDepth(Ljava/lang/String;)I

    move-result v0

    .line 171
    .local v0, "depth":I
    const/16 v1, 0xff

    if-gt v0, v1, :cond_24

    .line 176
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 177
    new-instance v1, Ljava/lang/constant/PrimitiveClassDescImpl;

    invoke-direct {v1, p0}, Ljava/lang/constant/PrimitiveClassDescImpl;-><init>(Ljava/lang/String;)V

    goto :goto_23

    .line 178
    :cond_1e
    new-instance v1, Ljava/lang/constant/ReferenceClassDescImpl;

    invoke-direct {v1, p0}, Ljava/lang/constant/ReferenceClassDescImpl;-><init>(Ljava/lang/String;)V

    .line 176
    :goto_23
    return-object v1

    .line 172
    :cond_24
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create an array type descriptor with more than 255 dimensions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    .end local v0    # "depth":I
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a valid reference type descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist arrayType()Ljava/lang/constant/ClassDesc;
    .registers 4

    .line 191
    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->descriptorString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/constant/ConstantUtils;->arrayDepth(Ljava/lang/String;)I

    move-result v0

    .line 192
    .local v0, "depth":I
    const/16 v1, 0xff

    if-ge v0, v1, :cond_12

    .line 197
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/constant/ClassDesc;->arrayType(I)Ljava/lang/constant/ClassDesc;

    move-result-object v1

    return-object v1

    .line 193
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot create an array type descriptor with more than 255 dimensions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist arrayType(I)Ljava/lang/constant/ClassDesc;
    .registers 8
    .param p1, "rank"    # I

    .line 213
    if-lez p1, :cond_5f

    .line 217
    :try_start_2
    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->descriptorString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/constant/ConstantUtils;->arrayDepth(Ljava/lang/String;)I

    move-result v0

    .line 218
    .local v0, "currentDepth":I
    invoke-static {v0, p1}, Ljava/lang/Math;->addExact(II)I

    move-result v1
    :try_end_e
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_e} :catch_56

    .line 219
    .local v1, "netRank":I
    const/16 v2, 0xff

    if-gt v1, v2, :cond_33

    .line 226
    .end local v0    # "currentDepth":I
    nop

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v2, p1}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->descriptorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->ofDescriptor(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    return-object v0

    .line 220
    .restart local v0    # "currentDepth":I
    :cond_33
    :try_start_33
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rank: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exceeds maximum supported dimension of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/lang/constant/ClassDesc;
    .end local p1    # "rank":I
    throw v3
    :try_end_56
    .catch Ljava/lang/ArithmeticException; {:try_start_33 .. :try_end_56} :catch_56

    .line 224
    .end local v0    # "currentDepth":I
    .end local v1    # "netRank":I
    .restart local p0    # "this":Ljava/lang/constant/ClassDesc;
    .restart local p1    # "rank":I
    :catch_56
    move-exception v0

    .line 225
    .local v0, "ae":Ljava/lang/ArithmeticException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Integer overflow in rank computation"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    .end local v0    # "ae":Ljava/lang/ArithmeticException;
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rank "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a positive value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist test-api arrayType()Ljava/lang/invoke/TypeDescriptor$OfField;
    .registers 2

    .line 57
    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->arrayType()Ljava/lang/constant/ClassDesc;

    move-result-object v0

    return-object v0
.end method

.method public blacklist componentType()Ljava/lang/constant/ClassDesc;
    .registers 3

    .line 315
    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->isArray()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->descriptorString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->ofDescriptor(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return-object v0
.end method

.method public bridge synthetic whitelist test-api componentType()Ljava/lang/invoke/TypeDescriptor$OfField;
    .registers 2

    .line 57
    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->componentType()Ljava/lang/constant/ClassDesc;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api descriptorString()Ljava/lang/String;
.end method

.method public blacklist displayName()Ljava/lang/String;
    .registers 5

    .line 345
    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 346
    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->descriptorString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->forBasicType(C)Lsun/invoke/util/Wrapper;

    move-result-object v0

    invoke-virtual {v0}, Lsun/invoke/util/Wrapper;->primitiveSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 347
    :cond_18
    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->isClassOrInterface()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 348
    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->descriptorString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->descriptorString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 349
    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->descriptorString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    .line 348
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 351
    :cond_40
    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->isArray()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 352
    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->descriptorString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/constant/ConstantUtils;->arrayDepth(Ljava/lang/String;)I

    move-result v0

    .line 353
    .local v0, "depth":I
    move-object v1, p0

    .line 354
    .local v1, "c":Ljava/lang/constant/ClassDesc;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_50
    if-ge v2, v0, :cond_59

    .line 355
    invoke-interface {v1}, Ljava/lang/constant/ClassDesc;->componentType()Ljava/lang/constant/ClassDesc;

    move-result-object v1

    .line 354
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 356
    .end local v2    # "i":I
    :cond_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/lang/constant/ClassDesc;->displayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 359
    .end local v0    # "depth":I
    .end local v1    # "c":Ljava/lang/constant/ClassDesc;
    :cond_75
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->descriptorString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist test-api equals(Ljava/lang/Object;)Z
.end method

.method public whitelist test-api isArray()Z
    .registers 3

    .line 286
    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->descriptorString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isClassOrInterface()Z
    .registers 3

    .line 304
    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->descriptorString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isPrimitive()Z
    .registers 3

    .line 295
    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->descriptorString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public blacklist nested(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;
    .registers 4
    .param p1, "nestedName"    # Ljava/lang/String;

    .line 248
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/constant/ConstantUtils;->validateMemberName(Ljava/lang/String;Z)Ljava/lang/String;

    .line 249
    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->isClassOrInterface()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->descriptorString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/constant/ConstantUtils;->dropLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->ofDescriptor(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    return-object v0

    .line 250
    :cond_34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Outer class is not a class or interface type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs blacklist nested(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/constant/ClassDesc;
    .registers 7
    .param p1, "firstNestedName"    # Ljava/lang/String;
    .param p2, "moreNestedNames"    # [Ljava/lang/String;

    .line 268
    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->isClassOrInterface()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 270
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/constant/ConstantUtils;->validateMemberName(Ljava/lang/String;Z)Ljava/lang/String;

    .line 271
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    array-length v1, p2

    move v2, v0

    :goto_f
    if-ge v2, v1, :cond_19

    aget-object v3, p2, v2

    .line 273
    .local v3, "addNestedNames":Ljava/lang/String;
    invoke-static {v3, v0}, Ljava/lang/constant/ConstantUtils;->validateMemberName(Ljava/lang/String;Z)Ljava/lang/String;

    .line 272
    .end local v3    # "addNestedNames":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 275
    :cond_19
    array-length v0, p2

    if-nez v0, :cond_21

    .line 276
    invoke-interface {p0, p1}, Ljava/lang/constant/ClassDesc;->nested(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    goto :goto_48

    .line 277
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ""

    const-string v3, "$"

    invoke-static {v3, v3, v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/lang/constant/ClassDesc;->nested(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    .line 275
    :goto_48
    return-object v0

    .line 269
    :cond_49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Outer class is not a class or interface type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist packageName()Ljava/lang/String;
    .registers 5

    .line 326
    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->isClassOrInterface()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_9

    .line 327
    return-object v1

    .line 328
    :cond_9
    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->descriptorString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/constant/ConstantUtils;->dropFirstAndLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/constant/ConstantUtils;->internalToBinary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "className":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 330
    .local v2, "index":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1f

    goto :goto_24

    :cond_1f
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_24
    return-object v1
.end method

.method public abstract blacklist resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation
.end method

.method public bridge synthetic blacklist resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 57
    invoke-interface {p0, p1}, Ljava/lang/constant/ClassDesc;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
