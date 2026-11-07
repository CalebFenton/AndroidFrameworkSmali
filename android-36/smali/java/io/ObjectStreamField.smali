.class public Ljava/io/ObjectStreamField;
.super Ljava/lang/Object;
.source "ObjectStreamField.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final greylist-max-o field:Ljava/lang/reflect/Field;

.field private final greylist-max-o name:Ljava/lang/String;

.field private greylist-max-o offset:I

.field private final greylist-max-o signature:Ljava/lang/String;

.field private final greylist-max-o type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private blacklist typeSignature:Ljava/lang/String;

.field private final greylist-max-o unshared:Z


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 71
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 72
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Class;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "unshared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 91
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    if-eqz p1, :cond_17

    .line 95
    iput-object p1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    .line 101
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    .line 102
    iput-boolean p3, p0, Ljava/io/ObjectStreamField;->unshared:Z

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/ObjectStreamField;->field:Ljava/lang/reflect/Field;

    .line 104
    iput-object v0, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    .line 105
    return-void

    .line 93
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "unshared"    # Z

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    if-eqz p1, :cond_3f

    .line 115
    iput-object p1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    .line 116
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    .line 117
    iput-boolean p3, p0, Ljava/io/ObjectStreamField;->unshared:Z

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/ObjectStreamField;->field:Ljava/lang/reflect/Field;

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_46

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :sswitch_22
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_3c

    .line 124
    :sswitch_25
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_3c

    .line 129
    :sswitch_28
    const-class v0, Ljava/lang/Object;

    goto :goto_3c

    .line 126
    :sswitch_2b
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_3c

    .line 125
    :sswitch_2e
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_3c

    .line 127
    :sswitch_31
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_3c

    .line 128
    :sswitch_34
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_3c

    .line 123
    :sswitch_37
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_3c

    .line 122
    :sswitch_3a
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 130
    :goto_3c
    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    .line 132
    return-void

    .line 113
    :cond_3f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    nop

    :sswitch_data_46
    .sparse-switch
        0x42 -> :sswitch_3a
        0x43 -> :sswitch_37
        0x44 -> :sswitch_34
        0x46 -> :sswitch_31
        0x49 -> :sswitch_2e
        0x4a -> :sswitch_2b
        0x4c -> :sswitch_28
        0x53 -> :sswitch_25
        0x5a -> :sswitch_22
        0x5b -> :sswitch_28
    .end sparse-switch
.end method

.method constructor greylist-max-o <init>(Ljava/lang/reflect/Field;ZZ)V
    .registers 6
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "unshared"    # Z
    .param p3, "showType"    # Z

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Ljava/io/ObjectStreamField;->field:Ljava/lang/reflect/Field;

    .line 196
    iput-boolean p2, p0, Ljava/io/ObjectStreamField;->unshared:Z

    .line 197
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 199
    .local v0, "ftype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p3, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_1d

    :cond_1a
    const-class v1, Ljava/lang/Object;

    goto :goto_1e

    :cond_1d
    :goto_1d
    move-object v1, v0

    :goto_1e
    iput-object v1, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    .line 200
    invoke-static {v0}, Ljava/io/ObjectStreamField;->getClassSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    .line 201
    return-void
.end method

.method static blacklist appendClassSignature(Ljava/lang/StringBuilder;Ljava/lang/Class;)Ljava/lang/StringBuilder;
    .registers 6
    .param p0, "sbuf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 172
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 173
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_1

    .line 177
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 178
    invoke-static {p1}, Ljava/io/ObjectStreamField;->getPrimitiveSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 180
    :cond_1f
    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    :goto_3a
    return-object p0
.end method

.method static greylist-max-o getClassSignature(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 164
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 165
    invoke-static {p0}, Ljava/io/ObjectStreamField;->getPrimitiveSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 167
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Ljava/io/ObjectStreamField;->appendClassSignature(Ljava/lang/StringBuilder;Ljava/lang/Class;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getPrimitiveSignature(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 138
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 139
    const-string v0, "I"

    return-object v0

    .line 140
    :cond_7
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_e

    .line 141
    const-string v0, "B"

    return-object v0

    .line 142
    :cond_e
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_15

    .line 143
    const-string v0, "J"

    return-object v0

    .line 144
    :cond_15
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1c

    .line 145
    const-string v0, "F"

    return-object v0

    .line 146
    :cond_1c
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_23

    .line 147
    const-string v0, "D"

    return-object v0

    .line 148
    :cond_23
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2a

    .line 149
    const-string v0, "S"

    return-object v0

    .line 150
    :cond_2a
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_31

    .line 151
    const-string v0, "C"

    return-object v0

    .line 152
    :cond_31
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_38

    .line 153
    const-string v0, "Z"

    return-object v0

    .line 154
    :cond_38
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3f

    .line 155
    const-string v0, "V"

    return-object v0

    .line 157
    :cond_3f
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 324
    move-object v0, p1

    check-cast v0, Ljava/io/ObjectStreamField;

    .line 325
    .local v0, "other":Ljava/io/ObjectStreamField;
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v1

    .line 326
    .local v1, "isPrim":Z
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v2

    if-eq v1, v2, :cond_13

    .line 327
    if-eqz v1, :cond_11

    const/4 v2, -0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x1

    :goto_12
    return v2

    .line 329
    :cond_13
    iget-object v2, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    iget-object v3, v0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method greylist getField()Ljava/lang/reflect/Field;
    .registers 2

    .line 344
    iget-object v0, p0, Ljava/io/ObjectStreamField;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 210
    iget-object v0, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getOffset()I
    .registers 2

    .line 279
    iget v0, p0, Ljava/io/ObjectStreamField;->offset:I

    return v0
.end method

.method greylist-max-o getSignature()Ljava/lang/String;
    .registers 3

    .line 352
    iget-object v0, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 353
    iget-object v0, p0, Ljava/io/ObjectStreamField;->signature:Ljava/lang/String;

    return-object v0

    .line 356
    :cond_7
    iget-object v0, p0, Ljava/io/ObjectStreamField;->typeSignature:Ljava/lang/String;

    .line 360
    .local v0, "sig":Ljava/lang/String;
    if-nez v0, :cond_18

    .line 361
    iget-object v1, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    invoke-static {v1}, Ljava/io/ObjectStreamField;->getClassSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Ljava/io/ObjectStreamField;->typeSignature:Ljava/lang/String;

    .line 363
    :cond_18
    return-object v0
.end method

.method public whitelist test-api getType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 236
    iget-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public whitelist test-api getTypeCode()C
    .registers 3

    .line 258
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public whitelist test-api getTypeString()Ljava/lang/String;
    .registers 2

    .line 268
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getSignature()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist test-api isPrimitive()Z
    .registers 3

    .line 300
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeCode()C

    move-result v0

    .line 301
    .local v0, "tcode":C
    const/16 v1, 0x4c

    if-eq v0, v1, :cond_e

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public whitelist test-api isUnshared()Z
    .registers 2

    .line 313
    iget-boolean v0, p0, Ljava/io/ObjectStreamField;->unshared:Z

    return v0
.end method

.method protected whitelist test-api setOffset(I)V
    .registers 2
    .param p1, "offset"    # I

    .line 290
    iput p1, p0, Ljava/io/ObjectStreamField;->offset:I

    .line 291
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
