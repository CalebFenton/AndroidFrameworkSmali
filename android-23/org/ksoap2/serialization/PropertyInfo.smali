.class public Lorg/ksoap2/serialization/PropertyInfo;
.super Ljava/lang/Object;
.source "PropertyInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BOOLEAN_CLASS:Ljava/lang/Class;

.field public static final INTEGER_CLASS:Ljava/lang/Class;

.field public static final LONG_CLASS:Ljava/lang/Class;

.field public static final MULTI_REF:I = 0x2

.field public static final OBJECT_CLASS:Ljava/lang/Class;

.field public static final OBJECT_TYPE:Lorg/ksoap2/serialization/PropertyInfo;

.field public static final REF_ONLY:I = 0x4

.field public static final STRING_CLASS:Ljava/lang/Class;

.field public static final TRANSIENT:I = 0x1

.field public static final VECTOR_CLASS:Ljava/lang/Class;


# instance fields
.field public elementType:Lorg/ksoap2/serialization/PropertyInfo;

.field public flags:I

.field public multiRef:Z

.field public name:Ljava/lang/String;

.field public namespace:Ljava/lang/String;

.field public type:Ljava/lang/Object;

.field protected value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 38
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v0

    #@9
    sput-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    #@b
    .line 39
    const-string/jumbo v0, ""

    #@e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v0

    #@12
    sput-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    #@14
    .line 40
    new-instance v0, Ljava/lang/Integer;

    #@16
    const/4 v1, 0x0

    #@17
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    #@1a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1d
    move-result-object v0

    #@1e
    sput-object v0, Lorg/ksoap2/serialization/PropertyInfo;->INTEGER_CLASS:Ljava/lang/Class;

    #@20
    .line 41
    new-instance v0, Ljava/lang/Long;

    #@22
    const-wide/16 v2, 0x0

    #@24
    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2a
    move-result-object v0

    #@2b
    sput-object v0, Lorg/ksoap2/serialization/PropertyInfo;->LONG_CLASS:Ljava/lang/Class;

    #@2d
    .line 42
    new-instance v0, Ljava/lang/Boolean;

    #@2f
    const/4 v1, 0x1

    #@30
    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    #@33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@36
    move-result-object v0

    #@37
    sput-object v0, Lorg/ksoap2/serialization/PropertyInfo;->BOOLEAN_CLASS:Ljava/lang/Class;

    #@39
    .line 43
    new-instance v0, Ljava/util/Vector;

    #@3b
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@3e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@41
    move-result-object v0

    #@42
    sput-object v0, Lorg/ksoap2/serialization/PropertyInfo;->VECTOR_CLASS:Ljava/lang/Class;

    #@44
    .line 44
    new-instance v0, Lorg/ksoap2/serialization/PropertyInfo;

    #@46
    invoke-direct {v0}, Lorg/ksoap2/serialization/PropertyInfo;-><init>()V

    #@49
    sput-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lorg/ksoap2/serialization/PropertyInfo;

    #@4b
    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    #@5
    iput-object v0, p0, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    #@7
    .line 84
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 90
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    #@3
    iput-object v0, p0, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    #@5
    .line 91
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lorg/ksoap2/serialization/PropertyInfo;->flags:I

    #@8
    .line 92
    iput-object v1, p0, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    #@a
    .line 93
    iput-object v1, p0, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    #@c
    .line 88
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 9

    #@0
    .prologue
    .line 242
    const/4 v5, 0x0

    #@1
    .line 246
    .local v5, "obj":Ljava/lang/Object;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@6
    .line 247
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/ObjectOutputStream;

    #@8
    invoke-direct {v6, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@b
    .line 248
    .local v6, "out":Ljava/io/ObjectOutputStream;
    invoke-virtual {v6, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@e
    .line 249
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->flush()V

    #@11
    .line 250
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V

    #@14
    .line 254
    new-instance v3, Ljava/io/ObjectInputStream;

    #@16
    .line 255
    new-instance v7, Ljava/io/ByteArrayInputStream;

    #@18
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@1b
    move-result-object v8

    #@1c
    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@1f
    .line 254
    invoke-direct {v3, v7}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    #@22
    .line 256
    .local v3, "in":Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/NotSerializableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result-object v5

    #@26
    .line 267
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "out":Ljava/io/ObjectOutputStream;
    :goto_0
    return-object v5

    #@27
    .line 264
    .restart local v5    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v2

    #@28
    .line 265
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    #@2b
    goto :goto_0

    #@2c
    .line 261
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    #@2d
    .line 262
    .local v4, "nse":Ljava/io/NotSerializableException;
    invoke-virtual {v4}, Ljava/io/NotSerializableException;->printStackTrace()V

    #@30
    goto :goto_0

    #@31
    .line 258
    .end local v4    # "nse":Ljava/io/NotSerializableException;
    :catch_2
    move-exception v1

    #@32
    .line 259
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    #@35
    goto :goto_0
.end method

.method public getElementType()Lorg/ksoap2/serialization/PropertyInfo;
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lorg/ksoap2/serialization/PropertyInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    #@2
    return-object v0
.end method

.method public getFlags()I
    .locals 1

    #@0
    .prologue
    .line 118
    iget v0, p0, Lorg/ksoap2/serialization/PropertyInfo;->flags:I

    #@2
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 186
    iget-object v0, p0, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Lorg/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public isMultiRef()Z
    .locals 1

    #@0
    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/ksoap2/serialization/PropertyInfo;->multiRef:Z

    #@2
    return v0
.end method

.method public setElementType(Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 0
    .param p1, "elementType"    # Lorg/ksoap2/serialization/PropertyInfo;

    #@0
    .prologue
    .line 110
    iput-object p1, p0, Lorg/ksoap2/serialization/PropertyInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    #@2
    .line 108
    return-void
.end method

.method public setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 127
    iput p1, p0, Lorg/ksoap2/serialization/PropertyInfo;->flags:I

    #@2
    .line 125
    return-void
.end method

.method public setMultiRef(Z)V
    .locals 0
    .param p1, "multiRef"    # Z

    #@0
    .prologue
    .line 144
    iput-boolean p1, p0, Lorg/ksoap2/serialization/PropertyInfo;->multiRef:Z

    #@2
    .line 142
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 161
    iput-object p1, p0, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    #@2
    .line 159
    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;

    #@0
    .prologue
    .line 178
    iput-object p1, p0, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    #@2
    .line 176
    return-void
.end method

.method public setType(Ljava/lang/Object;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 195
    iput-object p1, p0, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    #@2
    .line 193
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 212
    iput-object p1, p0, Lorg/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    #@2
    .line 210
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 223
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a
    .line 224
    const-string/jumbo v1, " : "

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10
    .line 225
    iget-object v1, p0, Lorg/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 227
    iget-object v1, p0, Lorg/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@19
    .line 233
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    return-object v1

    #@1e
    .line 231
    :cond_0
    const-string/jumbo v1, "(not set)"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@24
    goto :goto_0
.end method
