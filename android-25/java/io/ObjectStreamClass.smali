.class public Ljava/io/ObjectStreamClass;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectStreamClass$Caches;,
        Ljava/io/ObjectStreamClass$ClassDataSlot;,
        Ljava/io/ObjectStreamClass$EntryFuture;,
        Ljava/io/ObjectStreamClass$ExceptionInfo;,
        Ljava/io/ObjectStreamClass$FieldReflector;,
        Ljava/io/ObjectStreamClass$FieldReflectorKey;,
        Ljava/io/ObjectStreamClass$MemberSignature;,
        Ljava/io/ObjectStreamClass$WeakClassKey;
    }
.end annotation


# static fields
.field static final MAX_SDK_TARGET_FOR_CLINIT_UIDGEN_WORKAROUND:I = 0x17

.field public static final NO_FIELDS:[Ljava/io/ObjectStreamField;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = -0x54f190e511018478L


# instance fields
.field private cl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private cons:Ljava/lang/reflect/Constructor;

.field private volatile dataLayout:[Ljava/io/ObjectStreamClass$ClassDataSlot;

.field private defaultSerializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

.field private deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

.field private externalizable:Z

.field private fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

.field private fields:[Ljava/io/ObjectStreamField;

.field private hasBlockExternalData:Z

.field private hasWriteObjectData:Z

.field private isEnum:Z

.field private isProxy:Z

.field private localDesc:Ljava/io/ObjectStreamClass;

.field private name:Ljava/lang/String;

.field private numObjFields:I

.field private primDataSize:I

.field private readObjectMethod:Ljava/lang/reflect/Method;

.field private readObjectNoDataMethod:Ljava/lang/reflect/Method;

.field private readResolveMethod:Ljava/lang/reflect/Method;

.field private resolveEx:Ljava/lang/ClassNotFoundException;

.field private serializable:Z

.field private serializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

.field private volatile suid:Ljava/lang/Long;

.field private superDesc:Ljava/io/ObjectStreamClass;

.field private writeObjectMethod:Ljava/lang/reflect/Method;

.field private writeReplaceMethod:Ljava/lang/reflect/Method;


# direct methods
.method static synthetic -get0(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/io/ObjectStreamClass;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Ljava/io/ObjectStreamClass;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Ljava/io/ObjectStreamClass;)Ljava/lang/reflect/Method;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass$ExceptionInfo;)Ljava/io/ObjectStreamClass$ExceptionInfo;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    #@2
    return-object p1
.end method

.method static synthetic -set10(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Ljava/io/ObjectStreamClass;[Ljava/io/ObjectStreamField;)[Ljava/io/ObjectStreamField;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Ljava/io/ObjectStreamClass;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    #@2
    return p1
.end method

.method static synthetic -set4(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    #@2
    return-object p1
.end method

.method static synthetic -set5(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    #@2
    return-object p1
.end method

.method static synthetic -set6(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    #@2
    return-object p1
.end method

.method static synthetic -set7(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass$ExceptionInfo;)Ljava/io/ObjectStreamClass$ExceptionInfo;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->serializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    #@2
    return-object p1
.end method

.method static synthetic -set8(Ljava/io/ObjectStreamClass;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    #@2
    return-object p1
.end method

.method static synthetic -set9(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;
    .locals 1
    .param p0, "cl"    # Ljava/lang/Class;

    #@0
    .prologue
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/Class;)Ljava/lang/Long;
    .locals 1
    .param p0, "cl"    # Ljava/lang/Class;

    #@0
    .prologue
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getDeclaredSUID(Ljava/lang/Class;)Ljava/lang/Long;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p0, "cl"    # Ljava/lang/Class;

    #@0
    .prologue
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getClassSignature(Ljava/lang/Class;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p0, "paramTypes"    # [Ljava/lang/Class;
    .param p1, "retType"    # Ljava/lang/Class;

    #@0
    .prologue
    invoke-static {p0, p1}, Ljava/io/ObjectStreamClass;->getMethodSignature([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap4(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1
    .param p0, "cl"    # Ljava/lang/Class;

    #@0
    .prologue
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getExternalizableConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap5(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1
    .param p0, "cl"    # Ljava/lang/Class;

    #@0
    .prologue
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getSerializableConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap6(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "cl"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "argTypes"    # [Ljava/lang/Class;
    .param p3, "returnType"    # Ljava/lang/Class;

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Ljava/io/ObjectStreamClass;->getInheritableMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap7(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "cl"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "argTypes"    # [Ljava/lang/Class;
    .param p3, "returnType"    # Ljava/lang/Class;

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Ljava/io/ObjectStreamClass;->getPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap8(Ljava/lang/Class;)J
    .locals 2
    .param p0, "cl"    # Ljava/lang/Class;

    #@0
    .prologue
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->computeDefaultSUID(Ljava/lang/Class;)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap9(Ljava/io/ObjectStreamClass;)V
    .locals 0

    #@0
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->computeFieldOffsets()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 76
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    #@3
    .line 75
    sput-object v0, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    #@5
    .line 80
    sget-object v0, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    #@7
    .line 79
    sput-object v0, Ljava/io/ObjectStreamClass;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@9
    .line 72
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 124
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    #@6
    .line 531
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    #@1
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 124
    const/4 v4, 0x1

    #@5
    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    #@7
    .line 445
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    #@9
    .line 446
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    iput-object v4, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@f
    .line 447
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    #@12
    move-result v4

    #@13
    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    #@15
    .line 448
    const-class v4, Ljava/lang/Enum;

    #@17
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@1a
    move-result v4

    #@1b
    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    #@1d
    .line 449
    const-class v4, Ljava/io/Serializable;

    #@1f
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@22
    move-result v4

    #@23
    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    #@25
    .line 450
    const-class v4, Ljava/io/Externalizable;

    #@27
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@2a
    move-result v4

    #@2b
    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    #@2d
    .line 452
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@30
    move-result-object v2

    #@31
    .line 453
    .local v2, "superCl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    #@33
    const/4 v3, 0x0

    #@34
    invoke-static {v2, v3}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    #@37
    move-result-object v3

    #@38
    :cond_0
    iput-object v3, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    #@3a
    .line 454
    iput-object p0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@3c
    .line 456
    iget-boolean v3, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    #@3e
    if-eqz v3, :cond_3

    #@40
    .line 457
    new-instance v3, Ljava/io/ObjectStreamClass$2;

    #@42
    invoke-direct {v3, p0, p1}, Ljava/io/ObjectStreamClass$2;-><init>(Ljava/io/ObjectStreamClass;Ljava/lang/Class;)V

    #@45
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@48
    .line 506
    :goto_0
    :try_start_0
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@4a
    invoke-static {v3, p0}, Ljava/io/ObjectStreamClass;->getReflector([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)Ljava/io/ObjectStreamClass$FieldReflector;

    #@4d
    move-result-object v3

    #@4e
    iput-object v3, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;
    :try_end_0
    .catch Ljava/io/InvalidClassException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    .line 512
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    #@52
    if-nez v3, :cond_1

    #@54
    .line 513
    iget-boolean v3, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    #@56
    if-eqz v3, :cond_4

    #@58
    .line 514
    new-instance v3, Ljava/io/ObjectStreamClass$ExceptionInfo;

    #@5a
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@5c
    const-string/jumbo v5, "enum type"

    #@5f
    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamClass$ExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@62
    iput-object v3, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    #@64
    .line 519
    :cond_1
    :goto_1
    const/4 v1, 0x0

    #@65
    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@67
    array-length v3, v3

    #@68
    if-ge v1, v3, :cond_5

    #@6a
    .line 520
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@6c
    aget-object v3, v3, v1

    #@6e
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    #@71
    move-result-object v3

    #@72
    if-nez v3, :cond_2

    #@74
    .line 521
    new-instance v3, Ljava/io/ObjectStreamClass$ExceptionInfo;

    #@76
    .line 522
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@78
    const-string/jumbo v5, "unmatched serializable field(s) declared"

    #@7b
    .line 521
    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamClass$ExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@7e
    iput-object v3, p0, Ljava/io/ObjectStreamClass;->defaultSerializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    #@80
    .line 519
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@82
    goto :goto_2

    #@83
    .line 501
    .end local v1    # "i":I
    :cond_3
    const-wide/16 v4, 0x0

    #@85
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@88
    move-result-object v3

    #@89
    iput-object v3, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    #@8b
    .line 502
    sget-object v3, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    #@8d
    iput-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@8f
    goto :goto_0

    #@90
    .line 507
    :catch_0
    move-exception v0

    #@91
    .line 509
    .local v0, "ex":Ljava/io/InvalidClassException;
    new-instance v3, Ljava/lang/InternalError;

    #@93
    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    #@96
    throw v3

    #@97
    .line 515
    .end local v0    # "ex":Ljava/io/InvalidClassException;
    :cond_4
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    #@99
    if-nez v3, :cond_1

    #@9b
    .line 516
    new-instance v3, Ljava/io/ObjectStreamClass$ExceptionInfo;

    #@9d
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@9f
    const-string/jumbo v5, "no valid constructor"

    #@a2
    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamClass$ExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@a5
    iput-object v3, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    #@a7
    goto :goto_1

    #@a8
    .line 444
    .restart local v1    # "i":I
    :cond_5
    return-void
.end method

.method private static classNamesEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "name1"    # Ljava/lang/String;
    .param p1, "name2"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v1, 0x2e

    #@2
    .line 1460
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, 0x1

    #@8
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@b
    move-result-object p0

    #@c
    .line 1461
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@f
    move-result v0

    #@10
    add-int/lit8 v0, v0, 0x1

    #@12
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@15
    move-result-object p1

    #@16
    .line 1462
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method private static computeDefaultSUID(Ljava/lang/Class;)J
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)J"
        }
    .end annotation

    #@0
    .prologue
    .line 1665
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v23, Ljava/io/Serializable;

    #@2
    move-object/from16 v0, v23

    #@4
    move-object/from16 v1, p0

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@9
    move-result v23

    #@a
    if-eqz v23, :cond_0

    #@c
    invoke-static/range {p0 .. p0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    #@f
    move-result v23

    #@10
    if-eqz v23, :cond_1

    #@12
    .line 1667
    :cond_0
    const-wide/16 v24, 0x0

    #@14
    return-wide v24

    #@15
    .line 1671
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    #@17
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@1a
    .line 1672
    .local v2, "bout":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/DataOutputStream;

    #@1c
    invoke-direct {v7, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@1f
    .line 1674
    .local v7, "dout":Ljava/io/DataOutputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@22
    move-result-object v23

    #@23
    move-object/from16 v0, v23

    #@25
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@28
    .line 1676
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    #@2b
    move-result v23

    #@2c
    move/from16 v0, v23

    #@2e
    and-int/lit16 v4, v0, 0x611

    #@30
    .line 1684
    .local v4, "classMods":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    #@33
    move-result-object v20

    #@34
    .line 1685
    .local v20, "methods":[Ljava/lang/reflect/Method;
    and-int/lit16 v0, v4, 0x200

    #@36
    move/from16 v23, v0

    #@38
    if-eqz v23, :cond_2

    #@3a
    .line 1686
    move-object/from16 v0, v20

    #@3c
    array-length v0, v0

    #@3d
    move/from16 v23, v0

    #@3f
    if-lez v23, :cond_3

    #@41
    .line 1687
    or-int/lit16 v4, v4, 0x400

    #@43
    .line 1690
    :cond_2
    :goto_0
    invoke-virtual {v7, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@46
    .line 1692
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isArray()Z

    #@49
    move-result v23

    #@4a
    if-nez v23, :cond_5

    #@4c
    .line 1698
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    #@4f
    move-result-object v17

    #@50
    .line 1699
    .local v17, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v17

    #@52
    array-length v0, v0

    #@53
    move/from16 v23, v0

    #@55
    move/from16 v0, v23

    #@57
    new-array v0, v0, [Ljava/lang/String;

    #@59
    move-object/from16 v16, v0

    #@5b
    .line 1700
    .local v16, "ifaceNames":[Ljava/lang/String;
    const/4 v15, 0x0

    #@5c
    .local v15, "i":I
    :goto_1
    move-object/from16 v0, v17

    #@5e
    array-length v0, v0

    #@5f
    move/from16 v23, v0

    #@61
    move/from16 v0, v23

    #@63
    if-ge v15, v0, :cond_4

    #@65
    .line 1701
    aget-object v23, v17, v15

    #@67
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@6a
    move-result-object v23

    #@6b
    aput-object v23, v16, v15

    #@6d
    .line 1700
    add-int/lit8 v15, v15, 0x1

    #@6f
    goto :goto_1

    #@70
    .line 1688
    .end local v15    # "i":I
    .end local v16    # "ifaceNames":[Ljava/lang/String;
    .end local v17    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    and-int/lit16 v4, v4, -0x401

    #@72
    goto :goto_0

    #@73
    .line 1703
    .restart local v15    # "i":I
    .restart local v16    # "ifaceNames":[Ljava/lang/String;
    .restart local v17    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_4
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    #@76
    .line 1704
    const/4 v15, 0x0

    #@77
    :goto_2
    move-object/from16 v0, v16

    #@79
    array-length v0, v0

    #@7a
    move/from16 v23, v0

    #@7c
    move/from16 v0, v23

    #@7e
    if-ge v15, v0, :cond_5

    #@80
    .line 1705
    aget-object v23, v16, v15

    #@82
    move-object/from16 v0, v23

    #@84
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@87
    .line 1704
    add-int/lit8 v15, v15, 0x1

    #@89
    goto :goto_2

    #@8a
    .line 1709
    .end local v15    # "i":I
    .end local v16    # "ifaceNames":[Ljava/lang/String;
    .end local v17    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@8d
    move-result-object v11

    #@8e
    .line 1710
    .local v11, "fields":[Ljava/lang/reflect/Field;
    array-length v0, v11

    #@8f
    move/from16 v23, v0

    #@91
    move/from16 v0, v23

    #@93
    new-array v10, v0, [Ljava/io/ObjectStreamClass$MemberSignature;

    #@95
    .line 1711
    .local v10, "fieldSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    const/4 v15, 0x0

    #@96
    .restart local v15    # "i":I
    :goto_3
    array-length v0, v11

    #@97
    move/from16 v23, v0

    #@99
    move/from16 v0, v23

    #@9b
    if-ge v15, v0, :cond_6

    #@9d
    .line 1712
    new-instance v23, Ljava/io/ObjectStreamClass$MemberSignature;

    #@9f
    aget-object v24, v11, v15

    #@a1
    invoke-direct/range {v23 .. v24}, Ljava/io/ObjectStreamClass$MemberSignature;-><init>(Ljava/lang/reflect/Field;)V

    #@a4
    aput-object v23, v10, v15

    #@a6
    .line 1711
    add-int/lit8 v15, v15, 0x1

    #@a8
    goto :goto_3

    #@a9
    .line 1714
    :cond_6
    new-instance v23, Ljava/io/ObjectStreamClass$3;

    #@ab
    invoke-direct/range {v23 .. v23}, Ljava/io/ObjectStreamClass$3;-><init>()V

    #@ae
    move-object/from16 v0, v23

    #@b0
    invoke-static {v10, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@b3
    .line 1719
    const/4 v15, 0x0

    #@b4
    :goto_4
    array-length v0, v10

    #@b5
    move/from16 v23, v0

    #@b7
    move/from16 v0, v23

    #@b9
    if-ge v15, v0, :cond_9

    #@bb
    .line 1720
    aget-object v22, v10, v15

    #@bd
    .line 1721
    .local v22, "sig":Ljava/io/ObjectStreamClass$MemberSignature;
    move-object/from16 v0, v22

    #@bf
    iget-object v0, v0, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    #@c1
    move-object/from16 v23, v0

    #@c3
    invoke-interface/range {v23 .. v23}, Ljava/lang/reflect/Member;->getModifiers()I

    #@c6
    move-result v23

    #@c7
    move/from16 v0, v23

    #@c9
    and-int/lit16 v0, v0, 0xdf

    #@cb
    move/from16 v21, v0

    #@cd
    .line 1725
    .local v21, "mods":I
    and-int/lit8 v23, v21, 0x2

    #@cf
    if-eqz v23, :cond_7

    #@d1
    .line 1726
    move/from16 v0, v21

    #@d3
    and-int/lit16 v0, v0, 0x88

    #@d5
    move/from16 v23, v0

    #@d7
    if-nez v23, :cond_8

    #@d9
    .line 1728
    :cond_7
    move-object/from16 v0, v22

    #@db
    iget-object v0, v0, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    #@dd
    move-object/from16 v23, v0

    #@df
    move-object/from16 v0, v23

    #@e1
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@e4
    .line 1729
    move/from16 v0, v21

    #@e6
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@e9
    .line 1730
    move-object/from16 v0, v22

    #@eb
    iget-object v0, v0, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    #@ed
    move-object/from16 v23, v0

    #@ef
    move-object/from16 v0, v23

    #@f1
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@f4
    .line 1719
    :cond_8
    add-int/lit8 v15, v15, 0x1

    #@f6
    goto :goto_4

    #@f7
    .line 1734
    .end local v21    # "mods":I
    .end local v22    # "sig":Ljava/io/ObjectStreamClass$MemberSignature;
    :cond_9
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@fa
    move-result-object v23

    #@fb
    invoke-virtual/range {v23 .. v23}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    #@fe
    move-result v23

    #@ff
    .line 1735
    const/16 v24, 0x17

    #@101
    .line 1734
    move/from16 v0, v23

    #@103
    move/from16 v1, v24

    #@105
    if-le v0, v1, :cond_b

    #@107
    const/4 v3, 0x1

    #@108
    .line 1736
    .local v3, "checkSuperclass":Z
    :goto_5
    move-object/from16 v0, p0

    #@10a
    invoke-static {v0, v3}, Ljava/io/ObjectStreamClass;->hasStaticInitializer(Ljava/lang/Class;Z)Z

    #@10d
    move-result v23

    #@10e
    if-eqz v23, :cond_a

    #@110
    .line 1737
    const-string/jumbo v23, "<clinit>"

    #@113
    move-object/from16 v0, v23

    #@115
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@118
    .line 1738
    const/16 v23, 0x8

    #@11a
    move/from16 v0, v23

    #@11c
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@11f
    .line 1739
    const-string/jumbo v23, "()V"

    #@122
    move-object/from16 v0, v23

    #@124
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@127
    .line 1742
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    #@12a
    move-result-object v5

    #@12b
    .line 1743
    .local v5, "cons":[Ljava/lang/reflect/Constructor;
    array-length v0, v5

    #@12c
    move/from16 v23, v0

    #@12e
    move/from16 v0, v23

    #@130
    new-array v6, v0, [Ljava/io/ObjectStreamClass$MemberSignature;

    #@132
    .line 1744
    .local v6, "consSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    const/4 v15, 0x0

    #@133
    :goto_6
    array-length v0, v5

    #@134
    move/from16 v23, v0

    #@136
    move/from16 v0, v23

    #@138
    if-ge v15, v0, :cond_c

    #@13a
    .line 1745
    new-instance v23, Ljava/io/ObjectStreamClass$MemberSignature;

    #@13c
    aget-object v24, v5, v15

    #@13e
    invoke-direct/range {v23 .. v24}, Ljava/io/ObjectStreamClass$MemberSignature;-><init>(Ljava/lang/reflect/Constructor;)V

    #@141
    aput-object v23, v6, v15

    #@143
    .line 1744
    add-int/lit8 v15, v15, 0x1

    #@145
    goto :goto_6

    #@146
    .line 1734
    .end local v3    # "checkSuperclass":Z
    .end local v5    # "cons":[Ljava/lang/reflect/Constructor;
    .end local v6    # "consSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    :cond_b
    const/4 v3, 0x0

    #@147
    goto :goto_5

    #@148
    .line 1747
    .restart local v3    # "checkSuperclass":Z
    .restart local v5    # "cons":[Ljava/lang/reflect/Constructor;
    .restart local v6    # "consSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    :cond_c
    new-instance v23, Ljava/io/ObjectStreamClass$4;

    #@14a
    invoke-direct/range {v23 .. v23}, Ljava/io/ObjectStreamClass$4;-><init>()V

    #@14d
    move-object/from16 v0, v23

    #@14f
    invoke-static {v6, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@152
    .line 1752
    const/4 v15, 0x0

    #@153
    :goto_7
    array-length v0, v6

    #@154
    move/from16 v23, v0

    #@156
    move/from16 v0, v23

    #@158
    if-ge v15, v0, :cond_e

    #@15a
    .line 1753
    aget-object v22, v6, v15

    #@15c
    .line 1754
    .restart local v22    # "sig":Ljava/io/ObjectStreamClass$MemberSignature;
    move-object/from16 v0, v22

    #@15e
    iget-object v0, v0, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    #@160
    move-object/from16 v23, v0

    #@162
    invoke-interface/range {v23 .. v23}, Ljava/lang/reflect/Member;->getModifiers()I

    #@165
    move-result v23

    #@166
    move/from16 v0, v23

    #@168
    and-int/lit16 v0, v0, 0xd3f

    #@16a
    move/from16 v21, v0

    #@16c
    .line 1759
    .restart local v21    # "mods":I
    and-int/lit8 v23, v21, 0x2

    #@16e
    if-nez v23, :cond_d

    #@170
    .line 1760
    const-string/jumbo v23, "<init>"

    #@173
    move-object/from16 v0, v23

    #@175
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@178
    .line 1761
    move/from16 v0, v21

    #@17a
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@17d
    .line 1762
    move-object/from16 v0, v22

    #@17f
    iget-object v0, v0, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    #@181
    move-object/from16 v23, v0

    #@183
    const/16 v24, 0x2f

    #@185
    const/16 v25, 0x2e

    #@187
    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@18a
    move-result-object v23

    #@18b
    move-object/from16 v0, v23

    #@18d
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@190
    .line 1752
    :cond_d
    add-int/lit8 v15, v15, 0x1

    #@192
    goto :goto_7

    #@193
    .line 1766
    .end local v21    # "mods":I
    .end local v22    # "sig":Ljava/io/ObjectStreamClass$MemberSignature;
    :cond_e
    move-object/from16 v0, v20

    #@195
    array-length v0, v0

    #@196
    move/from16 v23, v0

    #@198
    move/from16 v0, v23

    #@19a
    new-array v0, v0, [Ljava/io/ObjectStreamClass$MemberSignature;

    #@19c
    move-object/from16 v19, v0

    #@19e
    .line 1767
    .local v19, "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    const/4 v15, 0x0

    #@19f
    :goto_8
    move-object/from16 v0, v20

    #@1a1
    array-length v0, v0

    #@1a2
    move/from16 v23, v0

    #@1a4
    move/from16 v0, v23

    #@1a6
    if-ge v15, v0, :cond_f

    #@1a8
    .line 1768
    new-instance v23, Ljava/io/ObjectStreamClass$MemberSignature;

    #@1aa
    aget-object v24, v20, v15

    #@1ac
    invoke-direct/range {v23 .. v24}, Ljava/io/ObjectStreamClass$MemberSignature;-><init>(Ljava/lang/reflect/Method;)V

    #@1af
    aput-object v23, v19, v15

    #@1b1
    .line 1767
    add-int/lit8 v15, v15, 0x1

    #@1b3
    goto :goto_8

    #@1b4
    .line 1770
    :cond_f
    new-instance v23, Ljava/io/ObjectStreamClass$5;

    #@1b6
    invoke-direct/range {v23 .. v23}, Ljava/io/ObjectStreamClass$5;-><init>()V

    #@1b9
    move-object/from16 v0, v19

    #@1bb
    move-object/from16 v1, v23

    #@1bd
    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@1c0
    .line 1779
    const/4 v15, 0x0

    #@1c1
    :goto_9
    move-object/from16 v0, v19

    #@1c3
    array-length v0, v0

    #@1c4
    move/from16 v23, v0

    #@1c6
    move/from16 v0, v23

    #@1c8
    if-ge v15, v0, :cond_11

    #@1ca
    .line 1780
    aget-object v22, v19, v15

    #@1cc
    .line 1781
    .restart local v22    # "sig":Ljava/io/ObjectStreamClass$MemberSignature;
    move-object/from16 v0, v22

    #@1ce
    iget-object v0, v0, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    #@1d0
    move-object/from16 v23, v0

    #@1d2
    invoke-interface/range {v23 .. v23}, Ljava/lang/reflect/Member;->getModifiers()I

    #@1d5
    move-result v23

    #@1d6
    move/from16 v0, v23

    #@1d8
    and-int/lit16 v0, v0, 0xd3f

    #@1da
    move/from16 v21, v0

    #@1dc
    .line 1786
    .restart local v21    # "mods":I
    and-int/lit8 v23, v21, 0x2

    #@1de
    if-nez v23, :cond_10

    #@1e0
    .line 1787
    move-object/from16 v0, v22

    #@1e2
    iget-object v0, v0, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    #@1e4
    move-object/from16 v23, v0

    #@1e6
    move-object/from16 v0, v23

    #@1e8
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@1eb
    .line 1788
    move/from16 v0, v21

    #@1ed
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@1f0
    .line 1789
    move-object/from16 v0, v22

    #@1f2
    iget-object v0, v0, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    #@1f4
    move-object/from16 v23, v0

    #@1f6
    const/16 v24, 0x2f

    #@1f8
    const/16 v25, 0x2e

    #@1fa
    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@1fd
    move-result-object v23

    #@1fe
    move-object/from16 v0, v23

    #@200
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@203
    .line 1779
    :cond_10
    add-int/lit8 v15, v15, 0x1

    #@205
    goto :goto_9

    #@206
    .line 1793
    .end local v21    # "mods":I
    .end local v22    # "sig":Ljava/io/ObjectStreamClass$MemberSignature;
    :cond_11
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    #@209
    .line 1795
    const-string/jumbo v23, "SHA"

    #@20c
    invoke-static/range {v23 .. v23}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@20f
    move-result-object v18

    #@210
    .line 1796
    .local v18, "md":Ljava/security/MessageDigest;
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@213
    move-result-object v23

    #@214
    move-object/from16 v0, v18

    #@216
    move-object/from16 v1, v23

    #@218
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    #@21b
    move-result-object v14

    #@21c
    .line 1797
    .local v14, "hashBytes":[B
    const-wide/16 v12, 0x0

    #@21e
    .line 1798
    .local v12, "hash":J
    array-length v0, v14

    #@21f
    move/from16 v23, v0

    #@221
    const/16 v24, 0x8

    #@223
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    #@226
    move-result v23

    #@227
    add-int/lit8 v15, v23, -0x1

    #@229
    :goto_a
    if-ltz v15, :cond_12

    #@22b
    .line 1799
    const/16 v23, 0x8

    #@22d
    shl-long v24, v12, v23

    #@22f
    aget-byte v23, v14, v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@231
    move/from16 v0, v23

    #@233
    and-int/lit16 v0, v0, 0xff

    #@235
    move/from16 v23, v0

    #@237
    move/from16 v0, v23

    #@239
    int-to-long v0, v0

    #@23a
    move-wide/from16 v26, v0

    #@23c
    or-long v12, v24, v26

    #@23e
    .line 1798
    add-int/lit8 v15, v15, -0x1

    #@240
    goto :goto_a

    #@241
    .line 1801
    :cond_12
    return-wide v12

    #@242
    .line 1804
    .end local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "checkSuperclass":Z
    .end local v4    # "classMods":I
    .end local v5    # "cons":[Ljava/lang/reflect/Constructor;
    .end local v6    # "consSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    .end local v7    # "dout":Ljava/io/DataOutputStream;
    .end local v10    # "fieldSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    .end local v11    # "fields":[Ljava/lang/reflect/Field;
    .end local v12    # "hash":J
    .end local v14    # "hashBytes":[B
    .end local v15    # "i":I
    .end local v18    # "md":Ljava/security/MessageDigest;
    .end local v19    # "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    .end local v20    # "methods":[Ljava/lang/reflect/Method;
    :catch_0
    move-exception v9

    #@243
    .line 1805
    .local v9, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v23, Ljava/lang/SecurityException;

    #@245
    invoke-virtual {v9}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    #@248
    move-result-object v24

    #@249
    invoke-direct/range {v23 .. v24}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@24c
    throw v23

    #@24d
    .line 1802
    .end local v9    # "ex":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v8

    #@24e
    .line 1803
    .local v8, "ex":Ljava/io/IOException;
    new-instance v23, Ljava/lang/InternalError;

    #@250
    invoke-direct/range {v23 .. v23}, Ljava/lang/InternalError;-><init>()V

    #@253
    throw v23
.end method

.method private computeFieldOffsets()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v5, -0x1

    #@2
    .line 1259
    iput v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    #@4
    .line 1260
    iput v3, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    #@6
    .line 1261
    const/4 v1, -0x1

    #@7
    .line 1263
    .local v1, "firstObjIndex":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@a
    array-length v3, v3

    #@b
    if-ge v2, v3, :cond_1

    #@d
    .line 1264
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@f
    aget-object v0, v3, v2

    #@11
    .line 1265
    .local v0, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getTypeCode()C

    #@14
    move-result v3

    #@15
    sparse-switch v3, :sswitch_data_0

    #@18
    .line 1298
    new-instance v3, Ljava/lang/InternalError;

    #@1a
    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    #@1d
    throw v3

    #@1e
    .line 1268
    :sswitch_0
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    #@20
    add-int/lit8 v4, v3, 0x1

    #@22
    iput v4, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    #@24
    invoke-virtual {v0, v3}, Ljava/io/ObjectStreamField;->setOffset(I)V

    #@27
    .line 1263
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 1273
    :sswitch_1
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    #@2c
    invoke-virtual {v0, v3}, Ljava/io/ObjectStreamField;->setOffset(I)V

    #@2f
    .line 1274
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    #@31
    add-int/lit8 v3, v3, 0x2

    #@33
    iput v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    #@35
    goto :goto_1

    #@36
    .line 1279
    :sswitch_2
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    #@38
    invoke-virtual {v0, v3}, Ljava/io/ObjectStreamField;->setOffset(I)V

    #@3b
    .line 1280
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    #@3d
    add-int/lit8 v3, v3, 0x4

    #@3f
    iput v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    #@41
    goto :goto_1

    #@42
    .line 1285
    :sswitch_3
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    #@44
    invoke-virtual {v0, v3}, Ljava/io/ObjectStreamField;->setOffset(I)V

    #@47
    .line 1286
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    #@49
    add-int/lit8 v3, v3, 0x8

    #@4b
    iput v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    #@4d
    goto :goto_1

    #@4e
    .line 1291
    :sswitch_4
    iget v3, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    #@50
    add-int/lit8 v4, v3, 0x1

    #@52
    iput v4, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    #@54
    invoke-virtual {v0, v3}, Ljava/io/ObjectStreamField;->setOffset(I)V

    #@57
    .line 1292
    if-ne v1, v5, :cond_0

    #@59
    .line 1293
    move v1, v2

    #@5a
    goto :goto_1

    #@5b
    .line 1301
    .end local v0    # "f":Ljava/io/ObjectStreamField;
    :cond_1
    if-eq v1, v5, :cond_2

    #@5d
    .line 1302
    iget v3, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    #@5f
    add-int/2addr v3, v1

    #@60
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@62
    array-length v4, v4

    #@63
    if-eq v3, v4, :cond_2

    #@65
    .line 1304
    new-instance v3, Ljava/io/InvalidClassException;

    #@67
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@69
    const-string/jumbo v5, "illegal field order"

    #@6c
    invoke-direct {v3, v4, v5}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@6f
    throw v3

    #@70
    .line 1258
    :cond_2
    return-void

    #@71
    .line 1265
    nop

    #@72
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_1
        0x44 -> :sswitch_3
        0x46 -> :sswitch_2
        0x49 -> :sswitch_2
        0x4a -> :sswitch_3
        0x4c -> :sswitch_4
        0x53 -> :sswitch_1
        0x5a -> :sswitch_0
        0x5b -> :sswitch_4
    .end sparse-switch
.end method

.method private getClassDataLayout0()[Ljava/io/ObjectStreamClass$ClassDataSlot;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x1

    #@2
    .line 1148
    new-instance v6, Ljava/util/ArrayList;

    #@4
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 1149
    .local v6, "slots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/ObjectStreamClass$ClassDataSlot;>;"
    iget-object v7, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    #@9
    .local v7, "start":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    #@b
    .line 1152
    .local v2, "end":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v2, :cond_0

    #@d
    const-class v8, Ljava/io/Serializable;

    #@f
    invoke-virtual {v8, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@12
    move-result v8

    #@13
    if-eqz v8, :cond_0

    #@15
    .line 1153
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@18
    move-result-object v2

    #@19
    goto :goto_0

    #@1a
    .line 1156
    :cond_0
    new-instance v4, Ljava/util/HashSet;

    #@1c
    const/4 v8, 0x3

    #@1d
    invoke-direct {v4, v8}, Ljava/util/HashSet;-><init>(I)V

    #@20
    .line 1158
    .local v4, "oscNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v1, p0

    #@21
    .local v1, "d":Ljava/io/ObjectStreamClass;
    :goto_1
    if-eqz v1, :cond_7

    #@23
    .line 1159
    iget-object v8, v1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@25
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@28
    move-result v8

    #@29
    if-eqz v8, :cond_1

    #@2b
    .line 1160
    new-instance v8, Ljava/io/InvalidClassException;

    #@2d
    const-string/jumbo v9, "Circular reference."

    #@30
    invoke-direct {v8, v9}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    #@33
    throw v8

    #@34
    .line 1162
    :cond_1
    iget-object v8, v1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@36
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@39
    .line 1166
    iget-object v8, v1, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    #@3b
    if-eqz v8, :cond_3

    #@3d
    iget-object v8, v1, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    #@3f
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    .line 1167
    .local v5, "searchName":Ljava/lang/String;
    :goto_2
    const/4 v3, 0x0

    #@44
    .line 1168
    .local v3, "match":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, v7

    #@45
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    if-eq v0, v2, :cond_2

    #@47
    .line 1169
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4a
    move-result-object v8

    #@4b
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v8

    #@4f
    if-eqz v8, :cond_4

    #@51
    .line 1170
    move-object v3, v0

    #@52
    .line 1176
    .end local v3    # "match":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    if-eqz v3, :cond_6

    #@54
    .line 1177
    move-object v0, v7

    #@55
    :goto_4
    if-eq v0, v3, :cond_5

    #@57
    .line 1178
    new-instance v8, Ljava/io/ObjectStreamClass$ClassDataSlot;

    #@59
    .line 1179
    invoke-static {v0, v10}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    #@5c
    move-result-object v9

    #@5d
    .line 1178
    invoke-direct {v8, v9, v11}, Ljava/io/ObjectStreamClass$ClassDataSlot;-><init>(Ljava/io/ObjectStreamClass;Z)V

    #@60
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@63
    .line 1177
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@66
    move-result-object v0

    #@67
    goto :goto_4

    #@68
    .line 1166
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "searchName":Ljava/lang/String;
    :cond_3
    iget-object v5, v1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@6a
    .restart local v5    # "searchName":Ljava/lang/String;
    goto :goto_2

    #@6b
    .line 1168
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "match":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@6e
    move-result-object v0

    #@6f
    goto :goto_3

    #@70
    .line 1181
    .end local v3    # "match":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@73
    move-result-object v7

    #@74
    .line 1185
    :cond_6
    new-instance v8, Ljava/io/ObjectStreamClass$ClassDataSlot;

    #@76
    invoke-direct {v1, v3}, Ljava/io/ObjectStreamClass;->getVariantFor(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    #@79
    move-result-object v9

    #@7a
    invoke-direct {v8, v9, v10}, Ljava/io/ObjectStreamClass$ClassDataSlot;-><init>(Ljava/io/ObjectStreamClass;Z)V

    #@7d
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@80
    .line 1158
    iget-object v1, v1, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    #@82
    goto :goto_1

    #@83
    .line 1189
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "searchName":Ljava/lang/String;
    :cond_7
    move-object v0, v7

    #@84
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_5
    if-eq v0, v2, :cond_8

    #@86
    .line 1190
    new-instance v8, Ljava/io/ObjectStreamClass$ClassDataSlot;

    #@88
    .line 1191
    invoke-static {v0, v10}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    #@8b
    move-result-object v9

    #@8c
    .line 1190
    invoke-direct {v8, v9, v11}, Ljava/io/ObjectStreamClass$ClassDataSlot;-><init>(Ljava/io/ObjectStreamClass;Z)V

    #@8f
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@92
    .line 1189
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@95
    move-result-object v0

    #@96
    goto :goto_5

    #@97
    .line 1195
    :cond_8
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    #@9a
    .line 1196
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@9d
    move-result v8

    #@9e
    new-array v8, v8, [Ljava/io/ObjectStreamClass$ClassDataSlot;

    #@a0
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@a3
    move-result-object v8

    #@a4
    check-cast v8, [Ljava/io/ObjectStreamClass$ClassDataSlot;

    #@a6
    return-object v8
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
    .line 1469
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1470
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1471
    const/16 v1, 0x5b

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    .line 1472
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@13
    move-result-object p0

    #@14
    goto :goto_0

    #@15
    .line 1474
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_a

    #@1b
    .line 1475
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@1d
    if-ne p0, v1, :cond_1

    #@1f
    .line 1476
    const/16 v1, 0x49

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 1499
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    return-object v1

    #@29
    .line 1477
    :cond_1
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@2b
    if-ne p0, v1, :cond_2

    #@2d
    .line 1478
    const/16 v1, 0x42

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@32
    goto :goto_1

    #@33
    .line 1479
    :cond_2
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@35
    if-ne p0, v1, :cond_3

    #@37
    .line 1480
    const/16 v1, 0x4a

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3c
    goto :goto_1

    #@3d
    .line 1481
    :cond_3
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@3f
    if-ne p0, v1, :cond_4

    #@41
    .line 1482
    const/16 v1, 0x46

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@46
    goto :goto_1

    #@47
    .line 1483
    :cond_4
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@49
    if-ne p0, v1, :cond_5

    #@4b
    .line 1484
    const/16 v1, 0x44

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@50
    goto :goto_1

    #@51
    .line 1485
    :cond_5
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@53
    if-ne p0, v1, :cond_6

    #@55
    .line 1486
    const/16 v1, 0x53

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5a
    goto :goto_1

    #@5b
    .line 1487
    :cond_6
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@5d
    if-ne p0, v1, :cond_7

    #@5f
    .line 1488
    const/16 v1, 0x43

    #@61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@64
    goto :goto_1

    #@65
    .line 1489
    :cond_7
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@67
    if-ne p0, v1, :cond_8

    #@69
    .line 1490
    const/16 v1, 0x5a

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6e
    goto :goto_1

    #@6f
    .line 1491
    :cond_8
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@71
    if-ne p0, v1, :cond_9

    #@73
    .line 1492
    const/16 v1, 0x56

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@78
    goto :goto_1

    #@79
    .line 1494
    :cond_9
    new-instance v1, Ljava/lang/InternalError;

    #@7b
    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    #@7e
    throw v1

    #@7f
    .line 1497
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

.method private static getConstructorId(Ljava/lang/Class;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)J"
        }
    .end annotation

    #@0
    .prologue
    .line 2277
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v0, "WARNING: ObjectStreamClass.getConstructorId(Class<?>) is private API andwill be removed in a future Android release."

    #@3
    invoke-static {v0}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@6
    .line 2289
    const-wide v0, 0x1083b99f34b59645L    # 4.065670734428704E-229

    #@b
    return-wide v0
.end method

.method private static getDeclaredSUID(Ljava/lang/Class;)Ljava/lang/Long;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    #@1
    .line 1650
    :try_start_0
    const-string/jumbo v2, "serialVersionUID"

    #@4
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@7
    move-result-object v1

    #@8
    .line 1652
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    #@b
    move-result v2

    #@c
    and-int/lit8 v2, v2, 0x18

    #@e
    .line 1651
    const/16 v3, 0x18

    #@10
    .line 1652
    if-ne v2, v3, :cond_0

    #@12
    .line 1653
    const/4 v2, 0x1

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@16
    .line 1654
    const/4 v2, 0x0

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    #@1a
    move-result-wide v2

    #@1b
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    move-result-object v2

    #@1f
    return-object v2

    #@20
    .line 1656
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    #@21
    .line 1658
    :cond_0
    return-object v4
.end method

.method private static getDeclaredSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/io/ObjectStreamField;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v12, 0x0

    #@1
    .line 1575
    const/4 v8, 0x0

    #@2
    .line 1577
    .local v8, "serialPersistentFields":[Ljava/io/ObjectStreamField;
    :try_start_0
    const-string/jumbo v10, "serialPersistentFields"

    #@5
    invoke-virtual {p0, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@8
    move-result-object v4

    #@9
    .line 1579
    .local v4, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    #@c
    move-result v10

    #@d
    and-int/lit8 v10, v10, 0x1a

    #@f
    .line 1578
    const/16 v11, 0x1a

    #@11
    .line 1579
    if-ne v10, v11, :cond_0

    #@13
    .line 1580
    const/4 v10, 0x1

    #@14
    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@17
    .line 1581
    const/4 v10, 0x0

    #@18
    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v10

    #@1c
    move-object v0, v10

    #@1d
    check-cast v0, [Ljava/io/ObjectStreamField;

    #@1f
    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@20
    .line 1585
    .end local v4    # "f":Ljava/lang/reflect/Field;
    .end local v8    # "serialPersistentFields":[Ljava/io/ObjectStreamField;
    :cond_0
    :goto_0
    if-nez v8, :cond_1

    #@22
    .line 1586
    return-object v12

    #@23
    .line 1587
    :cond_1
    array-length v10, v8

    #@24
    if-nez v10, :cond_2

    #@26
    .line 1588
    sget-object v10, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    #@28
    return-object v10

    #@29
    .line 1592
    :cond_2
    array-length v10, v8

    #@2a
    new-array v1, v10, [Ljava/io/ObjectStreamField;

    #@2c
    .line 1593
    .local v1, "boundFields":[Ljava/io/ObjectStreamField;
    new-instance v5, Ljava/util/HashSet;

    #@2e
    array-length v10, v8

    #@2f
    invoke-direct {v5, v10}, Ljava/util/HashSet;-><init>(I)V

    #@32
    .line 1595
    .local v5, "fieldNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x0

    #@33
    .local v7, "i":I
    :goto_1
    array-length v10, v8

    #@34
    if-ge v7, v10, :cond_6

    #@36
    .line 1596
    aget-object v9, v8, v7

    #@38
    .line 1598
    .local v9, "spf":Ljava/io/ObjectStreamField;
    invoke-virtual {v9}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    #@3b
    move-result-object v6

    #@3c
    .line 1599
    .local v6, "fname":Ljava/lang/String;
    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@3f
    move-result v10

    #@40
    if-eqz v10, :cond_3

    #@42
    .line 1600
    new-instance v10, Ljava/io/InvalidClassException;

    #@44
    .line 1601
    new-instance v11, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v12, "multiple serializable fields named "

    #@4c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v11

    #@50
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v11

    #@54
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v11

    #@58
    .line 1600
    invoke-direct {v10, v11}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v10

    #@5c
    .line 1603
    :cond_3
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5f
    .line 1606
    :try_start_1
    invoke-virtual {p0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@62
    move-result-object v4

    #@63
    .line 1607
    .restart local v4    # "f":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@66
    move-result-object v10

    #@67
    invoke-virtual {v9}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    #@6a
    move-result-object v11

    #@6b
    if-ne v10, v11, :cond_4

    #@6d
    .line 1608
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    #@70
    move-result v10

    #@71
    and-int/lit8 v10, v10, 0x8

    #@73
    if-nez v10, :cond_4

    #@75
    .line 1611
    new-instance v10, Ljava/io/ObjectStreamField;

    #@77
    invoke-virtual {v9}, Ljava/io/ObjectStreamField;->isUnshared()Z

    #@7a
    move-result v11

    #@7b
    const/4 v12, 0x1

    #@7c
    invoke-direct {v10, v4, v11, v12}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/reflect/Field;ZZ)V

    #@7f
    .line 1610
    aput-object v10, v1, v7
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    #@81
    .line 1615
    .end local v4    # "f":Ljava/lang/reflect/Field;
    :cond_4
    :goto_2
    aget-object v10, v1, v7

    #@83
    if-nez v10, :cond_5

    #@85
    .line 1616
    new-instance v10, Ljava/io/ObjectStreamField;

    #@87
    .line 1617
    invoke-virtual {v9}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    #@8a
    move-result-object v11

    #@8b
    invoke-virtual {v9}, Ljava/io/ObjectStreamField;->isUnshared()Z

    #@8e
    move-result v12

    #@8f
    .line 1616
    invoke-direct {v10, v6, v11, v12}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    #@92
    aput-object v10, v1, v7

    #@94
    .line 1595
    :cond_5
    add-int/lit8 v7, v7, 0x1

    #@96
    goto :goto_1

    #@97
    .line 1620
    .end local v6    # "fname":Ljava/lang/String;
    .end local v9    # "spf":Ljava/io/ObjectStreamField;
    :cond_6
    return-object v1

    #@98
    .line 1613
    .restart local v6    # "fname":Ljava/lang/String;
    .restart local v9    # "spf":Ljava/io/ObjectStreamField;
    :catch_0
    move-exception v3

    #@99
    .local v3, "ex":Ljava/lang/NoSuchFieldException;
    goto :goto_2

    #@9a
    .line 1583
    .end local v1    # "boundFields":[Ljava/io/ObjectStreamField;
    .end local v3    # "ex":Ljava/lang/NoSuchFieldException;
    .end local v5    # "fieldNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "fname":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "spf":Ljava/io/ObjectStreamField;
    .restart local v8    # "serialPersistentFields":[Ljava/io/ObjectStreamField;
    :catch_1
    move-exception v2

    #@9b
    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static getDefaultSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/io/ObjectStreamField;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    #@1
    .line 1630
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@4
    move-result-object v0

    #@5
    .line 1631
    .local v0, "clFields":[Ljava/lang/reflect/Field;
    new-instance v2, Ljava/util/ArrayList;

    #@7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 1634
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/ObjectStreamField;>;"
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    array-length v4, v0

    #@c
    if-ge v1, v4, :cond_1

    #@e
    .line 1635
    aget-object v4, v0, v1

    #@10
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    #@13
    move-result v4

    #@14
    and-int/lit16 v4, v4, 0x88

    #@16
    if-nez v4, :cond_0

    #@18
    .line 1636
    new-instance v4, Ljava/io/ObjectStreamField;

    #@1a
    aget-object v5, v0, v1

    #@1c
    const/4 v6, 0x1

    #@1d
    invoke-direct {v4, v5, v7, v6}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/reflect/Field;ZZ)V

    #@20
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    .line 1634
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1639
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@29
    move-result v3

    #@2a
    .line 1640
    .local v3, "size":I
    if-nez v3, :cond_2

    #@2c
    sget-object v4, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    #@2e
    :goto_1
    return-object v4

    #@2f
    .line 1641
    :cond_2
    new-array v4, v3, [Ljava/io/ObjectStreamField;

    #@31
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@34
    move-result-object v4

    #@35
    check-cast v4, [Ljava/io/ObjectStreamField;

    #@37
    goto :goto_1
.end method

.method private static getExternalizableConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    #@1
    .line 1335
    const/4 v2, 0x0

    #@2
    :try_start_0
    check-cast v2, [Ljava/lang/Class;

    #@4
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@7
    move-result-object v0

    #@8
    .line 1336
    .local v0, "cons":Ljava/lang/reflect/Constructor;
    const/4 v2, 0x1

    #@9
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    #@c
    .line 1337
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v2

    #@10
    and-int/lit8 v2, v2, 0x1

    #@12
    if-eqz v2, :cond_0

    #@14
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v0

    #@15
    .restart local v0    # "cons":Ljava/lang/reflect/Constructor;
    :cond_0
    move-object v0, v3

    #@16
    .line 1338
    goto :goto_0

    #@17
    .line 1339
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v1

    #@18
    .line 1340
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    return-object v3
.end method

.method private static getInheritableMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p3, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    #@1
    .line 1385
    const/4 v2, 0x0

    #@2
    .line 1386
    .local v2, "meth":Ljava/lang/reflect/Method;
    move-object v0, p0

    #@3
    .line 1387
    .local v0, "defCl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_0

    #@5
    .line 1389
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v2

    #@9
    .line 1396
    .end local v2    # "meth":Ljava/lang/reflect/Method;
    :cond_0
    if-eqz v2, :cond_1

    #@b
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@e
    move-result-object v5

    #@f
    if-eq v5, p3, :cond_2

    #@11
    .line 1397
    :cond_1
    return-object v4

    #@12
    .line 1391
    .restart local v2    # "meth":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    #@13
    .line 1392
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@16
    move-result-object v0

    #@17
    goto :goto_0

    #@18
    .line 1399
    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    .end local v2    # "meth":Ljava/lang/reflect/Method;
    :cond_2
    const/4 v5, 0x1

    #@19
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@1c
    .line 1400
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    #@1f
    move-result v3

    #@20
    .line 1401
    .local v3, "mods":I
    and-int/lit16 v5, v3, 0x408

    #@22
    if-eqz v5, :cond_3

    #@24
    .line 1402
    return-object v4

    #@25
    .line 1403
    :cond_3
    and-int/lit8 v5, v3, 0x5

    #@27
    if-eqz v5, :cond_4

    #@29
    .line 1404
    return-object v2

    #@2a
    .line 1405
    :cond_4
    and-int/lit8 v5, v3, 0x2

    #@2c
    if-eqz v5, :cond_6

    #@2e
    .line 1406
    if-ne p0, v0, :cond_5

    #@30
    :goto_1
    return-object v2

    #@31
    :cond_5
    move-object v2, v4

    #@32
    goto :goto_1

    #@33
    .line 1408
    :cond_6
    invoke-static {p0, v0}, Ljava/io/ObjectStreamClass;->packageEquals(Ljava/lang/Class;Ljava/lang/Class;)Z

    #@36
    move-result v5

    #@37
    if-eqz v5, :cond_7

    #@39
    :goto_2
    return-object v2

    #@3a
    :cond_7
    move-object v2, v4

    #@3b
    goto :goto_2
.end method

.method private static getMethodSignature([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 1508
    .local p0, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "retType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1509
    .local v1, "sbuf":Ljava/lang/StringBuilder;
    const/16 v2, 0x28

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a
    .line 1510
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@c
    if-ge v0, v2, :cond_0

    #@e
    .line 1511
    aget-object v2, p0, v0

    #@10
    invoke-static {v2}, Ljava/io/ObjectStreamClass;->getClassSignature(Ljava/lang/Class;)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 1510
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1513
    :cond_0
    const/16 v2, 0x29

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f
    .line 1514
    invoke-static {p1}, Ljava/io/ObjectStreamClass;->getClassSignature(Ljava/lang/Class;)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 1515
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    return-object v2
.end method

.method private static getPackageName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
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
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    #@1
    .line 1446
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 1447
    .local v1, "s":Ljava/lang/String;
    const/16 v2, 0x5b

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@a
    move-result v0

    #@b
    .line 1448
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@d
    .line 1449
    add-int/lit8 v2, v0, 0x2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 1451
    :cond_0
    const/16 v2, 0x2e

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@18
    move-result v0

    #@19
    .line 1452
    if-ltz v0, :cond_1

    #@1b
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    :goto_0
    return-object v2

    #@20
    :cond_1
    const-string/jumbo v2, ""

    #@23
    goto :goto_0
.end method

.method private static getPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p3, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    #@1
    .line 1422
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@4
    move-result-object v1

    #@5
    .line 1423
    .local v1, "meth":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    #@6
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@9
    .line 1424
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    #@c
    move-result v2

    #@d
    .line 1425
    .local v2, "mods":I
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v4

    #@11
    if-ne v4, p3, :cond_0

    #@13
    .line 1426
    and-int/lit8 v4, v2, 0x8

    #@15
    if-nez v4, :cond_0

    #@17
    .line 1427
    and-int/lit8 v4, v2, 0x2

    #@19
    if-eqz v4, :cond_0

    #@1b
    .line 1425
    .end local v1    # "meth":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    #@1c
    .restart local v1    # "meth":Ljava/lang/reflect/Method;
    :cond_0
    move-object v1, v3

    #@1d
    .line 1427
    goto :goto_0

    #@1e
    .line 1428
    .end local v1    # "meth":Ljava/lang/reflect/Method;
    .end local v2    # "mods":I
    :catch_0
    move-exception v0

    #@1f
    .line 1429
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    return-object v3
.end method

.method private static getReflector([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)Ljava/io/ObjectStreamClass$FieldReflector;
    .locals 11
    .param p0, "fields"    # [Ljava/io/ObjectStreamField;
    .param p1, "localDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 2114
    if-eqz p1, :cond_6

    #@3
    array-length v8, p0

    #@4
    if-lez v8, :cond_6

    #@6
    .line 2115
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    #@8
    .line 2116
    :goto_0
    invoke-static {}, Ljava/io/ObjectStreamClass$Caches;->-get1()Ljava/lang/ref/ReferenceQueue;

    #@b
    move-result-object v8

    #@c
    sget-object v9, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    #@e
    invoke-static {v8, v9}, Ljava/io/ObjectStreamClass;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    #@11
    .line 2117
    new-instance v3, Ljava/io/ObjectStreamClass$FieldReflectorKey;

    #@13
    .line 2118
    invoke-static {}, Ljava/io/ObjectStreamClass$Caches;->-get1()Ljava/lang/ref/ReferenceQueue;

    #@16
    move-result-object v8

    #@17
    .line 2117
    invoke-direct {v3, v0, p0, v8}, Ljava/io/ObjectStreamClass$FieldReflectorKey;-><init>(Ljava/lang/Class;[Ljava/io/ObjectStreamField;Ljava/lang/ref/ReferenceQueue;)V

    #@1a
    .line 2119
    .local v3, "key":Ljava/io/ObjectStreamClass$FieldReflectorKey;
    sget-object v8, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    #@1c
    invoke-interface {v8, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v6

    #@20
    check-cast v6, Ljava/lang/ref/Reference;

    #@22
    .line 2120
    .local v6, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    const/4 v1, 0x0

    #@23
    .line 2121
    .local v1, "entry":Ljava/lang/Object;
    if-eqz v6, :cond_0

    #@25
    .line 2122
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    .line 2124
    .end local v1    # "entry":Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    #@2a
    .line 2125
    .local v2, "future":Ljava/io/ObjectStreamClass$EntryFuture;
    if-nez v1, :cond_5

    #@2c
    .line 2126
    new-instance v4, Ljava/io/ObjectStreamClass$EntryFuture;

    #@2e
    invoke-direct {v4, v10}, Ljava/io/ObjectStreamClass$EntryFuture;-><init>(Ljava/io/ObjectStreamClass$EntryFuture;)V

    #@31
    .line 2127
    .local v4, "newEntry":Ljava/io/ObjectStreamClass$EntryFuture;
    new-instance v5, Ljava/lang/ref/SoftReference;

    #@33
    invoke-direct {v5, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@36
    .line 2129
    .local v5, "newRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_1
    if-eqz v6, :cond_2

    #@38
    .line 2130
    sget-object v8, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    #@3a
    invoke-interface {v8, v3, v6}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3d
    .line 2132
    :cond_2
    sget-object v8, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    #@3f
    invoke-interface {v8, v3, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    move-result-object v6

    #@43
    .end local v6    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    check-cast v6, Ljava/lang/ref/Reference;

    #@45
    .line 2133
    .restart local v6    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    if-eqz v6, :cond_3

    #@47
    .line 2134
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@4a
    move-result-object v1

    #@4b
    .line 2136
    :cond_3
    if-eqz v6, :cond_4

    #@4d
    if-eqz v1, :cond_1

    #@4f
    .line 2137
    :cond_4
    if-nez v1, :cond_5

    #@51
    .line 2138
    move-object v2, v4

    #@52
    .line 2142
    .end local v2    # "future":Ljava/io/ObjectStreamClass$EntryFuture;
    .end local v4    # "newEntry":Ljava/io/ObjectStreamClass$EntryFuture;
    .end local v5    # "newRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_5
    instance-of v8, v1, Ljava/io/ObjectStreamClass$FieldReflector;

    #@54
    if-eqz v8, :cond_7

    #@56
    .line 2143
    check-cast v1, Ljava/io/ObjectStreamClass$FieldReflector;

    #@58
    return-object v1

    #@59
    .line 2115
    .end local v3    # "key":Ljava/io/ObjectStreamClass$FieldReflectorKey;
    .end local v6    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_6
    const/4 v0, 0x0

    #@5a
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    #@5b
    .line 2144
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "key":Ljava/io/ObjectStreamClass$FieldReflectorKey;
    .restart local v6    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_7
    instance-of v8, v1, Ljava/io/ObjectStreamClass$EntryFuture;

    #@5d
    if-eqz v8, :cond_9

    #@5f
    .line 2145
    check-cast v1, Ljava/io/ObjectStreamClass$EntryFuture;

    #@61
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass$EntryFuture;->get()Ljava/lang/Object;

    #@64
    move-result-object v1

    #@65
    .line 2156
    :cond_8
    :goto_1
    instance-of v8, v1, Ljava/io/ObjectStreamClass$FieldReflector;

    #@67
    if-eqz v8, :cond_a

    #@69
    .line 2157
    check-cast v1, Ljava/io/ObjectStreamClass$FieldReflector;

    #@6b
    return-object v1

    #@6c
    .line 2146
    :cond_9
    if-nez v1, :cond_8

    #@6e
    .line 2148
    :try_start_0
    new-instance v1, Ljava/io/ObjectStreamClass$FieldReflector;

    #@70
    invoke-static {p0, p1}, Ljava/io/ObjectStreamClass;->matchFields([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)[Ljava/io/ObjectStreamField;

    #@73
    move-result-object v8

    #@74
    invoke-direct {v1, v8}, Ljava/io/ObjectStreamClass$FieldReflector;-><init>([Ljava/io/ObjectStreamField;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@77
    .line 2152
    .restart local v1    # "entry":Ljava/lang/Object;
    :goto_2
    invoke-virtual {v2, v1}, Ljava/io/ObjectStreamClass$EntryFuture;->set(Ljava/lang/Object;)Z

    #@7a
    .line 2153
    sget-object v8, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    #@7c
    new-instance v9, Ljava/lang/ref/SoftReference;

    #@7e
    invoke-direct {v9, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@81
    invoke-interface {v8, v3, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@84
    goto :goto_1

    #@85
    .line 2149
    .end local v1    # "entry":Ljava/lang/Object;
    :catch_0
    move-exception v7

    #@86
    .line 2150
    .local v7, "th":Ljava/lang/Throwable;
    move-object v1, v7

    #@87
    .restart local v1    # "entry":Ljava/lang/Object;
    goto :goto_2

    #@88
    .line 2158
    .end local v1    # "entry":Ljava/lang/Object;
    .end local v7    # "th":Ljava/lang/Throwable;
    :cond_a
    instance-of v8, v1, Ljava/io/InvalidClassException;

    #@8a
    if-eqz v8, :cond_b

    #@8c
    .line 2159
    check-cast v1, Ljava/io/InvalidClassException;

    #@8e
    throw v1

    #@8f
    .line 2160
    :cond_b
    instance-of v8, v1, Ljava/lang/RuntimeException;

    #@91
    if-eqz v8, :cond_c

    #@93
    .line 2161
    check-cast v1, Ljava/lang/RuntimeException;

    #@95
    throw v1

    #@96
    .line 2162
    :cond_c
    instance-of v8, v1, Ljava/lang/Error;

    #@98
    if-eqz v8, :cond_d

    #@9a
    .line 2163
    check-cast v1, Ljava/lang/Error;

    #@9c
    throw v1

    #@9d
    .line 2165
    :cond_d
    new-instance v8, Ljava/lang/InternalError;

    #@9f
    new-instance v9, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v10, "unexpected entry: "

    #@a7
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v9

    #@ab
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v9

    #@af
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v9

    #@b3
    invoke-direct {v8, v9}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@b6
    throw v8
.end method

.method private static getSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/io/ObjectStreamField;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    #@0
    .prologue
    .line 1546
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/io/Serializable;

    #@2
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1547
    const-class v1, Ljava/io/Externalizable;

    #@a
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 1556
    :cond_0
    sget-object v0, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    #@12
    .line 1558
    .local v0, "fields":[Ljava/io/ObjectStreamField;
    :goto_0
    return-object v0

    #@13
    .line 1548
    .end local v0    # "fields":[Ljava/io/ObjectStreamField;
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_0

    #@19
    .line 1549
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_0

    #@1f
    .line 1551
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getDeclaredSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;

    #@22
    move-result-object v0

    #@23
    .restart local v0    # "fields":[Ljava/io/ObjectStreamField;
    if-nez v0, :cond_2

    #@25
    .line 1552
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getDefaultSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;

    #@28
    move-result-object v0

    #@29
    .line 1554
    :cond_2
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    #@2c
    goto :goto_0
.end method

.method private static getSerializableConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    #@1
    .line 1350
    move-object v2, p0

    #@2
    .line 1351
    .local v2, "initCl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-class v4, Ljava/io/Serializable;

    #@4
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_1

    #@a
    .line 1352
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@d
    move-result-object v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 1353
    return-object v5

    #@11
    .line 1357
    :cond_1
    const/4 v4, 0x0

    #@12
    :try_start_0
    check-cast v4, [Ljava/lang/Class;

    #@14
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@17
    move-result-object v0

    #@18
    .line 1358
    .local v0, "cons":Ljava/lang/reflect/Constructor;
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    #@1b
    move-result v3

    #@1c
    .line 1359
    .local v3, "mods":I
    and-int/lit8 v4, v3, 0x2

    #@1e
    if-nez v4, :cond_4

    #@20
    .line 1360
    and-int/lit8 v4, v3, 0x5

    #@22
    if-nez v4, :cond_2

    #@24
    .line 1361
    invoke-static {p0, v2}, Ljava/io/ObjectStreamClass;->packageEquals(Ljava/lang/Class;Ljava/lang/Class;)Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_4

    #@2a
    .line 1365
    :cond_2
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    #@2d
    move-result-object v4

    #@2e
    if-eq v4, p0, :cond_3

    #@30
    .line 1366
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v0, v4, p0}, Ljava/lang/reflect/Constructor;->serializationCopy(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@37
    move-result-object v0

    #@38
    .line 1368
    :cond_3
    const/4 v4, 0x1

    #@39
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    .line 1369
    return-object v0

    #@3d
    .line 1363
    :cond_4
    return-object v5

    #@3e
    .line 1370
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;
    .end local v3    # "mods":I
    :catch_0
    move-exception v1

    #@3f
    .line 1371
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    return-object v5
.end method

.method private getVariantFor(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    #@1
    .line 1316
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    #@3
    if-ne v1, p1, :cond_0

    #@5
    .line 1317
    return-object p0

    #@6
    .line 1319
    :cond_0
    new-instance v0, Ljava/io/ObjectStreamClass;

    #@8
    invoke-direct {v0}, Ljava/io/ObjectStreamClass;-><init>()V

    #@b
    .line 1320
    .local v0, "desc":Ljava/io/ObjectStreamClass;
    iget-boolean v1, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 1321
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    #@11
    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ObjectStreamClass;->initProxy(Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V

    #@14
    .line 1325
    :goto_0
    return-object v0

    #@15
    .line 1323
    :cond_1
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    #@17
    invoke-virtual {v0, p0, p1, v2, v1}, Ljava/io/ObjectStreamClass;->initNonProxy(Ljava/io/ObjectStreamClass;Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V

    #@1a
    goto :goto_0
.end method

.method private static native hasStaticInitializer(Ljava/lang/Class;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation
.end method

.method public static lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    #@0
    .prologue
    .line 199
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method static lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;
    .locals 10
    .param p1, "all"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    #@1
    .line 307
    if-nez p1, :cond_0

    #@3
    const-class v7, Ljava/io/Serializable;

    #@5
    invoke-virtual {v7, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@8
    move-result v7

    #@9
    :goto_0
    if-nez v7, :cond_1

    #@b
    .line 308
    return-object v9

    #@c
    .line 307
    :cond_0
    const/4 v7, 0x1

    #@d
    goto :goto_0

    #@e
    .line 310
    :cond_1
    invoke-static {}, Ljava/io/ObjectStreamClass$Caches;->-get0()Ljava/lang/ref/ReferenceQueue;

    #@11
    move-result-object v7

    #@12
    sget-object v8, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    #@14
    invoke-static {v7, v8}, Ljava/io/ObjectStreamClass;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    #@17
    .line 311
    new-instance v2, Ljava/io/ObjectStreamClass$WeakClassKey;

    #@19
    invoke-static {}, Ljava/io/ObjectStreamClass$Caches;->-get0()Ljava/lang/ref/ReferenceQueue;

    #@1c
    move-result-object v7

    #@1d
    invoke-direct {v2, p0, v7}, Ljava/io/ObjectStreamClass$WeakClassKey;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V

    #@20
    .line 312
    .local v2, "key":Ljava/io/ObjectStreamClass$WeakClassKey;
    sget-object v7, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    #@22
    invoke-interface {v7, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v5

    #@26
    check-cast v5, Ljava/lang/ref/Reference;

    #@28
    .line 313
    .local v5, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    const/4 v0, 0x0

    #@29
    .line 314
    .local v0, "entry":Ljava/lang/Object;
    if-eqz v5, :cond_2

    #@2b
    .line 315
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    .line 317
    .end local v0    # "entry":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    #@30
    .line 318
    .local v1, "future":Ljava/io/ObjectStreamClass$EntryFuture;
    if-nez v0, :cond_7

    #@32
    .line 319
    new-instance v3, Ljava/io/ObjectStreamClass$EntryFuture;

    #@34
    invoke-direct {v3, v9}, Ljava/io/ObjectStreamClass$EntryFuture;-><init>(Ljava/io/ObjectStreamClass$EntryFuture;)V

    #@37
    .line 320
    .local v3, "newEntry":Ljava/io/ObjectStreamClass$EntryFuture;
    new-instance v4, Ljava/lang/ref/SoftReference;

    #@39
    invoke-direct {v4, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@3c
    .line 322
    .local v4, "newRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_3
    if-eqz v5, :cond_4

    #@3e
    .line 323
    sget-object v7, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    #@40
    invoke-interface {v7, v2, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@43
    .line 325
    :cond_4
    sget-object v7, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    #@45
    invoke-interface {v7, v2, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    move-result-object v5

    #@49
    .end local v5    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    check-cast v5, Ljava/lang/ref/Reference;

    #@4b
    .line 326
    .restart local v5    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    if-eqz v5, :cond_5

    #@4d
    .line 327
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@50
    move-result-object v0

    #@51
    .line 329
    :cond_5
    if-eqz v5, :cond_6

    #@53
    if-eqz v0, :cond_3

    #@55
    .line 330
    :cond_6
    if-nez v0, :cond_7

    #@57
    .line 331
    move-object v1, v3

    #@58
    .line 335
    .end local v1    # "future":Ljava/io/ObjectStreamClass$EntryFuture;
    .end local v3    # "newEntry":Ljava/io/ObjectStreamClass$EntryFuture;
    .end local v4    # "newRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_7
    instance-of v7, v0, Ljava/io/ObjectStreamClass;

    #@5a
    if-eqz v7, :cond_8

    #@5c
    .line 336
    check-cast v0, Ljava/io/ObjectStreamClass;

    #@5e
    return-object v0

    #@5f
    .line 338
    :cond_8
    instance-of v7, v0, Ljava/io/ObjectStreamClass$EntryFuture;

    #@61
    if-eqz v7, :cond_9

    #@63
    move-object v1, v0

    #@64
    .line 339
    check-cast v1, Ljava/io/ObjectStreamClass$EntryFuture;

    #@66
    .line 340
    .local v1, "future":Ljava/io/ObjectStreamClass$EntryFuture;
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass$EntryFuture;->getOwner()Ljava/lang/Thread;

    #@69
    move-result-object v7

    #@6a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@6d
    move-result-object v8

    #@6e
    if-ne v7, v8, :cond_b

    #@70
    .line 347
    const/4 v0, 0x0

    #@71
    .line 352
    .end local v1    # "future":Ljava/io/ObjectStreamClass$EntryFuture;
    :cond_9
    :goto_1
    if-nez v0, :cond_a

    #@73
    .line 354
    :try_start_0
    new-instance v0, Ljava/io/ObjectStreamClass;

    #@75
    invoke-direct {v0, p0}, Ljava/io/ObjectStreamClass;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@78
    .line 358
    .restart local v0    # "entry":Ljava/lang/Object;
    :goto_2
    invoke-virtual {v1, v0}, Ljava/io/ObjectStreamClass$EntryFuture;->set(Ljava/lang/Object;)Z

    #@7b
    move-result v7

    #@7c
    if-eqz v7, :cond_c

    #@7e
    .line 359
    sget-object v7, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    #@80
    new-instance v8, Ljava/lang/ref/SoftReference;

    #@82
    invoke-direct {v8, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@85
    invoke-interface {v7, v2, v8}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@88
    .line 366
    .end local v0    # "entry":Ljava/lang/Object;
    :cond_a
    :goto_3
    instance-of v7, v0, Ljava/io/ObjectStreamClass;

    #@8a
    if-eqz v7, :cond_d

    #@8c
    .line 367
    check-cast v0, Ljava/io/ObjectStreamClass;

    #@8e
    return-object v0

    #@8f
    .line 349
    .restart local v1    # "future":Ljava/io/ObjectStreamClass$EntryFuture;
    :cond_b
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass$EntryFuture;->get()Ljava/lang/Object;

    #@92
    move-result-object v0

    #@93
    .restart local v0    # "entry":Ljava/lang/Object;
    goto :goto_1

    #@94
    .line 355
    .end local v0    # "entry":Ljava/lang/Object;
    .end local v1    # "future":Ljava/io/ObjectStreamClass$EntryFuture;
    :catch_0
    move-exception v6

    #@95
    .line 356
    .local v6, "th":Ljava/lang/Throwable;
    move-object v0, v6

    #@96
    .restart local v0    # "entry":Ljava/lang/Object;
    goto :goto_2

    #@97
    .line 362
    .end local v6    # "th":Ljava/lang/Throwable;
    :cond_c
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass$EntryFuture;->get()Ljava/lang/Object;

    #@9a
    move-result-object v0

    #@9b
    goto :goto_3

    #@9c
    .line 368
    .end local v0    # "entry":Ljava/lang/Object;
    :cond_d
    instance-of v7, v0, Ljava/lang/RuntimeException;

    #@9e
    if-eqz v7, :cond_e

    #@a0
    .line 369
    check-cast v0, Ljava/lang/RuntimeException;

    #@a2
    throw v0

    #@a3
    .line 370
    :cond_e
    instance-of v7, v0, Ljava/lang/Error;

    #@a5
    if-eqz v7, :cond_f

    #@a7
    .line 371
    check-cast v0, Ljava/lang/Error;

    #@a9
    throw v0

    #@aa
    .line 373
    :cond_f
    new-instance v7, Ljava/lang/InternalError;

    #@ac
    new-instance v8, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string/jumbo v9, "unexpected entry: "

    #@b4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v8

    #@b8
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v8

    #@bc
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v8

    #@c0
    invoke-direct {v7, v8}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@c3
    throw v7
.end method

.method public static lookupAny(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    #@0
    .prologue
    .line 211
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static matchFields([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)[Ljava/io/ObjectStreamField;
    .locals 11
    .param p0, "fields"    # [Ljava/io/ObjectStreamField;
    .param p1, "localDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 2230
    if-eqz p1, :cond_1

    #@3
    .line 2231
    iget-object v4, p1, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@5
    .line 2244
    .local v4, "localFields":[Ljava/io/ObjectStreamField;
    :goto_0
    array-length v7, p0

    #@6
    new-array v6, v7, [Ljava/io/ObjectStreamField;

    #@8
    .line 2245
    .local v6, "matches":[Ljava/io/ObjectStreamField;
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_1
    array-length v7, p0

    #@a
    if-ge v1, v7, :cond_5

    #@c
    .line 2246
    aget-object v0, p0, v1

    #@e
    .local v0, "f":Ljava/io/ObjectStreamField;
    const/4 v5, 0x0

    #@f
    .line 2247
    .local v5, "m":Ljava/io/ObjectStreamField;
    const/4 v2, 0x0

    #@10
    .end local v5    # "m":Ljava/io/ObjectStreamField;
    .local v2, "j":I
    :goto_2
    array-length v7, v4

    #@11
    if-ge v2, v7, :cond_3

    #@13
    .line 2248
    aget-object v3, v4, v2

    #@15
    .line 2250
    .local v3, "lf":Ljava/io/ObjectStreamField;
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    #@18
    move-result-object v7

    #@19
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    #@1c
    move-result-object v8

    #@1d
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v7

    #@21
    if-eqz v7, :cond_0

    #@23
    .line 2251
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getSignature()Ljava/lang/String;

    #@26
    move-result-object v7

    #@27
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getSignature()Ljava/lang/String;

    #@2a
    move-result-object v8

    #@2b
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v7

    #@2f
    .line 2250
    if-eqz v7, :cond_0

    #@31
    .line 2252
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    #@34
    move-result-object v7

    #@35
    if-eqz v7, :cond_2

    #@37
    .line 2253
    new-instance v5, Ljava/io/ObjectStreamField;

    #@39
    .line 2254
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->isUnshared()Z

    #@40
    move-result v8

    #@41
    .line 2253
    invoke-direct {v5, v7, v8, v10}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/reflect/Field;ZZ)V

    #@44
    .line 2247
    :cond_0
    :goto_3
    add-int/lit8 v2, v2, 0x1

    #@46
    goto :goto_2

    #@47
    .line 2231
    .end local v0    # "f":Ljava/io/ObjectStreamField;
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "lf":Ljava/io/ObjectStreamField;
    .end local v4    # "localFields":[Ljava/io/ObjectStreamField;
    .end local v6    # "matches":[Ljava/io/ObjectStreamField;
    :cond_1
    sget-object v4, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    #@49
    .restart local v4    # "localFields":[Ljava/io/ObjectStreamField;
    goto :goto_0

    #@4a
    .line 2256
    .restart local v0    # "f":Ljava/io/ObjectStreamField;
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v3    # "lf":Ljava/io/ObjectStreamField;
    .restart local v6    # "matches":[Ljava/io/ObjectStreamField;
    :cond_2
    new-instance v5, Ljava/io/ObjectStreamField;

    #@4c
    .line 2257
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    #@4f
    move-result-object v7

    #@50
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getSignature()Ljava/lang/String;

    #@53
    move-result-object v8

    #@54
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->isUnshared()Z

    #@57
    move-result v9

    #@58
    .line 2256
    invoke-direct {v5, v7, v8, v9}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@5b
    .local v5, "m":Ljava/io/ObjectStreamField;
    goto :goto_3

    #@5c
    .line 2261
    .end local v3    # "lf":Ljava/io/ObjectStreamField;
    .end local v5    # "m":Ljava/io/ObjectStreamField;
    :cond_3
    if-nez v5, :cond_4

    #@5e
    .line 2262
    new-instance v5, Ljava/io/ObjectStreamField;

    #@60
    .line 2263
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    #@63
    move-result-object v7

    #@64
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getSignature()Ljava/lang/String;

    #@67
    move-result-object v8

    #@68
    .line 2262
    invoke-direct {v5, v7, v8, v10}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@6b
    .line 2265
    :cond_4
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getOffset()I

    #@6e
    move-result v7

    #@6f
    invoke-virtual {v5, v7}, Ljava/io/ObjectStreamField;->setOffset(I)V

    #@72
    .line 2266
    aput-object v5, v6, v1

    #@74
    .line 2245
    add-int/lit8 v1, v1, 0x1

    #@76
    goto :goto_1

    #@77
    .line 2268
    .end local v0    # "f":Ljava/io/ObjectStreamField;
    .end local v2    # "j":I
    :cond_5
    return-object v6
.end method

.method private static newInstance(Ljava/lang/Class;J)Ljava/lang/Object;
    .locals 1
    .param p1, "constructorId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;J)",
            "Ljava/lang/Object;"
        }
    .end annotation

    #@0
    .prologue
    .line 2292
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v0, "WARNING: ObjectStreamClass.newInstance(Class<?>, long) is private API andwill be removed in a future Android release."

    #@3
    invoke-static {v0}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@6
    .line 2294
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method private static packageEquals(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1438
    .local p0, "cl1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "cl2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 1439
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-static {p1}, Ljava/io/ObjectStreamClass;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    .line 1438
    :goto_0
    return v0

    #@17
    :cond_0
    const/4 v0, 0x0

    #@18
    goto :goto_0
.end method

.method static processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<+",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2306
    .local p0, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Class<*>;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<+Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;*>;"
    :goto_0
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    #@3
    move-result-object v0

    #@4
    .local v0, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Ljava/lang/Class<*>;>;"
    if-eqz v0, :cond_0

    #@6
    .line 2307
    invoke-interface {p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    goto :goto_0

    #@a
    .line 2303
    :cond_0
    return-void
.end method

.method private static throwMiscException(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "th"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1524
    instance-of v1, p0, Ljava/lang/RuntimeException;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1525
    check-cast p0, Ljava/lang/RuntimeException;

    #@6
    .end local p0    # "th":Ljava/lang/Throwable;
    throw p0

    #@7
    .line 1526
    .restart local p0    # "th":Ljava/lang/Throwable;
    :cond_0
    instance-of v1, p0, Ljava/lang/Error;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 1527
    check-cast p0, Ljava/lang/Error;

    #@d
    .end local p0    # "th":Ljava/lang/Throwable;
    throw p0

    #@e
    .line 1529
    .restart local p0    # "th":Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@10
    const-string/jumbo v1, "unexpected exception type"

    #@13
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@16
    .line 1530
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@19
    .line 1531
    throw v0
.end method


# virtual methods
.method checkDefaultSerialize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    #@0
    .prologue
    .line 780
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->defaultSerializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 781
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->defaultSerializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    #@6
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass$ExceptionInfo;->newInvalidClassException()Ljava/io/InvalidClassException;

    #@9
    move-result-object v0

    #@a
    throw v0

    #@b
    .line 779
    :cond_0
    return-void
.end method

.method checkDeserialize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    #@0
    .prologue
    .line 756
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 757
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    #@6
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass$ExceptionInfo;->newInvalidClassException()Ljava/io/InvalidClassException;

    #@9
    move-result-object v0

    #@a
    throw v0

    #@b
    .line 755
    :cond_0
    return-void
.end method

.method checkSerialize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    #@0
    .prologue
    .line 767
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->serializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 768
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->serializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    #@6
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass$ExceptionInfo;->newInvalidClassException()Ljava/io/InvalidClassException;

    #@9
    move-result-object v0

    #@a
    throw v0

    #@b
    .line 766
    :cond_0
    return-void
.end method

.method public forClass()Ljava/lang/Class;
    .locals 2
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
    const/4 v1, 0x0

    #@1
    .line 255
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 256
    return-object v1

    #@6
    .line 258
    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 259
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@f
    move-result-object v0

    #@10
    .line 260
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    #@12
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@15
    move-result-object v1

    #@16
    .line 259
    invoke-static {v0, v1}, Lsun/reflect/misc/ReflectUtil;->needsPackageAccessCheck(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 261
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    #@1e
    invoke-static {v0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    #@21
    .line 264
    :cond_1
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    #@23
    return-object v0
.end method

.method getClassDataLayout()[Ljava/io/ObjectStreamClass$ClassDataSlot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    #@0
    .prologue
    .line 1139
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->dataLayout:[Ljava/io/ObjectStreamClass$ClassDataSlot;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1140
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->getClassDataLayout0()[Ljava/io/ObjectStreamClass$ClassDataSlot;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->dataLayout:[Ljava/io/ObjectStreamClass$ClassDataSlot;

    #@a
    .line 1142
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->dataLayout:[Ljava/io/ObjectStreamClass$ClassDataSlot;

    #@c
    return-object v0
.end method

.method public getField(Ljava/lang/String;)Ljava/io/ObjectStreamField;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 287
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamField;"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    #@1
    .line 821
    const/4 v2, 0x0

    #@2
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@4
    array-length v3, v3

    #@5
    if-ge v2, v3, :cond_3

    #@7
    .line 822
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@9
    aget-object v0, v3, v2

    #@b
    .line 823
    .local v0, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_2

    #@15
    .line 824
    if-eqz p2, :cond_1

    #@17
    .line 825
    const-class v3, Ljava/lang/Object;

    #@19
    if-ne p2, v3, :cond_0

    #@1b
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_1

    #@21
    .line 829
    :cond_0
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    #@24
    move-result-object v1

    #@25
    .line 830
    .local v1, "ftype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_2

    #@27
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_2

    #@2d
    .line 831
    return-object v0

    #@2e
    .line 827
    .end local v1    # "ftype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-object v0

    #@2f
    .line 821
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@31
    goto :goto_0

    #@32
    .line 835
    .end local v0    # "f":Ljava/io/ObjectStreamField;
    :cond_3
    return-object v4
.end method

.method public getFields()[Ljava/io/ObjectStreamField;
    .locals 1

    #@0
    .prologue
    .line 276
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method getFields(Z)[Ljava/io/ObjectStreamField;
    .locals 1
    .param p1, "copy"    # Z

    #@0
    .prologue
    .line 811
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@4
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, [Ljava/io/ObjectStreamField;

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@d
    goto :goto_0
.end method

.method getLocalDesc()Ljava/io/ObjectStreamClass;
    .locals 1

    #@0
    .prologue
    .line 801
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 222
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getNumObjFields()I
    .locals 1

    #@0
    .prologue
    .line 1212
    iget v0, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    #@2
    return v0
.end method

.method getObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "vals"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1241
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectStreamClass$FieldReflector;->getObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@5
    .line 1240
    return-void
.end method

.method getPrimDataSize()I
    .locals 1

    #@0
    .prologue
    .line 1204
    iget v0, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    #@2
    return v0
.end method

.method getPrimFieldValues(Ljava/lang/Object;[B)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "buf"    # [B

    #@0
    .prologue
    .line 1222
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectStreamClass$FieldReflector;->getPrimFieldValues(Ljava/lang/Object;[B)V

    #@5
    .line 1221
    return-void
.end method

.method getResolveException()Ljava/lang/ClassNotFoundException;
    .locals 1

    #@0
    .prologue
    .line 747
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->resolveEx:Ljava/lang/ClassNotFoundException;

    #@2
    return-object v0
.end method

.method public getSerialVersionUID()J
    .locals 2

    #@0
    .prologue
    .line 235
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 237
    new-instance v0, Ljava/io/ObjectStreamClass$1;

    #@6
    invoke-direct {v0, p0}, Ljava/io/ObjectStreamClass$1;-><init>(Ljava/io/ObjectStreamClass;)V

    #@9
    .line 236
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/lang/Long;

    #@f
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    #@11
    .line 244
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    #@13
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@16
    move-result-wide v0

    #@17
    return-wide v0
.end method

.method getSuperDesc()Ljava/io/ObjectStreamClass;
    .locals 1

    #@0
    .prologue
    .line 791
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    #@2
    return-object v0
.end method

.method hasBlockExternalData()Z
    .locals 1

    #@0
    .prologue
    .line 875
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    #@2
    return v0
.end method

.method hasReadObjectMethod()Z
    .locals 1

    #@0
    .prologue
    .line 913
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method hasReadObjectNoDataMethod()Z
    .locals 1

    #@0
    .prologue
    .line 922
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method hasReadResolveMethod()Z
    .locals 1

    #@0
    .prologue
    .line 938
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method hasWriteObjectData()Z
    .locals 1

    #@0
    .prologue
    .line 884
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    #@2
    return v0
.end method

.method hasWriteObjectMethod()Z
    .locals 1

    #@0
    .prologue
    .line 904
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method hasWriteReplaceMethod()Z
    .locals 1

    #@0
    .prologue
    .line 930
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method initNonProxy(Ljava/io/ObjectStreamClass;Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V
    .locals 6
    .param p1, "model"    # Ljava/io/ObjectStreamClass;
    .param p3, "resolveEx"    # Ljava/lang/ClassNotFoundException;
    .param p4, "superDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/ClassNotFoundException;",
            "Ljava/io/ObjectStreamClass;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    #@0
    .prologue
    .line 575
    .local p2, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p2, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    #@2
    .line 576
    iput-object p3, p0, Ljava/io/ObjectStreamClass;->resolveEx:Ljava/lang/ClassNotFoundException;

    #@4
    .line 577
    iput-object p4, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    #@6
    .line 578
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@8
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@a
    .line 579
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    #@d
    move-result-wide v0

    #@e
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    #@14
    .line 580
    const/4 v0, 0x0

    #@15
    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    #@17
    .line 581
    iget-boolean v0, p1, Ljava/io/ObjectStreamClass;->isEnum:Z

    #@19
    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    #@1b
    .line 582
    iget-boolean v0, p1, Ljava/io/ObjectStreamClass;->serializable:Z

    #@1d
    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    #@1f
    .line 583
    iget-boolean v0, p1, Ljava/io/ObjectStreamClass;->externalizable:Z

    #@21
    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    #@23
    .line 584
    iget-boolean v0, p1, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    #@25
    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    #@27
    .line 585
    iget-boolean v0, p1, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    #@29
    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    #@2b
    .line 586
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@2d
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@2f
    .line 587
    iget v0, p1, Ljava/io/ObjectStreamClass;->primDataSize:I

    #@31
    iput v0, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    #@33
    .line 588
    iget v0, p1, Ljava/io/ObjectStreamClass;->numObjFields:I

    #@35
    iput v0, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    #@37
    .line 590
    if-eqz p2, :cond_9

    #@39
    .line 591
    const/4 v0, 0x1

    #@3a
    invoke-static {p2, v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    #@3d
    move-result-object v0

    #@3e
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@40
    .line 592
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@42
    iget-boolean v0, v0, Ljava/io/ObjectStreamClass;->isProxy:Z

    #@44
    if-eqz v0, :cond_0

    #@46
    .line 593
    new-instance v0, Ljava/io/InvalidClassException;

    #@48
    .line 594
    const-string/jumbo v1, "cannot bind non-proxy descriptor to a proxy class"

    #@4b
    .line 593
    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v0

    #@4f
    .line 596
    :cond_0
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    #@51
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@53
    iget-boolean v1, v1, Ljava/io/ObjectStreamClass;->isEnum:Z

    #@55
    if-eq v0, v1, :cond_2

    #@57
    .line 597
    new-instance v1, Ljava/io/InvalidClassException;

    #@59
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    #@5b
    if-eqz v0, :cond_1

    #@5d
    .line 598
    const-string/jumbo v0, "cannot bind enum descriptor to a non-enum class"

    #@60
    .line 597
    :goto_0
    invoke-direct {v1, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    #@63
    throw v1

    #@64
    .line 599
    :cond_1
    const-string/jumbo v0, "cannot bind non-enum descriptor to an enum class"

    #@67
    goto :goto_0

    #@68
    .line 602
    :cond_2
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    #@6a
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@6c
    iget-boolean v1, v1, Ljava/io/ObjectStreamClass;->serializable:Z

    #@6e
    if-ne v0, v1, :cond_3

    #@70
    .line 603
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    #@73
    move-result v0

    #@74
    if-eqz v0, :cond_4

    #@76
    .line 613
    :cond_3
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@78
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@7a
    iget-object v1, v1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@7c
    invoke-static {v0, v1}, Ljava/io/ObjectStreamClass;->classNamesEqual(Ljava/lang/String;Ljava/lang/String;)Z

    #@7f
    move-result v0

    #@80
    if-nez v0, :cond_5

    #@82
    .line 614
    new-instance v0, Ljava/io/InvalidClassException;

    #@84
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@86
    iget-object v1, v1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@88
    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v3, "local class name incompatible with stream class name \""

    #@90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v2

    #@94
    .line 616
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@96
    .line 615
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v2

    #@9a
    .line 616
    const-string/jumbo v3, "\""

    #@9d
    .line 615
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v2

    #@a1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v2

    #@a5
    .line 614
    invoke-direct {v0, v1, v2}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@a8
    throw v0

    #@a9
    .line 604
    :cond_4
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    #@ab
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@ae
    move-result-wide v0

    #@af
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@b1
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    #@b4
    move-result-wide v2

    #@b5
    cmp-long v0, v0, v2

    #@b7
    if-eqz v0, :cond_3

    #@b9
    .line 606
    new-instance v0, Ljava/io/InvalidClassException;

    #@bb
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@bd
    iget-object v1, v1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@bf
    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string/jumbo v3, "local class incompatible: stream classdesc serialVersionUID = "

    #@c7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v2

    #@cb
    .line 608
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    #@cd
    .line 607
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v2

    #@d1
    .line 609
    const-string/jumbo v3, ", local class serialVersionUID = "

    #@d4
    .line 607
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v2

    #@d8
    .line 610
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@da
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    #@dd
    move-result-wide v4

    #@de
    .line 607
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v2

    #@e2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v2

    #@e6
    .line 606
    invoke-direct {v0, v1, v2}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@e9
    throw v0

    #@ea
    .line 619
    :cond_5
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    #@ec
    if-nez v0, :cond_8

    #@ee
    .line 620
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    #@f0
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@f2
    iget-boolean v1, v1, Ljava/io/ObjectStreamClass;->serializable:Z

    #@f4
    if-ne v0, v1, :cond_6

    #@f6
    .line 621
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    #@f8
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@fa
    iget-boolean v1, v1, Ljava/io/ObjectStreamClass;->externalizable:Z

    #@fc
    if-eq v0, v1, :cond_6

    #@fe
    .line 623
    new-instance v0, Ljava/io/InvalidClassException;

    #@100
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@102
    iget-object v1, v1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@104
    .line 624
    const-string/jumbo v2, "Serializable incompatible with Externalizable"

    #@107
    .line 623
    invoke-direct {v0, v1, v2}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@10a
    throw v0

    #@10b
    .line 627
    :cond_6
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    #@10d
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@10f
    iget-boolean v1, v1, Ljava/io/ObjectStreamClass;->serializable:Z

    #@111
    if-ne v0, v1, :cond_7

    #@113
    .line 628
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    #@115
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@117
    iget-boolean v1, v1, Ljava/io/ObjectStreamClass;->externalizable:Z

    #@119
    if-eq v0, v1, :cond_a

    #@11b
    .line 631
    :cond_7
    new-instance v0, Ljava/io/ObjectStreamClass$ExceptionInfo;

    #@11d
    .line 632
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@11f
    iget-object v1, v1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@121
    const-string/jumbo v2, "class invalid for deserialization"

    #@124
    .line 631
    invoke-direct {v0, v1, v2}, Ljava/io/ObjectStreamClass$ExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@127
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    #@129
    .line 636
    :cond_8
    :goto_1
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@12b
    iget-object v0, v0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    #@12d
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    #@12f
    .line 637
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@131
    iget-object v0, v0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    #@133
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    #@135
    .line 638
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@137
    iget-object v0, v0, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    #@139
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    #@13b
    .line 639
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@13d
    iget-object v0, v0, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    #@13f
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    #@141
    .line 640
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@143
    iget-object v0, v0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    #@145
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    #@147
    .line 641
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@149
    iget-object v0, v0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    #@14b
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    #@14d
    .line 642
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    #@14f
    if-nez v0, :cond_9

    #@151
    .line 643
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@153
    iget-object v0, v0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    #@155
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    #@157
    .line 646
    :cond_9
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@159
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@15b
    invoke-static {v0, v1}, Ljava/io/ObjectStreamClass;->getReflector([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)Ljava/io/ObjectStreamClass$FieldReflector;

    #@15e
    move-result-object v0

    #@15f
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    #@161
    .line 648
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    #@163
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass$FieldReflector;->getFields()[Ljava/io/ObjectStreamField;

    #@166
    move-result-object v0

    #@167
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@169
    .line 573
    return-void

    #@16a
    .line 629
    :cond_a
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    #@16c
    if-nez v0, :cond_8

    #@16e
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    #@170
    if-eqz v0, :cond_7

    #@172
    goto :goto_1
.end method

.method initProxy(Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V
    .locals 3
    .param p2, "resolveEx"    # Ljava/lang/ClassNotFoundException;
    .param p3, "superDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/ClassNotFoundException;",
            "Ljava/io/ObjectStreamClass;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    #@1
    .line 542
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    #@3
    .line 543
    iput-object p2, p0, Ljava/io/ObjectStreamClass;->resolveEx:Ljava/lang/ClassNotFoundException;

    #@5
    .line 544
    iput-object p3, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    #@7
    .line 545
    iput-boolean v2, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    #@9
    .line 546
    iput-boolean v2, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    #@b
    .line 547
    const-wide/16 v0, 0x0

    #@d
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    #@13
    .line 548
    sget-object v0, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    #@15
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@17
    .line 550
    if-eqz p1, :cond_1

    #@19
    .line 551
    invoke-static {p1, v2}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@1f
    .line 552
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@21
    iget-boolean v0, v0, Ljava/io/ObjectStreamClass;->isProxy:Z

    #@23
    if-nez v0, :cond_0

    #@25
    .line 553
    new-instance v0, Ljava/io/InvalidClassException;

    #@27
    .line 554
    const-string/jumbo v1, "cannot bind proxy descriptor to a non-proxy class"

    #@2a
    .line 553
    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 556
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@30
    iget-object v0, v0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@32
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@34
    .line 557
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@36
    iget-boolean v0, v0, Ljava/io/ObjectStreamClass;->externalizable:Z

    #@38
    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    #@3a
    .line 558
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@3c
    iget-object v0, v0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    #@3e
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    #@40
    .line 559
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@42
    iget-object v0, v0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    #@44
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    #@46
    .line 560
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@48
    iget-object v0, v0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    #@4a
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    #@4c
    .line 561
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@4e
    iget-object v0, v0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    #@50
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    #@52
    .line 563
    :cond_1
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@54
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    #@56
    invoke-static {v0, v1}, Ljava/io/ObjectStreamClass;->getReflector([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)Ljava/io/ObjectStreamClass$FieldReflector;

    #@59
    move-result-object v0

    #@5a
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    #@5c
    .line 540
    return-void
.end method

.method invokeReadObject(Ljava/lang/Object;Ljava/io/ObjectInputStream;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 1004
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    #@2
    if-eqz v3, :cond_2

    #@4
    .line 1006
    :try_start_0
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    #@6
    const/4 v4, 0x1

    #@7
    new-array v4, v4, [Ljava/lang/Object;

    #@9
    const/4 v5, 0x0

    #@a
    aput-object p2, v4, v5

    #@c
    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 1002
    :goto_0
    return-void

    #@10
    .line 1016
    :catch_0
    move-exception v0

    #@11
    .line 1018
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/InternalError;

    #@13
    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    #@16
    throw v3

    #@17
    .line 1007
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    #@18
    .line 1008
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@1b
    move-result-object v2

    #@1c
    .line 1009
    .local v2, "th":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/lang/ClassNotFoundException;

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 1010
    check-cast v2, Ljava/lang/ClassNotFoundException;

    #@22
    .end local v2    # "th":Ljava/lang/Throwable;
    throw v2

    #@23
    .line 1011
    .restart local v2    # "th":Ljava/lang/Throwable;
    :cond_0
    instance-of v3, v2, Ljava/io/IOException;

    #@25
    if-eqz v3, :cond_1

    #@27
    .line 1012
    check-cast v2, Ljava/io/IOException;

    #@29
    .end local v2    # "th":Ljava/lang/Throwable;
    throw v2

    #@2a
    .line 1014
    .restart local v2    # "th":Ljava/lang/Throwable;
    :cond_1
    invoke-static {v2}, Ljava/io/ObjectStreamClass;->throwMiscException(Ljava/lang/Throwable;)V

    #@2d
    goto :goto_0

    #@2e
    .line 1021
    .end local v1    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "th":Ljava/lang/Throwable;
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@30
    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@33
    throw v3
.end method

.method invokeReadObjectNoData(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 1034
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    #@2
    if-eqz v3, :cond_1

    #@4
    .line 1036
    :try_start_0
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    #@6
    const/4 v3, 0x0

    #@7
    check-cast v3, [Ljava/lang/Object;

    #@9
    invoke-virtual {v4, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 1032
    :goto_0
    return-void

    #@d
    .line 1044
    :catch_0
    move-exception v0

    #@e
    .line 1046
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/InternalError;

    #@10
    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    #@13
    throw v3

    #@14
    .line 1037
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    #@15
    .line 1038
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@18
    move-result-object v2

    #@19
    .line 1039
    .local v2, "th":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/io/ObjectStreamException;

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 1040
    check-cast v2, Ljava/io/ObjectStreamException;

    #@1f
    .end local v2    # "th":Ljava/lang/Throwable;
    throw v2

    #@20
    .line 1042
    .restart local v2    # "th":Ljava/lang/Throwable;
    :cond_0
    invoke-static {v2}, Ljava/io/ObjectStreamClass;->throwMiscException(Ljava/lang/Throwable;)V

    #@23
    goto :goto_0

    #@24
    .line 1049
    .end local v1    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "th":Ljava/lang/Throwable;
    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@26
    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@29
    throw v3
.end method

.method invokeReadResolve(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 1091
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    #@2
    if-eqz v3, :cond_1

    #@4
    .line 1093
    :try_start_0
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    #@6
    const/4 v3, 0x0

    #@7
    check-cast v3, [Ljava/lang/Object;

    #@9
    invoke-virtual {v4, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v3

    #@d
    return-object v3

    #@e
    .line 1102
    :catch_0
    move-exception v0

    #@f
    .line 1104
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/InternalError;

    #@11
    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    #@14
    throw v3

    #@15
    .line 1094
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    #@16
    .line 1095
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@19
    move-result-object v2

    #@1a
    .line 1096
    .local v2, "th":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/io/ObjectStreamException;

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 1097
    check-cast v2, Ljava/io/ObjectStreamException;

    #@20
    .end local v2    # "th":Ljava/lang/Throwable;
    throw v2

    #@21
    .line 1099
    .restart local v2    # "th":Ljava/lang/Throwable;
    :cond_0
    invoke-static {v2}, Ljava/io/ObjectStreamClass;->throwMiscException(Ljava/lang/Throwable;)V

    #@24
    .line 1100
    new-instance v3, Ljava/lang/InternalError;

    #@26
    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    #@29
    throw v3

    #@2a
    .line 1107
    .end local v1    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "th":Ljava/lang/Throwable;
    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@2c
    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@2f
    throw v3
.end method

.method invokeWriteObject(Ljava/lang/Object;Ljava/io/ObjectOutputStream;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 975
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    #@2
    if-eqz v3, :cond_1

    #@4
    .line 977
    :try_start_0
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    #@6
    const/4 v4, 0x1

    #@7
    new-array v4, v4, [Ljava/lang/Object;

    #@9
    const/4 v5, 0x0

    #@a
    aput-object p2, v4, v5

    #@c
    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 973
    :goto_0
    return-void

    #@10
    .line 985
    :catch_0
    move-exception v0

    #@11
    .line 987
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/InternalError;

    #@13
    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    #@16
    throw v3

    #@17
    .line 978
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    #@18
    .line 979
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@1b
    move-result-object v2

    #@1c
    .line 980
    .local v2, "th":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/io/IOException;

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 981
    check-cast v2, Ljava/io/IOException;

    #@22
    .end local v2    # "th":Ljava/lang/Throwable;
    throw v2

    #@23
    .line 983
    .restart local v2    # "th":Ljava/lang/Throwable;
    :cond_0
    invoke-static {v2}, Ljava/io/ObjectStreamClass;->throwMiscException(Ljava/lang/Throwable;)V

    #@26
    goto :goto_0

    #@27
    .line 990
    .end local v1    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "th":Ljava/lang/Throwable;
    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@29
    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@2c
    throw v3
.end method

.method invokeWriteReplace(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 1062
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    #@2
    if-eqz v3, :cond_1

    #@4
    .line 1064
    :try_start_0
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    #@6
    const/4 v3, 0x0

    #@7
    check-cast v3, [Ljava/lang/Object;

    #@9
    invoke-virtual {v4, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v3

    #@d
    return-object v3

    #@e
    .line 1073
    :catch_0
    move-exception v0

    #@f
    .line 1075
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/InternalError;

    #@11
    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    #@14
    throw v3

    #@15
    .line 1065
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    #@16
    .line 1066
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@19
    move-result-object v2

    #@1a
    .line 1067
    .local v2, "th":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/io/ObjectStreamException;

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 1068
    check-cast v2, Ljava/io/ObjectStreamException;

    #@20
    .end local v2    # "th":Ljava/lang/Throwable;
    throw v2

    #@21
    .line 1070
    .restart local v2    # "th":Ljava/lang/Throwable;
    :cond_0
    invoke-static {v2}, Ljava/io/ObjectStreamClass;->throwMiscException(Ljava/lang/Throwable;)V

    #@24
    .line 1071
    new-instance v3, Ljava/lang/InternalError;

    #@26
    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    #@29
    throw v3

    #@2a
    .line 1078
    .end local v1    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "th":Ljava/lang/Throwable;
    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@2c
    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@2f
    throw v3
.end method

.method isEnum()Z
    .locals 1

    #@0
    .prologue
    .line 851
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    #@2
    return v0
.end method

.method isExternalizable()Z
    .locals 1

    #@0
    .prologue
    .line 859
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    #@2
    return v0
.end method

.method isInstantiable()Z
    .locals 1

    #@0
    .prologue
    .line 895
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method isProxy()Z
    .locals 1

    #@0
    .prologue
    .line 843
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    #@2
    return v0
.end method

.method isSerializable()Z
    .locals 1

    #@0
    .prologue
    .line 867
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    #@2
    return v0
.end method

.method newInstance()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 954
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 956
    :try_start_0
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    #@6
    const/4 v2, 0x0

    #@7
    new-array v2, v2, [Ljava/lang/Object;

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 957
    :catch_0
    move-exception v0

    #@f
    .line 959
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/InternalError;

    #@11
    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    #@14
    throw v1

    #@15
    .line 962
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@17
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@1a
    throw v1
.end method

.method readNonProxy(Ljava/io/ObjectInputStream;)V
    .locals 12
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 660
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    #@3
    move-result-object v8

    #@4
    iput-object v8, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@6
    .line 661
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    #@9
    move-result-wide v8

    #@a
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d
    move-result-object v8

    #@e
    iput-object v8, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    #@10
    .line 662
    const/4 v8, 0x0

    #@11
    iput-boolean v8, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    #@13
    .line 664
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    #@16
    move-result v1

    #@17
    .line 666
    .local v1, "flags":B
    and-int/lit8 v8, v1, 0x1

    #@19
    if-eqz v8, :cond_0

    #@1b
    const/4 v8, 0x1

    #@1c
    .line 665
    :goto_0
    iput-boolean v8, p0, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    #@1e
    .line 668
    and-int/lit8 v8, v1, 0x8

    #@20
    if-eqz v8, :cond_1

    #@22
    const/4 v8, 0x1

    #@23
    .line 667
    :goto_1
    iput-boolean v8, p0, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    #@25
    .line 670
    and-int/lit8 v8, v1, 0x4

    #@27
    if-eqz v8, :cond_2

    #@29
    const/4 v8, 0x1

    #@2a
    .line 669
    :goto_2
    iput-boolean v8, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    #@2c
    .line 672
    and-int/lit8 v8, v1, 0x2

    #@2e
    if-eqz v8, :cond_3

    #@30
    const/4 v5, 0x1

    #@31
    .line 673
    .local v5, "sflag":Z
    :goto_3
    iget-boolean v8, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    #@33
    if-eqz v8, :cond_4

    #@35
    if-eqz v5, :cond_4

    #@37
    .line 674
    new-instance v8, Ljava/io/InvalidClassException;

    #@39
    .line 675
    iget-object v9, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@3b
    const-string/jumbo v10, "serializable and externalizable flags conflict"

    #@3e
    .line 674
    invoke-direct {v8, v9, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@41
    throw v8

    #@42
    .line 666
    .end local v5    # "sflag":Z
    :cond_0
    const/4 v8, 0x0

    #@43
    goto :goto_0

    #@44
    .line 668
    :cond_1
    const/4 v8, 0x0

    #@45
    goto :goto_1

    #@46
    .line 670
    :cond_2
    const/4 v8, 0x0

    #@47
    goto :goto_2

    #@48
    .line 672
    :cond_3
    const/4 v5, 0x0

    #@49
    .restart local v5    # "sflag":Z
    goto :goto_3

    #@4a
    .line 677
    :cond_4
    iget-boolean v8, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    #@4c
    if-nez v8, :cond_5

    #@4e
    .end local v5    # "sflag":Z
    :goto_4
    iput-boolean v5, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    #@50
    .line 678
    and-int/lit8 v8, v1, 0x10

    #@52
    if-eqz v8, :cond_6

    #@54
    const/4 v8, 0x1

    #@55
    :goto_5
    iput-boolean v8, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    #@57
    .line 679
    iget-boolean v8, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    #@59
    if-eqz v8, :cond_7

    #@5b
    iget-object v8, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    #@5d
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    #@60
    move-result-wide v8

    #@61
    const-wide/16 v10, 0x0

    #@63
    cmp-long v8, v8, v10

    #@65
    if-eqz v8, :cond_7

    #@67
    .line 680
    new-instance v8, Ljava/io/InvalidClassException;

    #@69
    iget-object v9, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@6b
    .line 681
    new-instance v10, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v11, "enum descriptor has non-zero serialVersionUID: "

    #@73
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v10

    #@77
    iget-object v11, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    #@79
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v10

    #@7d
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v10

    #@81
    .line 680
    invoke-direct {v8, v9, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@84
    throw v8

    #@85
    .line 677
    .restart local v5    # "sflag":Z
    :cond_5
    const/4 v5, 0x1

    #@86
    goto :goto_4

    #@87
    .line 678
    .end local v5    # "sflag":Z
    :cond_6
    const/4 v8, 0x0

    #@88
    goto :goto_5

    #@89
    .line 684
    :cond_7
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readShort()S

    #@8c
    move-result v4

    #@8d
    .line 685
    .local v4, "numFields":I
    iget-boolean v8, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    #@8f
    if-eqz v8, :cond_8

    #@91
    if-eqz v4, :cond_8

    #@93
    .line 686
    new-instance v8, Ljava/io/InvalidClassException;

    #@95
    iget-object v9, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@97
    .line 687
    new-instance v10, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v11, "enum descriptor has non-zero field count: "

    #@9f
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v10

    #@a3
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v10

    #@a7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v10

    #@ab
    .line 686
    invoke-direct {v8, v9, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@ae
    throw v8

    #@af
    .line 689
    :cond_8
    if-lez v4, :cond_a

    #@b1
    .line 690
    new-array v8, v4, [Ljava/io/ObjectStreamField;

    #@b3
    .line 689
    :goto_6
    iput-object v8, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@b5
    .line 691
    const/4 v3, 0x0

    #@b6
    .local v3, "i":I
    :goto_7
    if-ge v3, v4, :cond_c

    #@b8
    .line 692
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    #@bb
    move-result v8

    #@bc
    int-to-char v7, v8

    #@bd
    .line 693
    .local v7, "tcode":C
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    #@c0
    move-result-object v2

    #@c1
    .line 694
    .local v2, "fname":Ljava/lang/String;
    const/16 v8, 0x4c

    #@c3
    if-eq v7, v8, :cond_9

    #@c5
    const/16 v8, 0x5b

    #@c7
    if-ne v7, v8, :cond_b

    #@c9
    .line 695
    :cond_9
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readTypeString()Ljava/lang/String;

    #@cc
    move-result-object v6

    #@cd
    .line 697
    .local v6, "signature":Ljava/lang/String;
    :goto_8
    :try_start_0
    iget-object v8, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@cf
    new-instance v9, Ljava/io/ObjectStreamField;

    #@d1
    const/4 v10, 0x0

    #@d2
    invoke-direct {v9, v2, v6, v10}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@d5
    aput-object v9, v8, v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@d7
    .line 691
    add-int/lit8 v3, v3, 0x1

    #@d9
    goto :goto_7

    #@da
    .line 690
    .end local v2    # "fname":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v6    # "signature":Ljava/lang/String;
    .end local v7    # "tcode":C
    :cond_a
    sget-object v8, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    #@dc
    goto :goto_6

    #@dd
    .line 695
    .restart local v2    # "fname":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v7    # "tcode":C
    :cond_b
    new-instance v6, Ljava/lang/String;

    #@df
    const/4 v8, 0x1

    #@e0
    new-array v8, v8, [C

    #@e2
    const/4 v9, 0x0

    #@e3
    aput-char v7, v8, v9

    #@e5
    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([C)V

    #@e8
    .restart local v6    # "signature":Ljava/lang/String;
    goto :goto_8

    #@e9
    .line 698
    :catch_0
    move-exception v0

    #@ea
    .line 699
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/io/InvalidClassException;

    #@ec
    iget-object v9, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@ee
    .line 700
    new-instance v10, Ljava/lang/StringBuilder;

    #@f0
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@f3
    const-string/jumbo v11, "invalid descriptor for field "

    #@f6
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v10

    #@fa
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v10

    #@fe
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@101
    move-result-object v10

    #@102
    .line 699
    invoke-direct {v8, v9, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@105
    invoke-virtual {v8, v0}, Ljava/io/InvalidClassException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@108
    move-result-object v8

    #@109
    check-cast v8, Ljava/io/IOException;

    #@10b
    throw v8

    #@10c
    .line 703
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "fname":Ljava/lang/String;
    .end local v6    # "signature":Ljava/lang/String;
    .end local v7    # "tcode":C
    :cond_c
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->computeFieldOffsets()V

    #@10f
    .line 658
    return-void
.end method

.method setObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "vals"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1250
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectStreamClass$FieldReflector;->setObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    #@5
    .line 1249
    return-void
.end method

.method setPrimFieldValues(Ljava/lang/Object;[B)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "buf"    # [B

    #@0
    .prologue
    .line 1232
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectStreamClass$FieldReflector;->setPrimFieldValues(Ljava/lang/Object;[B)V

    #@5
    .line 1231
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, ": static final long serialVersionUID = "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 295
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    #@15
    move-result-wide v2

    #@16
    .line 294
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    .line 295
    const-string/jumbo v1, "L;"

    #@1d
    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method

.method writeNonProxy(Ljava/io/ObjectOutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 710
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    #@5
    .line 711
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    #@8
    move-result-wide v4

    #@9
    invoke-virtual {p1, v4, v5}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    #@c
    .line 713
    const/4 v1, 0x0

    #@d
    .line 714
    .local v1, "flags":B
    iget-boolean v4, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    #@f
    if-eqz v4, :cond_4

    #@11
    .line 715
    const/4 v4, 0x4

    #@12
    int-to-byte v1, v4

    #@13
    .line 716
    .local v1, "flags":B
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->getProtocolVersion()I

    #@16
    move-result v3

    #@17
    .line 717
    .local v3, "protocol":I
    const/4 v4, 0x1

    #@18
    if-eq v3, v4, :cond_0

    #@1a
    .line 718
    or-int/lit8 v4, v1, 0x8

    #@1c
    int-to-byte v1, v4

    #@1d
    .line 723
    .end local v1    # "flags":B
    .end local v3    # "protocol":I
    :cond_0
    :goto_0
    iget-boolean v4, p0, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 724
    or-int/lit8 v4, v1, 0x1

    #@23
    int-to-byte v1, v4

    #@24
    .line 726
    :cond_1
    iget-boolean v4, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    #@26
    if-eqz v4, :cond_2

    #@28
    .line 727
    or-int/lit8 v4, v1, 0x10

    #@2a
    int-to-byte v1, v4

    #@2b
    .line 729
    :cond_2
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    #@2e
    .line 731
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@30
    array-length v4, v4

    #@31
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeShort(I)V

    #@34
    .line 732
    const/4 v2, 0x0

    #@35
    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@37
    array-length v4, v4

    #@38
    if-ge v2, v4, :cond_5

    #@3a
    .line 733
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@3c
    aget-object v0, v4, v2

    #@3e
    .line 734
    .local v0, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getTypeCode()C

    #@41
    move-result v4

    #@42
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    #@45
    .line 735
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    #@4c
    .line 736
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    #@4f
    move-result v4

    #@50
    if-nez v4, :cond_3

    #@52
    .line 737
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getTypeString()Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeTypeString(Ljava/lang/String;)V

    #@59
    .line 732
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@5b
    goto :goto_1

    #@5c
    .line 720
    .end local v0    # "f":Ljava/io/ObjectStreamField;
    .end local v2    # "i":I
    .local v1, "flags":B
    :cond_4
    iget-boolean v4, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    #@5e
    if-eqz v4, :cond_0

    #@60
    .line 721
    const/4 v4, 0x2

    #@61
    int-to-byte v1, v4

    #@62
    .local v1, "flags":B
    goto :goto_0

    #@63
    .line 709
    .end local v1    # "flags":B
    .restart local v2    # "i":I
    :cond_5
    return-void
.end method
