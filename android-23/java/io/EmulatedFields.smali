.class Ljava/io/EmulatedFields;
.super Ljava/lang/Object;
.source "EmulatedFields.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/EmulatedFields$ObjectSlot;
    }
.end annotation


# instance fields
.field private declaredFields:[Ljava/io/ObjectStreamField;

.field private slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;


# direct methods
.method public constructor <init>([Ljava/io/ObjectStreamField;[Ljava/io/ObjectStreamField;)V
    .locals 0
    .param p1, "fields"    # [Ljava/io/ObjectStreamField;
    .param p2, "declared"    # [Ljava/io/ObjectStreamField;

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    invoke-direct {p0, p1}, Ljava/io/EmulatedFields;->buildSlots([Ljava/io/ObjectStreamField;)V

    #@6
    .line 82
    iput-object p2, p0, Ljava/io/EmulatedFields;->declaredFields:[Ljava/io/ObjectStreamField;

    #@8
    .line 79
    return-void
.end method

.method private buildSlots([Ljava/io/ObjectStreamField;)V
    .locals 3
    .param p1, "fields"    # [Ljava/io/ObjectStreamField;

    #@0
    .prologue
    .line 94
    array-length v2, p1

    #@1
    new-array v2, v2, [Ljava/io/EmulatedFields$ObjectSlot;

    #@3
    iput-object v2, p0, Ljava/io/EmulatedFields;->slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;

    #@5
    .line 95
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    array-length v2, p1

    #@7
    if-ge v0, v2, :cond_0

    #@9
    .line 96
    new-instance v1, Ljava/io/EmulatedFields$ObjectSlot;

    #@b
    invoke-direct {v1}, Ljava/io/EmulatedFields$ObjectSlot;-><init>()V

    #@e
    .line 97
    .local v1, "s":Ljava/io/EmulatedFields$ObjectSlot;
    iget-object v2, p0, Ljava/io/EmulatedFields;->slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;

    #@10
    aput-object v1, v2, v0

    #@12
    .line 98
    aget-object v2, p1, v0

    #@14
    iput-object v2, v1, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    #@16
    .line 95
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 93
    .end local v1    # "s":Ljava/io/EmulatedFields$ObjectSlot;
    :cond_0
    return-void
.end method

.method private findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/EmulatedFields$ObjectSlot;"
        }
    .end annotation

    #@0
    .prologue
    .line 186
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    #@3
    move-result-object v0

    #@4
    .line 187
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    if-eqz v0, :cond_0

    #@6
    if-nez p2, :cond_1

    #@8
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    #@a
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 188
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "no field \'"

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    const-string/jumbo v3, "\' of type "

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v1

    #@39
    .line 190
    :cond_1
    return-object v0
.end method

.method private findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;
    .locals 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/EmulatedFields$ObjectSlot;"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    #@1
    .line 145
    if-eqz p2, :cond_0

    #@3
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    #@6
    move-result v2

    #@7
    .line 146
    :goto_0
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Ljava/io/EmulatedFields;->slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;

    #@a
    array-length v4, v4

    #@b
    if-ge v1, v4, :cond_4

    #@d
    .line 147
    iget-object v4, p0, Ljava/io/EmulatedFields;->slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;

    #@f
    aget-object v3, v4, v1

    #@11
    .line 148
    .local v3, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    iget-object v4, v3, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    #@13
    invoke-virtual {v4}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_3

    #@1d
    .line 149
    if-eqz v2, :cond_1

    #@1f
    .line 152
    iget-object v4, v3, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    #@21
    invoke-virtual {v4}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    #@24
    move-result-object v4

    #@25
    if-ne v4, p2, :cond_3

    #@27
    .line 153
    return-object v3

    #@28
    .line 145
    .end local v1    # "i":I
    .end local v3    # "slot":Ljava/io/EmulatedFields$ObjectSlot;
    :cond_0
    const/4 v2, 0x0

    #@29
    .local v2, "isPrimitive":Z
    goto :goto_0

    #@2a
    .line 157
    .end local v2    # "isPrimitive":Z
    .restart local v1    # "i":I
    .restart local v3    # "slot":Ljava/io/EmulatedFields$ObjectSlot;
    :cond_1
    if-nez p2, :cond_2

    #@2c
    .line 158
    return-object v3

    #@2d
    .line 161
    :cond_2
    iget-object v4, v3, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    #@2f
    invoke-virtual {v4}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@36
    move-result v4

    #@37
    if-eqz v4, :cond_3

    #@39
    .line 162
    return-object v3

    #@3a
    .line 146
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_1

    #@3d
    .line 168
    .end local v3    # "slot":Ljava/io/EmulatedFields$ObjectSlot;
    :cond_4
    iget-object v4, p0, Ljava/io/EmulatedFields;->declaredFields:[Ljava/io/ObjectStreamField;

    #@3f
    if-eqz v4, :cond_8

    #@41
    .line 169
    const/4 v1, 0x0

    #@42
    :goto_2
    iget-object v4, p0, Ljava/io/EmulatedFields;->declaredFields:[Ljava/io/ObjectStreamField;

    #@44
    array-length v4, v4

    #@45
    if-ge v1, v4, :cond_8

    #@47
    .line 170
    iget-object v4, p0, Ljava/io/EmulatedFields;->declaredFields:[Ljava/io/ObjectStreamField;

    #@49
    aget-object v0, v4, v1

    #@4b
    .line 171
    .local v0, "field":Ljava/io/ObjectStreamField;
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v4

    #@53
    if-eqz v4, :cond_7

    #@55
    .line 172
    if-eqz v2, :cond_6

    #@57
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    #@5a
    move-result-object v4

    #@5b
    if-ne p2, v4, :cond_7

    #@5d
    .line 174
    :cond_5
    new-instance v3, Ljava/io/EmulatedFields$ObjectSlot;

    #@5f
    invoke-direct {v3}, Ljava/io/EmulatedFields$ObjectSlot;-><init>()V

    #@62
    .line 175
    .restart local v3    # "slot":Ljava/io/EmulatedFields$ObjectSlot;
    iput-object v0, v3, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    #@64
    .line 176
    const/4 v4, 0x1

    #@65
    iput-boolean v4, v3, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    #@67
    .line 177
    return-object v3

    #@68
    .line 172
    .end local v3    # "slot":Ljava/io/EmulatedFields$ObjectSlot;
    :cond_6
    if-eqz p2, :cond_5

    #@6a
    .line 173
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@71
    move-result v4

    #@72
    .line 172
    if-nez v4, :cond_5

    #@74
    .line 169
    :cond_7
    add-int/lit8 v1, v1, 0x1

    #@76
    goto :goto_2

    #@77
    .line 182
    .end local v0    # "field":Ljava/io/ObjectStreamField;
    :cond_8
    return-object v5
.end method


# virtual methods
.method public defaulted(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 118
    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    #@4
    move-result-object v0

    #@5
    .line 119
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    if-nez v0, :cond_0

    #@7
    .line 120
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "no field \'"

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    const-string/jumbo v3, "\'"

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 122
    :cond_0
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    #@2a
    return v1
.end method

.method public get(Ljava/lang/String;B)B
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 209
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    #@5
    move-result-object v0

    #@6
    .line 210
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    .end local p2    # "defaultValue":B
    :goto_0
    return p2

    #@b
    .restart local p2    # "defaultValue":B
    :cond_0
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@d
    check-cast v1, Ljava/lang/Byte;

    #@f
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    #@12
    move-result p2

    #@13
    goto :goto_0
.end method

.method public get(Ljava/lang/String;C)C
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 229
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    #@5
    move-result-object v0

    #@6
    .line 230
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    .end local p2    # "defaultValue":C
    :goto_0
    return p2

    #@b
    .restart local p2    # "defaultValue":C
    :cond_0
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@d
    check-cast v1, Ljava/lang/Character;

    #@f
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    #@12
    move-result p2

    #@13
    goto :goto_0
.end method

.method public get(Ljava/lang/String;D)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 249
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    #@5
    move-result-object v0

    #@6
    .line 250
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    .end local p2    # "defaultValue":D
    :goto_0
    return-wide p2

    #@b
    .restart local p2    # "defaultValue":D
    :cond_0
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@d
    check-cast v1, Ljava/lang/Double;

    #@f
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    #@12
    move-result-wide p2

    #@13
    goto :goto_0
.end method

.method public get(Ljava/lang/String;F)F
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 269
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    #@5
    move-result-object v0

    #@6
    .line 270
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    .end local p2    # "defaultValue":F
    :goto_0
    return p2

    #@b
    .restart local p2    # "defaultValue":F
    :cond_0
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@d
    check-cast v1, Ljava/lang/Float;

    #@f
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@12
    move-result p2

    #@13
    goto :goto_0
.end method

.method public get(Ljava/lang/String;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 289
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    #@5
    move-result-object v0

    #@6
    .line 290
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    #@b
    .restart local p2    # "defaultValue":I
    :cond_0
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@d
    check-cast v1, Ljava/lang/Integer;

    #@f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@12
    move-result p2

    #@13
    goto :goto_0
.end method

.method public get(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 309
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    #@5
    move-result-object v0

    #@6
    .line 310
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    #@b
    .restart local p2    # "defaultValue":J
    :cond_0
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@d
    check-cast v1, Ljava/lang/Long;

    #@f
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@12
    move-result-wide p2

    #@13
    goto :goto_0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 329
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    #@4
    move-result-object v0

    #@5
    .line 330
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    return-object p2

    #@a
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    iget-object p2, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@c
    goto :goto_0
.end method

.method public get(Ljava/lang/String;S)S
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 349
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    #@5
    move-result-object v0

    #@6
    .line 350
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    .end local p2    # "defaultValue":S
    :goto_0
    return p2

    #@b
    .restart local p2    # "defaultValue":S
    :cond_0
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@d
    check-cast v1, Ljava/lang/Short;

    #@f
    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    #@12
    move-result p2

    #@13
    goto :goto_0
.end method

.method public get(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 369
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    #@5
    move-result-object v0

    #@6
    .line 370
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    #@b
    .restart local p2    # "defaultValue":Z
    :cond_0
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@d
    check-cast v1, Ljava/lang/Boolean;

    #@f
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@12
    move-result p2

    #@13
    goto :goto_0
.end method

.method public put(Ljava/lang/String;B)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 386
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    #@5
    move-result-object v0

    #@6
    .line 387
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@9
    move-result-object v1

    #@a
    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@c
    .line 388
    const/4 v1, 0x0

    #@d
    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    #@f
    .line 385
    return-void
.end method

.method public put(Ljava/lang/String;C)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 404
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    #@5
    move-result-object v0

    #@6
    .line 405
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@9
    move-result-object v1

    #@a
    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@c
    .line 406
    const/4 v1, 0x0

    #@d
    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    #@f
    .line 403
    return-void
.end method

.method public put(Ljava/lang/String;D)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 422
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    #@5
    move-result-object v0

    #@6
    .line 423
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@9
    move-result-object v1

    #@a
    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@c
    .line 424
    const/4 v1, 0x0

    #@d
    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    #@f
    .line 421
    return-void
.end method

.method public put(Ljava/lang/String;F)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 440
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    #@5
    move-result-object v0

    #@6
    .line 441
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@9
    move-result-object v1

    #@a
    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@c
    .line 442
    const/4 v1, 0x0

    #@d
    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    #@f
    .line 439
    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 458
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    #@5
    move-result-object v0

    #@6
    .line 459
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@c
    .line 460
    const/4 v1, 0x0

    #@d
    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    #@f
    .line 457
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 476
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    #@5
    move-result-object v0

    #@6
    .line 477
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9
    move-result-object v1

    #@a
    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@c
    .line 478
    const/4 v1, 0x0

    #@d
    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    #@f
    .line 475
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 494
    const/4 v1, 0x0

    #@1
    .line 495
    .local v1, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_0

    #@3
    .line 496
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v1

    #@7
    .line 498
    .end local v1    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    #@a
    move-result-object v0

    #@b
    .line 499
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    iput-object p2, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@d
    .line 500
    const/4 v2, 0x0

    #@e
    iput-boolean v2, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    #@10
    .line 493
    return-void
.end method

.method public put(Ljava/lang/String;S)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 516
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    #@5
    move-result-object v0

    #@6
    .line 517
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@9
    move-result-object v1

    #@a
    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@c
    .line 518
    const/4 v1, 0x0

    #@d
    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    #@f
    .line 515
    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 534
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    #@5
    move-result-object v0

    #@6
    .line 535
    .local v0, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@9
    move-result-object v1

    #@a
    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@c
    .line 536
    const/4 v1, 0x0

    #@d
    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    #@f
    .line 533
    return-void
.end method

.method public slots()[Ljava/io/EmulatedFields$ObjectSlot;
    .locals 1

    #@0
    .prologue
    .line 545
    iget-object v0, p0, Ljava/io/EmulatedFields;->slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;

    #@2
    return-object v0
.end method
