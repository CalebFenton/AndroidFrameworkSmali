.class public Ljava/io/ObjectInputStream;
.super Ljava/io/InputStream;
.source "ObjectInputStream.java"

# interfaces
.implements Ljava/io/ObjectInput;
.implements Ljava/io/ObjectStreamConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectInputStream$InputValidationDesc;,
        Ljava/io/ObjectInputStream$GetField;
    }
.end annotation


# static fields
.field private static final PRIMITIVE_CLASSES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final UNSHARED_OBJ:Ljava/lang/Object;


# instance fields
.field private cachedSuperclasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private callerClassLoader:Ljava/lang/ClassLoader;

.field private currentClass:Ljava/io/ObjectStreamClass;

.field private currentObject:Ljava/lang/Object;

.field private descriptorHandle:I

.field private emptyStream:Ljava/io/InputStream;

.field private enableResolve:Z

.field private hasPushbackTC:Z

.field private input:Ljava/io/DataInputStream;

.field private mustResolve:Z

.field private nestedLevels:I

.field private nextHandle:I

.field private objectsRead:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private primitiveData:Ljava/io/InputStream;

.field private primitiveTypes:Ljava/io/DataInputStream;

.field private pushbackTC:B

.field private subclassOverridingImplementation:Z

.field private validations:[Ljava/io/ObjectInputStream$InputValidationDesc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 49
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Ljava/io/ObjectInputStream;->UNSHARED_OBJ:Ljava/lang/Object;

    #@7
    .line 103
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    sput-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    #@e
    .line 105
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    #@10
    const-string/jumbo v1, "boolean"

    #@13
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@15
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 106
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    #@1a
    const-string/jumbo v1, "byte"

    #@1d
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@1f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 107
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    #@24
    const-string/jumbo v1, "char"

    #@27
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@29
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 108
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    #@2e
    const-string/jumbo v1, "double"

    #@31
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@33
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 109
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    #@38
    const-string/jumbo v1, "float"

    #@3b
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@3d
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    .line 110
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    #@42
    const-string/jumbo v1, "int"

    #@45
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@47
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    .line 111
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    #@4c
    const-string/jumbo v1, "long"

    #@4f
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@51
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    .line 112
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    #@56
    const-string/jumbo v1, "short"

    #@59
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@5b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5e
    .line 113
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    #@60
    const-string/jumbo v1, "void"

    #@63
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@65
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@68
    .line 43
    return-void
.end method

.method protected constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 341
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@4
    .line 46
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@6
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    #@8
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@b
    iput-object v0, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    #@d
    .line 71
    iget-object v0, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    #@f
    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    #@11
    .line 98
    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    #@13
    .line 101
    const/4 v0, -0x1

    #@14
    iput v0, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    #@16
    .line 1250
    new-instance v0, Ljava/util/HashMap;

    #@18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1b
    iput-object v0, p0, Ljava/io/ObjectInputStream;->cachedSuperclasses:Ljava/util/HashMap;

    #@1d
    .line 344
    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->subclassOverridingImplementation:Z

    #@1f
    .line 341
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 359
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@4
    .line 46
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@6
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    #@8
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@b
    iput-object v0, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    #@d
    .line 71
    iget-object v0, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    #@f
    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    #@11
    .line 98
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    #@14
    .line 101
    const/4 v0, -0x1

    #@15
    iput v0, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    #@17
    .line 1250
    new-instance v0, Ljava/util/HashMap;

    #@19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1c
    iput-object v0, p0, Ljava/io/ObjectInputStream;->cachedSuperclasses:Ljava/util/HashMap;

    #@1e
    .line 360
    instance-of v0, p1, Ljava/io/DataInputStream;

    #@20
    if-eqz v0, :cond_0

    #@22
    .line 361
    check-cast p1, Ljava/io/DataInputStream;

    #@24
    .line 360
    .end local p1    # "input":Ljava/io/InputStream;
    :goto_0
    iput-object p1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@26
    .line 362
    new-instance v0, Ljava/io/DataInputStream;

    #@28
    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@2b
    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    #@2d
    .line 363
    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    #@2f
    .line 364
    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->subclassOverridingImplementation:Z

    #@31
    .line 365
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetState()V

    #@34
    .line 366
    iput v2, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    #@36
    .line 369
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@38
    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    #@3a
    .line 371
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readStreamHeader()V

    #@3d
    .line 372
    iget-object v0, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    #@3f
    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    #@41
    .line 359
    return-void

    #@42
    .line 361
    .restart local p1    # "input":Ljava/io/InputStream;
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    #@44
    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@47
    move-object p1, v0

    #@48
    goto :goto_0
.end method

.method private cacheSuperclassesFor(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1253
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1254
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    move-object v0, p1

    #@6
    .line 1255
    .local v0, "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_1

    #@8
    .line 1256
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@b
    move-result-object v2

    #@c
    .line 1257
    .local v2, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    #@e
    .line 1258
    const/4 v3, 0x0

    #@f
    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@12
    .line 1260
    :cond_0
    move-object v0, v2

    #@13
    goto :goto_0

    #@14
    .line 1262
    .end local v2    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    iget-object v3, p0, Ljava/io/ObjectInputStream;->cachedSuperclasses:Ljava/util/HashMap;

    #@16
    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 1263
    return-object v1
.end method

.method private checkReadPrimitiveTypes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 393
    iget-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    #@3
    iget-object v2, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@5
    if-eq v1, v2, :cond_0

    #@7
    iget-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    #@9
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    #@c
    move-result v1

    #@d
    if-lez v1, :cond_1

    #@f
    .line 394
    :cond_0
    return-void

    #@10
    .line 415
    .local v0, "next":I
    :pswitch_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetState()V

    #@13
    .line 400
    .end local v0    # "next":I
    :cond_1
    const/4 v0, 0x0

    #@14
    .line 401
    .restart local v0    # "next":I
    iget-boolean v1, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    #@16
    if-eqz v1, :cond_3

    #@18
    .line 402
    iput-boolean v3, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    #@1a
    .line 407
    :goto_0
    iget-byte v1, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    #@1c
    packed-switch v1, :pswitch_data_0

    #@1f
    .line 418
    :pswitch_1
    const/4 v1, -0x1

    #@20
    if-eq v0, v1, :cond_2

    #@22
    .line 419
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->pushbackTC()V

    #@25
    .line 421
    :cond_2
    return-void

    #@26
    .line 404
    :cond_3
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@28
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    #@2b
    move-result v0

    #@2c
    .line 405
    int-to-byte v1, v0

    #@2d
    iput-byte v1, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    #@2f
    goto :goto_0

    #@30
    .line 409
    :pswitch_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@32
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readBlockData()[B

    #@35
    move-result-object v2

    #@36
    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@39
    iput-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    #@3b
    .line 410
    return-void

    #@3c
    .line 412
    :pswitch_3
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@3e
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readBlockDataLong()[B

    #@41
    move-result-object v2

    #@42
    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@45
    iput-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    #@47
    .line 413
    return-void

    #@48
    .line 407
    :pswitch_data_0
    .packed-switch 0x77
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static checkedSetSuperClassDesc(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass;)V
    .locals 1
    .param p0, "desc"    # Ljava/io/ObjectStreamClass;
    .param p1, "superDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 2365
    invoke-virtual {p0, p1}, Ljava/io/ObjectStreamClass;->equals(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2366
    new-instance v0, Ljava/io/StreamCorruptedException;

    #@8
    invoke-direct {v0}, Ljava/io/StreamCorruptedException;-><init>()V

    #@b
    throw v0

    #@c
    .line 2368
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/ObjectStreamClass;->setSuperclass(Ljava/io/ObjectStreamClass;)V

    #@f
    .line 2364
    return-void
.end method

.method private corruptStream(B)Ljava/io/StreamCorruptedException;
    .locals 3
    .param p1, "tc"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 675
    new-instance v0, Ljava/io/StreamCorruptedException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Wrong format: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    and-int/lit16 v2, p1, 0xff

    #@10
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0
.end method

.method private discardData()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 627
    iget-object v2, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    #@2
    iput-object v2, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    #@4
    .line 628
    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    #@6
    .line 629
    .local v0, "resolve":Z
    const/4 v2, 0x0

    #@7
    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    #@9
    .line 631
    :goto_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    #@c
    move-result v1

    #@d
    .line 632
    .local v1, "tc":B
    const/16 v2, 0x78

    #@f
    if-ne v1, v2, :cond_0

    #@11
    .line 633
    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    #@13
    .line 634
    return-void

    #@14
    .line 636
    :cond_0
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readContent(B)Ljava/lang/Object;

    #@17
    goto :goto_0
.end method

.method private findStreamSuperclass(Ljava/lang/Class;Ljava/util/List;I)I
    .locals 6
    .param p3, "lastIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;I)I"
        }
    .end annotation

    #@0
    .prologue
    .line 1267
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "classList":Ljava/util/List;, "Ljava/util/List<Ljava/io/ObjectStreamClass;>;"
    move v2, p3

    #@1
    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@4
    move-result v0

    #@5
    .local v0, "end":I
    :goto_0
    if-ge v2, v0, :cond_2

    #@7
    .line 1268
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v3

    #@b
    check-cast v3, Ljava/io/ObjectStreamClass;

    #@d
    .line 1269
    .local v3, "objCl":Ljava/io/ObjectStreamClass;
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 1271
    .local v1, "forName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_0

    #@1f
    .line 1272
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v4

    #@2b
    if-eqz v4, :cond_1

    #@2d
    .line 1273
    return v2

    #@2e
    .line 1277
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_1

    #@38
    .line 1278
    return v2

    #@39
    .line 1267
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 1282
    .end local v1    # "forName":Ljava/lang/String;
    .end local v3    # "objCl":Ljava/io/ObjectStreamClass;
    :cond_2
    const/4 v4, -0x1

    #@3d
    return v4
.end method

.method private static formatClassSig(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "classSig"    # Ljava/lang/String;

    #@0
    .prologue
    .line 926
    const/4 v1, 0x0

    #@1
    .line 927
    .local v1, "start":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    .line 929
    .local v0, "end":I
    if-gtz v0, :cond_0

    #@7
    .line 930
    return-object p0

    #@8
    .line 933
    :cond_0
    :goto_0
    const-string/jumbo v2, "[L"

    #@b
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 934
    add-int/lit8 v2, v0, -0x1

    #@13
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v2

    #@17
    const/16 v3, 0x3b

    #@19
    if-ne v2, v3, :cond_1

    #@1b
    .line 935
    add-int/lit8 v1, v1, 0x2

    #@1d
    .line 936
    add-int/lit8 v0, v0, -0x1

    #@1f
    goto :goto_0

    #@20
    .line 939
    :cond_1
    if-lez v1, :cond_2

    #@22
    .line 940
    add-int/lit8 v1, v1, -0x2

    #@24
    .line 941
    add-int/lit8 v0, v0, 0x1

    #@26
    .line 942
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    return-object v2

    #@2b
    .line 944
    :cond_2
    return-object p0
.end method

.method private static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fullName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2354
    const/16 v1, 0x2e

    #@2
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@5
    move-result v0

    #@6
    .line 2356
    .local v0, "k":I
    const/4 v1, -0x1

    #@7
    if-eq v0, v1, :cond_0

    #@9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@c
    move-result v1

    #@d
    add-int/lit8 v1, v1, -0x1

    #@f
    if-ne v0, v1, :cond_1

    #@11
    .line 2357
    :cond_0
    return-object p0

    #@12
    .line 2359
    :cond_1
    add-int/lit8 v1, v0, 0x1

    #@14
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    return-object v1
.end method

.method private missingClassDescriptor()Ljava/io/InvalidClassException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    #@0
    .prologue
    .line 1880
    new-instance v0, Ljava/io/InvalidClassException;

    #@2
    const-string/jumbo v1, "Read null attempting to read class descriptor for object"

    #@5
    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method private nextHandle()I
    .locals 2

    #@0
    .prologue
    .line 485
    iget v0, p0, Ljava/io/ObjectInputStream;->nextHandle:I

    #@2
    add-int/lit8 v1, v0, 0x1

    #@4
    iput v1, p0, Ljava/io/ObjectInputStream;->nextHandle:I

    #@6
    return v0
.end method

.method private nextTC()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 500
    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 501
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    #@7
    .line 507
    :goto_0
    iget-byte v0, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    #@9
    return v0

    #@a
    .line 505
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@c
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    #@f
    move-result v0

    #@10
    iput-byte v0, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    #@12
    goto :goto_0
.end method

.method private pushbackTC()V
    .locals 1

    #@0
    .prologue
    .line 514
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    #@3
    .line 513
    return-void
.end method

.method private readBlockData()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 553
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    #@5
    move-result v1

    #@6
    and-int/lit16 v1, v1, 0xff

    #@8
    new-array v0, v1, [B

    #@a
    .line 554
    .local v0, "result":[B
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@c
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    #@f
    .line 555
    return-object v0
.end method

.method private readBlockDataLong()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 569
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    #@5
    move-result v1

    #@6
    new-array v0, v1, [B

    #@8
    .line 570
    .local v0, "result":[B
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@a
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    #@d
    .line 571
    return-object v0
.end method

.method private readClassDesc()Ljava/io/ObjectStreamClass;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 654
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    #@4
    move-result v2

    #@5
    .line 655
    .local v2, "tc":B
    sparse-switch v2, :sswitch_data_0

    #@8
    .line 670
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->corruptStream(B)Ljava/io/StreamCorruptedException;

    #@b
    move-result-object v3

    #@c
    throw v3

    #@d
    .line 657
    :sswitch_0
    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;->readNewClassDesc(Z)Ljava/io/ObjectStreamClass;

    #@10
    move-result-object v3

    #@11
    return-object v3

    #@12
    .line 659
    :sswitch_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNewProxyClassDesc()Ljava/lang/Class;

    #@15
    move-result-object v0

    #@16
    .line 660
    .local v0, "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    #@19
    move-result-object v1

    #@1a
    .line 661
    .local v1, "streamClass":Ljava/io/ObjectStreamClass;
    sget-object v3, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    #@1c
    invoke-virtual {v1, v3}, Ljava/io/ObjectStreamClass;->setLoadFields([Ljava/io/ObjectStreamField;)V

    #@1f
    .line 662
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    #@22
    move-result v3

    #@23
    invoke-direct {p0, v1, v3, v4}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    #@26
    .line 663
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    #@29
    move-result-object v3

    #@2a
    invoke-static {v1, v3}, Ljava/io/ObjectInputStream;->checkedSetSuperClassDesc(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass;)V

    #@2d
    .line 664
    return-object v1

    #@2e
    .line 666
    .end local v0    # "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "streamClass":Ljava/io/ObjectStreamClass;
    :sswitch_2
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    #@31
    move-result-object v3

    #@32
    check-cast v3, Ljava/io/ObjectStreamClass;

    #@34
    return-object v3

    #@35
    .line 668
    :sswitch_3
    const/4 v3, 0x0

    #@36
    return-object v3

    #@37
    .line 655
    nop

    #@38
    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_3
        0x71 -> :sswitch_2
        0x72 -> :sswitch_0
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private readContent(B)Ljava/lang/Object;
    .locals 3
    .param p1, "tc"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 695
    packed-switch p1, :pswitch_data_0

    #@5
    .line 723
    :pswitch_0
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->corruptStream(B)Ljava/io/StreamCorruptedException;

    #@8
    move-result-object v1

    #@9
    throw v1

    #@a
    .line 697
    :pswitch_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readBlockData()[B

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 699
    :pswitch_2
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readBlockDataLong()[B

    #@12
    move-result-object v1

    #@13
    return-object v1

    #@14
    .line 701
    :pswitch_3
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readNewClass(Z)Ljava/lang/Class;

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 703
    :pswitch_4
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readNewClassDesc(Z)Ljava/io/ObjectStreamClass;

    #@1c
    move-result-object v1

    #@1d
    return-object v1

    #@1e
    .line 705
    :pswitch_5
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readNewArray(Z)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    return-object v1

    #@23
    .line 707
    :pswitch_6
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readNewObject(Z)Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    return-object v1

    #@28
    .line 709
    :pswitch_7
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readNewString(Z)Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    return-object v1

    #@2d
    .line 711
    :pswitch_8
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readNewLongString(Z)Ljava/lang/Object;

    #@30
    move-result-object v1

    #@31
    return-object v1

    #@32
    .line 713
    :pswitch_9
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    #@35
    move-result-object v1

    #@36
    return-object v1

    #@37
    .line 715
    :pswitch_a
    return-object v2

    #@38
    .line 717
    :pswitch_b
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readException()Ljava/lang/Exception;

    #@3b
    move-result-object v0

    #@3c
    .line 718
    .local v0, "exc":Ljava/lang/Exception;
    new-instance v1, Ljava/io/WriteAbortedException;

    #@3e
    const-string/jumbo v2, "Read an exception"

    #@41
    invoke-direct {v1, v2, v0}, Ljava/io/WriteAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@44
    throw v1

    #@45
    .line 720
    .end local v0    # "exc":Ljava/lang/Exception;
    :pswitch_c
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetState()V

    #@48
    .line 721
    return-object v2

    #@49
    .line 695
    nop

    #@4a
    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_a
        :pswitch_9
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_2
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private readCyclicReference()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 807
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNewHandle()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->registeredObjectRead(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private readEnum(Z)Ljava/lang/Object;
    .locals 10
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1577
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readEnumDesc()Ljava/io/ObjectStreamClass;

    #@3
    move-result-object v0

    #@4
    .line 1579
    .local v0, "classDesc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->checkAndGetTcEnumClass()Ljava/lang/Class;

    #@7
    move-result-object v2

    #@8
    .line 1581
    .local v2, "enumType":Ljava/lang/Class;
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    #@b
    move-result v5

    #@c
    .line 1584
    .local v5, "newHandle":I
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    #@f
    move-result v7

    #@10
    .line 1585
    .local v7, "tc":B
    packed-switch v7, :pswitch_data_0

    #@13
    .line 1597
    :pswitch_0
    invoke-direct {p0, v7}, Ljava/io/ObjectInputStream;->corruptStream(B)Ljava/io/StreamCorruptedException;

    #@16
    move-result-object v8

    #@17
    throw v8

    #@18
    .line 1587
    :pswitch_1
    if-eqz p1, :cond_0

    #@1a
    .line 1588
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNewHandle()I

    #@1d
    .line 1589
    new-instance v8, Ljava/io/InvalidObjectException;

    #@1f
    const-string/jumbo v9, "Unshared read of back reference"

    #@22
    invoke-direct {v8, v9}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@25
    throw v8

    #@26
    .line 1591
    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    #@29
    move-result-object v4

    #@2a
    check-cast v4, Ljava/lang/String;

    #@2c
    .line 1602
    .local v4, "name":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {v2, v4}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    move-result-object v6

    #@30
    .line 1608
    .local v6, "result":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-direct {p0, v6, v5, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    #@33
    .line 1609
    return-object v6

    #@34
    .line 1594
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "result":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :pswitch_2
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewString(Z)Ljava/lang/Object;

    #@37
    move-result-object v4

    #@38
    check-cast v4, Ljava/lang/String;

    #@3a
    .restart local v4    # "name":Ljava/lang/String;
    goto :goto_0

    #@3b
    .line 1603
    :catch_0
    move-exception v1

    #@3c
    .line 1604
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/io/InvalidObjectException;

    #@3e
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@41
    move-result-object v8

    #@42
    invoke-direct {v3, v8}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@45
    .line 1605
    .local v3, "ioe":Ljava/io/InvalidObjectException;
    invoke-virtual {v3, v1}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@48
    .line 1606
    throw v3

    #@49
    .line 1585
    nop

    #@4a
    :pswitch_data_0
    .packed-switch 0x71
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private readEnumDesc()Ljava/io/ObjectStreamClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1529
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    #@3
    move-result v0

    #@4
    .line 1530
    .local v0, "tc":B
    packed-switch v0, :pswitch_data_0

    #@7
    .line 1538
    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->corruptStream(B)Ljava/io/StreamCorruptedException;

    #@a
    move-result-object v1

    #@b
    throw v1

    #@c
    .line 1532
    :pswitch_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readEnumDescInternal()Ljava/io/ObjectStreamClass;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 1534
    :pswitch_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/io/ObjectStreamClass;

    #@17
    return-object v1

    #@18
    .line 1536
    :pswitch_2
    const/4 v1, 0x0

    #@19
    return-object v1

    #@1a
    .line 1530
    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readEnumDescInternal()Ljava/io/ObjectStreamClass;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 1544
    iget-object v4, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@4
    iput-object v4, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    #@6
    .line 1545
    iget v1, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    #@8
    .line 1546
    .local v1, "oldHandle":I
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    #@b
    move-result v4

    #@c
    iput v4, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    #@e
    .line 1547
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;

    #@11
    move-result-object v0

    #@12
    .line 1548
    .local v0, "classDesc":Ljava/io/ObjectStreamClass;
    iget v4, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    #@14
    const/4 v5, 0x0

    #@15
    invoke-direct {p0, v0, v4, v5}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    #@18
    .line 1549
    iput v1, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    #@1a
    .line 1550
    iget-object v4, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    #@1c
    iput-object v4, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    #@1e
    .line 1551
    invoke-virtual {p0, v0}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v0, v4}, Ljava/io/ObjectStreamClass;->setClass(Ljava/lang/Class;)V

    #@25
    .line 1553
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V

    #@28
    .line 1554
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    #@2b
    move-result-object v2

    #@2c
    .line 1555
    .local v2, "superClass":Ljava/io/ObjectStreamClass;
    invoke-static {v0, v2}, Ljava/io/ObjectInputStream;->checkedSetSuperClassDesc(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass;)V

    #@2f
    .line 1557
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    #@32
    move-result-wide v4

    #@33
    cmp-long v4, v6, v4

    #@35
    if-nez v4, :cond_0

    #@37
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    #@3a
    move-result-wide v4

    #@3b
    cmp-long v4, v6, v4

    #@3d
    if-eqz v4, :cond_1

    #@3f
    .line 1558
    :cond_0
    new-instance v4, Ljava/io/InvalidClassException;

    #@41
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    .line 1559
    new-instance v6, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v7, "Incompatible class (SUID): "

    #@4d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v6

    #@55
    const-string/jumbo v7, " but expected "

    #@58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v6

    #@60
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v6

    #@64
    .line 1558
    invoke-direct {v4, v5, v6}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@67
    throw v4

    #@68
    .line 1561
    :cond_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    #@6b
    move-result v3

    #@6c
    .line 1563
    .local v3, "tc":B
    const/16 v4, 0x78

    #@6e
    if-ne v3, v4, :cond_2

    #@70
    .line 1565
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {v2, v4}, Ljava/io/ObjectStreamClass;->setSuperclass(Ljava/io/ObjectStreamClass;)V

    #@77
    .line 1570
    :goto_0
    return-object v0

    #@78
    .line 1568
    :cond_2
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->pushbackTC()V

    #@7b
    goto :goto_0
.end method

.method private readException()Ljava/lang/Exception;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/WriteAbortedException;,
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 852
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetSeenObjects()V

    #@3
    .line 858
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/Exception;

    #@9
    .line 862
    .local v0, "exc":Ljava/lang/Exception;
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetSeenObjects()V

    #@c
    .line 863
    return-object v0
.end method

.method private readFieldDescriptors(Ljava/io/ObjectStreamClass;)V
    .locals 10
    .param p1, "cDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 884
    iget-object v9, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    #@5
    move-result v6

    #@6
    .line 885
    .local v6, "numFields":S
    new-array v3, v6, [Ljava/io/ObjectStreamField;

    #@8
    .line 889
    .local v3, "fields":[Ljava/io/ObjectStreamField;
    invoke-virtual {p1, v3}, Ljava/io/ObjectStreamClass;->setLoadFields([Ljava/io/ObjectStreamField;)V

    #@b
    .line 892
    const/4 v4, 0x0

    #@c
    :goto_0
    if-ge v4, v6, :cond_1

    #@e
    .line 893
    iget-object v9, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@10
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    #@13
    move-result v9

    #@14
    int-to-char v8, v9

    #@15
    .line 894
    .local v8, "typecode":C
    iget-object v9, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@17
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    .line 895
    .local v2, "fieldName":Ljava/lang/String;
    invoke-static {v8}, Ljava/io/ObjectStreamClass;->isPrimitiveType(C)Z

    #@1e
    move-result v5

    #@1f
    .line 897
    .local v5, "isPrimType":Z
    if-eqz v5, :cond_0

    #@21
    .line 898
    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 915
    .local v0, "classSig":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Ljava/io/ObjectInputStream;->formatClassSig(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 916
    new-instance v1, Ljava/io/ObjectStreamField;

    #@2b
    invoke-direct {v1, v0, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    .line 917
    .local v1, "f":Ljava/io/ObjectStreamField;
    aput-object v1, v3, v4

    #@30
    .line 892
    add-int/lit8 v9, v4, 0x1

    #@32
    int-to-short v4, v9

    #@33
    .local v4, "i":S
    goto :goto_0

    #@34
    .line 906
    .end local v0    # "classSig":Ljava/lang/String;
    .end local v1    # "f":Ljava/io/ObjectStreamField;
    .end local v4    # "i":S
    :cond_0
    iget-boolean v7, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    #@36
    .line 908
    .local v7, "old":Z
    const/4 v9, 0x0

    #@37
    :try_start_0
    iput-boolean v9, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    #@39
    .line 909
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    .line 911
    .restart local v0    # "classSig":Ljava/lang/String;
    iput-boolean v7, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    #@41
    goto :goto_1

    #@42
    .line 910
    .end local v0    # "classSig":Ljava/lang/String;
    :catchall_0
    move-exception v9

    #@43
    .line 911
    iput-boolean v7, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    #@45
    .line 910
    throw v9

    #@46
    .line 883
    .end local v2    # "fieldName":Ljava/lang/String;
    .end local v5    # "isPrimType":Z
    .end local v7    # "old":Z
    .end local v8    # "typecode":C
    :cond_1
    return-void
.end method

.method private readFieldValues(Ljava/io/EmulatedFieldsForLoading;)V
    .locals 10
    .param p1, "emulatedFields"    # Ljava/io/EmulatedFieldsForLoading;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/io/InvalidClassException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 994
    invoke-virtual {p1}, Ljava/io/EmulatedFieldsForLoading;->emulatedFields()Ljava/io/EmulatedFields;

    #@4
    move-result-object v4

    #@5
    invoke-virtual {v4}, Ljava/io/EmulatedFields;->slots()[Ljava/io/EmulatedFields$ObjectSlot;

    #@8
    move-result-object v2

    #@9
    .line 995
    .local v2, "slots":[Ljava/io/EmulatedFields$ObjectSlot;
    array-length v6, v2

    #@a
    move v4, v5

    #@b
    :goto_0
    if-ge v4, v6, :cond_8

    #@d
    aget-object v1, v2, v4

    #@f
    .line 996
    .local v1, "element":Ljava/io/EmulatedFields$ObjectSlot;
    iput-boolean v5, v1, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    #@11
    .line 997
    iget-object v7, v1, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    #@13
    invoke-virtual {v7}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    #@16
    move-result-object v3

    #@17
    .line 998
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@19
    if-ne v3, v7, :cond_0

    #@1b
    .line 999
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@1d
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    #@20
    move-result v7

    #@21
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v7

    #@25
    iput-object v7, v1, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@27
    .line 995
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 1000
    :cond_0
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@2c
    if-ne v3, v7, :cond_1

    #@2e
    .line 1001
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@30
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readByte()B

    #@33
    move-result v7

    #@34
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@37
    move-result-object v7

    #@38
    iput-object v7, v1, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@3a
    goto :goto_1

    #@3b
    .line 1002
    :cond_1
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@3d
    if-ne v3, v7, :cond_2

    #@3f
    .line 1003
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@41
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readChar()C

    #@44
    move-result v7

    #@45
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@48
    move-result-object v7

    #@49
    iput-object v7, v1, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@4b
    goto :goto_1

    #@4c
    .line 1004
    :cond_2
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@4e
    if-ne v3, v7, :cond_3

    #@50
    .line 1005
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@52
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readShort()S

    #@55
    move-result v7

    #@56
    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@59
    move-result-object v7

    #@5a
    iput-object v7, v1, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@5c
    goto :goto_1

    #@5d
    .line 1006
    :cond_3
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@5f
    if-ne v3, v7, :cond_4

    #@61
    .line 1007
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@63
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readBoolean()Z

    #@66
    move-result v7

    #@67
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@6a
    move-result-object v7

    #@6b
    iput-object v7, v1, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@6d
    goto :goto_1

    #@6e
    .line 1008
    :cond_4
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@70
    if-ne v3, v7, :cond_5

    #@72
    .line 1009
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@74
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    #@77
    move-result-wide v8

    #@78
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7b
    move-result-object v7

    #@7c
    iput-object v7, v1, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@7e
    goto :goto_1

    #@7f
    .line 1010
    :cond_5
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@81
    if-ne v3, v7, :cond_6

    #@83
    .line 1011
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@85
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readFloat()F

    #@88
    move-result v7

    #@89
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@8c
    move-result-object v7

    #@8d
    iput-object v7, v1, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@8f
    goto :goto_1

    #@90
    .line 1012
    :cond_6
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@92
    if-ne v3, v7, :cond_7

    #@94
    .line 1013
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@96
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readDouble()D

    #@99
    move-result-wide v8

    #@9a
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@9d
    move-result-object v7

    #@9e
    iput-object v7, v1, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    #@a0
    goto :goto_1

    #@a1
    .line 1017
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@a4
    move-result-object v7

    #@a5
    iput-object v7, v1, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@a7
    goto :goto_1

    #@a8
    .line 1018
    :catch_0
    move-exception v0

    #@a9
    .line 1021
    .local v0, "cnf":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/io/InvalidClassException;

    #@ab
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    #@ae
    move-result-object v5

    #@af
    invoke-direct {v4, v5}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    #@b2
    throw v4

    #@b3
    .line 993
    .end local v0    # "cnf":Ljava/lang/ClassNotFoundException;
    .end local v1    # "element":Ljava/io/EmulatedFields$ObjectSlot;
    .end local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    return-void
.end method

.method private readFieldValues(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 31
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "classDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1058
    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->getLoadFields()[Ljava/io/ObjectStreamField;

    #@3
    move-result-object v14

    #@4
    .line 1059
    .local v14, "fields":[Ljava/io/ObjectStreamField;
    if-nez v14, :cond_0

    #@6
    sget-object v14, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    #@8
    .line 1060
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@b
    move-result-object v8

    #@c
    .line 1061
    .local v8, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v8, :cond_1

    #@e
    move-object/from16 v0, p0

    #@10
    iget-boolean v0, v0, Ljava/io/ObjectInputStream;->mustResolve:Z

    #@12
    move/from16 v26, v0

    #@14
    if-eqz v26, :cond_1

    #@16
    .line 1062
    new-instance v26, Ljava/lang/ClassNotFoundException;

    #@18
    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    #@1b
    move-result-object v27

    #@1c
    invoke-direct/range {v26 .. v27}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v26

    #@20
    .line 1065
    :cond_1
    const/16 v26, 0x0

    #@22
    array-length v0, v14

    #@23
    move/from16 v27, v0

    #@25
    :goto_0
    move/from16 v0, v26

    #@27
    move/from16 v1, v27

    #@29
    if-ge v0, v1, :cond_d

    #@2b
    aget-object v11, v14, v26

    #@2d
    .line 1069
    .local v11, "fieldDesc":Ljava/io/ObjectStreamField;
    move-object/from16 v0, p2

    #@2f
    invoke-virtual {v0, v11}, Ljava/io/ObjectStreamClass;->checkAndGetReflectionField(Ljava/io/ObjectStreamField;)Ljava/lang/reflect/Field;

    #@32
    move-result-object v10

    #@33
    .line 1071
    .local v10, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v11}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    #@36
    move-result-object v23

    #@37
    .line 1072
    .local v23, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v28, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@39
    move-object/from16 v0, v23

    #@3b
    move-object/from16 v1, v28

    #@3d
    if-ne v0, v1, :cond_3

    #@3f
    .line 1073
    move-object/from16 v0, p0

    #@41
    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@43
    move-object/from16 v28, v0

    #@45
    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->readByte()B

    #@48
    move-result v4

    #@49
    .line 1074
    .local v4, "b":B
    if-eqz v10, :cond_2

    #@4b
    .line 1075
    move-object/from16 v0, p1

    #@4d
    invoke-virtual {v10, v0, v4}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V

    #@50
    .line 1065
    .end local v4    # "b":B
    .end local v23    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_1
    add-int/lit8 v26, v26, 0x1

    #@52
    goto :goto_0

    #@53
    .line 1077
    .restart local v23    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    sget-object v28, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@55
    move-object/from16 v0, v23

    #@57
    move-object/from16 v1, v28

    #@59
    if-ne v0, v1, :cond_4

    #@5b
    .line 1078
    move-object/from16 v0, p0

    #@5d
    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@5f
    move-object/from16 v28, v0

    #@61
    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->readChar()C

    #@64
    move-result v5

    #@65
    .line 1079
    .local v5, "c":C
    if-eqz v10, :cond_2

    #@67
    .line 1080
    move-object/from16 v0, p1

    #@69
    invoke-virtual {v10, v0, v5}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    #@6c
    goto :goto_1

    #@6d
    .line 1131
    .end local v5    # "c":C
    .end local v23    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v16

    #@6e
    .line 1133
    .local v16, "iae":Ljava/lang/IllegalAccessException;
    new-instance v26, Ljava/lang/AssertionError;

    #@70
    move-object/from16 v0, v26

    #@72
    move-object/from16 v1, v16

    #@74
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@77
    throw v26

    #@78
    .line 1082
    .end local v16    # "iae":Ljava/lang/IllegalAccessException;
    .restart local v23    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :try_start_1
    sget-object v28, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@7a
    move-object/from16 v0, v23

    #@7c
    move-object/from16 v1, v28

    #@7e
    if-ne v0, v1, :cond_5

    #@80
    .line 1083
    move-object/from16 v0, p0

    #@82
    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@84
    move-object/from16 v28, v0

    #@86
    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->readDouble()D

    #@89
    move-result-wide v6

    #@8a
    .line 1084
    .local v6, "d":D
    if-eqz v10, :cond_2

    #@8c
    .line 1085
    move-object/from16 v0, p1

    #@8e
    invoke-virtual {v10, v0, v6, v7}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    #@91
    goto :goto_1

    #@92
    .line 1134
    .end local v6    # "d":D
    .end local v23    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v17

    #@93
    .local v17, "ignored":Ljava/lang/NoSuchFieldError;
    goto :goto_1

    #@94
    .line 1087
    .end local v17    # "ignored":Ljava/lang/NoSuchFieldError;
    .restart local v23    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    sget-object v28, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@96
    move-object/from16 v0, v23

    #@98
    move-object/from16 v1, v28

    #@9a
    if-ne v0, v1, :cond_6

    #@9c
    .line 1088
    move-object/from16 v0, p0

    #@9e
    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@a0
    move-object/from16 v28, v0

    #@a2
    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->readFloat()F

    #@a5
    move-result v9

    #@a6
    .line 1089
    .local v9, "f":F
    if-eqz v10, :cond_2

    #@a8
    .line 1090
    move-object/from16 v0, p1

    #@aa
    invoke-virtual {v10, v0, v9}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    #@ad
    goto :goto_1

    #@ae
    .line 1092
    .end local v9    # "f":F
    :cond_6
    sget-object v28, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@b0
    move-object/from16 v0, v23

    #@b2
    move-object/from16 v1, v28

    #@b4
    if-ne v0, v1, :cond_7

    #@b6
    .line 1093
    move-object/from16 v0, p0

    #@b8
    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@ba
    move-object/from16 v28, v0

    #@bc
    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->readInt()I

    #@bf
    move-result v15

    #@c0
    .line 1094
    .local v15, "i":I
    if-eqz v10, :cond_2

    #@c2
    .line 1095
    move-object/from16 v0, p1

    #@c4
    invoke-virtual {v10, v0, v15}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    #@c7
    goto :goto_1

    #@c8
    .line 1097
    .end local v15    # "i":I
    :cond_7
    sget-object v28, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@ca
    move-object/from16 v0, v23

    #@cc
    move-object/from16 v1, v28

    #@ce
    if-ne v0, v1, :cond_8

    #@d0
    .line 1098
    move-object/from16 v0, p0

    #@d2
    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@d4
    move-object/from16 v28, v0

    #@d6
    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->readLong()J

    #@d9
    move-result-wide v18

    #@da
    .line 1099
    .local v18, "j":J
    if-eqz v10, :cond_2

    #@dc
    .line 1100
    move-object/from16 v0, p1

    #@de
    move-wide/from16 v1, v18

    #@e0
    invoke-virtual {v10, v0, v1, v2}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    #@e3
    goto/16 :goto_1

    #@e5
    .line 1102
    .end local v18    # "j":J
    :cond_8
    sget-object v28, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@e7
    move-object/from16 v0, v23

    #@e9
    move-object/from16 v1, v28

    #@eb
    if-ne v0, v1, :cond_9

    #@ed
    .line 1103
    move-object/from16 v0, p0

    #@ef
    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@f1
    move-object/from16 v28, v0

    #@f3
    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->readShort()S

    #@f6
    move-result v21

    #@f7
    .line 1104
    .local v21, "s":S
    if-eqz v10, :cond_2

    #@f9
    .line 1105
    move-object/from16 v0, p1

    #@fb
    move/from16 v1, v21

    #@fd
    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    #@100
    goto/16 :goto_1

    #@102
    .line 1107
    .end local v21    # "s":S
    :cond_9
    sget-object v28, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@104
    move-object/from16 v0, v23

    #@106
    move-object/from16 v1, v28

    #@108
    if-ne v0, v1, :cond_a

    #@10a
    .line 1108
    move-object/from16 v0, p0

    #@10c
    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@10e
    move-object/from16 v28, v0

    #@110
    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->readBoolean()Z

    #@113
    move-result v25

    #@114
    .line 1109
    .local v25, "z":Z
    if-eqz v10, :cond_2

    #@116
    .line 1110
    move-object/from16 v0, p1

    #@118
    move/from16 v1, v25

    #@11a
    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    #@11d
    goto/16 :goto_1

    #@11f
    .line 1113
    .end local v25    # "z":Z
    :cond_a
    invoke-virtual {v11}, Ljava/io/ObjectStreamField;->isUnshared()Z

    #@122
    move-result v28

    #@123
    if-eqz v28, :cond_b

    #@125
    invoke-virtual/range {p0 .. p0}, Ljava/io/ObjectInputStream;->readUnshared()Ljava/lang/Object;

    #@128
    move-result-object v22

    #@129
    .line 1114
    .local v22, "toSet":Ljava/lang/Object;
    :goto_2
    if-eqz v22, :cond_2

    #@12b
    .line 1119
    invoke-virtual {v11}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    #@12e
    move-result-object v12

    #@12f
    .line 1120
    .local v12, "fieldName":Ljava/lang/String;
    move-object/from16 v0, p2

    #@131
    invoke-virtual {v0, v12}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;)Ljava/io/ObjectStreamField;

    #@134
    move-result-object v20

    #@135
    .line 1121
    .local v20, "localFieldDesc":Ljava/io/ObjectStreamField;
    invoke-virtual/range {v20 .. v20}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    #@138
    move-result-object v13

    #@139
    .line 1122
    .local v13, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@13c
    move-result-object v24

    #@13d
    .line 1123
    .local v24, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v24

    #@13f
    invoke-virtual {v13, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@142
    move-result v28

    #@143
    if-nez v28, :cond_c

    #@145
    .line 1124
    new-instance v28, Ljava/lang/ClassCastException;

    #@147
    new-instance v29, Ljava/lang/StringBuilder;

    #@149
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@14c
    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    #@14f
    move-result-object v30

    #@150
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v29

    #@154
    const-string/jumbo v30, "."

    #@157
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v29

    #@15b
    move-object/from16 v0, v29

    #@15d
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v29

    #@161
    const-string/jumbo v30, " - "

    #@164
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v29

    #@168
    move-object/from16 v0, v29

    #@16a
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v29

    #@16e
    const-string/jumbo v30, " not compatible with "

    #@171
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v29

    #@175
    move-object/from16 v0, v29

    #@177
    move-object/from16 v1, v24

    #@179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17c
    move-result-object v29

    #@17d
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@180
    move-result-object v29

    #@181
    invoke-direct/range {v28 .. v29}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@184
    throw v28

    #@185
    .line 1113
    .end local v12    # "fieldName":Ljava/lang/String;
    .end local v13    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "localFieldDesc":Ljava/io/ObjectStreamField;
    .end local v22    # "toSet":Ljava/lang/Object;
    .end local v24    # "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@188
    move-result-object v22

    #@189
    .restart local v22    # "toSet":Ljava/lang/Object;
    goto :goto_2

    #@18a
    .line 1126
    .restart local v12    # "fieldName":Ljava/lang/String;
    .restart local v13    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v20    # "localFieldDesc":Ljava/io/ObjectStreamField;
    .restart local v24    # "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    if-eqz v10, :cond_2

    #@18c
    .line 1127
    move-object/from16 v0, p1

    #@18e
    move-object/from16 v1, v22

    #@190
    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@193
    goto/16 :goto_1

    #@195
    .line 1056
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v11    # "fieldDesc":Ljava/io/ObjectStreamField;
    .end local v12    # "fieldName":Ljava/lang/String;
    .end local v13    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "localFieldDesc":Ljava/io/ObjectStreamField;
    .end local v22    # "toSet":Ljava/lang/Object;
    .end local v23    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v24    # "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_d
    return-void
.end method

.method private readHierarchy(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 12
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "classDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 1218
    if-nez p1, :cond_0

    #@3
    iget-boolean v10, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    #@5
    if-eqz v10, :cond_0

    #@7
    .line 1219
    new-instance v10, Ljava/io/NotActiveException;

    #@9
    invoke-direct {v10}, Ljava/io/NotActiveException;-><init>()V

    #@c
    throw v10

    #@d
    .line 1222
    :cond_0
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getHierarchy()Ljava/util/List;

    #@10
    move-result-object v7

    #@11
    .line 1223
    .local v7, "streamClassList":Ljava/util/List;, "Ljava/util/List<Ljava/io/ObjectStreamClass;>;"
    if-nez p1, :cond_1

    #@13
    .line 1224
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v6

    #@17
    .local v6, "objectStreamClass$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v10

    #@1b
    if-eqz v10, :cond_5

    #@1d
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v5

    #@21
    check-cast v5, Ljava/io/ObjectStreamClass;

    #@23
    .line 1225
    .local v5, "objectStreamClass":Ljava/io/ObjectStreamClass;
    invoke-direct {p0, v11, v5}, Ljava/io/ObjectInputStream;->readObjectForClass(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    #@26
    goto :goto_0

    #@27
    .line 1228
    .end local v5    # "objectStreamClass":Ljava/io/ObjectStreamClass;
    .end local v6    # "objectStreamClass$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v10, p0, Ljava/io/ObjectInputStream;->cachedSuperclasses:Ljava/util/HashMap;

    #@29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2c
    move-result-object v11

    #@2d
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v9

    #@31
    check-cast v9, Ljava/util/List;

    #@33
    .line 1229
    .local v9, "superclasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-nez v9, :cond_2

    #@35
    .line 1230
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@38
    move-result-object v10

    #@39
    invoke-direct {p0, v10}, Ljava/io/ObjectInputStream;->cacheSuperclassesFor(Ljava/lang/Class;)Ljava/util/List;

    #@3c
    move-result-object v9

    #@3d
    .line 1233
    :cond_2
    const/4 v4, 0x0

    #@3e
    .line 1234
    .local v4, "lastIndex":I
    const/4 v1, 0x0

    #@3f
    .local v1, "i":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@42
    move-result v0

    #@43
    .local v0, "end":I
    :goto_1
    if-ge v1, v0, :cond_5

    #@45
    .line 1235
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v8

    #@49
    check-cast v8, Ljava/lang/Class;

    #@4b
    .line 1236
    .local v8, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v8, v7, v4}, Ljava/io/ObjectInputStream;->findStreamSuperclass(Ljava/lang/Class;Ljava/util/List;I)I

    #@4e
    move-result v2

    #@4f
    .line 1237
    .local v2, "index":I
    const/4 v10, -0x1

    #@50
    if-ne v2, v10, :cond_3

    #@52
    .line 1239
    invoke-static {v8}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    #@55
    move-result-object v10

    #@56
    .line 1238
    invoke-direct {p0, p1, v8, v10}, Ljava/io/ObjectInputStream;->readObjectNoData(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;)V

    #@59
    .line 1234
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@5b
    goto :goto_1

    #@5c
    .line 1241
    :cond_3
    move v3, v4

    #@5d
    .local v3, "j":I
    :goto_3
    if-gt v3, v2, :cond_4

    #@5f
    .line 1242
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@62
    move-result-object v10

    #@63
    check-cast v10, Ljava/io/ObjectStreamClass;

    #@65
    invoke-direct {p0, p1, v10}, Ljava/io/ObjectInputStream;->readObjectForClass(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    #@68
    .line 1241
    add-int/lit8 v3, v3, 0x1

    #@6a
    goto :goto_3

    #@6b
    .line 1244
    :cond_4
    add-int/lit8 v4, v2, 0x1

    #@6d
    goto :goto_2

    #@6e
    .line 1217
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "j":I
    .end local v4    # "lastIndex":I
    .end local v8    # "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "superclasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_5
    return-void
.end method

.method private readNewArray(Z)Ljava/lang/Object;
    .locals 23
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1418
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    #@3
    move-result-object v8

    #@4
    .line 1420
    .local v8, "classDesc":Ljava/io/ObjectStreamClass;
    if-nez v8, :cond_0

    #@6
    .line 1421
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectInputStream;->missingClassDescriptor()Ljava/io/InvalidClassException;

    #@9
    move-result-object v20

    #@a
    throw v20

    #@b
    .line 1424
    :cond_0
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    #@e
    move-result v15

    #@f
    .line 1427
    .local v15, "newHandle":I
    move-object/from16 v0, p0

    #@11
    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@13
    move-object/from16 v20, v0

    #@15
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readInt()I

    #@18
    move-result v19

    #@19
    .line 1428
    .local v19, "size":I
    invoke-virtual {v8}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@1c
    move-result-object v4

    #@1d
    .line 1429
    .local v4, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@20
    move-result-object v9

    #@21
    .line 1430
    .local v9, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move/from16 v0, v19

    #@23
    invoke-static {v9, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@26
    move-result-object v17

    #@27
    .line 1432
    .local v17, "result":Ljava/lang/Object;
    move-object/from16 v0, p0

    #@29
    move-object/from16 v1, v17

    #@2b
    move/from16 v2, p1

    #@2d
    invoke-direct {v0, v1, v15, v2}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    #@30
    .line 1438
    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    #@33
    move-result v20

    #@34
    if-eqz v20, :cond_b

    #@36
    .line 1439
    sget-object v20, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@38
    move-object/from16 v0, v20

    #@3a
    if-ne v9, v0, :cond_1

    #@3c
    move-object/from16 v13, v17

    #@3e
    .line 1440
    check-cast v13, [I

    #@40
    .line 1441
    .local v13, "intArray":[I
    const/4 v12, 0x0

    #@41
    .local v12, "i":I
    :goto_0
    move/from16 v0, v19

    #@43
    if-ge v12, v0, :cond_2

    #@45
    .line 1442
    move-object/from16 v0, p0

    #@47
    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@49
    move-object/from16 v20, v0

    #@4b
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readInt()I

    #@4e
    move-result v20

    #@4f
    aput v20, v13, v12

    #@51
    .line 1441
    add-int/lit8 v12, v12, 0x1

    #@53
    goto :goto_0

    #@54
    .line 1444
    .end local v12    # "i":I
    .end local v13    # "intArray":[I
    :cond_1
    sget-object v20, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@56
    move-object/from16 v0, v20

    #@58
    if-ne v9, v0, :cond_4

    #@5a
    move-object/from16 v6, v17

    #@5c
    .line 1445
    check-cast v6, [B

    #@5e
    .line 1446
    .local v6, "byteArray":[B
    move-object/from16 v0, p0

    #@60
    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@62
    move-object/from16 v20, v0

    #@64
    const/16 v21, 0x0

    #@66
    move-object/from16 v0, v20

    #@68
    move/from16 v1, v21

    #@6a
    move/from16 v2, v19

    #@6c
    invoke-virtual {v0, v6, v1, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    #@6f
    .line 1491
    .end local v6    # "byteArray":[B
    :cond_2
    move-object/from16 v0, p0

    #@71
    iget-boolean v0, v0, Ljava/io/ObjectInputStream;->enableResolve:Z

    #@73
    move/from16 v20, v0

    #@75
    if-eqz v20, :cond_3

    #@77
    .line 1492
    move-object/from16 v0, p0

    #@79
    move-object/from16 v1, v17

    #@7b
    invoke-virtual {v0, v1}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    move-result-object v17

    #@7f
    .line 1493
    const/16 v20, 0x0

    #@81
    move-object/from16 v0, p0

    #@83
    move-object/from16 v1, v17

    #@85
    move/from16 v2, v20

    #@87
    invoke-direct {v0, v1, v15, v2}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    #@8a
    .line 1495
    :cond_3
    return-object v17

    #@8b
    .line 1447
    :cond_4
    sget-object v20, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@8d
    move-object/from16 v0, v20

    #@8f
    if-ne v9, v0, :cond_5

    #@91
    move-object/from16 v7, v17

    #@93
    .line 1448
    check-cast v7, [C

    #@95
    .line 1449
    .local v7, "charArray":[C
    const/4 v12, 0x0

    #@96
    .restart local v12    # "i":I
    :goto_1
    move/from16 v0, v19

    #@98
    if-ge v12, v0, :cond_2

    #@9a
    .line 1450
    move-object/from16 v0, p0

    #@9c
    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@9e
    move-object/from16 v20, v0

    #@a0
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readChar()C

    #@a3
    move-result v20

    #@a4
    aput-char v20, v7, v12

    #@a6
    .line 1449
    add-int/lit8 v12, v12, 0x1

    #@a8
    goto :goto_1

    #@a9
    .line 1452
    .end local v7    # "charArray":[C
    .end local v12    # "i":I
    :cond_5
    sget-object v20, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@ab
    move-object/from16 v0, v20

    #@ad
    if-ne v9, v0, :cond_6

    #@af
    move-object/from16 v18, v17

    #@b1
    .line 1453
    check-cast v18, [S

    #@b3
    .line 1454
    .local v18, "shortArray":[S
    const/4 v12, 0x0

    #@b4
    .restart local v12    # "i":I
    :goto_2
    move/from16 v0, v19

    #@b6
    if-ge v12, v0, :cond_2

    #@b8
    .line 1455
    move-object/from16 v0, p0

    #@ba
    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@bc
    move-object/from16 v20, v0

    #@be
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readShort()S

    #@c1
    move-result v20

    #@c2
    aput-short v20, v18, v12

    #@c4
    .line 1454
    add-int/lit8 v12, v12, 0x1

    #@c6
    goto :goto_2

    #@c7
    .line 1457
    .end local v12    # "i":I
    .end local v18    # "shortArray":[S
    :cond_6
    sget-object v20, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@c9
    move-object/from16 v0, v20

    #@cb
    if-ne v9, v0, :cond_7

    #@cd
    move-object/from16 v5, v17

    #@cf
    .line 1458
    check-cast v5, [Z

    #@d1
    .line 1459
    .local v5, "booleanArray":[Z
    const/4 v12, 0x0

    #@d2
    .restart local v12    # "i":I
    :goto_3
    move/from16 v0, v19

    #@d4
    if-ge v12, v0, :cond_2

    #@d6
    .line 1460
    move-object/from16 v0, p0

    #@d8
    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@da
    move-object/from16 v20, v0

    #@dc
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readBoolean()Z

    #@df
    move-result v20

    #@e0
    aput-boolean v20, v5, v12

    #@e2
    .line 1459
    add-int/lit8 v12, v12, 0x1

    #@e4
    goto :goto_3

    #@e5
    .line 1462
    .end local v5    # "booleanArray":[Z
    .end local v12    # "i":I
    :cond_7
    sget-object v20, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@e7
    move-object/from16 v0, v20

    #@e9
    if-ne v9, v0, :cond_8

    #@eb
    move-object/from16 v14, v17

    #@ed
    .line 1463
    check-cast v14, [J

    #@ef
    .line 1464
    .local v14, "longArray":[J
    const/4 v12, 0x0

    #@f0
    .restart local v12    # "i":I
    :goto_4
    move/from16 v0, v19

    #@f2
    if-ge v12, v0, :cond_2

    #@f4
    .line 1465
    move-object/from16 v0, p0

    #@f6
    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@f8
    move-object/from16 v20, v0

    #@fa
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readLong()J

    #@fd
    move-result-wide v20

    #@fe
    aput-wide v20, v14, v12

    #@100
    .line 1464
    add-int/lit8 v12, v12, 0x1

    #@102
    goto :goto_4

    #@103
    .line 1467
    .end local v12    # "i":I
    .end local v14    # "longArray":[J
    :cond_8
    sget-object v20, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@105
    move-object/from16 v0, v20

    #@107
    if-ne v9, v0, :cond_9

    #@109
    move-object/from16 v11, v17

    #@10b
    .line 1468
    check-cast v11, [F

    #@10d
    .line 1469
    .local v11, "floatArray":[F
    const/4 v12, 0x0

    #@10e
    .restart local v12    # "i":I
    :goto_5
    move/from16 v0, v19

    #@110
    if-ge v12, v0, :cond_2

    #@112
    .line 1470
    move-object/from16 v0, p0

    #@114
    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@116
    move-object/from16 v20, v0

    #@118
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readFloat()F

    #@11b
    move-result v20

    #@11c
    aput v20, v11, v12

    #@11e
    .line 1469
    add-int/lit8 v12, v12, 0x1

    #@120
    goto :goto_5

    #@121
    .line 1472
    .end local v11    # "floatArray":[F
    .end local v12    # "i":I
    :cond_9
    sget-object v20, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@123
    move-object/from16 v0, v20

    #@125
    if-ne v9, v0, :cond_a

    #@127
    move-object/from16 v10, v17

    #@129
    .line 1473
    check-cast v10, [D

    #@12b
    .line 1474
    .local v10, "doubleArray":[D
    const/4 v12, 0x0

    #@12c
    .restart local v12    # "i":I
    :goto_6
    move/from16 v0, v19

    #@12e
    if-ge v12, v0, :cond_2

    #@130
    .line 1475
    move-object/from16 v0, p0

    #@132
    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@134
    move-object/from16 v20, v0

    #@136
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readDouble()D

    #@139
    move-result-wide v20

    #@13a
    aput-wide v20, v10, v12

    #@13c
    .line 1474
    add-int/lit8 v12, v12, 0x1

    #@13e
    goto :goto_6

    #@13f
    .line 1478
    .end local v10    # "doubleArray":[D
    .end local v12    # "i":I
    :cond_a
    new-instance v20, Ljava/lang/ClassNotFoundException;

    #@141
    new-instance v21, Ljava/lang/StringBuilder;

    #@143
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@146
    const-string/jumbo v22, "Wrong base type in "

    #@149
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v21

    #@14d
    invoke-virtual {v8}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    #@150
    move-result-object v22

    #@151
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@154
    move-result-object v21

    #@155
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@158
    move-result-object v21

    #@159
    invoke-direct/range {v20 .. v21}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    #@15c
    throw v20

    #@15d
    :cond_b
    move-object/from16 v16, v17

    #@15f
    .line 1482
    check-cast v16, [Ljava/lang/Object;

    #@161
    .line 1483
    .local v16, "objectArray":[Ljava/lang/Object;
    const/4 v12, 0x0

    #@162
    .restart local v12    # "i":I
    :goto_7
    move/from16 v0, v19

    #@164
    if-ge v12, v0, :cond_2

    #@166
    .line 1488
    invoke-virtual/range {p0 .. p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@169
    move-result-object v20

    #@16a
    aput-object v20, v16, v12

    #@16c
    .line 1483
    add-int/lit8 v12, v12, 0x1

    #@16e
    goto :goto_7
.end method

.method private readNewClass(Z)Ljava/lang/Class;
    .locals 3
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1512
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    #@3
    move-result-object v0

    #@4
    .line 1513
    .local v0, "classDesc":Ljava/io/ObjectStreamClass;
    if-nez v0, :cond_0

    #@6
    .line 1514
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->missingClassDescriptor()Ljava/io/InvalidClassException;

    #@9
    move-result-object v2

    #@a
    throw v2

    #@b
    .line 1516
    :cond_0
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@e
    move-result-object v1

    #@f
    .line 1517
    .local v1, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1

    #@11
    .line 1518
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    #@14
    move-result v2

    #@15
    invoke-direct {p0, v1, v2, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    #@18
    .line 1520
    :cond_1
    return-object v1
.end method

.method private readNewClassDesc(Z)Ljava/io/ObjectStreamClass;
    .locals 8
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1631
    iget-object v6, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@2
    iput-object v6, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    #@4
    .line 1632
    iget v5, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    #@6
    .line 1633
    .local v5, "oldHandle":I
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    #@9
    move-result v6

    #@a
    iput v6, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    #@c
    .line 1634
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;

    #@f
    move-result-object v4

    #@10
    .line 1635
    .local v4, "newClassDesc":Ljava/io/ObjectStreamClass;
    iget v6, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    #@12
    invoke-direct {p0, v4, v6, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    #@15
    .line 1636
    iput v5, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    #@17
    .line 1637
    iget-object v6, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    #@19
    iput-object v6, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    #@1b
    .line 1641
    :try_start_0
    invoke-virtual {p0, v4}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    #@1e
    move-result-object v6

    #@1f
    invoke-virtual {v4, v6}, Ljava/io/ObjectStreamClass;->setClass(Ljava/lang/Class;)V

    #@22
    .line 1643
    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;->verifyAndInit(Ljava/io/ObjectStreamClass;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 1653
    :cond_0
    invoke-virtual {v4}, Ljava/io/ObjectStreamClass;->getLoadFields()[Ljava/io/ObjectStreamField;

    #@28
    move-result-object v2

    #@29
    .line 1654
    .local v2, "fields":[Ljava/io/ObjectStreamField;
    if-nez v2, :cond_1

    #@2b
    sget-object v2, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    #@2d
    .line 1655
    :cond_1
    invoke-virtual {v4}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@30
    move-result-object v6

    #@31
    if-nez v6, :cond_2

    #@33
    iget-object v3, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    #@35
    .line 1657
    .local v3, "loader":Ljava/lang/ClassLoader;
    :goto_0
    const/4 v6, 0x0

    #@36
    array-length v7, v2

    #@37
    :goto_1
    if-ge v6, v7, :cond_3

    #@39
    aget-object v1, v2, v6

    #@3b
    .line 1658
    .local v1, "element":Ljava/io/ObjectStreamField;
    invoke-virtual {v1, v3}, Ljava/io/ObjectStreamField;->resolve(Ljava/lang/ClassLoader;)V

    #@3e
    .line 1657
    add-int/lit8 v6, v6, 0x1

    #@40
    goto :goto_1

    #@41
    .line 1644
    .end local v1    # "element":Ljava/io/ObjectStreamField;
    .end local v2    # "fields":[Ljava/io/ObjectStreamField;
    .end local v3    # "loader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v0

    #@42
    .line 1645
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    iget-boolean v6, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    #@44
    if-eqz v6, :cond_0

    #@46
    .line 1646
    throw v0

    #@47
    .line 1656
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "fields":[Ljava/io/ObjectStreamField;
    :cond_2
    invoke-virtual {v4}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@4a
    move-result-object v6

    #@4b
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@4e
    move-result-object v3

    #@4f
    .restart local v3    # "loader":Ljava/lang/ClassLoader;
    goto :goto_0

    #@50
    .line 1662
    :cond_3
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V

    #@53
    .line 1663
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    #@56
    move-result-object v6

    #@57
    invoke-static {v4, v6}, Ljava/io/ObjectInputStream;->checkedSetSuperClassDesc(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass;)V

    #@5a
    .line 1664
    return-object v4
.end method

.method private readNewHandle()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1755
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private readNewLongString(Z)Ljava/lang/Object;
    .locals 5
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1915
    iget-object v3, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    #@5
    move-result-wide v0

    #@6
    .line 1916
    .local v0, "length":J
    iget-object v3, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@8
    long-to-int v4, v0

    #@9
    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->decodeUTF(I)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    .line 1917
    .local v2, "result":Ljava/lang/Object;
    iget-boolean v3, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 1918
    invoke-virtual {p0, v2}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    .line 1920
    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    #@18
    move-result v3

    #@19
    invoke-direct {p0, v2, v3, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    #@1c
    .line 1922
    return-object v2
.end method

.method private readNewObject(Z)Ljava/lang/Object;
    .locals 15
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v14, 0x0

    #@1
    .line 1782
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    #@4
    move-result-object v2

    #@5
    .line 1784
    .local v2, "classDesc":Ljava/io/ObjectStreamClass;
    if-nez v2, :cond_0

    #@7
    .line 1785
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->missingClassDescriptor()Ljava/io/InvalidClassException;

    #@a
    move-result-object v13

    #@b
    throw v13

    #@c
    .line 1788
    :cond_0
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->checkAndGetTcObjectClass()Ljava/lang/Class;

    #@f
    move-result-object v8

    #@10
    .line 1790
    .local v8, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    #@13
    move-result v7

    #@14
    .line 1792
    .local v7, "newHandle":I
    const/4 v9, 0x0

    #@15
    .line 1793
    .local v9, "registeredResult":Ljava/lang/Object;
    if-eqz v8, :cond_6

    #@17
    .line 1796
    invoke-virtual {v2, v8}, Ljava/io/ObjectStreamClass;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    #@1a
    move-result-object v10

    #@1b
    .line 1797
    .local v10, "result":Ljava/lang/Object;
    move/from16 v0, p1

    #@1d
    invoke-direct {p0, v10, v7, v0}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    #@20
    .line 1798
    move-object v9, v10

    #@21
    .line 1808
    .end local v9    # "registeredResult":Ljava/lang/Object;
    .end local v10    # "result":Ljava/lang/Object;
    :goto_0
    :try_start_0
    iput-object v10, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    #@23
    .line 1809
    iput-object v2, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    #@25
    .line 1815
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getFlags()B

    #@28
    move-result v13

    #@29
    and-int/lit8 v13, v13, 0x4

    #@2b
    if-eqz v13, :cond_7

    #@2d
    const/4 v12, 0x1

    #@2e
    .line 1816
    .local v12, "wasExternalizable":Z
    :goto_1
    if-eqz v12, :cond_a

    #@30
    .line 1817
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getFlags()B

    #@33
    move-result v13

    #@34
    and-int/lit8 v13, v13, 0x8

    #@36
    if-eqz v13, :cond_8

    #@38
    const/4 v1, 0x1

    #@39
    .line 1818
    .local v1, "blockData":Z
    :goto_2
    if-nez v1, :cond_1

    #@3b
    .line 1819
    iget-object v13, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@3d
    iput-object v13, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    #@3f
    .line 1821
    :cond_1
    iget-boolean v13, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    #@41
    if-eqz v13, :cond_2

    #@43
    .line 1822
    move-object v0, v10

    #@44
    check-cast v0, Ljava/io/Externalizable;

    #@46
    move-object v3, v0

    #@47
    .line 1823
    .local v3, "extern":Ljava/io/Externalizable;
    invoke-interface {v3, p0}, Ljava/io/Externalizable;->readExternal(Ljava/io/ObjectInput;)V

    #@4a
    .line 1825
    .end local v3    # "extern":Ljava/io/Externalizable;
    :cond_2
    if-eqz v1, :cond_9

    #@4c
    .line 1828
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    .line 1840
    .end local v1    # "blockData":Z
    :goto_3
    iput-object v14, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    #@51
    .line 1841
    iput-object v14, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    #@53
    .line 1844
    if-eqz v8, :cond_3

    #@55
    .line 1846
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->hasMethodReadResolve()Z

    #@58
    move-result v13

    #@59
    if-eqz v13, :cond_3

    #@5b
    .line 1847
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getMethodReadResolve()Ljava/lang/reflect/Method;

    #@5e
    move-result-object v6

    #@5f
    .line 1849
    .local v6, "methodReadResolve":Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    #@60
    :try_start_1
    check-cast v13, [Ljava/lang/Object;

    #@62
    invoke-virtual {v6, v10, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    #@65
    move-result-object v10

    #@66
    .line 1870
    .end local v6    # "methodReadResolve":Ljava/lang/reflect/Method;
    :cond_3
    :goto_4
    if-eqz v10, :cond_4

    #@68
    iget-boolean v13, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    #@6a
    if-eqz v13, :cond_4

    #@6c
    .line 1871
    invoke-virtual {p0, v10}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    move-result-object v10

    #@70
    .line 1873
    :cond_4
    if-eq v9, v10, :cond_5

    #@72
    .line 1874
    move/from16 v0, p1

    #@74
    invoke-direct {p0, v10, v7, v0}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    #@77
    .line 1876
    :cond_5
    return-object v10

    #@78
    .line 1800
    .end local v12    # "wasExternalizable":Z
    .restart local v9    # "registeredResult":Ljava/lang/Object;
    :cond_6
    const/4 v10, 0x0

    #@79
    .restart local v10    # "result":Ljava/lang/Object;
    goto :goto_0

    #@7a
    .line 1815
    .end local v9    # "registeredResult":Ljava/lang/Object;
    .end local v10    # "result":Ljava/lang/Object;
    :cond_7
    const/4 v12, 0x0

    #@7b
    .restart local v12    # "wasExternalizable":Z
    goto :goto_1

    #@7c
    .line 1817
    :cond_8
    const/4 v1, 0x0

    #@7d
    .restart local v1    # "blockData":Z
    goto :goto_2

    #@7e
    .line 1830
    :cond_9
    :try_start_2
    iget-object v13, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    #@80
    iput-object v13, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@82
    goto :goto_3

    #@83
    .line 1837
    .end local v1    # "blockData":Z
    .end local v12    # "wasExternalizable":Z
    :catchall_0
    move-exception v13

    #@84
    .line 1840
    iput-object v14, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    #@86
    .line 1841
    iput-object v14, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    #@88
    .line 1837
    throw v13

    #@89
    .line 1835
    .restart local v12    # "wasExternalizable":Z
    :cond_a
    :try_start_3
    invoke-direct {p0, v10, v2}, Ljava/io/ObjectInputStream;->readHierarchy(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8c
    goto :goto_3

    #@8d
    .line 1851
    .restart local v6    # "methodReadResolve":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    #@8e
    .line 1852
    .local v5, "ite":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@91
    move-result-object v11

    #@92
    .line 1853
    .local v11, "target":Ljava/lang/Throwable;
    instance-of v13, v11, Ljava/io/ObjectStreamException;

    #@94
    if-eqz v13, :cond_b

    #@96
    .line 1854
    check-cast v11, Ljava/io/ObjectStreamException;

    #@98
    .end local v11    # "target":Ljava/lang/Throwable;
    throw v11

    #@99
    .line 1855
    .restart local v11    # "target":Ljava/lang/Throwable;
    :cond_b
    instance-of v13, v11, Ljava/lang/Error;

    #@9b
    if-eqz v13, :cond_c

    #@9d
    .line 1856
    check-cast v11, Ljava/lang/Error;

    #@9f
    .end local v11    # "target":Ljava/lang/Throwable;
    throw v11

    #@a0
    .line 1858
    .restart local v11    # "target":Ljava/lang/Throwable;
    :cond_c
    check-cast v11, Ljava/lang/RuntimeException;

    #@a2
    .end local v11    # "target":Ljava/lang/Throwable;
    throw v11

    #@a3
    .line 1850
    .end local v5    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v4

    #@a4
    .local v4, "ignored":Ljava/lang/IllegalAccessException;
    goto :goto_4
.end method

.method private readNewProxyClassDesc()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1682
    iget-object v4, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    #@5
    move-result v0

    #@6
    .line 1683
    .local v0, "count":I
    new-array v2, v0, [Ljava/lang/String;

    #@8
    .line 1684
    .local v2, "interfaceNames":[Ljava/lang/String;
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@b
    .line 1685
    iget-object v4, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@d
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    aput-object v4, v2, v1

    #@13
    .line 1684
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1687
    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/ObjectInputStream;->resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;

    #@19
    move-result-object v3

    #@1a
    .line 1689
    .local v3, "proxy":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V

    #@1d
    .line 1690
    return-object v3
.end method

.method private readNewString(Z)Ljava/lang/Object;
    .locals 2
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1894
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 1895
    .local v0, "result":Ljava/lang/Object;
    iget-boolean v1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1896
    invoke-virtual {p0, v0}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    .line 1898
    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    #@11
    move-result v1

    #@12
    invoke-direct {p0, v0, v1, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    #@15
    .line 1900
    return-object v0
.end method

.method private readNonPrimitiveContent(Z)Ljava/lang/Object;
    .locals 5
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 744
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    #@3
    .line 745
    iget-object v3, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    #@5
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    #@8
    move-result v3

    #@9
    if-lez v3, :cond_0

    #@b
    .line 746
    new-instance v0, Ljava/io/OptionalDataException;

    #@d
    invoke-direct {v0}, Ljava/io/OptionalDataException;-><init>()V

    #@10
    .line 747
    .local v0, "e":Ljava/io/OptionalDataException;
    iget-object v3, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    #@12
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    #@15
    move-result v3

    #@16
    iput v3, v0, Ljava/io/OptionalDataException;->length:I

    #@18
    .line 748
    throw v0

    #@19
    .line 780
    .end local v0    # "e":Ljava/io/OptionalDataException;
    .local v2, "tc":B
    :pswitch_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetState()V

    #@1c
    .line 752
    .end local v2    # "tc":B
    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    #@1f
    move-result v2

    #@20
    .line 753
    .restart local v2    # "tc":B
    packed-switch v2, :pswitch_data_0

    #@23
    .line 788
    :pswitch_1
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->corruptStream(B)Ljava/io/StreamCorruptedException;

    #@26
    move-result-object v3

    #@27
    throw v3

    #@28
    .line 755
    :pswitch_2
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewClass(Z)Ljava/lang/Class;

    #@2b
    move-result-object v3

    #@2c
    return-object v3

    #@2d
    .line 757
    :pswitch_3
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewClassDesc(Z)Ljava/io/ObjectStreamClass;

    #@30
    move-result-object v3

    #@31
    return-object v3

    #@32
    .line 759
    :pswitch_4
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewArray(Z)Ljava/lang/Object;

    #@35
    move-result-object v3

    #@36
    return-object v3

    #@37
    .line 761
    :pswitch_5
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewObject(Z)Ljava/lang/Object;

    #@3a
    move-result-object v3

    #@3b
    return-object v3

    #@3c
    .line 763
    :pswitch_6
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewString(Z)Ljava/lang/Object;

    #@3f
    move-result-object v3

    #@40
    return-object v3

    #@41
    .line 765
    :pswitch_7
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewLongString(Z)Ljava/lang/Object;

    #@44
    move-result-object v3

    #@45
    return-object v3

    #@46
    .line 767
    :pswitch_8
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readEnum(Z)Ljava/lang/Object;

    #@49
    move-result-object v3

    #@4a
    return-object v3

    #@4b
    .line 769
    :pswitch_9
    if-eqz p1, :cond_1

    #@4d
    .line 770
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNewHandle()I

    #@50
    .line 771
    new-instance v3, Ljava/io/InvalidObjectException;

    #@52
    const-string/jumbo v4, "Unshared read of back reference"

    #@55
    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@58
    throw v3

    #@59
    .line 773
    :cond_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    #@5c
    move-result-object v3

    #@5d
    return-object v3

    #@5e
    .line 775
    :pswitch_a
    const/4 v3, 0x0

    #@5f
    return-object v3

    #@60
    .line 777
    :pswitch_b
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readException()Ljava/lang/Exception;

    #@63
    move-result-object v1

    #@64
    .line 778
    .local v1, "exc":Ljava/lang/Exception;
    new-instance v3, Ljava/io/WriteAbortedException;

    #@66
    const-string/jumbo v4, "Read an exception"

    #@69
    invoke-direct {v3, v4, v1}, Ljava/io/WriteAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@6c
    throw v3

    #@6d
    .line 783
    .end local v1    # "exc":Ljava/lang/Exception;
    :pswitch_c
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->pushbackTC()V

    #@70
    .line 784
    new-instance v0, Ljava/io/OptionalDataException;

    #@72
    invoke-direct {v0}, Ljava/io/OptionalDataException;-><init>()V

    #@75
    .line 785
    .restart local v0    # "e":Ljava/io/OptionalDataException;
    const/4 v3, 0x1

    #@76
    iput-boolean v3, v0, Ljava/io/OptionalDataException;->eof:Z

    #@78
    .line 786
    throw v0

    #@79
    .line 753
    nop

    #@7a
    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_a
        :pswitch_9
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_c
        :pswitch_0
        :pswitch_1
        :pswitch_b
        :pswitch_7
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method private readObject(Z)Ljava/lang/Object;
    .locals 8
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 1960
    iget-object v4, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    #@4
    iget-object v5, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@6
    if-ne v4, v5, :cond_5

    #@8
    const/4 v1, 0x1

    #@9
    .line 1961
    .local v1, "restoreInput":Z
    :goto_0
    if-eqz v1, :cond_0

    #@b
    .line 1962
    iget-object v4, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    #@d
    iput-object v4, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    #@f
    .line 1967
    :cond_0
    iget-boolean v4, p0, Ljava/io/ObjectInputStream;->subclassOverridingImplementation:Z

    #@11
    if-eqz v4, :cond_1

    #@13
    if-eqz p1, :cond_6

    #@15
    .line 1978
    :cond_1
    :try_start_0
    iget v4, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    #@17
    add-int/lit8 v4, v4, 0x1

    #@19
    iput v4, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    #@1b
    const/4 v5, 0x1

    #@1c
    if-ne v4, v5, :cond_2

    #@1e
    .line 1980
    invoke-static {}, Ldalvik/system/VMStack;->getClosestUserClassLoader()Ljava/lang/ClassLoader;

    #@21
    move-result-object v4

    #@22
    iput-object v4, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    #@24
    .line 1983
    :cond_2
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNonPrimitiveContent(Z)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    .line 1984
    .local v2, "result":Ljava/lang/Object;
    if-eqz v1, :cond_3

    #@2a
    .line 1985
    iget-object v4, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@2c
    iput-object v4, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 1990
    :cond_3
    iget v4, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    #@30
    add-int/lit8 v4, v4, -0x1

    #@32
    iput v4, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    #@34
    if-nez v4, :cond_4

    #@36
    .line 1994
    iput-object v7, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    #@38
    .line 2000
    :cond_4
    iget v4, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    #@3a
    if-nez v4, :cond_9

    #@3c
    iget-object v4, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    #@3e
    if-eqz v4, :cond_9

    #@40
    .line 2005
    :try_start_1
    iget-object v4, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    #@42
    array-length v5, v4

    #@43
    :goto_1
    if-ge v3, v5, :cond_8

    #@45
    aget-object v0, v4, v3

    #@47
    .line 2006
    .local v0, "element":Ljava/io/ObjectInputStream$InputValidationDesc;
    iget-object v6, v0, Ljava/io/ObjectInputStream$InputValidationDesc;->validator:Ljava/io/ObjectInputValidation;

    #@49
    invoke-interface {v6}, Ljava/io/ObjectInputValidation;->validateObject()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@4c
    .line 2005
    add-int/lit8 v3, v3, 0x1

    #@4e
    goto :goto_1

    #@4f
    .line 1960
    .end local v0    # "element":Ljava/io/ObjectInputStream$InputValidationDesc;
    .end local v1    # "restoreInput":Z
    .end local v2    # "result":Ljava/lang/Object;
    :cond_5
    const/4 v1, 0x0

    #@50
    .restart local v1    # "restoreInput":Z
    goto :goto_0

    #@51
    .line 1968
    :cond_6
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObjectOverride()Ljava/lang/Object;

    #@54
    move-result-object v3

    #@55
    return-object v3

    #@56
    .line 1987
    :catchall_0
    move-exception v3

    #@57
    .line 1990
    iget v4, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    #@59
    add-int/lit8 v4, v4, -0x1

    #@5b
    iput v4, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    #@5d
    if-nez v4, :cond_7

    #@5f
    .line 1994
    iput-object v7, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    #@61
    .line 1987
    :cond_7
    throw v3

    #@62
    .line 2011
    .restart local v2    # "result":Ljava/lang/Object;
    :cond_8
    iput-object v7, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    #@64
    .line 2014
    :cond_9
    return-object v2

    #@65
    .line 2008
    :catchall_1
    move-exception v3

    #@66
    .line 2011
    iput-object v7, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    #@68
    .line 2008
    throw v3
.end method

.method private readObjectForClass(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "classDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1313
    iput-object p1, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    #@3
    .line 1314
    iput-object p2, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    #@5
    .line 1316
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getFlags()B

    #@8
    move-result v6

    #@9
    and-int/lit8 v6, v6, 0x1

    #@b
    if-eqz v6, :cond_1

    #@d
    const/4 v3, 0x1

    #@e
    .line 1317
    .local v3, "hadWriteMethod":Z
    :goto_0
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@11
    move-result-object v5

    #@12
    .line 1320
    .local v5, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_2

    #@14
    iget-boolean v6, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    #@16
    if-eqz v6, :cond_2

    #@18
    .line 1323
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getMethodReadObject()Ljava/lang/reflect/Method;

    #@1b
    move-result-object v4

    #@1c
    .line 1326
    :goto_1
    if-eqz v4, :cond_6

    #@1e
    .line 1328
    const/4 v6, 0x1

    #@1f
    :try_start_0
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 1330
    const/4 v6, 0x1

    #@23
    :try_start_1
    new-array v6, v6, [Ljava/lang/Object;

    #@25
    const/4 v7, 0x0

    #@26
    aput-object p0, v6, v7

    #@28
    invoke-virtual {v4, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    .line 1347
    :goto_2
    if-eqz v3, :cond_0

    #@2d
    .line 1348
    :try_start_2
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@30
    .line 1353
    :cond_0
    iput-object v8, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    #@32
    .line 1355
    iput-object v8, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    #@34
    .line 1310
    return-void

    #@35
    .line 1316
    .end local v3    # "hadWriteMethod":Z
    .end local v5    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const/4 v3, 0x0

    #@36
    .restart local v3    # "hadWriteMethod":Z
    goto :goto_0

    #@37
    .line 1321
    .restart local v5    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v4, 0x0

    #@38
    .line 1320
    .local v4, "readMethod":Ljava/lang/reflect/Method;
    goto :goto_1

    #@39
    .line 1341
    .end local v4    # "readMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    #@3a
    .line 1342
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_3
    new-instance v6, Ljava/lang/RuntimeException;

    #@3c
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    #@3f
    move-result-object v7

    #@40
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@43
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@44
    .line 1350
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catchall_0
    move-exception v6

    #@45
    .line 1353
    iput-object v8, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    #@47
    .line 1355
    iput-object v8, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    #@49
    .line 1350
    throw v6

    #@4a
    .line 1331
    :catch_1
    move-exception v1

    #@4b
    .line 1332
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@4e
    move-result-object v2

    #@4f
    .line 1333
    .local v2, "ex":Ljava/lang/Throwable;
    instance-of v6, v2, Ljava/lang/ClassNotFoundException;

    #@51
    if-eqz v6, :cond_3

    #@53
    .line 1334
    check-cast v2, Ljava/lang/ClassNotFoundException;

    #@55
    .end local v2    # "ex":Ljava/lang/Throwable;
    throw v2

    #@56
    .line 1335
    .restart local v2    # "ex":Ljava/lang/Throwable;
    :cond_3
    instance-of v6, v2, Ljava/lang/RuntimeException;

    #@58
    if-eqz v6, :cond_4

    #@5a
    .line 1336
    check-cast v2, Ljava/lang/RuntimeException;

    #@5c
    .end local v2    # "ex":Ljava/lang/Throwable;
    throw v2

    #@5d
    .line 1337
    .restart local v2    # "ex":Ljava/lang/Throwable;
    :cond_4
    instance-of v6, v2, Ljava/lang/Error;

    #@5f
    if-eqz v6, :cond_5

    #@61
    .line 1338
    check-cast v2, Ljava/lang/Error;

    #@63
    .end local v2    # "ex":Ljava/lang/Throwable;
    throw v2

    #@64
    .line 1340
    .restart local v2    # "ex":Ljava/lang/Throwable;
    :cond_5
    check-cast v2, Ljava/io/IOException;

    #@66
    .end local v2    # "ex":Ljava/lang/Throwable;
    throw v2

    #@67
    .line 1345
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_6
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->defaultReadObject()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6a
    goto :goto_2
.end method

.method private readObjectNoData(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;)V
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .param p3, "classDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 1287
    .local p2, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_0

    #@6
    .line 1288
    return-void

    #@7
    .line 1290
    :cond_0
    invoke-virtual {p3}, Ljava/io/ObjectStreamClass;->hasMethodReadObjectNoData()Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 1291
    invoke-virtual {p3}, Ljava/io/ObjectStreamClass;->getMethodReadObjectNoData()Ljava/lang/reflect/Method;

    #@10
    move-result-object v3

    #@11
    .line 1293
    .local v3, "readMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    #@12
    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    #@14
    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 1286
    .end local v3    # "readMethod":Ljava/lang/reflect/Method;
    :cond_1
    return-void

    #@18
    .line 1302
    .restart local v3    # "readMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    #@19
    .line 1303
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@1b
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@22
    throw v4

    #@23
    .line 1294
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    #@24
    .line 1295
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@27
    move-result-object v2

    #@28
    .line 1296
    .local v2, "ex":Ljava/lang/Throwable;
    instance-of v4, v2, Ljava/lang/RuntimeException;

    #@2a
    if-eqz v4, :cond_2

    #@2c
    .line 1297
    check-cast v2, Ljava/lang/RuntimeException;

    #@2e
    .end local v2    # "ex":Ljava/lang/Throwable;
    throw v2

    #@2f
    .line 1298
    .restart local v2    # "ex":Ljava/lang/Throwable;
    :cond_2
    instance-of v4, v2, Ljava/lang/Error;

    #@31
    if-eqz v4, :cond_3

    #@33
    .line 1299
    check-cast v2, Ljava/lang/Error;

    #@35
    .end local v2    # "ex":Ljava/lang/Throwable;
    throw v2

    #@36
    .line 1301
    .restart local v2    # "ex":Ljava/lang/Throwable;
    :cond_3
    check-cast v2, Ljava/io/ObjectStreamException;

    #@38
    .end local v2    # "ex":Ljava/lang/Throwable;
    throw v2
.end method

.method private registerObjectRead(Ljava/lang/Object;IZ)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "handle"    # I
    .param p3, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2131
    if-eqz p3, :cond_0

    #@2
    .line 2132
    sget-object p1, Ljava/io/ObjectInputStream;->UNSHARED_OBJ:Ljava/lang/Object;

    #@4
    .line 2134
    :cond_0
    const/high16 v2, 0x7e0000

    #@6
    sub-int v0, p2, v2

    #@8
    .line 2135
    .local v0, "index":I
    iget-object v2, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v1

    #@e
    .line 2139
    .local v1, "size":I
    :goto_0
    if-le v0, v1, :cond_1

    #@10
    .line 2140
    iget-object v2, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    #@12
    const/4 v3, 0x0

    #@13
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    .line 2141
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 2143
    :cond_1
    if-ne v0, v1, :cond_2

    #@1b
    .line 2144
    iget-object v2, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20
    .line 2130
    :goto_1
    return-void

    #@21
    .line 2146
    :cond_2
    iget-object v2, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@26
    goto :goto_1
.end method

.method private registeredObjectRead(I)Ljava/lang/Object;
    .locals 3
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    #@0
    .prologue
    .line 2120
    iget-object v1, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    #@2
    const/high16 v2, 0x7e0000

    #@4
    sub-int v2, p1, v2

    #@6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    .line 2121
    .local v0, "res":Ljava/lang/Object;
    sget-object v1, Ljava/io/ObjectInputStream;->UNSHARED_OBJ:Ljava/lang/Object;

    #@c
    if-ne v0, v1, :cond_0

    #@e
    .line 2122
    new-instance v1, Ljava/io/InvalidObjectException;

    #@10
    const-string/jumbo v2, "Cannot read back reference to unshared object"

    #@13
    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 2124
    :cond_0
    return-object v0
.end method

.method private resetSeenObjects()V
    .locals 1

    #@0
    .prologue
    .line 2215
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    iput-object v0, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    #@7
    .line 2216
    const/high16 v0, 0x7e0000

    #@9
    iput v0, p0, Ljava/io/ObjectInputStream;->nextHandle:I

    #@b
    .line 2217
    iget-object v0, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    #@d
    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    #@f
    .line 2214
    return-void
.end method

.method private resetState()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2226
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetSeenObjects()V

    #@4
    .line 2227
    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    #@6
    .line 2228
    iput-byte v0, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    #@8
    .line 2225
    return-void
.end method

.method private verifyAndInit(Ljava/io/ObjectStreamClass;)V
    .locals 9
    .param p1, "loadedStreamClass"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    #@0
    .prologue
    .line 2331
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    .line 2332
    .local v1, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    #@7
    move-result-object v3

    #@8
    .line 2334
    .local v3, "localStreamClass":Ljava/io/ObjectStreamClass;
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    #@b
    move-result-wide v4

    #@c
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    #@f
    move-result-wide v6

    #@10
    cmp-long v4, v4, v6

    #@12
    if-eqz v4, :cond_0

    #@14
    .line 2336
    new-instance v4, Ljava/io/InvalidClassException;

    #@16
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    #@19
    move-result-object v5

    #@1a
    .line 2337
    new-instance v6, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v7, "Incompatible class (SUID): "

    #@22
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v6

    #@26
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v6

    #@2a
    .line 2338
    const-string/jumbo v7, " but expected "

    #@2d
    .line 2337
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v6

    #@35
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v6

    #@39
    .line 2336
    invoke-direct {v4, v5, v6}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    throw v4

    #@3d
    .line 2341
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    invoke-static {v4}, Ljava/io/ObjectInputStream;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    .line 2342
    .local v0, "loadedClassBaseName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    invoke-static {v4}, Ljava/io/ObjectInputStream;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    .line 2344
    .local v2, "localClassBaseName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v4

    #@51
    if-nez v4, :cond_1

    #@53
    .line 2345
    new-instance v4, Ljava/io/InvalidClassException;

    #@55
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    #@58
    move-result-object v5

    #@59
    .line 2346
    const-string/jumbo v6, "Incompatible class (base name): %s but expected %s"

    #@5c
    const/4 v7, 0x2

    #@5d
    new-array v7, v7, [Ljava/lang/Object;

    #@5f
    .line 2347
    const/4 v8, 0x0

    #@60
    aput-object v0, v7, v8

    #@62
    const/4 v8, 0x1

    #@63
    aput-object v2, v7, v8

    #@65
    .line 2346
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@68
    move-result-object v6

    #@69
    .line 2345
    invoke-direct {v4, v5, v6}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@6c
    throw v4

    #@6d
    .line 2350
    :cond_1
    invoke-virtual {p1, v3}, Ljava/io/ObjectStreamClass;->initPrivateFields(Ljava/io/ObjectStreamClass;)V

    #@70
    .line 2329
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 378
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    #@3
    .line 379
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    #@5
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 435
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    #@5
    .line 434
    return-void
.end method

.method public defaultReadObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    #@0
    .prologue
    .line 453
    iget-object v0, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 456
    new-instance v0, Ljava/io/NotActiveException;

    #@a
    invoke-direct {v0}, Ljava/io/NotActiveException;-><init>()V

    #@d
    throw v0

    #@e
    .line 454
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    #@10
    iget-object v1, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    #@12
    invoke-direct {p0, v0, v1}, Ljava/io/ObjectInputStream;->readFieldValues(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    #@15
    .line 452
    return-void
.end method

.method protected enableResolveObject(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 473
    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    #@2
    .line 474
    .local v0, "originalValue":Z
    iput-boolean p1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    #@4
    .line 475
    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 529
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    #@3
    .line 530
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    #@5
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 534
    array-length v0, p1

    #@2
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@5
    .line 535
    if-nez p3, :cond_0

    #@7
    .line 536
    return v1

    #@8
    .line 538
    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    #@b
    .line 539
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    #@d
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 585
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 599
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 613
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected readClassDescriptor()Ljava/io/ObjectStreamClass;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1703
    new-instance v1, Ljava/io/ObjectStreamClass;

    #@3
    invoke-direct {v1}, Ljava/io/ObjectStreamClass;-><init>()V

    #@6
    .line 1704
    .local v1, "newClassDesc":Ljava/io/ObjectStreamClass;
    iget-object v2, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@8
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 1705
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_0

    #@12
    .line 1706
    new-instance v2, Ljava/io/IOException;

    #@14
    const-string/jumbo v3, "The stream is corrupted"

    #@17
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v2

    #@1b
    .line 1708
    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/ObjectStreamClass;->setName(Ljava/lang/String;)V

    #@1e
    .line 1709
    iget-object v2, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@20
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    #@23
    move-result-wide v2

    #@24
    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectStreamClass;->setSerialVersionUID(J)V

    #@27
    .line 1710
    iget-object v2, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@29
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    #@2c
    move-result v2

    #@2d
    invoke-virtual {v1, v2}, Ljava/io/ObjectStreamClass;->setFlags(B)V

    #@30
    .line 1717
    iget v2, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    #@32
    const/4 v3, -0x1

    #@33
    if-ne v2, v3, :cond_1

    #@35
    .line 1718
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    #@38
    move-result v2

    #@39
    iput v2, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    #@3b
    .line 1720
    :cond_1
    iget v2, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    #@3d
    invoke-direct {p0, v1, v2, v4}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    #@40
    .line 1722
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readFieldDescriptors(Ljava/io/ObjectStreamClass;)V

    #@43
    .line 1723
    return-object v1
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 821
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public readFields()Ljava/io/ObjectInputStream$GetField;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    #@0
    .prologue
    .line 964
    iget-object v1, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 965
    new-instance v1, Ljava/io/NotActiveException;

    #@6
    invoke-direct {v1}, Ljava/io/NotActiveException;-><init>()V

    #@9
    throw v1

    #@a
    .line 967
    :cond_0
    new-instance v0, Ljava/io/EmulatedFieldsForLoading;

    #@c
    iget-object v1, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    #@e
    invoke-direct {v0, v1}, Ljava/io/EmulatedFieldsForLoading;-><init>(Ljava/io/ObjectStreamClass;)V

    #@11
    .line 968
    .local v0, "result":Ljava/io/EmulatedFieldsForLoading;
    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readFieldValues(Ljava/io/EmulatedFieldsForLoading;)V

    #@14
    .line 969
    return-object v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1150
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public readFully([B)V
    .locals 1
    .param p1, "dst"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1166
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    #@5
    .line 1165
    return-void
.end method

.method public readFully([BII)V
    .locals 1
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1186
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    #@5
    .line 1185
    return-void
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1370
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1384
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1398
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public final readObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1940
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readObject(Z)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method protected readObjectOverride()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2033
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 2034
    return-object v1

    #@6
    .line 2037
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@8
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@b
    throw v0
.end method

.method public readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2048
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected readStreamHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 2061
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    #@5
    move-result v0

    #@6
    const/16 v1, -0x5313

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 2062
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@c
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    #@f
    move-result v0

    #@10
    const/4 v1, 0x5

    #@11
    if-ne v0, v1, :cond_0

    #@13
    .line 2063
    return-void

    #@14
    .line 2065
    :cond_0
    new-instance v0, Ljava/io/StreamCorruptedException;

    #@16
    invoke-direct {v0}, Ljava/io/StreamCorruptedException;-><init>()V

    #@19
    throw v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2111
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public readUnshared()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1955
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readObject(Z)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2080
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public readUnsignedShort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2095
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public declared-synchronized registerValidation(Ljava/io/ObjectInputValidation;I)V
    .locals 9
    .param p1, "object"    # Ljava/io/ObjectInputValidation;
    .param p2, "priority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;,
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2173
    :try_start_0
    iget-object v3, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    #@3
    .line 2175
    .local v3, "instanceBeingRead":Ljava/lang/Object;
    if-nez v3, :cond_0

    #@5
    iget v6, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    #@7
    if-nez v6, :cond_0

    #@9
    .line 2176
    new-instance v6, Ljava/io/NotActiveException;

    #@b
    invoke-direct {v6}, Ljava/io/NotActiveException;-><init>()V

    #@e
    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .end local v3    # "instanceBeingRead":Ljava/lang/Object;
    :catchall_0
    move-exception v6

    #@10
    monitor-exit p0

    #@11
    throw v6

    #@12
    .line 2178
    .restart local v3    # "instanceBeingRead":Ljava/lang/Object;
    :cond_0
    if-nez p1, :cond_1

    #@14
    .line 2179
    :try_start_1
    new-instance v6, Ljava/io/InvalidObjectException;

    #@16
    const-string/jumbo v7, "Callback object cannot be null"

    #@19
    invoke-direct {v6, v7}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v6

    #@1d
    .line 2184
    :cond_1
    new-instance v1, Ljava/io/ObjectInputStream$InputValidationDesc;

    #@1f
    invoke-direct {v1}, Ljava/io/ObjectInputStream$InputValidationDesc;-><init>()V

    #@22
    .line 2185
    .local v1, "desc":Ljava/io/ObjectInputStream$InputValidationDesc;
    iput-object p1, v1, Ljava/io/ObjectInputStream$InputValidationDesc;->validator:Ljava/io/ObjectInputValidation;

    #@24
    .line 2186
    iput p2, v1, Ljava/io/ObjectInputStream$InputValidationDesc;->priority:I

    #@26
    .line 2189
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    #@28
    if-nez v6, :cond_2

    #@2a
    .line 2190
    const/4 v6, 0x1

    #@2b
    new-array v6, v6, [Ljava/io/ObjectInputStream$InputValidationDesc;

    #@2d
    iput-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    #@2f
    .line 2191
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    #@31
    const/4 v7, 0x0

    #@32
    aput-object v1, v6, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    :goto_0
    monitor-exit p0

    #@35
    .line 2171
    return-void

    #@36
    .line 2193
    :cond_2
    const/4 v2, 0x0

    #@37
    .line 2194
    .local v2, "i":I
    :goto_1
    :try_start_2
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    #@39
    array-length v6, v6

    #@3a
    if-ge v2, v6, :cond_3

    #@3c
    .line 2195
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    #@3e
    aget-object v5, v6, v2

    #@40
    .line 2197
    .local v5, "validation":Ljava/io/ObjectInputStream$InputValidationDesc;
    iget v6, v5, Ljava/io/ObjectInputStream$InputValidationDesc;->priority:I

    #@42
    if-lt p2, v6, :cond_4

    #@44
    .line 2201
    .end local v5    # "validation":Ljava/io/ObjectInputStream$InputValidationDesc;
    :cond_3
    iget-object v4, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    #@46
    .line 2202
    .local v4, "oldValidations":[Ljava/io/ObjectInputStream$InputValidationDesc;
    array-length v0, v4

    #@47
    .line 2203
    .local v0, "currentSize":I
    add-int/lit8 v6, v0, 0x1

    #@49
    new-array v6, v6, [Ljava/io/ObjectInputStream$InputValidationDesc;

    #@4b
    iput-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    #@4d
    .line 2204
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    #@4f
    const/4 v7, 0x0

    #@50
    const/4 v8, 0x0

    #@51
    invoke-static {v4, v7, v6, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@54
    .line 2205
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    #@56
    add-int/lit8 v7, v2, 0x1

    #@58
    sub-int v8, v0, v2

    #@5a
    invoke-static {v4, v2, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@5d
    .line 2207
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    #@5f
    aput-object v1, v6, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@61
    goto :goto_0

    #@62
    .line 2194
    .end local v0    # "currentSize":I
    .end local v4    # "oldValidations":[Ljava/io/ObjectInputStream$InputValidationDesc;
    .restart local v5    # "validation":Ljava/io/ObjectInputStream$InputValidationDesc;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@64
    goto :goto_1
.end method

.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 4
    .param p1, "osClass"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 2248
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    .line 2249
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_0

    #@6
    .line 2251
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 2254
    .local v0, "className":Ljava/lang/String;
    sget-object v2, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    #@c
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    check-cast v1, Ljava/lang/Class;

    #@12
    .line 2256
    .restart local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_0

    #@14
    .line 2258
    iget-object v2, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    #@16
    const/4 v3, 0x0

    #@17
    invoke-static {v0, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@1a
    move-result-object v1

    #@1b
    .line 2261
    .end local v0    # "className":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method protected resolveObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2282
    return-object p1
.end method

.method protected resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .param p1, "interfaceNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1742
    iget-object v3, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    #@2
    .line 1743
    .local v3, "loader":Ljava/lang/ClassLoader;
    array-length v4, p1

    #@3
    new-array v2, v4, [Ljava/lang/Class;

    #@5
    .line 1744
    .local v2, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    array-length v4, p1

    #@7
    if-ge v1, v4, :cond_0

    #@9
    .line 1745
    aget-object v4, p1, v1

    #@b
    const/4 v5, 0x0

    #@c
    invoke-static {v4, v5, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@f
    move-result-object v4

    #@10
    aput-object v4, v2, v1

    #@12
    .line 1744
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 1748
    :cond_0
    :try_start_0
    invoke-static {v3, v2}, Ljava/lang/reflect/Proxy;->getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result-object v4

    #@19
    return-object v4

    #@1a
    .line 1749
    :catch_0
    move-exception v0

    #@1b
    .line 1750
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/ClassNotFoundException;

    #@1d
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    invoke-direct {v4, v5, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    throw v4
.end method

.method public skipBytes(I)I
    .locals 6
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2300
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2301
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v4, "source stream is null"

    #@9
    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 2304
    :cond_0
    const/4 v0, 0x0

    #@e
    .line 2305
    .local v0, "offset":I
    :goto_0
    if-ge v0, p1, :cond_2

    #@10
    .line 2306
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    #@13
    .line 2307
    iget-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    #@15
    sub-int v4, p1, v0

    #@17
    int-to-long v4, v4

    #@18
    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    #@1b
    move-result-wide v2

    #@1c
    .line 2308
    .local v2, "skipped":J
    const-wide/16 v4, 0x0

    #@1e
    cmp-long v1, v2, v4

    #@20
    if-nez v1, :cond_1

    #@22
    .line 2309
    return v0

    #@23
    .line 2311
    :cond_1
    long-to-int v1, v2

    #@24
    add-int/2addr v0, v1

    #@25
    goto :goto_0

    #@26
    .line 2313
    .end local v2    # "skipped":J
    :cond_2
    return p1
.end method
