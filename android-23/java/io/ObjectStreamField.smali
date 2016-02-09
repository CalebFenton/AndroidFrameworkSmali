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
.field private isDeserialized:Z

.field private name:Ljava/lang/String;

.field offset:I

.field private type:Ljava/lang/Object;

.field private typeString:Ljava/lang/String;

.field private unshared:Z


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
    .line 61
    .local p2, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    #@4
    .line 60
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
    .line 79
    .local p2, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    if-nez p1, :cond_0

    #@5
    .line 81
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "name == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 82
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v1, "cl == null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 85
    :cond_1
    iput-object p1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    #@1b
    .line 86
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@1e
    move-result-object v0

    #@1f
    if-nez v0, :cond_2

    #@21
    .end local p2    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    iput-object p2, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    #@23
    .line 87
    iput-boolean p3, p0, Ljava/io/ObjectStreamField;->unshared:Z

    #@25
    .line 79
    return-void

    #@26
    .line 86
    .restart local p2    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@28
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@2b
    move-object p2, v0

    #@2c
    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 100
    if-nez p2, :cond_0

    #@5
    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "name == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 103
    :cond_0
    iput-object p2, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    #@10
    .line 104
    const/16 v0, 0x2e

    #@12
    const/16 v1, 0x2f

    #@14
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    #@1e
    .line 105
    invoke-direct {p0}, Ljava/io/ObjectStreamField;->defaultResolve()Z

    #@21
    .line 106
    const/4 v0, 0x1

    #@22
    iput-boolean v0, p0, Ljava/io/ObjectStreamField;->isDeserialized:Z

    #@24
    .line 99
    return-void
.end method

.method private defaultResolve()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 330
    iget-object v0, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@7
    move-result v0

    #@8
    sparse-switch v0, :sswitch_data_0

    #@b
    .line 356
    const-class v0, Ljava/lang/Object;

    #@d
    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    #@f
    .line 357
    return v2

    #@10
    .line 332
    :sswitch_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@12
    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    #@14
    .line 333
    return v1

    #@15
    .line 335
    :sswitch_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@17
    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    #@19
    .line 336
    return v1

    #@1a
    .line 338
    :sswitch_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@1c
    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    #@1e
    .line 339
    return v1

    #@1f
    .line 341
    :sswitch_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@21
    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    #@23
    .line 342
    return v1

    #@24
    .line 344
    :sswitch_4
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@26
    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    #@28
    .line 345
    return v1

    #@29
    .line 347
    :sswitch_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@2b
    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    #@2d
    .line 348
    return v1

    #@2e
    .line 350
    :sswitch_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@30
    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    #@32
    .line 351
    return v1

    #@33
    .line 353
    :sswitch_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@35
    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    #@37
    .line 354
    return v1

    #@38
    .line 330
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x43 -> :sswitch_2
        0x44 -> :sswitch_7
        0x46 -> :sswitch_6
        0x49 -> :sswitch_0
        0x4a -> :sswitch_5
        0x53 -> :sswitch_3
        0x5a -> :sswitch_4
    .end sparse-switch
.end method

.method private typeCodeOf(Ljava/lang/Class;)C
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)C"
        }
    .end annotation

    #@0
    .prologue
    .line 205
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 206
    const/16 v0, 0x49

    #@6
    return v0

    #@7
    .line 207
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@9
    if-ne p1, v0, :cond_1

    #@b
    .line 208
    const/16 v0, 0x42

    #@d
    return v0

    #@e
    .line 209
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@10
    if-ne p1, v0, :cond_2

    #@12
    .line 210
    const/16 v0, 0x43

    #@14
    return v0

    #@15
    .line 211
    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@17
    if-ne p1, v0, :cond_3

    #@19
    .line 212
    const/16 v0, 0x53

    #@1b
    return v0

    #@1c
    .line 213
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@1e
    if-ne p1, v0, :cond_4

    #@20
    .line 214
    const/16 v0, 0x5a

    #@22
    return v0

    #@23
    .line 215
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@25
    if-ne p1, v0, :cond_5

    #@27
    .line 216
    const/16 v0, 0x4a

    #@29
    return v0

    #@2a
    .line 217
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@2c
    if-ne p1, v0, :cond_6

    #@2e
    .line 218
    const/16 v0, 0x46

    #@30
    return v0

    #@31
    .line 219
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@33
    if-ne p1, v0, :cond_7

    #@35
    .line 220
    const/16 v0, 0x44

    #@37
    return v0

    #@38
    .line 221
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_8

    #@3e
    .line 222
    const/16 v0, 0x5b

    #@40
    return v0

    #@41
    .line 224
    :cond_8
    const/16 v0, 0x4c

    #@43
    return v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 122
    check-cast v0, Ljava/io/ObjectStreamField;

    #@3
    .line 123
    .local v0, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    #@6
    move-result v2

    #@7
    .line 124
    .local v2, "thisPrimitive":Z
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    #@a
    move-result v1

    #@b
    .line 128
    .local v1, "fPrimitive":Z
    if-eq v2, v1, :cond_1

    #@d
    .line 129
    if-eqz v2, :cond_0

    #@f
    const/4 v3, -0x1

    #@10
    :goto_0
    return v3

    #@11
    :cond_0
    const/4 v3, 0x1

    #@12
    goto :goto_0

    #@13
    .line 133
    :cond_1
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@1e
    move-result v3

    #@1f
    return v3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOffset()I
    .locals 1

    #@0
    .prologue
    .line 151
    iget v0, p0, Ljava/io/ObjectStreamField;->offset:I

    #@2
    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 174
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 175
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-boolean v1, p0, Ljava/io/ObjectStreamField;->isDeserialized:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 178
    :cond_0
    return-object v0

    #@f
    .line 176
    :cond_1
    const-class v1, Ljava/lang/Object;

    #@11
    return-object v1
