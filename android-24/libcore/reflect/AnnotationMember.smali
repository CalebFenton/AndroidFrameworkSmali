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
.field protected static final ARRAY:C = '['

.field protected static final ERROR:C = '!'

.field protected static final NO_VALUE:Ljava/lang/Object;

.field protected static final OTHER:C = '*'


# instance fields
.field protected transient definingMethod:Ljava/lang/reflect/Method;

.field protected transient elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final name:Ljava/lang/String;

.field protected final tag:C

.field protected final value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 88
    sget-object v0, Llibcore/reflect/AnnotationMember$DefaultValues;->NO_VALUE:Llibcore/reflect/AnnotationMember$DefaultValues;

    #@2
    sput-object v0, Llibcore/reflect/AnnotationMember;->NO_VALUE:Ljava/lang/Object;

    #@4
    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 109
    iput-object p1, p0, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    #@5
    .line 110
    if-nez p2, :cond_0

    #@7
    sget-object p2, Llibcore/reflect/AnnotationMember;->NO_VALUE:Ljava/lang/Object;

    #@9
    .end local p2    # "val":Ljava/lang/Object;
    :cond_0
    iput-object p2, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@b
    .line 111
    iget-object v0, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@d
    instance-of v0, v0, Ljava/lang/Throwable;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 112
    const/16 v0, 0x21

    #@13
    iput-char v0, p0, Llibcore/reflect/AnnotationMember;->tag:C

    #@15
    .line 108
    :goto_0
    return-void

    #@16
    .line 113
    :cond_1
    iget-object v0, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_2

    #@22
    .line 114
    const/16 v0, 0x5b

    #@24
    iput-char v0, p0, Llibcore/reflect/AnnotationMember;->tag:C

    #@26
    goto :goto_0

    #@27
    .line 116
    :cond_2
    const/16 v0, 0x2a

    #@29
    iput-char v0, p0, Llibcore/reflect/AnnotationMember;->tag:C

    #@2b
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;
    .param p3, "type"    # Ljava/lang/Class;
    .param p4, "m"    # Ljava/lang/reflect/Method;

    #@0
    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Llibcore/reflect/AnnotationMember;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@3
    .line 132
    iput-object p4, p0, Llibcore/reflect/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    #@5
    .line 134
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@7
    if-ne p3, v0, :cond_0

    #@9
    .line 135
    const-class v0, Ljava/lang/Integer;

    #@b
    iput-object v0, p0, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    #@d
    .line 129
    :goto_0
    return-void

    #@e
    .line 136
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@10
    if-ne p3, v0, :cond_1

    #@12
    .line 137
    const-class v0, Ljava/lang/Boolean;

    #@14
    iput-object v0, p0, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    #@16
    goto :goto_0

    #@17
    .line 138
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@19
    if-ne p3, v0, :cond_2

    #@1b
    .line 139
    const-class v0, Ljava/lang/Character;

    #@1d
    iput-object v0, p0, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    #@1f
    goto :goto_0

    #@20
    .line 140
    :cond_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@22
    if-ne p3, v0, :cond_3

    #@24
    .line 141
    const-class v0, Ljava/lang/Float;

    #@26
    iput-object v0, p0, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    #@28
    goto :goto_0

    #@29
    .line 142
    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@2b
    if-ne p3, v0, :cond_4

    #@2d
    .line 143
    const-class v0, Ljava/lang/Double;

    #@2f
    iput-object v0, p0, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    #@31
    goto :goto_0

    #@32
    .line 144
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@34
    if-ne p3, v0, :cond_5

    #@36
    .line 145
    const-class v0, Ljava/lang/Long;

    #@38
    iput-object v0, p0, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    #@3a
    goto :goto_0

    #@3b
    .line 146
    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@3d
    if-ne p3, v0, :cond_6

    #@3f
    .line 147
    const-class v0, Ljava/lang/Short;

    #@41
    iput-object v0, p0, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    #@43
    goto :goto_0

    #@44
    .line 148
    :cond_6
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@46
    if-ne p3, v0, :cond_7

    #@48
    .line 149
    const-class v0, Ljava/lang/Byte;

    #@4a
    iput-object v0, p0, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    #@4c
    goto :goto_0

    #@4d
    .line 151
    :cond_7
    iput-object p3, p0, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    #@4f
    goto :goto_0
