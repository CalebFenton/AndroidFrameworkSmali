.class Ljava/io/EmulatedFieldsForDumping;
.super Ljava/io/ObjectOutputStream$PutField;
.source "EmulatedFieldsForDumping.java"


# instance fields
.field private emulatedFields:Ljava/io/EmulatedFields;

.field private final oos:Ljava/io/ObjectOutputStream;


# direct methods
.method constructor <init>(Ljava/io/ObjectOutputStream;Ljava/io/ObjectStreamClass;)V
    .locals 3
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .param p2, "streamClass"    # Ljava/io/ObjectStreamClass;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$PutField;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Ljava/io/EmulatedFieldsForDumping;->oos:Ljava/io/ObjectOutputStream;

    #@5
    .line 45
    new-instance v1, Ljava/io/EmulatedFields;

    #@7
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    #@a
    move-result-object v2

    #@b
    const/4 v0, 0x0

    #@c
    check-cast v0, [Ljava/io/ObjectStreamField;

    #@e
    invoke-direct {v1, v2, v0}, Ljava/io/EmulatedFields;-><init>([Ljava/io/ObjectStreamField;[Ljava/io/ObjectStreamField;)V

    #@11
    iput-object v1, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    #@13
    .line 43
    return-void
.end method


# virtual methods
.method emulatedFields()Ljava/io/EmulatedFields;
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    #@2
    return-object v0
.end method

.method public put(Ljava/lang/String;B)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # B

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;B)V

    #@5
    .line 69
    return-void
.end method

.method public put(Ljava/lang/String;C)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # C

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;C)V

    #@5
    .line 83
    return-void
.end method

.method public put(Ljava/lang/String;D)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;D)V

    #@5
    .line 97
    return-void
.end method

.method public put(Ljava/lang/String;F)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;F)V

    #@5
    .line 111
    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;I)V

    #@5
    .line 125
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;J)V

    #@5
    .line 139
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@5
    .line 153
    return-void
.end method

.method public put(Ljava/lang/String;S)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # S

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;S)V

    #@5
    .line 167
    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;Z)V

    #@5
    .line 181
    return-void
.end method

