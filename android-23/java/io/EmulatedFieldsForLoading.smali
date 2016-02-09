.class Ljava/io/EmulatedFieldsForLoading;
.super Ljava/io/ObjectInputStream$GetField;
.source "EmulatedFieldsForLoading.java"


# instance fields
.field private emulatedFields:Ljava/io/EmulatedFields;

.field private streamClass:Ljava/io/ObjectStreamClass;


# direct methods
.method constructor <init>(Ljava/io/ObjectStreamClass;)V
    .locals 3
    .param p1, "streamClass"    # Ljava/io/ObjectStreamClass;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/io/ObjectInputStream$GetField;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Ljava/io/EmulatedFieldsForLoading;->streamClass:Ljava/io/ObjectStreamClass;

    #@5
    .line 45
    new-instance v0, Ljava/io/EmulatedFields;

    #@7
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getLoadFields()[Ljava/io/ObjectStreamField;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    #@e
    move-result-object v2

    #@f
    invoke-direct {v0, v1, v2}, Ljava/io/EmulatedFields;-><init>([Ljava/io/ObjectStreamField;[Ljava/io/ObjectStreamField;)V

    #@12
    iput-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->emulatedFields:Ljava/io/EmulatedFields;

    #@14
    .line 43
    return-void
.end method


# virtual methods
.method public defaulted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->emulatedFields:Ljava/io/EmulatedFields;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/EmulatedFields;->defaulted(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method emulatedFields()Ljava/io/EmulatedFields;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->emulatedFields:Ljava/io/EmulatedFields;

    #@2
    return-object v0
.end method

.method public get(Ljava/lang/String;B)B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->emulatedFields:Ljava/io/EmulatedFields;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->get(Ljava/lang/String;B)B

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public get(Ljava/lang/String;C)C
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->emulatedFields:Ljava/io/EmulatedFields;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->get(Ljava/lang/String;C)C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public get(Ljava/lang/String;D)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->emulatedFields:Ljava/io/EmulatedFields;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/EmulatedFields;->get(Ljava/lang/String;D)D

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public get(Ljava/lang/String;F)F
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->emulatedFields:Ljava/io/EmulatedFields;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->get(Ljava/lang/String;F)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public get(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->emulatedFields:Ljava/io/EmulatedFields;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->get(Ljava/lang/String;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public get(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->emulatedFields:Ljava/io/EmulatedFields;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/EmulatedFields;->get(Ljava/lang/String;J)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->emulatedFields:Ljava/io/EmulatedFields;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public get(Ljava/lang/String;S)S
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->emulatedFields:Ljava/io/EmulatedFields;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->get(Ljava/lang/String;S)S

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public get(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 285
    iget-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->emulatedFields:Ljava/io/EmulatedFields;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->get(Ljava/lang/String;Z)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getObjectStreamClass()Ljava/io/ObjectStreamClass;
    .locals 1

    #@0
    .prologue
    .line 296
    iget-object v0, p0, Ljava/io/EmulatedFieldsForLoading;->streamClass:Ljava/io/ObjectStreamClass;

    #@2
    return-object v0
.end method