.end method


# virtual methods
.method public copyValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 364
    iget-char v1, p0, Llibcore/reflect/AnnotationMember;->tag:C

    #@2
    const/16 v2, 0x5b

    #@4
    if-ne v1, v2, :cond_0

    #@6
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@8
    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_1

    #@e
    .line 365
    :cond_0
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@10
    return-object v1

    #@11
    .line 367
    :cond_1
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@16
    move-result-object v0

    #@17
    .line 368
    .local v0, "type":Ljava/lang/Class;
    const-class v1, [I

    #@19
    if-ne v0, v1, :cond_2

    #@1b
    .line 369
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@1d
    check-cast v1, [I

    #@1f
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    return-object v1

    #@24
    .line 370
    :cond_2
    const-class v1, [B

    #@26
    if-ne v0, v1, :cond_3

    #@28
    .line 371
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@2a
    check-cast v1, [B

    #@2c
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    return-object v1

    #@31
    .line 372
    :cond_3
    const-class v1, [S

    #@33
    if-ne v0, v1, :cond_4

    #@35
    .line 373
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@37
    check-cast v1, [S

    #@39
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3c
    move-result-object v1

    #@3d
    return-object v1

    #@3e
    .line 374
    :cond_4
    const-class v1, [J

    #@40
    if-ne v0, v1, :cond_5

    #@42
    .line 375
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@44
    check-cast v1, [J

    #@46
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@49
    move-result-object v1

    #@4a
    return-object v1

    #@4b
    .line 376
    :cond_5
    const-class v1, [C

    #@4d
    if-ne v0, v1, :cond_6

    #@4f
    .line 377
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@51
    check-cast v1, [C

    #@53
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@56
    move-result-object v1

    #@57
    return-object v1

    #@58
    .line 378
    :cond_6
    const-class v1, [Z

    #@5a
    if-ne v0, v1, :cond_7

    #@5c
    .line 379
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@5e
    check-cast v1, [Z

    #@60
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@63
    move-result-object v1

    #@64
    return-object v1

    #@65
    .line 380
    :cond_7
    const-class v1, [F

    #@67
    if-ne v0, v1, :cond_8

    #@69
    .line 381
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@6b
    check-cast v1, [F

    #@6d
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@70
    move-result-object v1

    #@71
    return-object v1

    #@72
    .line 382
    :cond_8
    const-class v1, [D

    #@74
    if-ne v0, v1, :cond_9

    #@76
    .line 383
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@78
    check-cast v1, [D

    #@7a
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@7d
    move-result-object v1

    #@7e
    return-object v1

    #@7f
    .line 385
    :cond_9
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@81
    check-cast v1, [Ljava/lang/Object;

    #@83
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@86
    move-result-object v1

    #@87
    return-object v1
.end method

.method public equalArrayValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "otherValue"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 223
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@3
    instance-of v1, v1, [Ljava/lang/Object;

    #@5
    if-eqz v1, :cond_0

    #@7
    instance-of v1, p1, [Ljava/lang/Object;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 224
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@d
    check-cast v1, [Ljava/lang/Object;

    #@f
    check-cast p1, [Ljava/lang/Object;

    #@11
    .end local p1    # "otherValue":Ljava/lang/Object;
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    return v1

    #@16
    .line 226
    .restart local p1    # "otherValue":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1b
    move-result-object v0

    #@1c
    .line 227
    .local v0, "type":Ljava/lang/Class;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1f
    move-result-object v1

    #@20
    if-eq v0, v1, :cond_1

    #@22
    .line 228
    return v2

    #@23
    .line 230
    :cond_1
    const-class v1, [I

    #@25
    if-ne v0, v1, :cond_2

    #@27
    .line 231
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@29
    check-cast v1, [I

    #@2b
    check-cast p1, [I

    #@2d
    .end local p1    # "otherValue":Ljava/lang/Object;
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    #@30
    move-result v1

    #@31
    return v1

    #@32
    .line 232
    .restart local p1    # "otherValue":Ljava/lang/Object;
    :cond_2
    const-class v1, [B

    #@34
    if-ne v0, v1, :cond_3

    #@36
    .line 233
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@38
    check-cast v1, [B

    #@3a
    check-cast p1, [B

    #@3c
    .end local p1    # "otherValue":Ljava/lang/Object;
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    #@3f
    move-result v1

    #@40
    return v1

    #@41
    .line 234
    .restart local p1    # "otherValue":Ljava/lang/Object;
    :cond_3
    const-class v1, [S

    #@43
    if-ne v0, v1, :cond_4

    #@45
    .line 235
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@47
    check-cast v1, [S

    #@49
    check-cast p1, [S

    #@4b
    .end local p1    # "otherValue":Ljava/lang/Object;
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([S[S)Z

    #@4e
    move-result v1

    #@4f
    return v1

    #@50
    .line 236
    .restart local p1    # "otherValue":Ljava/lang/Object;
    :cond_4
    const-class v1, [J

    #@52
    if-ne v0, v1, :cond_5

    #@54
    .line 237
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@56
    check-cast v1, [J

    #@58
    check-cast p1, [J

    #@5a
    .end local p1    # "otherValue":Ljava/lang/Object;
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([J[J)Z

    #@5d
    move-result v1

    #@5e
    return v1

    #@5f
    .line 238
    .restart local p1    # "otherValue":Ljava/lang/Object;
    :cond_5
    const-class v1, [C

    #@61
    if-ne v0, v1, :cond_6

    #@63
    .line 239
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@65
    check-cast v1, [C

    #@67
    check-cast p1, [C

    #@69
    .end local p1    # "otherValue":Ljava/lang/Object;
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([C[C)Z

    #@6c
    move-result v1

    #@6d
    return v1

    #@6e
    .line 240
    .restart local p1    # "otherValue":Ljava/lang/Object;
    :cond_6
    const-class v1, [Z

    #@70
    if-ne v0, v1, :cond_7

    #@72
    .line 241
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@74
    check-cast v1, [Z

    #@76
    check-cast p1, [Z

    #@78
    .end local p1    # "otherValue":Ljava/lang/Object;
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    #@7b
    move-result v1

    #@7c
    return v1

    #@7d
    .line 242
    .restart local p1    # "otherValue":Ljava/lang/Object;
    :cond_7
    const-class v1, [F

    #@7f
    if-ne v0, v1, :cond_8

    #@81
    .line 243
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@83
    check-cast v1, [F

    #@85
    check-cast p1, [F

    #@87
    .end local p1    # "otherValue":Ljava/lang/Object;
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([F[F)Z

    #@8a
    move-result v1

    #@8b
    return v1

    #@8c
    .line 244
    .restart local p1    # "otherValue":Ljava/lang/Object;
    :cond_8
    const-class v1, [D

    #@8e
    if-ne v0, v1, :cond_9

    #@90
    .line 245
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@92
    check-cast v1, [D

    #@94
    check-cast p1, [D

    #@96
    .end local p1    # "otherValue":Ljava/lang/Object;
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([D[D)Z

    #@99
    move-result v1

    #@9a
    return v1

    #@9b
    .line 247
    .restart local p1    # "otherValue":Ljava/lang/Object;
    :cond_9
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 193
    if-ne p1, p0, :cond_0

    #@3
    .line 196
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 198
    :cond_0
    instance-of v1, p1, Llibcore/reflect/AnnotationMember;

    #@7
    if-eqz v1, :cond_3

    #@9
    move-object v0, p1

    #@a
    .line 199
    check-cast v0, Llibcore/reflect/AnnotationMember;

    #@c
    .line 200
    .local v0, "that":Llibcore/reflect/AnnotationMember;
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    #@e
    iget-object v2, v0, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_3

    #@16
    iget-char v1, p0, Llibcore/reflect/AnnotationMember;->tag:C

    #@18
    iget-char v2, v0, Llibcore/reflect/AnnotationMember;->tag:C

    #@1a
    if-ne v1, v2, :cond_3

    #@1c
    .line 201
    iget-char v1, p0, Llibcore/reflect/AnnotationMember;->tag:C

    #@1e
    const/16 v2, 0x5b

    #@20
    if-ne v1, v2, :cond_1

    #@22
    .line 202
    iget-object v1, v0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@24
    invoke-virtual {p0, v1}, Llibcore/reflect/AnnotationMember;->equalArrayValue(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    return v1

    #@29
    .line 203
    :cond_1
    iget-char v1, p0, Llibcore/reflect/AnnotationMember;->tag:C

    #@2b
    const/16 v2, 0x21

    #@2d
    if-ne v1, v2, :cond_2

    #@2f
    .line 205
    return v3

    #@30
    .line 207
    :cond_2
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@32
    iget-object v2, v0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v1

    #@38
    return v1

    #@39
    .line 211
    .end local v0    # "that":Llibcore/reflect/AnnotationMember;
    :cond_3
    return v3
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 260
    iget-object v2, p0, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    #@2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v2

    #@6
    mul-int/lit8 v0, v2, 0x7f

    #@8
    .line 261
    .local v0, "hash":I
    iget-char v2, p0, Llibcore/reflect/AnnotationMember;->tag:C

    #@a
    const/16 v3, 0x5b

    #@c
    if-ne v2, v3, :cond_8

    #@e
    .line 262
    iget-object v2, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@13
    move-result-object v1

    #@14
    .line 263
    .local v1, "type":Ljava/lang/Class;
    const-class v2, [I

    #@16
    if-ne v1, v2, :cond_0

    #@18
    .line 264
    iget-object v2, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@1a
    check-cast v2, [I

    #@1c
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    #@1f
    move-result v2

    #@20
    xor-int/2addr v2, v0

    #@21
    return v2

    #@22
    .line 265
    :cond_0
    const-class v2, [B

    #@24
    if-ne v1, v2, :cond_1

    #@26
    .line 266
    iget-object v2, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@28
    check-cast v2, [B

    #@2a
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    #@2d
    move-result v2

    #@2e
    xor-int/2addr v2, v0

    #@2f
    return v2

    #@30
    .line 267
    :cond_1
    const-class v2, [S

    #@32
    if-ne v1, v2, :cond_2

    #@34
    .line 268
    iget-object v2, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@36
    check-cast v2, [S

    #@38
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([S)I

    #@3b
    move-result v2

    #@3c
    xor-int/2addr v2, v0

    #@3d
    return v2

    #@3e
    .line 269
    :cond_2
    const-class v2, [J

    #@40
    if-ne v1, v2, :cond_3

    #@42
    .line 270
    iget-object v2, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@44
    check-cast v2, [J

    #@46
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([J)I

    #@49
    move-result v2

    #@4a
    xor-int/2addr v2, v0

    #@4b
    return v2

    #@4c
    .line 271
    :cond_3
    const-class v2, [C

    #@4e
    if-ne v1, v2, :cond_4

    #@50
    .line 272
    iget-object v2, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@52
    check-cast v2, [C

    #@54
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([C)I

    #@57
    move-result v2

    #@58
    xor-int/2addr v2, v0

    #@59
    return v2

    #@5a
    .line 273
    :cond_4
    const-class v2, [Z

    #@5c
    if-ne v1, v2, :cond_5

    #@5e
    .line 274
    iget-object v2, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@60
    check-cast v2, [Z

    #@62
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Z)I

    #@65
    move-result v2

    #@66
    xor-int/2addr v2, v0

    #@67
    return v2

    #@68
    .line 275
    :cond_5
    const-class v2, [F

    #@6a
    if-ne v1, v2, :cond_6

    #@6c
    .line 276
    iget-object v2, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@6e
    check-cast v2, [F

    #@70
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    #@73
    move-result v2

    #@74
    xor-int/2addr v2, v0

    #@75
    return v2

    #@76
    .line 277
    :cond_6
    const-class v2, [D

    #@78
    if-ne v1, v2, :cond_7

    #@7a
    .line 278
    iget-object v2, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@7c
    check-cast v2, [D

    #@7e
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([D)I

    #@81
    move-result v2

    #@82
    xor-int/2addr v2, v0

    #@83
    return v2

    #@84
    .line 280
    :cond_7
    iget-object v2, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@86
    check-cast v2, [Ljava/lang/Object;

    #@88
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@8b
    move-result v2

    #@8c
    xor-int/2addr v2, v0

    #@8d
    return v2

    #@8e
    .line 282
    .end local v1    # "type":Ljava/lang/Class;
    :cond_8
    iget-object v2, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@90
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@93
    move-result v2

    #@94
    xor-int/2addr v2, v0

    #@95
    return v2
.end method

.method public rethrowError()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 290
    iget-char v9, p0, Llibcore/reflect/AnnotationMember;->tag:C

    #@2
    const/16 v10, 0x21

    #@4
    if-ne v9, v10, :cond_4

    #@6
    .line 296
    iget-object v9, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@8
    instance-of v9, v9, Ljava/lang/TypeNotPresentException;

    #@a
    if-eqz v9, :cond_0

    #@c
    .line 297
    iget-object v8, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@e
    check-cast v8, Ljava/lang/TypeNotPresentException;

    #@10
    .line 298
    .local v8, "tnpe":Ljava/lang/TypeNotPresentException;
    new-instance v9, Ljava/lang/TypeNotPresentException;

    #@12
    invoke-virtual {v8}, Ljava/lang/TypeNotPresentException;->typeName()Ljava/lang/String;

    #@15
    move-result-object v10

    #@16
    invoke-virtual {v8}, Ljava/lang/TypeNotPresentException;->getCause()Ljava/lang/Throwable;

    #@19
    move-result-object v11

    #@1a
    invoke-direct {v9, v10, v11}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1d
    throw v9

    #@1e
    .line 299
    .end local v8    # "tnpe":Ljava/lang/TypeNotPresentException;
    :cond_0
    iget-object v9, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@20
    instance-of v9, v9, Ljava/lang/EnumConstantNotPresentException;

    #@22
    if-eqz v9, :cond_1

    #@24
    .line 300
    iget-object v3, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@26
    check-cast v3, Ljava/lang/EnumConstantNotPresentException;

    #@28
    .line 301
    .local v3, "ecnpe":Ljava/lang/EnumConstantNotPresentException;
    new-instance v9, Ljava/lang/EnumConstantNotPresentException;

    #@2a
    invoke-virtual {v3}, Ljava/lang/EnumConstantNotPresentException;->enumType()Ljava/lang/Class;

    #@2d
    move-result-object v10

    #@2e
    invoke-virtual {v3}, Ljava/lang/EnumConstantNotPresentException;->constantName()Ljava/lang/String;

    #@31
    move-result-object v11

    #@32
    invoke-direct {v9, v10, v11}, Ljava/lang/EnumConstantNotPresentException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@35
    throw v9

    #@36
    .line 302
    .end local v3    # "ecnpe":Ljava/lang/EnumConstantNotPresentException;
    :cond_1
    iget-object v9, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@38
    instance-of v9, v9, Ljava/lang/ArrayStoreException;

    #@3a
    if-eqz v9, :cond_2

    #@3c
    .line 303
    iget-object v0, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@3e
    check-cast v0, Ljava/lang/ArrayStoreException;

    #@40
    .line 304
    .local v0, "ase":Ljava/lang/ArrayStoreException;
    new-instance v9, Ljava/lang/ArrayStoreException;

    #@42
    invoke-virtual {v0}, Ljava/lang/ArrayStoreException;->getMessage()Ljava/lang/String;

    #@45
    move-result-object v10

    #@46
    invoke-direct {v9, v10}, Ljava/lang/ArrayStoreException;-><init>(Ljava/lang/String;)V

    #@49
    throw v9

    #@4a
    .line 308
    .end local v0    # "ase":Ljava/lang/ArrayStoreException;
    :cond_2
    iget-object v4, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@4c
    check-cast v4, Ljava/lang/Throwable;

    #@4e
    .line 309
    .local v4, "error":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@51
    move-result-object v7

    #@52
    .line 310
    .local v7, "ste":[Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    #@54
    .line 311
    if-nez v7, :cond_3

    #@56
    const/16 v9, 0x200

    #@58
    .line 310
    :goto_0
    invoke-direct {v2, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@5b
    .line 312
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/ObjectOutputStream;

    #@5d
    invoke-direct {v6, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@60
    .line 313
    .local v6, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v6, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@63
    .line 314
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->flush()V

    #@66
    .line 315
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V

    #@69
    .line 316
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@6b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@6e
    move-result-object v9

    #@6f
    invoke-direct {v1, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@72
    .line 318
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v5, Ljava/io/ObjectInputStream;

    #@74
    invoke-direct {v5, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    #@77
    .line 319
    .local v5, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@7a
    move-result-object v4

    #@7b
    .end local v4    # "error":Ljava/lang/Throwable;
    check-cast v4, Ljava/lang/Throwable;

    #@7d
    .line 320
    .restart local v4    # "error":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    #@80
    .line 322
    throw v4

    #@81
    .line 311
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    :cond_3
    array-length v9, v7

    #@82
    add-int/lit8 v9, v9, 0x1

    #@84
    mul-int/lit8 v9, v9, 0x50

    #@86
    goto :goto_0

    #@87
    .line 289
    .end local v4    # "error":Ljava/lang/Throwable;
    .end local v7    # "ste":[Ljava/lang/StackTraceElement;
    :cond_4
    return-void
.end method

.method protected setDefinition(Llibcore/reflect/AnnotationMember;)Llibcore/reflect/AnnotationMember;
    .locals 1
    .param p1, "copy"    # Llibcore/reflect/AnnotationMember;

    #@0
    .prologue
    .line 159
    iget-object v0, p1, Llibcore/reflect/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    #@2
    iput-object v0, p0, Llibcore/reflect/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    #@4
    .line 160
    iget-object v0, p1, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    #@6
    iput-object v0, p0, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    #@8
    .line 161
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 168
    iget-char v3, p0, Llibcore/reflect/AnnotationMember;->tag:C

    #@2
    const/16 v4, 0x5b

    #@4
    if-ne v3, v4, :cond_2

    #@6
    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    const/16 v3, 0x50

    #@a
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@d
    .line 170
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    const-string/jumbo v4, "=["

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 171
    iget-object v3, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@1b
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@1e
    move-result v1

    #@1f
    .line 172
    .local v1, "len":I
    const/4 v0, 0x0

    #@20
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@22
    .line 173
    if-eqz v0, :cond_0

    #@24
    const-string/jumbo v3, ", "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 174
    :cond_0
    iget-object v3, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@2c
    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    .line 172
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_0

    #@36
    .line 176
    :cond_1
    const-string/jumbo v3, "]"

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    return-object v3

    #@42
    .line 178
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    iget-object v4, p0, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    const-string/jumbo v4, "="

    #@50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    iget-object v4, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    return-object v3
.end method

.method public validateValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 340
    iget-char v0, p0, Llibcore/reflect/AnnotationMember;->tag:C

    #@2
    const/16 v1, 0x21

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 341
    invoke-virtual {p0}, Llibcore/reflect/AnnotationMember;->rethrowError()V

    #@9
    .line 343
    :cond_0
    iget-object v0, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@b
    sget-object v1, Llibcore/reflect/AnnotationMember;->NO_VALUE:Ljava/lang/Object;

    #@d
    if-ne v0, v1, :cond_1

    #@f
    .line 344
    const/4 v0, 0x0

    #@10
    return-object v0

    #@11
    .line 346
    :cond_1
    iget-object v0, p0, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    #@13
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@18
    move-result-object v1

    #@19
    if-eq v0, v1, :cond_2

    #@1b
    .line 347
    iget-object v0, p0, Llibcore/reflect/AnnotationMember;->elementType:Ljava/lang/Class;

    #@1d
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@22
    move-result v0

    #@23
    .line 346
    if-eqz v0, :cond_3

    #@25
    .line 348
    :cond_2
    invoke-virtual {p0}, Llibcore/reflect/AnnotationMember;->copyValue()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    return-object v0

    #@2a
    .line 350
    :cond_3
    new-instance v0, Ljava/lang/annotation/AnnotationTypeMismatchException;

    #@2c
    iget-object v1, p0, Llibcore/reflect/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    #@2e
    .line 351
    iget-object v2, p0, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    #@30
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    .line 350
    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/AnnotationTypeMismatchException;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V

    #@3b
    throw v0
.end method
