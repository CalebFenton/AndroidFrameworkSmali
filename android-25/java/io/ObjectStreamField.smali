.class public Ljava/io/ObjectStreamField;
.super Ljava/lang/Object;
.source "ObjectStreamField.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final field:Ljava/lang/reflect/Field;

.field private final name:Ljava/lang/String;

.field private offset:I

.field private final signature:Ljava/lang/String;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final unshared:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 68
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    #@4
    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "unshared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    #@1
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 58
    const/4 v0, 0x0

    #@5
    iput v0, p0, Ljava/io/ObjectStreamField;->offset:I

    #@7
    .line 89
    if-nez p1, :cond_0

    #@9
    .line 90
    new-instance v0, Ljava/lang/NullPointerException;

    #@b
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@e
    throw v0

    #@f
    .line 92
    :cond_0
    iput-object p1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    #@11
    .line 93
    iput-object p2, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    #@13
    .line 94
    iput-boolean p3, p0, Ljava/io/ObjectStreamField;->unshared:Z

    #@15
    .line 95
    invoke-static {p2}, Ljava/io/ObjectStreamField;->getClassSignature(Ljava/lang/Class;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    #@1f
    .line 96
    iput-object v1, p0, Ljava/io/ObjectStreamField;->field:Ljava/lang/reflect/Field;

    #@21
    .line 88
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "unshared"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 58
    iput v1, p0, Ljava/io/ObjectStreamField;->offset:I

    #@7
    .line 104
    if-nez p1, :cond_0

    #@9
    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    #@b
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@e
    throw v0

    #@f
    .line 107
    :cond_0
    iput-object p1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    #@11
    .line 108
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    #@17
    .line 109
    iput-boolean p3, p0, Ljava/io/ObjectStreamField;->unshared:Z

    #@19
    .line 110
    iput-object v2, p0, Ljava/io/ObjectStreamField;->field:Ljava/lang/reflect/Field;

    #@1b
    .line 112
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    #@1e
    move-result v0

    #@1f
    sparse-switch v0, :sswitch_data_0

    #@22
    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@24
    const-string/jumbo v1, "illegal signature"

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 113
    :sswitch_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@2d
    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    #@2f
    .line 103
    :goto_0
    return-void

    #@30
    .line 114
    :sswitch_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@32
    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    #@34
    goto :goto_0

    #@35
    .line 115
    :sswitch_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@37
    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    #@39
    goto :goto_0

    #@3a
    .line 116
    :sswitch_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@3c
    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    #@3e
    goto :goto_0

    #@3f
    .line 117
    :sswitch_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@41
    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    #@43
    goto :goto_0

    #@44
    .line 118
    :sswitch_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@46
    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    #@48
    goto :goto_0

    #@49
    .line 119
    :sswitch_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@4b
    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    #@4d
    goto :goto_0

    #@4e
    .line 120
    :sswitch_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@50
    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    #@52
    goto :goto_0

    #@53
    .line 122
    :sswitch_8
    const-class v0, Ljava/lang/Object;

    #@55
    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    #@57
    goto :goto_0

    #@58
    .line 112
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x43 -> :sswitch_2
        0x44 -> :sswitch_7
        0x46 -> :sswitch_6
        0x49 -> :sswitch_4
        0x4a -> :sswitch_5
        0x4c -> :sswitch_8
        0x53 -> :sswitch_3
        0x5a -> :sswitch_0
        0x5b -> :sswitch_8
    .end sparse-switch
.end method

.method constructor <init>(Ljava/lang/reflect/Field;ZZ)V
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "unshared"    # Z
    .param p3, "showType"    # Z

    #@0
    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    const/4 v1, 0x0

    #@4
    iput v1, p0, Ljava/io/ObjectStreamField;->offset:I

    #@6
    .line 136
    iput-object p1, p0, Ljava/io/ObjectStreamField;->field:Ljava/lang/reflect/Field;

    #@8
    .line 137
    iput-boolean p2, p0, Ljava/io/ObjectStreamField;->unshared:Z

    #@a
    .line 138
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    #@10
    .line 139
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@13
    move-result-object v0

    #@14
    .line 140
    .local v0, "ftype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p3, :cond_0

    #@16
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    :cond_0
    move-object v1, v0

    #@1d
    :goto_0
    iput-object v1, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    #@1f
    .line 141
    invoke-static {v0}, Ljava/io/ObjectStreamField;->getClassSignature(Ljava/lang/Class;)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    iput-object v1, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    #@29
    .line 135
    return-void

    #@2a
    .line 140
    :cond_1
    const-class v1, Ljava/lang/Object;

    #@2c
    goto :goto_0
.end method

.method private static getClassSignature(Ljava/lang/Class;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 287
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 288
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 289
    const/16 v1, 0x5b

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    .line 290
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@13
    move-result-object p0

    #@14
    goto :goto_0

    #@15
    .line 292
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_a

    #@1b
    .line 293
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@1d
    if-ne p0, v1, :cond_1

    #@1f
    .line 294
    const/16 v1, 0x49

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 317
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    return-object v1

    #@29
    .line 295
    :cond_1
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@2b
    if-ne p0, v1, :cond_2

    #@2d
    .line 296
    const/16 v1, 0x42

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@32
    goto :goto_1

    #@33
    .line 297
    :cond_2
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@35
    if-ne p0, v1, :cond_3

    #@37
    .line 298
    const/16 v1, 0x4a

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3c
    goto :goto_1

    #@3d
    .line 299
    :cond_3
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@3f
    if-ne p0, v1, :cond_4

    #@41
    .line 300
    const/16 v1, 0x46

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@46
    goto :goto_1

    #@47
    .line 301
    :cond_4
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@49
    if-ne p0, v1, :cond_5

    #@4b
    .line 302
    const/16 v1, 0x44

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@50
    goto :goto_1

    #@51
    .line 303
    :cond_5
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@53
    if-ne p0, v1, :cond_6

    #@55
    .line 304
    const/16 v1, 0x53

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5a
    goto :goto_1

    #@5b
    .line 305
    :cond_6
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@5d
    if-ne p0, v1, :cond_7

    #@5f
    .line 306
    const/16 v1, 0x43

    #@61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@64
    goto :goto_1

    #@65
    .line 307
    :cond_7
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@67
    if-ne p0, v1, :cond_8

    #@69
    .line 308
    const/16 v1, 0x5a

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6e
    goto :goto_1

    #@6f
    .line 309
    :cond_8
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@71
    if-ne p0, v1, :cond_9

    #@73
    .line 310
    const/16 v1, 0x56

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@78
    goto :goto_1

    #@79
    .line 312
    :cond_9
    new-instance v1, Ljava/lang/InternalError;

    #@7b
    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    #@7e
    throw v1

    #@7f
    .line 315
    :cond_a
    const/16 v1, 0x4c

    #@81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@84
    move-result-object v1

    #@85
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@88
    move-result-object v2

    #@89
    const/16 v3, 0x2e

    #@8b
    const/16 v4, 0x2f

    #@8d
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@90
    move-result-object v2

    #@91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v1

    #@95
    const/16 v2, 0x3b

    #@97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9a
    goto :goto_1
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    move-object v1, p1

    #@1
    .line 252
    check-cast v1, Ljava/io/ObjectStreamField;

    #@3
    .line 253
    .local v1, "other":Ljava/io/ObjectStreamField;
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    #@6
    move-result v0

    #@7
    .line 254
    .local v0, "isPrim":Z
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    #@a
    move-result v2

    #@b
    if-eq v0, v2, :cond_1

    #@d
    .line 255
    if-eqz v0, :cond_0

    #@f
    const/4 v2, -0x1

    #@10
    :goto_0
    return v2

    #@11
    :cond_0
    const/4 v2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 257
    :cond_1
    iget-object v2, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    #@15
    iget-object v3, v1, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@1a
    move-result v2

    #@1b
    return v2
.end method

.method getField()Ljava/lang/reflect/Field;
    .locals 1

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Ljava/io/ObjectStreamField;->field:Ljava/lang/reflect/Field;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOffset()I
    .locals 1

    #@0
    .prologue
    .line 209
    iget v0, p0, Ljava/io/ObjectStreamField;->offset:I

    #@2
    return v0
.end method

.method getSignature()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 280
    iget-object v0, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method public getTypeCode()C
    .locals 2

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 198
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    #@a
    goto :goto_0
.end method

.method public isPrimitive()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 230
    iget-object v2, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    #@3
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    #@6
    move-result v0

    #@7
    .line 231
    .local v0, "tcode":C
    const/16 v2, 0x4c

    #@9
    if-eq v0, v2, :cond_0

    #@b
    const/16 v2, 0x5b

    #@d
    if-eq v0, v2, :cond_0

    #@f
    const/4 v1, 0x1

    #@10
    :cond_0
    return v1
.end method

.method public isUnshared()Z
    .locals 1

    #@0
    .prologue
    .line 241
    iget-boolean v0, p0, Ljava/io/ObjectStreamField;->unshared:Z

    #@2
    return v0
.end method

.method protected setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 220
    iput p1, p0, Ljava/io/ObjectStreamField;->offset:I

    #@2
    .line 219
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const/16 v1, 0x20

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method