.method public write(Ljava/io/ObjectOutput;)V
    .locals 10
    .param p1, "output"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 197
    iget-object v3, p0, Ljava/io/EmulatedFieldsForDumping;->oos:Ljava/io/ObjectOutputStream;

    #@3
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_0

    #@9
    .line 198
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v4, "Attempting to write to a different stream than the one that created this PutField"

    #@e
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v3

    #@12
    .line 200
    :cond_0
    iget-object v3, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    #@14
    invoke-virtual {v3}, Ljava/io/EmulatedFields;->slots()[Ljava/io/EmulatedFields$ObjectSlot;

    #@17
    move-result-object v8

    #@18
    array-length v9, v8

    #@19
    move v5, v4

    #@1a
    :goto_0
    if-ge v5, v9, :cond_11

    #@1c
    aget-object v1, v8, v5

    #@1e
    .line 201
    .local v1, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    invoke-virtual {v1}, Ljava/io/EmulatedFields$ObjectSlot;->getFieldValue()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    .line 202
    .local v0, "fieldValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/io/EmulatedFields$ObjectSlot;->getField()Ljava/io/ObjectStreamField;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    #@29
    move-result-object v2

    #@2a
    .line 203
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@2c
    if-ne v2, v3, :cond_2

    #@2e
    .line 204
    if-eqz v0, :cond_1

    #@30
    check-cast v0, Ljava/lang/Integer;

    #@32
    .end local v0    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@35
    move-result v3

    #@36
    :goto_1
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    #@39
    .line 200
    :goto_2
    add-int/lit8 v3, v5, 0x1

    #@3b
    move v5, v3

    #@3c
    goto :goto_0

    #@3d
    .restart local v0    # "fieldValue":Ljava/lang/Object;
    :cond_1
    move v3, v4

    #@3e
    .line 204
    goto :goto_1

    #@3f
    .line 205
    :cond_2
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@41
    if-ne v2, v3, :cond_4

    #@43
    .line 206
    if-eqz v0, :cond_3

    #@45
    check-cast v0, Ljava/lang/Byte;

    #@47
    .end local v0    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    #@4a
    move-result v3

    #@4b
    :goto_3
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeByte(I)V

    #@4e
    goto :goto_2

    #@4f
    .restart local v0    # "fieldValue":Ljava/lang/Object;
    :cond_3
    move v3, v4

    #@50
    goto :goto_3

    #@51
    .line 207
    :cond_4
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@53
    if-ne v2, v3, :cond_6

    #@55
    .line 208
    if-eqz v0, :cond_5

    #@57
    check-cast v0, Ljava/lang/Character;

    #@59
    .end local v0    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    #@5c
    move-result v3

    #@5d
    :goto_4
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeChar(I)V

    #@60
    goto :goto_2

    #@61
    .restart local v0    # "fieldValue":Ljava/lang/Object;
    :cond_5
    move v3, v4

    #@62
    goto :goto_4

    #@63
    .line 209
    :cond_6
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@65
    if-ne v2, v3, :cond_8

    #@67
    .line 210
    if-eqz v0, :cond_7

    #@69
    check-cast v0, Ljava/lang/Short;

    #@6b
    .end local v0    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    #@6e
    move-result v3

    #@6f
    :goto_5
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeShort(I)V

    #@72
    goto :goto_2

    #@73
    .restart local v0    # "fieldValue":Ljava/lang/Object;
    :cond_7
    move v3, v4

    #@74
    goto :goto_5

    #@75
    .line 211
    :cond_8
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@77
    if-ne v2, v3, :cond_a

    #@79
    .line 212
    if-eqz v0, :cond_9

    #@7b
    check-cast v0, Ljava/lang/Boolean;

    #@7d
    .end local v0    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@80
    move-result v3

    #@81
    :goto_6
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@84
    goto :goto_2

    #@85
    .restart local v0    # "fieldValue":Ljava/lang/Object;
    :cond_9
    move v3, v4

    #@86
    goto :goto_6

    #@87
    .line 213
    :cond_a
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@89
    if-ne v2, v3, :cond_c

    #@8b
    .line 214
    if-eqz v0, :cond_b

    #@8d
    check-cast v0, Ljava/lang/Long;

    #@8f
    .end local v0    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@92
    move-result-wide v6

    #@93
    :goto_7
    invoke-interface {p1, v6, v7}, Ljava/io/ObjectOutput;->writeLong(J)V

    #@96
    goto :goto_2

    #@97
    .restart local v0    # "fieldValue":Ljava/lang/Object;
    :cond_b
    const-wide/16 v6, 0x0

    #@99
    goto :goto_7

    #@9a
    .line 215
    :cond_c
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@9c
    if-ne v2, v3, :cond_e

    #@9e
    .line 216
    if-eqz v0, :cond_d

    #@a0
    check-cast v0, Ljava/lang/Float;

    #@a2
    .end local v0    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@a5
    move-result v3

    #@a6
    :goto_8
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeFloat(F)V

    #@a9
    goto :goto_2

    #@aa
    .restart local v0    # "fieldValue":Ljava/lang/Object;
    :cond_d
    const/4 v3, 0x0

    #@ab
    goto :goto_8

    #@ac
    .line 217
    :cond_e
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@ae
    if-ne v2, v3, :cond_10

    #@b0
    .line 218
    if-eqz v0, :cond_f

    #@b2
    check-cast v0, Ljava/lang/Double;

    #@b4
    .end local v0    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    #@b7
    move-result-wide v6

    #@b8
    :goto_9
    invoke-interface {p1, v6, v7}, Ljava/io/ObjectOutput;->writeDouble(D)V

    #@bb
    goto/16 :goto_2

    #@bd
    .restart local v0    # "fieldValue":Ljava/lang/Object;
    :cond_f
    const-wide/16 v6, 0x0

    #@bf
    goto :goto_9

    #@c0
    .line 221
    :cond_10
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    #@c3
    goto/16 :goto_2

    #@c5
    .line 196
    .end local v0    # "fieldValue":Ljava/lang/Object;
    .end local v1    # "slot":Ljava/io/EmulatedFields$ObjectSlot;
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_11
    return-void
.end method
