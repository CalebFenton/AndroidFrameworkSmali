.class public final Llibcore/reflect/AnnotationMember;
.super Ljava/lang/Object;
.source "AnnotationMember.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/reflect/AnnotationMember$DefaultValues;
    }
.end annotation


# static fields
.field protected static final blacklist ARRAY:C = '['

.field protected static final blacklist ERROR:C = '!'

.field protected static final blacklist NO_VALUE:Ljava/lang/Object;

.field protected static final blacklist OTHER:C = '*'


# instance fields
.field protected transient blacklist definingMethod:Ljava/lang/reflect/Method;

.field protected transient blacklist elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected final blacklist name:Ljava/lang/String;

.field protected final blacklist tag:C

.field protected final blacklist value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 88
    sget-object v0, Llibcore/reflect/AnnotationMember$DefaultValues;->NO_VALUE:Llibcore/reflect/AnnotationMember$DefaultValues;

    sput-object v0, Llibcore/reflect/AnnotationMember;->NO_VALUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    .line 110
    if-nez p2, :cond_a

    sget-object v0, Llibcore/reflect/AnnotationMember;->NO_VALUE:Ljava/lang/Object;

    goto :goto_b

    :cond_a
    move-object v0, p2

    :goto_b
    iput-object v0, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_18

    .line 112
    const/16 v0, 0x21

    iput-char v0, p0, Llibcore/reflect/AnnotationMember;->tag:C

    goto :goto_2d

    .line 113
    :cond_18
    iget-object v0, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 114
    const/16 v0, 0x5b

    iput-char v0, p0, Llibcore/reflect/AnnotationMember;->tag:C

    goto :goto_2d

    .line 116
    :cond_29
    const/16 v0, 0x2a

    iput-char v0, p0, Llibcore/reflect/AnnotationMember;->tag:C

    .line 118
    :goto_2d
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;
    .param p3, "type"    # Ljava/lang/Class;
    .param p4, "m"    # Ljava/lang/reflect/Method;

    .line 130
    invoke-direct {p0, p1, p2}, Llibcore/reflect/AnnotationMember;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    iput-object p4, p0, Llibcore/reflect/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    .line 134
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_e

    .line 135
    const-class v0, Ljava/lang/Integer;

    iput-object v0, p0, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    goto :goto_4f

    .line 136
    :cond_e
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_17

    .line 137
    const-class v0, Ljava/lang/Boolean;

    iput-object v0, p0, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    goto :goto_4f

    .line 138
    :cond_17
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_20

    .line 139
    const-class v0, Ljava/lang/Character;

    iput-object v0, p0, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    goto :goto_4f

    .line 140
    :cond_20
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_29

    .line 141
    const-class v0, Ljava/lang/Float;

    iput-object v0, p0, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    goto :goto_4f

    .line 142
    :cond_29
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_32

    .line 143
    const-class v0, Ljava/lang/Double;

    iput-object v0, p0, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    goto :goto_4f

    .line 144
    :cond_32
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_3b

    .line 145
    const-class v0, Ljava/lang/Long;

    iput-object v0, p0, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    goto :goto_4f

    .line 146
    :cond_3b
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_44

    .line 147
    const-class v0, Ljava/lang/Short;

    iput-object v0, p0, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    goto :goto_4f

    .line 148
    :cond_44
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_4d

    .line 149
    const-class v0, Ljava/lang/Byte;

    iput-object v0, p0, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    goto :goto_4f

    .line 151
    :cond_4d
    iput-object p3, p0, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    .line 153
    :goto_4f
    return-void
.end method