.end method

.method public getTypeCode()C
    .locals 1

    #@0
    .prologue
    .line 201
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/io/ObjectStreamField;->typeCodeOf(Ljava/lang/Class;)C

    #@7
    move-result v0

    #@8
    return v0
.end method

.method getTypeInternal()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    #@2
    instance-of v0, v0, Ljava/lang/ref/WeakReference;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 163
    iget-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    #@8
    check-cast v0, Ljava/lang/ref/WeakReference;

    #@a
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/Class;

    #@10
    return-object v0

    #@11
    .line 165
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    #@13
    check-cast v0, Ljava/lang/Class;

    #@15
    return-object v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 236
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 237
    return-object v4

    #@8
    .line 239
    :cond_0
    iget-object v3, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    #@a
    if-nez v3, :cond_1

    #@c
    .line 240
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    #@f
    move-result-object v1

    #@10
    .line 241
    .local v1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    const/16 v4, 0x2e

    #@16
    const/16 v5, 0x2f

    #@18
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 242
    .local v2, "typeName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_2

    #@22
    move-object v0, v2

    #@23
    .line 243
    .local v0, "str":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    iput-object v3, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    #@29
    .line 245
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "typeName":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    #@2b
    return-object v3

    #@2c
    .line 242
    .restart local v1    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "typeName":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v4, "L"

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    const/16 v4, 0x3b

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0
.end method

.method public isPrimitive()Z
    .locals 2

    #@0
    .prologue
    .line 255
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 256
    .local v0, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    #@9
    move-result v1

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    const/4 v1, 0x0

    #@c
    goto :goto_0
.end method

.method public isUnshared()Z
    .locals 1

    #@0
    .prologue
    .line 318
    iget-boolean v0, p0, Ljava/io/ObjectStreamField;->unshared:Z

    #@2
    return v0
.end method

.method resolve(Ljava/lang/ClassLoader;)V
    .locals 8
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 288
    iget-object v3, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    #@4
    if-nez v3, :cond_0

    #@6
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 290
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeCode()C

    #@f
    move-result v3

    #@10
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    iput-object v3, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    #@16
    .line 293
    :cond_0
    iget-object v3, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    #@18
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@1b
    move-result v3

    #@1c
    if-ne v3, v7, :cond_1

    #@1e
    .line 294
    invoke-direct {p0}, Ljava/io/ObjectStreamField;->defaultResolve()Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_1

    #@24
    .line 295
    return-void

    #@25
    .line 299
    :cond_1
    iget-object v3, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    #@27
    const/16 v4, 0x2f

    #@29
    const/16 v5, 0x2e

    #@2b
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 300
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    #@32
    move-result v3

    #@33
    const/16 v4, 0x4c

    #@35
    if-ne v3, v4, :cond_2

    #@37
    .line 302
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@3a
    move-result v3

    #@3b
    add-int/lit8 v3, v3, -0x1

    #@3d
    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 305
    :cond_2
    const/4 v3, 0x0

    #@42
    :try_start_0
    invoke-static {v1, v3, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@45
    move-result-object v0

    #@46
    .line 306
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@49
    move-result-object v3

    #@4a
    if-nez v3, :cond_3

    #@4c
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    #@4e
    .line 287
    :goto_1
    return-void

    #@4f
    .line 306
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    new-instance v3, Ljava/lang/ref/WeakReference;

    #@51
    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@54
    move-object v0, v3

    #@55
    goto :goto_0

    #@56
    .line 307
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    #@57
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_1
.end method

.method protected setOffset(I)V
    .locals 0
    .param p1, "newValue"    # I

    #@0
    .prologue
    .line 273
    iput p1, p0, Ljava/io/ObjectStreamField;->offset:I

    #@2
    .line 272
    return-void
.end method

.method setUnshared(Z)V
    .locals 0
    .param p1, "unshared"    # Z

    #@0
    .prologue
    .line 322
    iput-boolean p1, p0, Ljava/io/ObjectStreamField;->unshared:Z

    #@2
    .line 321
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const/16 v1, 0x28

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const/16 v1, 0x3a

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    const/16 v1, 0x29

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method writeField(Ljava/io/DataOutputStream;)Z
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 260
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 261
    .local v0, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v0}, Ljava/io/ObjectStreamField;->typeCodeOf(Ljava/lang/Class;)C

    #@7
    move-result v1

    #@8
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@b
    .line 262
    iget-object v1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    #@d
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@10
    .line 263
    if-eqz v0, :cond_0

    #@12
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    #@15
    move-result v1

    #@16
    :goto_0
    return v1

    #@17
    :cond_0
    const/4 v1, 0x0

    #@18
    goto :goto_0
.end method