# virtual methods
.method public blacklist copyValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 364
    iget-char v0, p0, Llibcore/reflect/AnnotationMember;->tag:C

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_87

    iget-object v0, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_87

    .line 367
    :cond_10
    iget-object v0, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 368
    .local v0, "type":Ljava/lang/Class;
    const-class v1, [I

    if-ne v0, v1, :cond_23

    .line 369
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 370
    :cond_23
    const-class v1, [B

    if-ne v0, v1, :cond_30

    .line 371
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 372
    :cond_30
    const-class v1, [S

    if-ne v0, v1, :cond_3d

    .line 373
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [S

    invoke-virtual {v1}, [S->clone()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 374
    :cond_3d
    const-class v1, [J

    if-ne v0, v1, :cond_4a

    .line 375
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 376
    :cond_4a
    const-class v1, [C

    if-ne v0, v1, :cond_57

    .line 377
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 378
    :cond_57
    const-class v1, [Z

    if-ne v0, v1, :cond_64

    .line 379
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 380
    :cond_64
    const-class v1, [F

    if-ne v0, v1, :cond_71

    .line 381
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 382
    :cond_71
    const-class v1, [D

    if-ne v0, v1, :cond_7e

    .line 383
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 385
    :cond_7e
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 365
    .end local v0    # "type":Ljava/lang/Class;
    :cond_87
    :goto_87
    iget-object v0, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist equalArrayValue(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "otherValue"    # Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    instance-of v0, v0, [Ljava/lang/Object;

    if-eqz v0, :cond_16

    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 224
    iget-object v0, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 226
    :cond_16
    iget-object v0, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 227
    .local v0, "type":Ljava/lang/Class;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_24

    .line 228
    return v2

    .line 230
    :cond_24
    const-class v1, [I

    if-ne v0, v1, :cond_34

    .line 231
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [I

    move-object v2, p1

    check-cast v2, [I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    return v1

    .line 232
    :cond_34
    const-class v1, [B

    if-ne v0, v1, :cond_44

    .line 233
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [B

    move-object v2, p1

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1

    .line 234
    :cond_44
    const-class v1, [S

    if-ne v0, v1, :cond_54

    .line 235
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [S

    move-object v2, p1

    check-cast v2, [S

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v1

    return v1

    .line 236
    :cond_54
    const-class v1, [J

    if-ne v0, v1, :cond_64

    .line 237
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [J

    move-object v2, p1

    check-cast v2, [J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    return v1

    .line 238
    :cond_64
    const-class v1, [C

    if-ne v0, v1, :cond_74

    .line 239
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [C

    move-object v2, p1

    check-cast v2, [C

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v1

    return v1

    .line 240
    :cond_74
    const-class v1, [Z

    if-ne v0, v1, :cond_84

    .line 241
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [Z

    move-object v2, p1

    check-cast v2, [Z

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v1

    return v1

    .line 242
    :cond_84
    const-class v1, [F

    if-ne v0, v1, :cond_94

    .line 243
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [F

    move-object v2, p1

    check-cast v2, [F

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    return v1

    .line 244
    :cond_94
    const-class v1, [D

    if-ne v0, v1, :cond_a4

    .line 245
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v1, [D

    move-object v2, p1

    check-cast v2, [D

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v1

    return v1

    .line 247
    :cond_a4
    return v2
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 193
    if-ne p1, p0, :cond_4

    .line 196
    const/4 v0, 0x1

    return v0

    .line 198
    :cond_4
    instance-of v0, p1, Llibcore/reflect/AnnotationMember;

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 199
    move-object v0, p1

    check-cast v0, Llibcore/reflect/AnnotationMember;

    .line 200
    .local v0, "that":Llibcore/reflect/AnnotationMember;
    iget-object v2, p0, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    iget-object v3, v0, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-char v2, p0, Llibcore/reflect/AnnotationMember;->tag:C

    iget-char v3, v0, Llibcore/reflect/AnnotationMember;->tag:C

    if-ne v2, v3, :cond_39

    .line 201
    iget-char v2, p0, Llibcore/reflect/AnnotationMember;->tag:C

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_29

    .line 202
    iget-object v1, v0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Llibcore/reflect/AnnotationMember;->equalArrayValue(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 203
    :cond_29
    iget-char v2, p0, Llibcore/reflect/AnnotationMember;->tag:C

    const/16 v3, 0x21

    if-ne v2, v3, :cond_30

    .line 205
    return v1

    .line 207
    :cond_30
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    iget-object v2, v0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 211
    .end local v0    # "that":Llibcore/reflect/AnnotationMember;
    :cond_39
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 260
    iget-object v0, p0, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7f

    .line 261
    .local v0, "hash":I
    iget-char v1, p0, Llibcore/reflect/AnnotationMember;->tag:C

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_8e

    .line 262
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 263
    .local v1, "type":Ljava/lang/Class;
    const-class v2, [I

    if-ne v1, v2, :cond_22

    .line 264
    iget-object v2, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v2, [I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    xor-int/2addr v2, v0

    return v2

    .line 265
    :cond_22
    const-class v2, [B

    if-ne v1, v2, :cond_30

    .line 266
    iget-object v2, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v2, v0

    return v2

    .line 267
    :cond_30
    const-class v2, [S

    if-ne v1, v2, :cond_3e

    .line 268
    iget-object v2, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v2, [S

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([S)I

    move-result v2

    xor-int/2addr v2, v0

    return v2

    .line 269
    :cond_3e
    const-class v2, [J

    if-ne v1, v2, :cond_4c

    .line 270
    iget-object v2, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v2, [J

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([J)I

    move-result v2

    xor-int/2addr v2, v0

    return v2

    .line 271
    :cond_4c
    const-class v2, [C

    if-ne v1, v2, :cond_5a

    .line 272
    iget-object v2, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v2, [C

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([C)I

    move-result v2

    xor-int/2addr v2, v0

    return v2

    .line 273
    :cond_5a
    const-class v2, [Z

    if-ne v1, v2, :cond_68

    .line 274
    iget-object v2, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v2, [Z

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v2

    xor-int/2addr v2, v0

    return v2

    .line 275
    :cond_68
    const-class v2, [F

    if-ne v1, v2, :cond_76

    .line 276
    iget-object v2, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v2, [F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    xor-int/2addr v2, v0

    return v2

    .line 277
    :cond_76
    const-class v2, [D

    if-ne v1, v2, :cond_84

    .line 278
    iget-object v2, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v2, [D

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([D)I

    move-result v2

    xor-int/2addr v2, v0

    return v2

    .line 280
    :cond_84
    iget-object v2, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    xor-int/2addr v2, v0

    return v2

    .line 282
    .end local v1    # "type":Ljava/lang/Class;
    :cond_8e
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    return v1
.end method

.method public blacklist rethrowError()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 290
    iget-char v0, p0, Llibcore/reflect/AnnotationMember;->tag:C

    const/16 v1, 0x21

    if-ne v0, v1, :cond_88

    .line 296
    iget-object v0, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/TypeNotPresentException;

    if-nez v0, :cond_76

    .line 299
    iget-object v0, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/EnumConstantNotPresentException;

    if-nez v0, :cond_64

    .line 302
    iget-object v0, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/ArrayStoreException;

    if-nez v0, :cond_56

    .line 308
    iget-object v0, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    .line 309
    .local v0, "error":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 310
    .local v1, "ste":[Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 311
    if-nez v1, :cond_27

    const/16 v3, 0x200

    goto :goto_2c

    :cond_27
    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x50

    :goto_2c
    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 312
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 313
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 314
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 315
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 316
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 317
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 318
    .local v4, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 319
    .local v5, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/Throwable;

    .line 320
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    .line 322
    throw v0

    .line 303
    .end local v0    # "error":Ljava/lang/Throwable;
    .end local v1    # "ste":[Ljava/lang/StackTraceElement;
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .end local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    :cond_56
    iget-object v0, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ArrayStoreException;

    .line 304
    .local v0, "ase":Ljava/lang/ArrayStoreException;
    new-instance v1, Ljava/lang/ArrayStoreException;

    invoke-virtual {v0}, Ljava/lang/ArrayStoreException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    .end local v0    # "ase":Ljava/lang/ArrayStoreException;
    :cond_64
    iget-object v0, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/EnumConstantNotPresentException;

    .line 301
    .local v0, "ecnpe":Ljava/lang/EnumConstantNotPresentException;
    new-instance v1, Ljava/lang/EnumConstantNotPresentException;

    invoke-virtual {v0}, Ljava/lang/EnumConstantNotPresentException;->enumType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/EnumConstantNotPresentException;->constantName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/EnumConstantNotPresentException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v1

    .line 297
    .end local v0    # "ecnpe":Ljava/lang/EnumConstantNotPresentException;
    :cond_76
    iget-object v0, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/TypeNotPresentException;

    .line 298
    .local v0, "tnpe":Ljava/lang/TypeNotPresentException;
    new-instance v1, Ljava/lang/TypeNotPresentException;

    invoke-virtual {v0}, Ljava/lang/TypeNotPresentException;->typeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/TypeNotPresentException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 324
    .end local v0    # "tnpe":Ljava/lang/TypeNotPresentException;
    :cond_88
    return-void
.end method

.method protected blacklist setDefinition(Llibcore/reflect/AnnotationMember;)Llibcore/reflect/AnnotationMember;
    .registers 3
    .param p1, "copy"    # Llibcore/reflect/AnnotationMember;

    .line 159
    iget-object v0, p1, Llibcore/reflect/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    iput-object v0, p0, Llibcore/reflect/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    .line 160
    iget-object v0, p1, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    iput-object v0, p0, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    .line 161
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 168
    iget-char v0, p0, Llibcore/reflect/AnnotationMember;->tag:C

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_3f

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 170
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 172
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    if-ge v2, v1, :cond_34

    .line 173
    if-eqz v2, :cond_28

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_28
    iget-object v3, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 176
    .end local v2    # "i":I
    :cond_34
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 178
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "len":I
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist validateValue()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 340
    iget-char v0, p0, Llibcore/reflect/AnnotationMember;->tag:C

    const/16 v1, 0x21

    if-ne v0, v1, :cond_9

    .line 341
    invoke-virtual {p0}, Llibcore/reflect/AnnotationMember;->rethrowError()V

    .line 343
    :cond_9
    iget-object v0, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    sget-object v1, Llibcore/reflect/AnnotationMember;->NO_VALUE:Ljava/lang/Object;

    if-ne v0, v1, :cond_11

    .line 344
    const/4 v0, 0x0

    return-object v0

    .line 346
    :cond_11
    iget-object v0, p0, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_38

    iget-object v0, p0, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_38

    .line 350
    :cond_26
    new-instance v0, Ljava/lang/annotation/AnnotationTypeMismatchException;

    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    .line 351
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/AnnotationTypeMismatchException;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_38
    :goto_38
    invoke-virtual {p0}, Llibcore/reflect/AnnotationMember;->copyValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
