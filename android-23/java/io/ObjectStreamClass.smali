.class public Ljava/io/ObjectStreamClass;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final ARRAY_OF_FIELDS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final CLASSCLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CLASS_MODIFIERS_MASK:I = 0x611

.field private static final CLINIT_MODIFIERS:I = 0x8

.field private static final CLINIT_NAME:Ljava/lang/String; = "<clinit>"

.field private static final CLINIT_SIGNATURE:Ljava/lang/String; = "()V"

.field static final CONSTRUCTOR_IS_NOT_RESOLVED:J = -0x1L

.field private static final EXTERNALIZABLE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/io/Externalizable;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_MODIFIERS_MASK:I = 0xdf

.field private static final METHOD_MODIFIERS_MASK:I = 0xd3f

.field public static final NO_FIELDS:[Ljava/io/ObjectStreamField;

.field static final OBJECTSTREAMCLASSCLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation
.end field

.field private static final READ_PARAM_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final SERIALIZABLE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field static final STRINGCLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UID_FIELD_NAME:Ljava/lang/String; = "serialVersionUID"

.field private static final WRITE_PARAM_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x54f190e511018478L

.field private static storage:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private transient arePropertiesResolved:Z

.field private volatile transient cachedHierarchy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation
.end field

.field private transient className:Ljava/lang/String;

.field private transient constructor:J

.field private transient fields:[Ljava/io/ObjectStreamField;

.field private transient flags:B

.field private transient isEnum:Z

.field private transient isExternalizable:Z

.field private transient isProxy:Z

.field private transient isSerializable:Z

.field private transient loadFields:[Ljava/io/ObjectStreamField;

.field private transient methodReadObject:Ljava/lang/reflect/Method;

.field private transient methodReadObjectNoData:Ljava/lang/reflect/Method;

.field private transient methodReadResolve:Ljava/lang/reflect/Method;

.field private transient methodWriteObject:Ljava/lang/reflect/Method;

.field private transient methodWriteReplace:Ljava/lang/reflect/Method;

.field private transient reflectionFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/ObjectStreamField;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private transient resolvedClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private transient resolvedConstructorClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private transient resolvedConstructorMethodId:J

.field private transient superclass:Ljava/io/ObjectStreamClass;

.field private transient svUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 70
    new-array v1, v4, [Ljava/lang/Class;

    #@4
    const-class v2, Ljava/io/ObjectInputStream;

    #@6
    aput-object v2, v1, v3

    #@8
    sput-object v1, Ljava/io/ObjectStreamClass;->READ_PARAM_TYPES:[Ljava/lang/Class;

    #@a
    .line 71
    new-array v1, v4, [Ljava/lang/Class;

    #@c
    const-class v2, Ljava/io/ObjectOutputStream;

    #@e
    aput-object v2, v1, v3

    #@10
    sput-object v1, Ljava/io/ObjectStreamClass;->WRITE_PARAM_TYPES:[Ljava/lang/Class;

    #@12
    .line 76
    new-array v1, v3, [Ljava/io/ObjectStreamField;

    #@14
    sput-object v1, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    #@16
    .line 85
    :try_start_0
    const-string/jumbo v1, "[Ljava.io.ObjectStreamField;"

    #@19
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@1c
    move-result-object v1

    #@1d
    sput-object v1, Ljava/io/ObjectStreamClass;->ARRAY_OF_FIELDS:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 99
    const-class v1, Ljava/io/Serializable;

    #@21
    sput-object v1, Ljava/io/ObjectStreamClass;->SERIALIZABLE:Ljava/lang/Class;

    #@23
    .line 101
    const-class v1, Ljava/io/Externalizable;

    #@25
    sput-object v1, Ljava/io/ObjectStreamClass;->EXTERNALIZABLE:Ljava/lang/Class;

    #@27
    .line 104
    const-class v1, Ljava/lang/String;

    #@29
    sput-object v1, Ljava/io/ObjectStreamClass;->STRINGCLASS:Ljava/lang/Class;

    #@2b
    .line 106
    const-class v1, Ljava/lang/Class;

    #@2d
    sput-object v1, Ljava/io/ObjectStreamClass;->CLASSCLASS:Ljava/lang/Class;

    #@2f
    .line 108
    const-class v1, Ljava/io/ObjectStreamClass;

    #@31
    sput-object v1, Ljava/io/ObjectStreamClass;->OBJECTSTREAMCLASSCLASS:Ljava/lang/Class;

    #@33
    .line 1098
    new-instance v1, Ljava/lang/ref/SoftReference;

    #@35
    const/4 v2, 0x0

    #@36
    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@39
    .line 1097
    sput-object v1, Ljava/io/ObjectStreamClass;->storage:Ljava/lang/ref/SoftReference;

    #@3b
    .line 48
    return-void

    #@3c
    .line 86
    :catch_0
    move-exception v0

    #@3d
    .line 88
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/AssertionError;

    #@3f
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@42
    throw v1
.end method

.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 175
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 174
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    #@a
    .line 178
    const-wide/16 v0, -0x1

    #@c
    iput-wide v0, p0, Ljava/io/ObjectStreamClass;->constructor:J

    #@e
    .line 241
    return-void
.end method

.method private static computeSerialVersionUID(Ljava/lang/Class;[Ljava/lang/reflect/Field;)J
    .locals 28
    .param p1, "fields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ")J"
        }
    .end annotation

    #@0
    .prologue
    .line 413
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v12, 0x0

    #@1
    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p1

    #@3
    array-length v0, v0

    #@4
    move/from16 v25, v0

    #@6
    move/from16 v0, v25

    #@8
    if-ge v12, v0, :cond_1

    #@a
    .line 414
    aget-object v9, p1, v12

    #@c
    .line 415
    .local v9, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@f
    move-result-object v25

    #@10
    sget-object v26, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@12
    move-object/from16 v0, v25

    #@14
    move-object/from16 v1, v26

    #@16
    if-ne v0, v1, :cond_0

    #@18
    .line 416
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    #@1b
    move-result v21

    #@1c
    .line 417
    .local v21, "modifiers":I
    invoke-static/range {v21 .. v21}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    #@1f
    move-result v25

    #@20
    if-eqz v25, :cond_0

    #@22
    invoke-static/range {v21 .. v21}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    #@25
    move-result v25

    #@26
    if-eqz v25, :cond_0

    #@28
    .line 418
    const-string/jumbo v25, "serialVersionUID"

    #@2b
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@2e
    move-result-object v26

    #@2f
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v25

    #@33
    if-eqz v25, :cond_0

    #@35
    .line 424
    const/16 v25, 0x1

    #@37
    move/from16 v0, v25

    #@39
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@3c
    .line 427
    const/16 v25, 0x0

    #@3e
    :try_start_0
    move-object/from16 v0, v25

    #@40
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    move-result-wide v26

    #@44
    return-wide v26

    #@45
    .line 428
    :catch_0
    move-exception v13

    #@46
    .line 429
    .local v13, "iae":Ljava/lang/IllegalAccessException;
    new-instance v25, Ljava/lang/RuntimeException;

    #@48
    new-instance v26, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v27, "Error fetching SUID: "

    #@50
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v26

    #@54
    move-object/from16 v0, v26

    #@56
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v26

    #@5a
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v26

    #@5e
    invoke-direct/range {v25 .. v26}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@61
    throw v25

    #@62
    .line 413
    .end local v13    # "iae":Ljava/lang/IllegalAccessException;
    .end local v21    # "modifiers":I
    :cond_0
    add-int/lit8 v12, v12, 0x1

    #@64
    goto :goto_0

    #@65
    .line 438
    .end local v9    # "field":Ljava/lang/reflect/Field;
    :cond_1
    :try_start_1
    const-string/jumbo v25, "SHA"

    #@68
    invoke-static/range {v25 .. v25}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    #@6b
    move-result-object v6

    #@6c
    .line 442
    .local v6, "digest":Ljava/security/MessageDigest;
    new-instance v23, Ljava/io/ByteArrayOutputStream;

    #@6e
    invoke-direct/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@71
    .line 444
    .local v23, "sha":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-instance v22, Ljava/io/DataOutputStream;

    #@73
    invoke-direct/range {v22 .. v23}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@76
    .line 445
    .local v22, "output":Ljava/io/DataOutputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@79
    move-result-object v25

    #@7a
    move-object/from16 v0, v22

    #@7c
    move-object/from16 v1, v25

    #@7e
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@81
    .line 446
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    #@84
    move-result v25

    #@85
    move/from16 v0, v25

    #@87
    and-int/lit16 v2, v0, 0x611

    #@89
    .line 452
    .local v2, "classModifiers":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isArray()Z

    #@8c
    move-result v16

    #@8d
    .line 453
    .local v16, "isArray":Z
    if-eqz v16, :cond_2

    #@8f
    .line 454
    or-int/lit16 v2, v2, 0x400

    #@91
    .line 457
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    #@94
    move-result v25

    #@95
    if-eqz v25, :cond_3

    #@97
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    #@9a
    move-result v25

    #@9b
    if-eqz v25, :cond_5

    #@9d
    .line 460
    :cond_3
    :goto_1
    move-object/from16 v0, v22

    #@9f
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@a2
    .line 467
    if-nez v16, :cond_6

    #@a4
    .line 469
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    #@a7
    move-result-object v15

    #@a8
    .line 470
    .local v15, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, v15

    #@a9
    move/from16 v25, v0

    #@ab
    const/16 v26, 0x1

    #@ad
    move/from16 v0, v25

    #@af
    move/from16 v1, v26

    #@b1
    if-le v0, v1, :cond_4

    #@b3
    .line 473
    new-instance v14, Ljava/io/ObjectStreamClass$1;

    #@b5
    invoke-direct {v14}, Ljava/io/ObjectStreamClass$1;-><init>()V

    #@b8
    .line 478
    .local v14, "interfaceComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Class<*>;>;"
    invoke-static {v15, v14}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@bb
    .line 482
    .end local v14    # "interfaceComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Class<*>;>;"
    :cond_4
    const/4 v12, 0x0

    #@bc
    :goto_2
    array-length v0, v15

    #@bd
    move/from16 v25, v0

    #@bf
    move/from16 v0, v25

    #@c1
    if-ge v12, v0, :cond_6

    #@c3
    .line 483
    aget-object v25, v15, v12

    #@c5
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c8
    move-result-object v25

    #@c9
    move-object/from16 v0, v22

    #@cb
    move-object/from16 v1, v25

    #@cd
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@d0
    .line 482
    add-int/lit8 v12, v12, 0x1

    #@d2
    goto :goto_2

    #@d3
    .line 439
    .end local v2    # "classModifiers":I
    .end local v6    # "digest":Ljava/security/MessageDigest;
    .end local v15    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v16    # "isArray":Z
    .end local v22    # "output":Ljava/io/DataOutputStream;
    .end local v23    # "sha":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v8

    #@d4
    .line 440
    .local v8, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v25, Ljava/lang/Error;

    #@d6
    move-object/from16 v0, v25

    #@d8
    invoke-direct {v0, v8}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@db
    throw v25

    #@dc
    .line 458
    .end local v8    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v2    # "classModifiers":I
    .restart local v6    # "digest":Ljava/security/MessageDigest;
    .restart local v16    # "isArray":Z
    .restart local v22    # "output":Ljava/io/DataOutputStream;
    .restart local v23    # "sha":Ljava/io/ByteArrayOutputStream;
    :cond_5
    and-int/lit16 v2, v2, -0x401

    #@de
    goto :goto_1

    #@df
    .line 488
    :cond_6
    :try_start_3
    move-object/from16 v0, p1

    #@e1
    array-length v0, v0

    #@e2
    move/from16 v25, v0

    #@e4
    const/16 v26, 0x1

    #@e6
    move/from16 v0, v25

    #@e8
    move/from16 v1, v26

    #@ea
    if-le v0, v1, :cond_7

    #@ec
    .line 491
    new-instance v10, Ljava/io/ObjectStreamClass$2;

    #@ee
    invoke-direct {v10}, Ljava/io/ObjectStreamClass$2;-><init>()V

    #@f1
    .line 496
    .local v10, "fieldComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/reflect/Field;>;"
    move-object/from16 v0, p1

    #@f3
    invoke-static {v0, v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@f6
    .line 500
    .end local v10    # "fieldComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/reflect/Field;>;"
    :cond_7
    const/4 v12, 0x0

    #@f7
    :goto_3
    move-object/from16 v0, p1

    #@f9
    array-length v0, v0

    #@fa
    move/from16 v25, v0

    #@fc
    move/from16 v0, v25

    #@fe
    if-ge v12, v0, :cond_b

    #@100
    .line 501
    aget-object v9, p1, v12

    #@102
    .line 502
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    #@105
    move-result v25

    #@106
    move/from16 v0, v25

    #@108
    and-int/lit16 v0, v0, 0xdf

    #@10a
    move/from16 v21, v0

    #@10c
    .line 504
    .restart local v21    # "modifiers":I
    invoke-static/range {v21 .. v21}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    #@10f
    move-result v25

    #@110
    if-eqz v25, :cond_a

    #@112
    .line 505
    invoke-static/range {v21 .. v21}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    #@115
    move-result v25

    #@116
    if-nez v25, :cond_9

    #@118
    invoke-static/range {v21 .. v21}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    #@11b
    move-result v24

    #@11c
    .line 506
    :goto_4
    if-nez v24, :cond_8

    #@11e
    .line 509
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@121
    move-result-object v25

    #@122
    move-object/from16 v0, v22

    #@124
    move-object/from16 v1, v25

    #@126
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@129
    .line 510
    move-object/from16 v0, v22

    #@12b
    move/from16 v1, v21

    #@12d
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@130
    .line 511
    invoke-static {v9}, Ljava/io/ObjectStreamClass;->getFieldSignature(Ljava/lang/reflect/Field;)Ljava/lang/String;

    #@133
    move-result-object v25

    #@134
    invoke-static/range {v25 .. v25}, Ljava/io/ObjectStreamClass;->descriptorForFieldSignature(Ljava/lang/String;)Ljava/lang/String;

    #@137
    move-result-object v25

    #@138
    move-object/from16 v0, v22

    #@13a
    move-object/from16 v1, v25

    #@13c
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@13f
    .line 500
    :cond_8
    add-int/lit8 v12, v12, 0x1

    #@141
    goto :goto_3

    #@142
    .line 505
    :cond_9
    const/16 v24, 0x1

    #@144
    .local v24, "skip":Z
    goto :goto_4

    #@145
    .line 504
    .end local v24    # "skip":Z
    :cond_a
    const/16 v24, 0x0

    #@147
    .restart local v24    # "skip":Z
    goto :goto_4

    #@148
    .line 520
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v21    # "modifiers":I
    .end local v24    # "skip":Z
    :cond_b
    invoke-static/range {p0 .. p0}, Ljava/io/ObjectStreamClass;->hasClinit(Ljava/lang/Class;)Z

    #@14b
    move-result v25

    #@14c
    if-eqz v25, :cond_c

    #@14e
    .line 522
    const-string/jumbo v25, "<clinit>"

    #@151
    move-object/from16 v0, v22

    #@153
    move-object/from16 v1, v25

    #@155
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@158
    .line 523
    const/16 v25, 0x8

    #@15a
    move-object/from16 v0, v22

    #@15c
    move/from16 v1, v25

    #@15e
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@161
    .line 524
    const-string/jumbo v25, "()V"

    #@164
    move-object/from16 v0, v22

    #@166
    move-object/from16 v1, v25

    #@168
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@16b
    .line 528
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    #@16e
    move-result-object v5

    #@16f
    .line 529
    .local v5, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    array-length v0, v5

    #@170
    move/from16 v25, v0

    #@172
    const/16 v26, 0x1

    #@174
    move/from16 v0, v25

    #@176
    move/from16 v1, v26

    #@178
    if-le v0, v1, :cond_d

    #@17a
    .line 532
    new-instance v4, Ljava/io/ObjectStreamClass$3;

    #@17c
    invoke-direct {v4}, Ljava/io/ObjectStreamClass$3;-><init>()V

    #@17f
    .line 540
    .local v4, "constructorComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/reflect/Constructor<*>;>;"
    invoke-static {v5, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@182
    .line 544
    .end local v4    # "constructorComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/reflect/Constructor<*>;>;"
    :cond_d
    const/4 v12, 0x0

    #@183
    :goto_5
    array-length v0, v5

    #@184
    move/from16 v25, v0

    #@186
    move/from16 v0, v25

    #@188
    if-ge v12, v0, :cond_f

    #@18a
    .line 545
    aget-object v3, v5, v12

    #@18c
    .line 546
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getModifiers()I

    #@18f
    move-result v25

    #@190
    move/from16 v0, v25

    #@192
    and-int/lit16 v0, v0, 0xd3f

    #@194
    move/from16 v21, v0

    #@196
    .line 548
    .restart local v21    # "modifiers":I
    invoke-static/range {v21 .. v21}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    #@199
    move-result v17

    #@19a
    .line 549
    .local v17, "isPrivate":Z
    if-nez v17, :cond_e

    #@19c
    .line 557
    const-string/jumbo v25, "<init>"

    #@19f
    move-object/from16 v0, v22

    #@1a1
    move-object/from16 v1, v25

    #@1a3
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@1a6
    .line 558
    move-object/from16 v0, v22

    #@1a8
    move/from16 v1, v21

    #@1aa
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@1ad
    .line 560
    invoke-static {v3}, Ljava/io/ObjectStreamClass;->getConstructorSignature(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    #@1b0
    move-result-object v25

    #@1b1
    .line 559
    invoke-static/range {v25 .. v25}, Ljava/io/ObjectStreamClass;->descriptorForSignature(Ljava/lang/String;)Ljava/lang/String;

    #@1b4
    move-result-object v25

    #@1b5
    .line 560
    const/16 v26, 0x2f

    #@1b7
    .line 561
    const/16 v27, 0x2e

    #@1b9
    .line 559
    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@1bc
    move-result-object v25

    #@1bd
    move-object/from16 v0, v22

    #@1bf
    move-object/from16 v1, v25

    #@1c1
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@1c4
    .line 544
    :cond_e
    add-int/lit8 v12, v12, 0x1

    #@1c6
    goto :goto_5

    #@1c7
    .line 566
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v17    # "isPrivate":Z
    .end local v21    # "modifiers":I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    #@1ca
    move-result-object v20

    #@1cb
    .line 567
    .local v20, "methods":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v20

    #@1cd
    array-length v0, v0

    #@1ce
    move/from16 v25, v0

    #@1d0
    const/16 v26, 0x1

    #@1d2
    move/from16 v0, v25

    #@1d4
    move/from16 v1, v26

    #@1d6
    if-le v0, v1, :cond_10

    #@1d8
    .line 568
    new-instance v19, Ljava/io/ObjectStreamClass$4;

    #@1da
    invoke-direct/range {v19 .. v19}, Ljava/io/ObjectStreamClass$4;-><init>()V

    #@1dd
    .line 580
    .local v19, "methodComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/reflect/Method;>;"
    move-object/from16 v0, v20

    #@1df
    move-object/from16 v1, v19

    #@1e1
    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@1e4
    .line 584
    .end local v19    # "methodComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/reflect/Method;>;"
    :cond_10
    const/4 v12, 0x0

    #@1e5
    :goto_6
    move-object/from16 v0, v20

    #@1e7
    array-length v0, v0

    #@1e8
    move/from16 v25, v0

    #@1ea
    move/from16 v0, v25

    #@1ec
    if-ge v12, v0, :cond_12

    #@1ee
    .line 585
    aget-object v18, v20, v12

    #@1f0
    .line 586
    .local v18, "method":Ljava/lang/reflect/Method;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getModifiers()I

    #@1f3
    move-result v25

    #@1f4
    move/from16 v0, v25

    #@1f6
    and-int/lit16 v0, v0, 0xd3f

    #@1f8
    move/from16 v21, v0

    #@1fa
    .line 587
    .restart local v21    # "modifiers":I
    invoke-static/range {v21 .. v21}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    #@1fd
    move-result v17

    #@1fe
    .line 588
    .restart local v17    # "isPrivate":Z
    if-nez v17, :cond_11

    #@200
    .line 591
    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@203
    move-result-object v25

    #@204
    move-object/from16 v0, v22

    #@206
    move-object/from16 v1, v25

    #@208
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@20b
    .line 592
    move-object/from16 v0, v22

    #@20d
    move/from16 v1, v21

    #@20f
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@212
    .line 594
    invoke-static/range {v18 .. v18}, Ljava/io/ObjectStreamClass;->getMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/String;

    #@215
    move-result-object v25

    #@216
    .line 593
    invoke-static/range {v25 .. v25}, Ljava/io/ObjectStreamClass;->descriptorForSignature(Ljava/lang/String;)Ljava/lang/String;

    #@219
    move-result-object v25

    #@21a
    .line 594
    const/16 v26, 0x2f

    #@21c
    const/16 v27, 0x2e

    #@21e
    .line 593
    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@221
    move-result-object v25

    #@222
    move-object/from16 v0, v22

    #@224
    move-object/from16 v1, v25

    #@226
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    #@229
    .line 584
    :cond_11
    add-int/lit8 v12, v12, 0x1

    #@22b
    goto :goto_6

    #@22c
    .line 597
    .end local v2    # "classModifiers":I
    .end local v5    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v16    # "isArray":Z
    .end local v17    # "isPrivate":Z
    .end local v18    # "method":Ljava/lang/reflect/Method;
    .end local v20    # "methods":[Ljava/lang/reflect/Method;
    .end local v21    # "modifiers":I
    .end local v22    # "output":Ljava/io/DataOutputStream;
    :catch_2
    move-exception v7

    #@22d
    .line 598
    .local v7, "e":Ljava/io/IOException;
    new-instance v25, Ljava/lang/RuntimeException;

    #@22f
    new-instance v26, Ljava/lang/StringBuilder;

    #@231
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@234
    move-object/from16 v0, v26

    #@236
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@239
    move-result-object v26

    #@23a
    const-string/jumbo v27, " computing SHA-1/SUID"

    #@23d
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@240
    move-result-object v26

    #@241
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@244
    move-result-object v26

    #@245
    invoke-direct/range {v25 .. v26}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@248
    throw v25

    #@249
    .line 602
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v2    # "classModifiers":I
    .restart local v5    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .restart local v16    # "isArray":Z
    .restart local v20    # "methods":[Ljava/lang/reflect/Method;
    .restart local v22    # "output":Ljava/io/DataOutputStream;
    :cond_12
    invoke-virtual/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@24c
    move-result-object v25

    #@24d
    move-object/from16 v0, v25

    #@24f
    invoke-virtual {v6, v0}, Ljava/security/MessageDigest;->digest([B)[B

    #@252
    move-result-object v11

    #@253
    .line 603
    .local v11, "hash":[B
    sget-object v25, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@255
    const/16 v26, 0x0

    #@257
    move/from16 v0, v26

    #@259
    move-object/from16 v1, v25

    #@25b
    invoke-static {v11, v0, v1}, Llibcore/io/Memory;->peekLong([BILjava/nio/ByteOrder;)J

    #@25e
    move-result-wide v26

    #@25f
    return-wide v26
.end method

.method private copyFieldAttributes()V
    .locals 6

    #@0
    .prologue
    .line 857
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    #@2
    if-eqz v5, :cond_0

    #@4
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@6
    if-nez v5, :cond_1

    #@8
    .line 858
    :cond_0
    return-void

    #@9
    .line 861
    :cond_1
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    #@c
    array-length v5, v5

    #@d
    if-ge v1, v5, :cond_4

    #@f
    .line 862
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    #@11
    aget-object v3, v5, v1

    #@13
    .line 863
    .local v3, "loadField":Ljava/io/ObjectStreamField;
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    .line 864
    .local v4, "name":Ljava/lang/String;
    const/4 v2, 0x0

    #@18
    .local v2, "j":I
    :goto_1
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@1a
    array-length v5, v5

    #@1b
    if-ge v2, v5, :cond_2

    #@1d
    .line 865
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@1f
    aget-object v0, v5, v2

    #@21
    .line 866
    .local v0, "field":Ljava/io/ObjectStreamField;
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_3

    #@2b
    .line 867
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->isUnshared()Z

    #@2e
    move-result v5

    #@2f
    invoke-virtual {v3, v5}, Ljava/io/ObjectStreamField;->setUnshared(Z)V

    #@32
    .line 868
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getOffset()I

    #@35
    move-result v5

    #@36
    invoke-virtual {v3, v5}, Ljava/io/ObjectStreamField;->setOffset(I)V

    #@39
    .line 861
    .end local v0    # "field":Ljava/io/ObjectStreamField;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 864
    .restart local v0    # "field":Ljava/io/ObjectStreamField;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 856
    .end local v0    # "field":Ljava/io/ObjectStreamField;
    .end local v2    # "j":I
    .end local v3    # "loadField":Ljava/io/ObjectStreamField;
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private static createClassDesc(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .locals 14
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
    .line 254
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v7, Ljava/io/ObjectStreamClass;

    #@2
    invoke-direct {v7}, Ljava/io/ObjectStreamClass;-><init>()V

    #@5
    .line 256
    .local v7, "result":Ljava/io/ObjectStreamClass;
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    #@8
    move-result v5

    #@9
    .line 257
    .local v5, "isArray":Z
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->isSerializable(Ljava/lang/Class;)Z

    #@c
    move-result v8

    #@d
    .line 258
    .local v8, "serializable":Z
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->isExternalizable(Ljava/lang/Class;)Z

    #@10
    move-result v1

    #@11
    .line 260
    .local v1, "externalizable":Z
    iput-boolean v8, v7, Ljava/io/ObjectStreamClass;->isSerializable:Z

    #@13
    .line 261
    iput-boolean v1, v7, Ljava/io/ObjectStreamClass;->isExternalizable:Z

    #@15
    .line 264
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@18
    move-result-object v10

    #@19
    invoke-virtual {v7, v10}, Ljava/io/ObjectStreamClass;->setName(Ljava/lang/String;)V

    #@1c
    .line 265
    invoke-virtual {v7, p0}, Ljava/io/ObjectStreamClass;->setClass(Ljava/lang/Class;)V

    #@1f
    .line 266
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@22
    move-result-object v9

    #@23
    .line 267
    .local v9, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v9, :cond_0

    #@25
    .line 268
    invoke-static {v9}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    #@28
    move-result-object v10

    #@29
    invoke-virtual {v7, v10}, Ljava/io/ObjectStreamClass;->setSuperclass(Ljava/io/ObjectStreamClass;)V

    #@2c
    .line 271
    :cond_0
    const/4 v0, 0x0

    #@2d
    .line 274
    .local v0, "declaredFields":[Ljava/lang/reflect/Field;
    if-nez v8, :cond_1

    #@2f
    if-eqz v1, :cond_3

    #@31
    .line 275
    :cond_1
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->isEnum()Z

    #@34
    move-result v10

    #@35
    if-nez v10, :cond_2

    #@37
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->isProxy()Z

    #@3a
    move-result v10

    #@3b
    if-eqz v10, :cond_5

    #@3d
    .line 276
    :cond_2
    const-wide/16 v10, 0x0

    #@3f
    invoke-virtual {v7, v10, v11}, Ljava/io/ObjectStreamClass;->setSerialVersionUID(J)V

    #@42
    .line 284
    .end local v0    # "declaredFields":[Ljava/lang/reflect/Field;
    :cond_3
    :goto_0
    if-eqz v8, :cond_4

    #@44
    if-eqz v5, :cond_6

    #@46
    .line 291
    :cond_4
    sget-object v10, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    #@48
    invoke-virtual {v7, v10}, Ljava/io/ObjectStreamClass;->setFields([Ljava/io/ObjectStreamField;)V

    #@4b
    .line 296
    :goto_1
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->getFields()[Ljava/io/ObjectStreamField;

    #@4e
    move-result-object v2

    #@4f
    .line 298
    .local v2, "fields":[Ljava/io/ObjectStreamField;
    if-eqz v2, :cond_9

    #@51
    .line 299
    array-length v10, v2

    #@52
    new-array v6, v10, [Ljava/io/ObjectStreamField;

    #@54
    .line 301
    .local v6, "loadFields":[Ljava/io/ObjectStreamField;
    const/4 v4, 0x0

    #@55
    .local v4, "i":I
    :goto_2
    array-length v10, v2

    #@56
    if-ge v4, v10, :cond_8

    #@58
    .line 302
    new-instance v10, Ljava/io/ObjectStreamField;

    #@5a
    aget-object v11, v2, v4

    #@5c
    invoke-virtual {v11}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    #@5f
    move-result-object v11

    #@60
    .line 303
    aget-object v12, v2, v4

    #@62
    invoke-virtual {v12}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    #@65
    move-result-object v12

    #@66
    aget-object v13, v2, v4

    #@68
    invoke-virtual {v13}, Ljava/io/ObjectStreamField;->isUnshared()Z

    #@6b
    move-result v13

    #@6c
    .line 302
    invoke-direct {v10, v11, v12, v13}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    #@6f
    aput-object v10, v6, v4

    #@71
    .line 307
    aget-object v10, v6, v4

    #@73
    invoke-virtual {v10}, Ljava/io/ObjectStreamField;->getTypeString()Ljava/lang/String;

    #@76
    .line 301
    add-int/lit8 v4, v4, 0x1

    #@78
    goto :goto_2

    #@79
    .line 278
    .end local v2    # "fields":[Ljava/io/ObjectStreamField;
    .end local v4    # "i":I
    .end local v6    # "loadFields":[Ljava/io/ObjectStreamField;
    .restart local v0    # "declaredFields":[Ljava/lang/reflect/Field;
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@7c
    move-result-object v0

    #@7d
    .line 279
    .local v0, "declaredFields":[Ljava/lang/reflect/Field;
    invoke-static {p0, v0}, Ljava/io/ObjectStreamClass;->computeSerialVersionUID(Ljava/lang/Class;[Ljava/lang/reflect/Field;)J

    #@80
    move-result-wide v10

    #@81
    invoke-virtual {v7, v10, v11}, Ljava/io/ObjectStreamClass;->setSerialVersionUID(J)V

    #@84
    goto :goto_0

    #@85
    .line 285
    .end local v0    # "declaredFields":[Ljava/lang/reflect/Field;
    :cond_6
    if-nez v0, :cond_7

    #@87
    .line 286
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@8a
    move-result-object v0

    #@8b
    .line 288
    :cond_7
    invoke-virtual {v7, v0}, Ljava/io/ObjectStreamClass;->buildFieldDescriptors([Ljava/lang/reflect/Field;)V

    #@8e
    goto :goto_1

    #@8f
    .line 309
    .restart local v2    # "fields":[Ljava/io/ObjectStreamField;
    .restart local v4    # "i":I
    .restart local v6    # "loadFields":[Ljava/io/ObjectStreamField;
    :cond_8
    invoke-virtual {v7, v6}, Ljava/io/ObjectStreamClass;->setLoadFields([Ljava/io/ObjectStreamField;)V

    #@92
    .line 312
    .end local v4    # "i":I
    .end local v6    # "loadFields":[Ljava/io/ObjectStreamField;
    :cond_9
    const/4 v3, 0x0

    #@93
    .line 313
    .local v3, "flags":B
    if-eqz v1, :cond_c

    #@95
    .line 314
    const/4 v10, 0x4

    #@96
    int-to-byte v3, v10

    #@97
    .line 315
    .local v3, "flags":B
    or-int/lit8 v10, v3, 0x8

    #@99
    int-to-byte v3, v10

    #@9a
    .line 319
    .end local v3    # "flags":B
    :cond_a
    :goto_3
    const-string/jumbo v10, "writeReplace"

    #@9d
    invoke-static {p0, v10}, Ljava/io/ObjectStreamClass;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    #@a0
    move-result-object v10

    #@a1
    iput-object v10, v7, Ljava/io/ObjectStreamClass;->methodWriteReplace:Ljava/lang/reflect/Method;

    #@a3
    .line 320
    const-string/jumbo v10, "readResolve"

    #@a6
    invoke-static {p0, v10}, Ljava/io/ObjectStreamClass;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    #@a9
    move-result-object v10

    #@aa
    iput-object v10, v7, Ljava/io/ObjectStreamClass;->methodReadResolve:Ljava/lang/reflect/Method;

    #@ac
    .line 321
    const-string/jumbo v10, "writeObject"

    #@af
    sget-object v11, Ljava/io/ObjectStreamClass;->WRITE_PARAM_TYPES:[Ljava/lang/Class;

    #@b1
    invoke-static {p0, v10, v11}, Ljava/io/ObjectStreamClass;->findPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@b4
    move-result-object v10

    #@b5
    iput-object v10, v7, Ljava/io/ObjectStreamClass;->methodWriteObject:Ljava/lang/reflect/Method;

    #@b7
    .line 322
    const-string/jumbo v10, "readObject"

    #@ba
    sget-object v11, Ljava/io/ObjectStreamClass;->READ_PARAM_TYPES:[Ljava/lang/Class;

    #@bc
    invoke-static {p0, v10, v11}, Ljava/io/ObjectStreamClass;->findPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@bf
    move-result-object v10

    #@c0
    iput-object v10, v7, Ljava/io/ObjectStreamClass;->methodReadObject:Ljava/lang/reflect/Method;

    #@c2
    .line 323
    const-string/jumbo v10, "readObjectNoData"

    #@c5
    sget-object v11, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    #@c7
    invoke-static {p0, v10, v11}, Ljava/io/ObjectStreamClass;->findPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@ca
    move-result-object v10

    #@cb
    iput-object v10, v7, Ljava/io/ObjectStreamClass;->methodReadObjectNoData:Ljava/lang/reflect/Method;

    #@cd
    .line 324
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->hasMethodWriteObject()Z

    #@d0
    move-result v10

    #@d1
    if-eqz v10, :cond_b

    #@d3
    .line 325
    or-int/lit8 v10, v3, 0x1

    #@d5
    int-to-byte v3, v10

    #@d6
    .line 327
    :cond_b
    invoke-virtual {v7, v3}, Ljava/io/ObjectStreamClass;->setFlags(B)V

    #@d9
    .line 329
    return-object v7

    #@da
    .line 316
    .local v3, "flags":B
    :cond_c
    if-eqz v8, :cond_a

    #@dc
    .line 317
    const/4 v10, 0x2

    #@dd
    int-to-byte v3, v10

    #@de
    .local v3, "flags":B
    goto :goto_3
.end method

.method private static descriptorForFieldSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "signature"    # Ljava/lang/String;

    #@0
    .prologue
    .line 615
    const/16 v0, 0x2e

    #@2
    const/16 v1, 0x2f

    #@4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static descriptorForSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "signature"    # Ljava/lang/String;

    #@0
    .prologue
    .line 627
    const-string/jumbo v0, "("

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method static fieldSerialPersistentFields(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    #@0
    .prologue
    .line 642
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string/jumbo v3, "serialPersistentFields"

    #@3
    invoke-virtual {p0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@6
    move-result-object v0

    #@7
    .line 643
    .local v0, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    #@a
    move-result v1

    #@b
    .line 644
    .local v1, "modifiers":I
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 645
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    #@1a
    move-result v3

    #@1b
    .line 644
    if-eqz v3, :cond_0

    #@1d
    .line 646
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@20
    move-result-object v3

    #@21
    sget-object v4, Ljava/io/ObjectStreamClass;->ARRAY_OF_FIELDS:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    if-ne v3, v4, :cond_0

    #@25
    .line 647
    return-object v0

    #@26
    .line 650
    .end local v0    # "f":Ljava/lang/reflect/Field;
    .end local v1    # "modifiers":I
    :catch_0
    move-exception v2

    #@27
    .line 653
    :cond_0
    const/4 v3, 0x0

    #@28
    return-object v3
.end method

.method static findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    #@1
    .line 1124
    move-object v2, p0

    #@2
    .line 1125
    .local v2, "search":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    #@3
    .line 1126
    :goto_0
    if-eqz v2, :cond_2

    #@5
    .line 1128
    const/4 v3, 0x0

    #@6
    :try_start_0
    check-cast v3, [Ljava/lang/Class;

    #@8
    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@b
    move-result-object v0

    #@c
    .line 1129
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eq v2, p0, :cond_0

    #@e
    .line 1130
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    #@11
    move-result v3

    #@12
    and-int/lit8 v3, v3, 0x2

    #@14
    if-nez v3, :cond_1

    #@16
    .line 1131
    :cond_0
    const/4 v3, 0x1

    #@17
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 1132
    return-object v0

    #@1b
    .line 1134
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    #@1c
    .line 1136
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@1f
    move-result-object v2

    #@20
    goto :goto_0

    #@21
    .line 1138
    :cond_2
    return-object v4
.end method

.method static findPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    #@0
    .prologue
    .line 1154
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "param":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@3
    move-result-object v0

    #@4
    .line 1155
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    #@7
    move-result v2

    #@8
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@11
    move-result-object v2

    #@12
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@14
    if-ne v2, v3, :cond_0

    #@16
    .line 1156
    const/4 v2, 0x1

    #@17
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 1157
    return-object v0

    #@1b
    .line 1159
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    #@1c
    .line 1162
    :cond_0
    const/4 v2, 0x0

    #@1d
    return-object v2
.end method

.method private static getCache()Ljava/util/WeakHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1101
    sget-object v1, Ljava/io/ObjectStreamClass;->storage:Ljava/lang/ref/SoftReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/ThreadLocal;

    #@8
    .line 1102
    .local v0, "tls":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/util/WeakHashMap<Ljava/lang/Class<*>;Ljava/io/ObjectStreamClass;>;>;"
    if-nez v0, :cond_0

    #@a
    .line 1103
    new-instance v0, Ljava/io/ObjectStreamClass$5;

    #@c
    .end local v0    # "tls":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/util/WeakHashMap<Ljava/lang/Class<*>;Ljava/io/ObjectStreamClass;>;>;"
    invoke-direct {v0}, Ljava/io/ObjectStreamClass$5;-><init>()V

    #@f
    .line 1108
    .restart local v0    # "tls":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/util/WeakHashMap<Ljava/lang/Class<*>;Ljava/io/ObjectStreamClass;>;>;"
    new-instance v1, Ljava/lang/ref/SoftReference;

    #@11
    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@14
    sput-object v1, Ljava/io/ObjectStreamClass;->storage:Ljava/lang/ref/SoftReference;

    #@16
    .line 1110
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Ljava/util/WeakHashMap;

    #@1c
    return-object v1
.end method

.method private static native getConstructorId(Ljava/lang/Class;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)J"
        }
    .end annotation
.end method

.method static native getConstructorSignature(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method private static native getFieldSignature(Ljava/lang/reflect/Field;)Ljava/lang/String;
.end method

.method static native getMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/String;
.end method

.method private static native hasClinit(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation
.end method

.method private inSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 6
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
    .local p1, "c1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "c2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v4, 0x2e

    #@2
    const/4 v5, 0x0

    #@3
    .line 756
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .line 757
    .local v2, "nameC1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    .line 758
    .local v3, "nameC2":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    #@e
    move-result v0

    #@f
    .line 759
    .local v0, "indexDotC1":I
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    #@12
    move-result v1

    #@13
    .line 760
    .local v1, "indexDotC2":I
    if-eq v0, v1, :cond_0

    #@15
    .line 761
    return v5

    #@16
    .line 763
    :cond_0
    const/4 v4, -0x1

    #@17
    if-ne v0, v4, :cond_1

    #@19
    .line 764
    const/4 v4, 0x1

    #@1a
    return v4

    #@1b
    .line 766
    :cond_1
    invoke-virtual {v2, v5, v3, v5, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@1e
    move-result v4

    #@1f
    return v4
.end method

.method static isExternalizable(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 974
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/io/ObjectStreamClass;->EXTERNALIZABLE:Ljava/lang/Class;

    #@2
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method static isPrimitiveType(C)Z
    .locals 2
    .param p0, "typecode"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 988
    const/16 v1, 0x5b

    #@3
    if-eq p0, v1, :cond_0

    #@5
    const/16 v1, 0x4c

    #@7
    if-eq p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method static isSerializable(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1004
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/io/ObjectStreamClass;->SERIALIZABLE:Ljava/lang/Class;

    #@2
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .locals 2
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
    .line 1055
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    #@3
    move-result-object v0

    #@4
    .line 1056
    .local v0, "osc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .end local v0    # "osc":Ljava/io/ObjectStreamClass;
    :cond_0
    :goto_0
    return-object v0

    #@11
    .restart local v0    # "osc":Ljava/io/ObjectStreamClass;
    :cond_1
    const/4 v0, 0x0

    #@12
    goto :goto_0
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
    .line 1070
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .locals 2
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
    .line 1084
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/io/ObjectStreamClass;->getCache()Ljava/util/WeakHashMap;

    #@3
    move-result-object v1

    #@4
    .line 1085
    .local v1, "tlc":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/Class<*>;Ljava/io/ObjectStreamClass;>;"
    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/io/ObjectStreamClass;

    #@a
    .line 1086
    .local v0, "cachedValue":Ljava/io/ObjectStreamClass;
    if-nez v0, :cond_0

    #@c
    .line 1087
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->createClassDesc(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    #@f
    move-result-object v0

    #@10
    .line 1088
    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 1090
    :cond_0
    return-object v0
.end method

.method private makeHierarchy()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 842
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 843
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/ObjectStreamClass;>;"
    move-object v0, p0

    #@6
    .local v0, "osc":Ljava/io/ObjectStreamClass;
    :goto_0
    if-eqz v0, :cond_0

    #@8
    .line 844
    const/4 v2, 0x0

    #@9
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@c
    .line 843
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    #@f
    move-result-object v0

    #@10
    goto :goto_0

    #@11
    .line 846
    :cond_0
    return-object v1
.end method

.method private static native newInstance(Ljava/lang/Class;J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;J)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method private primitiveSize(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 1295
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@6
    if-ne p1, v0, :cond_1

    #@8
    .line 1296
    :cond_0
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 1298
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@c
    if-eq p1, v0, :cond_2

    #@e
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@10
    if-ne p1, v0, :cond_3

    #@12
    .line 1299
    :cond_2
    const/4 v0, 0x2

    #@13
    return v0

    #@14
    .line 1301
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@16
    if-eq p1, v0, :cond_4

    #@18
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@1a
    if-ne p1, v0, :cond_5

    #@1c
    .line 1302
    :cond_4
    const/4 v0, 0x4

    #@1d
    return v0

    #@1e
    .line 1304
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@20
    if-eq p1, v0, :cond_6

    #@22
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@24
    if-ne p1, v0, :cond_7

    #@26
    .line 1305
    :cond_6
    const/16 v0, 0x8

    #@28
    return v0

    #@29
    .line 1307
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    #@2b
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@2e
    throw v0
.end method

.method private resolveConstructorClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    #@0
    .prologue
    .line 679
    .local p1, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v10, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorClass:Ljava/lang/Class;

    #@2
    if-eqz v10, :cond_0

    #@4
    .line 680
    iget-object v10, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorClass:Ljava/lang/Class;

    #@6
    return-object v10

    #@7
    .line 686
    :cond_0
    move-object v2, p1

    #@8
    .line 690
    .local v2, "constructorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-byte v10, p0, Ljava/io/ObjectStreamClass;->flags:B

    #@a
    and-int/lit8 v10, v10, 0x2

    #@c
    if-eqz v10, :cond_1

    #@e
    const/4 v9, 0x1

    #@f
    .line 691
    .local v9, "wasSerializable":Z
    :goto_0
    if-eqz v9, :cond_2

    #@11
    .line 695
    :goto_1
    if-eqz v2, :cond_2

    #@13
    invoke-static {v2}, Ljava/io/ObjectStreamClass;->isSerializable(Ljava/lang/Class;)Z

    #@16
    move-result v10

    #@17
    if-eqz v10, :cond_2

    #@19
    .line 696
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@1c
    move-result-object v2

    #@1d
    goto :goto_1

    #@1e
    .line 690
    .end local v9    # "wasSerializable":Z
    :cond_1
    const/4 v9, 0x0

    #@1f
    .restart local v9    # "wasSerializable":Z
    goto :goto_0

    #@20
    .line 701
    :cond_2
    const/4 v1, 0x0

    #@21
    .line 702
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-eqz v2, :cond_3

    #@23
    .line 704
    :try_start_0
    sget-object v10, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    #@25
    invoke-virtual {v2, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    move-result-object v1

    #@29
    .line 710
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_3
    :goto_2
    if-nez v1, :cond_5

    #@2b
    .line 711
    if-eqz v2, :cond_4

    #@2d
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    .line 712
    :goto_3
    new-instance v10, Ljava/io/InvalidClassException;

    #@33
    const-string/jumbo v11, "IllegalAccessException"

    #@36
    invoke-direct {v10, v0, v11}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@39
    throw v10

    #@3a
    .line 711
    :cond_4
    const/4 v0, 0x0

    #@3b
    .local v0, "className":Ljava/lang/String;
    goto :goto_3

    #@3c
    .line 715
    .end local v0    # "className":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    #@3f
    move-result v3

    #@40
    .line 716
    .local v3, "constructorModifiers":I
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    #@43
    move-result v7

    #@44
    .line 717
    .local v7, "isPublic":Z
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    #@47
    move-result v6

    #@48
    .line 718
    .local v6, "isProtected":Z
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    #@4b
    move-result v5

    #@4c
    .line 722
    .local v5, "isPrivate":Z
    iget-byte v10, p0, Ljava/io/ObjectStreamClass;->flags:B

    #@4e
    and-int/lit8 v10, v10, 0x4

    #@50
    if-eqz v10, :cond_8

    #@52
    const/4 v8, 0x1

    #@53
    .line 723
    .local v8, "wasExternalizable":Z
    :goto_4
    if-nez v5, :cond_9

    #@55
    if-eqz v8, :cond_6

    #@57
    if-eqz v7, :cond_9

    #@59
    .line 731
    :cond_6
    if-nez v7, :cond_7

    #@5b
    if-eqz v6, :cond_a

    #@5d
    .line 739
    :cond_7
    iput-object v2, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorClass:Ljava/lang/Class;

    #@5f
    .line 740
    iget-object v10, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorClass:Ljava/lang/Class;

    #@61
    invoke-static {v10}, Ljava/io/ObjectStreamClass;->getConstructorId(Ljava/lang/Class;)J

    #@64
    move-result-wide v10

    #@65
    iput-wide v10, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorMethodId:J

    #@67
    .line 741
    return-object v2

    #@68
    .line 722
    .end local v8    # "wasExternalizable":Z
    :cond_8
    const/4 v8, 0x0

    #@69
    .restart local v8    # "wasExternalizable":Z
    goto :goto_4

    #@6a
    .line 724
    :cond_9
    new-instance v10, Ljava/io/InvalidClassException;

    #@6c
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@6f
    move-result-object v11

    #@70
    const-string/jumbo v12, "IllegalAccessException"

    #@73
    invoke-direct {v10, v11, v12}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@76
    throw v10

    #@77
    .line 734
    :cond_a
    invoke-direct {p0, v2, p1}, Ljava/io/ObjectStreamClass;->inSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    #@7a
    move-result v10

    #@7b
    if-nez v10, :cond_7

    #@7d
    .line 735
    new-instance v10, Ljava/io/InvalidClassException;

    #@7f
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@82
    move-result-object v11

    #@83
    const-string/jumbo v12, "IllegalAccessException"

    #@86
    invoke-direct {v10, v11, v12}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@89
    throw v10

    #@8a
    .line 705
    .end local v3    # "constructorModifiers":I
    .end local v5    # "isPrivate":Z
    .end local v6    # "isProtected":Z
    .end local v7    # "isPublic":Z
    .end local v8    # "wasExternalizable":Z
    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v4

    #@8b
    .local v4, "ignored":Ljava/lang/NoSuchMethodException;
    goto :goto_2
.end method

.method private resolveProperties()V
    .locals 2

    #@0
    .prologue
    .line 1011
    iget-boolean v1, p0, Ljava/io/ObjectStreamClass;->arePropertiesResolved:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1012
    return-void

    #@5
    .line 1015
    :cond_0
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@8
    move-result-object v0

    #@9
    .line 1016
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    #@c
    move-result v1

    #@d
    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    #@f
    .line 1017
    const-class v1, Ljava/lang/Enum;

    #@11
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@14
    move-result v1

    #@15
    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    #@17
    .line 1018
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->isSerializable(Ljava/lang/Class;)Z

    #@1a
    move-result v1

    #@1b
    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isSerializable:Z

    #@1d
    .line 1019
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->isExternalizable(Ljava/lang/Class;)Z

    #@20
    move-result v1

    #@21
    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isExternalizable:Z

    #@23
    .line 1021
    const/4 v1, 0x1

    #@24
    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->arePropertiesResolved:Z

    #@26
    .line 1010
    return-void
.end method


# virtual methods
.method buildFieldDescriptors([Ljava/lang/reflect/Field;)V
    .locals 19
    .param p1, "declaredFields"    # [Ljava/lang/reflect/Field;

    #@0
    .prologue
    .line 342
    invoke-virtual/range {p0 .. p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@3
    move-result-object v15

    #@4
    invoke-static {v15}, Ljava/io/ObjectStreamClass;->fieldSerialPersistentFields(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    #@7
    move-result-object v5

    #@8
    .line 345
    .local v5, "f":Ljava/lang/reflect/Field;
    if-nez v5, :cond_0

    #@a
    const/4 v14, 0x1

    #@b
    .line 349
    .local v14, "useReflectFields":Z
    :goto_0
    const/4 v2, 0x0

    #@c
    .line 350
    .local v2, "_fields":[Ljava/io/ObjectStreamField;
    if-nez v14, :cond_1

    #@e
    .line 353
    const/4 v15, 0x1

    #@f
    invoke-virtual {v5, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@12
    .line 356
    const/4 v15, 0x0

    #@13
    :try_start_0
    invoke-virtual {v5, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    .end local v2    # "_fields":[Ljava/io/ObjectStreamField;
    check-cast v2, [Ljava/io/ObjectStreamField;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 381
    .local v2, "_fields":[Ljava/io/ObjectStreamField;
    :goto_1
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    #@1c
    .line 383
    const/4 v11, 0x0

    #@1d
    .local v11, "primOffset":I
    const/4 v9, 0x0

    #@1e
    .line 384
    .local v9, "objectOffset":I
    const/4 v7, 0x0

    #@1f
    .local v7, "i":I
    :goto_2
    array-length v15, v2

    #@20
    if-ge v7, v15, :cond_7

    #@22
    .line 385
    aget-object v15, v2, v7

    #@24
    invoke-virtual {v15}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    #@27
    move-result-object v13

    #@28
    .line 386
    .local v13, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v13}, Ljava/lang/Class;->isPrimitive()Z

    #@2b
    move-result v15

    #@2c
    if-eqz v15, :cond_6

    #@2e
    .line 387
    aget-object v15, v2, v7

    #@30
    iput v11, v15, Ljava/io/ObjectStreamField;->offset:I

    #@32
    .line 388
    move-object/from16 v0, p0

    #@34
    invoke-direct {v0, v13}, Ljava/io/ObjectStreamClass;->primitiveSize(Ljava/lang/Class;)I

    #@37
    move-result v15

    #@38
    add-int/2addr v11, v15

    #@39
    .line 384
    :goto_3
    add-int/lit8 v7, v7, 0x1

    #@3b
    goto :goto_2

    #@3c
    .line 345
    .end local v2    # "_fields":[Ljava/io/ObjectStreamField;
    .end local v7    # "i":I
    .end local v9    # "objectOffset":I
    .end local v11    # "primOffset":I
    .end local v13    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "useReflectFields":Z
    :cond_0
    const/4 v14, 0x0

    #@3d
    .restart local v14    # "useReflectFields":Z
    goto :goto_0

    #@3e
    .line 357
    :catch_0
    move-exception v4

    #@3f
    .line 358
    .local v4, "ex":Ljava/lang/IllegalAccessException;
    new-instance v15, Ljava/lang/AssertionError;

    #@41
    invoke-direct {v15, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@44
    throw v15

    #@45
    .line 363
    .end local v4    # "ex":Ljava/lang/IllegalAccessException;
    .local v2, "_fields":[Ljava/io/ObjectStreamField;
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    #@47
    move-object/from16 v0, p1

    #@49
    array-length v15, v0

    #@4a
    invoke-direct {v12, v15}, Ljava/util/ArrayList;-><init>(I)V

    #@4d
    .line 365
    .local v12, "serializableFields":Ljava/util/List;, "Ljava/util/List<Ljava/io/ObjectStreamField;>;"
    const/4 v15, 0x0

    #@4e
    move-object/from16 v0, p1

    #@50
    array-length v0, v0

    #@51
    move/from16 v16, v0

    #@53
    :goto_4
    move/from16 v0, v16

    #@55
    if-ge v15, v0, :cond_4

    #@57
    aget-object v3, p1, v15

    #@59
    .line 366
    .local v3, "declaredField":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    #@5c
    move-result v8

    #@5d
    .line 367
    .local v8, "modifiers":I
    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    #@60
    move-result v17

    #@61
    if-nez v17, :cond_2

    #@63
    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    #@66
    move-result v17

    #@67
    if-eqz v17, :cond_3

    #@69
    .line 365
    :cond_2
    :goto_5
    add-int/lit8 v15, v15, 0x1

    #@6b
    goto :goto_4

    #@6c
    .line 368
    :cond_3
    new-instance v6, Ljava/io/ObjectStreamField;

    #@6e
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@71
    move-result-object v17

    #@72
    .line 369
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@75
    move-result-object v18

    #@76
    .line 368
    move-object/from16 v0, v17

    #@78
    move-object/from16 v1, v18

    #@7a
    invoke-direct {v6, v0, v1}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@7d
    .line 370
    .local v6, "field":Ljava/io/ObjectStreamField;
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@80
    goto :goto_5

    #@81
    .line 374
    .end local v3    # "declaredField":Ljava/lang/reflect/Field;
    .end local v6    # "field":Ljava/io/ObjectStreamField;
    .end local v8    # "modifiers":I
    :cond_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    #@84
    move-result v15

    #@85
    if-nez v15, :cond_5

    #@87
    .line 375
    sget-object v2, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    #@89
    .local v2, "_fields":[Ljava/io/ObjectStreamField;
    goto :goto_1

    #@8a
    .line 378
    .local v2, "_fields":[Ljava/io/ObjectStreamField;
    :cond_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    #@8d
    move-result v15

    #@8e
    new-array v15, v15, [Ljava/io/ObjectStreamField;

    #@90
    invoke-interface {v12, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@93
    move-result-object v2

    #@94
    .end local v2    # "_fields":[Ljava/io/ObjectStreamField;
    check-cast v2, [Ljava/io/ObjectStreamField;

    #@96
    .local v2, "_fields":[Ljava/io/ObjectStreamField;
    goto :goto_1

    #@97
    .line 390
    .end local v12    # "serializableFields":Ljava/util/List;, "Ljava/util/List<Ljava/io/ObjectStreamField;>;"
    .restart local v7    # "i":I
    .restart local v9    # "objectOffset":I
    .restart local v11    # "primOffset":I
    .restart local v13    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    aget-object v15, v2, v7

    #@99
    add-int/lit8 v10, v9, 0x1

    #@9b
    .end local v9    # "objectOffset":I
    .local v10, "objectOffset":I
    iput v9, v15, Ljava/io/ObjectStreamField;->offset:I

    #@9d
    move v9, v10

    #@9e
    .end local v10    # "objectOffset":I
    .restart local v9    # "objectOffset":I
    goto :goto_3

    #@9f
    .line 393
    .end local v13    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    move-object/from16 v0, p0

    #@a1
    iput-object v2, v0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@a3
    .line 339
    return-void
.end method

.method checkAndGetReflectionField(Ljava/io/ObjectStreamField;)Ljava/lang/reflect/Field;
    .locals 6
    .param p1, "osf"    # Ljava/io/ObjectStreamField;

    #@0
    .prologue
    .line 197
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    #@2
    monitor-enter v5

    #@3
    .line 198
    :try_start_0
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    #@5
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Ljava/lang/reflect/Field;

    #@b
    .line 201
    .local v2, "field":Ljava/lang/reflect/Field;
    if-nez v2, :cond_0

    #@d
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    #@f
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_1

    #@15
    :cond_0
    monitor-exit v5

    #@16
    .line 202
    return-object v2

    #@17
    :cond_1
    monitor-exit v5

    #@18
    .line 208
    :try_start_1
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@1b
    move-result-object v0

    #@1c
    .line 209
    .local v0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@23
    move-result-object v2

    #@24
    .line 211
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    #@27
    move-result v3

    #@28
    .line 212
    .local v3, "modifiers":I
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    #@2b
    move-result v4

    #@2c
    if-nez v4, :cond_2

    #@2e
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_3

    #@34
    .line 215
    :cond_2
    const/4 v2, 0x0

    #@35
    .line 224
    .end local v0    # "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "modifiers":I
    :goto_0
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    #@37
    monitor-enter v5

    #@38
    .line 225
    :try_start_2
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    #@3a
    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3d
    monitor-exit v5

    #@3e
    .line 227
    return-object v2

    #@3f
    .line 197
    :catchall_0
    move-exception v4

    #@40
    monitor-exit v5

    #@41
    throw v4

    #@42
    .line 217
    .restart local v0    # "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "modifiers":I
    :cond_3
    const/4 v4, 0x1

    #@43
    :try_start_3
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_0

    #@46
    goto :goto_0

    #@47
    .line 219
    .end local v0    # "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "modifiers":I
    :catch_0
    move-exception v1

    #@48
    .line 221
    .local v1, "ex":Ljava/lang/NoSuchFieldException;
    const/4 v2, 0x0

    #@49
    .local v2, "field":Ljava/lang/reflect/Field;
    goto :goto_0

    #@4a
    .line 224
    .end local v1    # "ex":Ljava/lang/NoSuchFieldException;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :catchall_1
    move-exception v4

    #@4b
    monitor-exit v5

    #@4c
    throw v4
.end method

.method public checkAndGetTcEnumClass()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    #@0
    .prologue
    .line 1377
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->isEnum()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1378
    new-instance v0, Ljava/io/InvalidClassException;

    #@8
    .line 1379
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, " local class is incompatible: Local class is not an enum,"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 1380
    const-string/jumbo v2, " streamed data is tagged with TC_ENUM"

    #@1f
    .line 1379
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 1378
    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 1386
    :cond_0
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@2e
    move-result-object v0

    #@2f
    return-object v0
.end method

.method public checkAndGetTcObjectClass()Ljava/lang/Class;
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
            Ljava/io/InvalidClassException;
        }
    .end annotation

    #@0
    .prologue
    .line 1331
    iget-byte v2, p0, Ljava/io/ObjectStreamClass;->flags:B

    #@2
    and-int/lit8 v2, v2, 0x2

    #@4
    if-eqz v2, :cond_0

    #@6
    const/4 v1, 0x1

    #@7
    .line 1332
    .local v1, "wasSerializable":Z
    :goto_0
    iget-byte v2, p0, Ljava/io/ObjectStreamClass;->flags:B

    #@9
    and-int/lit8 v2, v2, 0x4

    #@b
    if-eqz v2, :cond_1

    #@d
    const/4 v0, 0x1

    #@e
    .line 1333
    .local v0, "wasExternalizable":Z
    :goto_1
    if-ne v1, v0, :cond_2

    #@10
    .line 1334
    new-instance v2, Ljava/io/InvalidClassException;

    #@12
    .line 1335
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    const-string/jumbo v4, " stream data is corrupt: SC_SERIALIZABLE="

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    .line 1336
    const-string/jumbo v4, " SC_EXTERNALIZABLE="

    #@2d
    .line 1335
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    .line 1337
    const-string/jumbo v4, ", classDescFlags must have one or the other"

    #@38
    .line 1335
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    .line 1334
    invoke-direct {v2, v3}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    #@43
    throw v2

    #@44
    .line 1331
    .end local v0    # "wasExternalizable":Z
    .end local v1    # "wasSerializable":Z
    :cond_0
    const/4 v1, 0x0

    #@45
    .restart local v1    # "wasSerializable":Z
    goto :goto_0

    #@46
    .line 1332
    :cond_1
    const/4 v0, 0x0

    #@47
    .restart local v0    # "wasExternalizable":Z
    goto :goto_1

    #@48
    .line 1341
    :cond_2
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->isEnum()Z

    #@4b
    move-result v2

    #@4c
    if-eqz v2, :cond_3

    #@4e
    .line 1342
    new-instance v2, Ljava/io/InvalidClassException;

    #@50
    .line 1343
    new-instance v3, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    const-string/jumbo v4, " local class is incompatible: Local class is an enum, streamed"

    #@60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    .line 1344
    const-string/jumbo v4, " data is tagged with TC_OBJECT"

    #@67
    .line 1343
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v3

    #@6f
    .line 1342
    invoke-direct {v2, v3}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    #@72
    throw v2

    #@73
    .line 1349
    :cond_3
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    #@76
    move-result v2

    #@77
    if-nez v2, :cond_4

    #@79
    .line 1350
    new-instance v2, Ljava/io/InvalidClassException;

    #@7b
    new-instance v3, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    #@83
    move-result-object v4

    #@84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v3

    #@88
    const-string/jumbo v4, " local class is incompatible: Not"

    #@8b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v3

    #@8f
    .line 1351
    const-string/jumbo v4, " Serializable"

    #@92
    .line 1350
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v3

    #@96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v3

    #@9a
    invoke-direct {v2, v3}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    #@9d
    throw v2

    #@9e
    .line 1355
    :cond_4
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    #@a1
    move-result v2

    #@a2
    if-eq v0, v2, :cond_5

    #@a4
    .line 1356
    new-instance v2, Ljava/io/InvalidClassException;

    #@a6
    .line 1357
    new-instance v3, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    #@ae
    move-result-object v4

    #@af
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v3

    #@b3
    const-string/jumbo v4, " local class is incompatible: Local class is Serializable, stream"

    #@b6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v3

    #@ba
    .line 1358
    const-string/jumbo v4, " data requires Externalizable"

    #@bd
    .line 1357
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v3

    #@c1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v3

    #@c5
    .line 1356
    invoke-direct {v2, v3}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    #@c8
    throw v2

    #@c9
    .line 1366
    :cond_5
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@cc
    move-result-object v2

    #@cd
    return-object v2
.end method

.method fields()[Ljava/io/ObjectStreamField;
    .locals 2

    #@0
    .prologue
    .line 807
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@2
    if-nez v1, :cond_1

    #@4
    .line 808
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    .line 809
    .local v0, "forCl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_2

    #@16
    .line 813
    :cond_0
    sget-object v1, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    #@18
    invoke-virtual {p0, v1}, Ljava/io/ObjectStreamClass;->setFields([Ljava/io/ObjectStreamField;)V

    #@1b
    .line 816
    .end local v0    # "forCl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@1d
    return-object v1

    #@1e
    .line 810
    .restart local v0    # "forCl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {p0, v1}, Ljava/io/ObjectStreamClass;->buildFieldDescriptors([Ljava/lang/reflect/Field;)V

    #@25
    goto :goto_0
.end method

.method public forClass()Ljava/lang/Class;
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
    .line 663
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->resolvedClass:Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method getConstructor()J
    .locals 2

    #@0
    .prologue
    .line 185
    iget-wide v0, p0, Ljava/io/ObjectStreamClass;->constructor:J

    #@2
    return-wide v0
.end method

.method public getField(Ljava/lang/String;)Ljava/io/ObjectStreamField;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 789
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getFields()[Ljava/io/ObjectStreamField;

    #@3
    move-result-object v0

    #@4
    .line 790
    .local v0, "allFields":[Ljava/io/ObjectStreamField;
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    array-length v3, v0

    #@6
    if-ge v2, v3, :cond_1

    #@8
    .line 791
    aget-object v1, v0, v2

    #@a
    .line 792
    .local v1, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 793
    return-object v1

    #@15
    .line 790
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 796
    .end local v1    # "f":Ljava/io/ObjectStreamField;
    :cond_1
    const/4 v3, 0x0

    #@19
    return-object v3
.end method

.method public getFields()[Ljava/io/ObjectStreamField;
    .locals 1

    #@0
    .prologue
    .line 827
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->copyFieldAttributes()V

    #@3
    .line 828
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    #@5
    if-nez v0, :cond_0

    #@7
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, [Ljava/io/ObjectStreamField;

    #@11
    :goto_0
    return-object v0

    #@12
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    #@14
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, [Ljava/io/ObjectStreamField;

    #@1a
    goto :goto_0
.end method

.method getFlags()B
    .locals 1

    #@0
    .prologue
    .line 905
    iget-byte v0, p0, Ljava/io/ObjectStreamClass;->flags:B

    #@2
    return v0
.end method

.method getHierarchy()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 834
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cachedHierarchy:Ljava/util/List;

    #@2
    .line 835
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/ObjectStreamClass;>;"
    if-nez v0, :cond_0

    #@4
    .line 836
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->makeHierarchy()Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->cachedHierarchy:Ljava/util/List;

    #@a
    .line 838
    :cond_0
    return-object v0
.end method

.method getLoadFields()[Ljava/io/ObjectStreamField;
    .locals 1

    #@0
    .prologue
    .line 883
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    #@2
    return-object v0
.end method

.method getMethodReadObject()Ljava/lang/reflect/Method;
    .locals 1

    #@0
    .prologue
    .line 1194
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObject:Ljava/lang/reflect/Method;

    #@2
    return-object v0
.end method

.method getMethodReadObjectNoData()Ljava/lang/reflect/Method;
    .locals 1

    #@0
    .prologue
    .line 1202
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObjectNoData:Ljava/lang/reflect/Method;

    #@2
    return-object v0
.end method

.method getMethodReadResolve()Ljava/lang/reflect/Method;
    .locals 1

    #@0
    .prologue
    .line 1178
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadResolve:Ljava/lang/reflect/Method;

    #@2
    return-object v0
.end method

.method getMethodWriteObject()Ljava/lang/reflect/Method;
    .locals 1

    #@0
    .prologue
    .line 1186
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteObject:Ljava/lang/reflect/Method;

    #@2
    return-object v0
.end method

.method getMethodWriteReplace()Ljava/lang/reflect/Method;
    .locals 1

    #@0
    .prologue
    .line 1170
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteReplace:Ljava/lang/reflect/Method;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 923
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->className:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSerialVersionUID()J
    .locals 2

    #@0
    .prologue
    .line 933
    iget-wide v0, p0, Ljava/io/ObjectStreamClass;->svUID:J

    #@2
    return-wide v0
.end method

.method getSuperclass()Ljava/io/ObjectStreamClass;
    .locals 1

    #@0
    .prologue
    .line 944
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->superclass:Ljava/io/ObjectStreamClass;

    #@2
    return-object v0
.end method

.method hasMethodReadObject()Z
    .locals 1

    #@0
    .prologue
    .line 1190
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObject:Ljava/lang/reflect/Method;

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

.method hasMethodReadObjectNoData()Z
    .locals 1

    #@0
    .prologue
    .line 1198
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObjectNoData:Ljava/lang/reflect/Method;

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

.method hasMethodReadResolve()Z
    .locals 1

    #@0
    .prologue
    .line 1174
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadResolve:Ljava/lang/reflect/Method;

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

.method hasMethodWriteObject()Z
    .locals 1

    #@0
    .prologue
    .line 1182
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteObject:Ljava/lang/reflect/Method;

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

.method hasMethodWriteReplace()Z
    .locals 1

    #@0
    .prologue
    .line 1166
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteReplace:Ljava/lang/reflect/Method;

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

.method initPrivateFields(Ljava/io/ObjectStreamClass;)V
    .locals 1
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;

    #@0
    .prologue
    .line 1206
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->methodWriteReplace:Ljava/lang/reflect/Method;

    #@2
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteReplace:Ljava/lang/reflect/Method;

    #@4
    .line 1207
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->methodReadResolve:Ljava/lang/reflect/Method;

    #@6
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadResolve:Ljava/lang/reflect/Method;

    #@8
    .line 1208
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->methodWriteObject:Ljava/lang/reflect/Method;

    #@a
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteObject:Ljava/lang/reflect/Method;

    #@c
    .line 1209
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->methodReadObject:Ljava/lang/reflect/Method;

    #@e
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObject:Ljava/lang/reflect/Method;

    #@10
    .line 1210
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->methodReadObjectNoData:Ljava/lang/reflect/Method;

    #@12
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObjectNoData:Ljava/lang/reflect/Method;

    #@14
    .line 1205
    return-void
.end method

.method isEnum()Z
    .locals 1

    #@0
    .prologue
    .line 1040
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->resolveProperties()V

    #@3
    .line 1041
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    #@5
    return v0
.end method

.method isExternalizable()Z
    .locals 1

    #@0
    .prologue
    .line 1030
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->resolveProperties()V

    #@3
    .line 1031
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isExternalizable:Z

    #@5
    return v0
.end method

.method isProxy()Z
    .locals 1

    #@0
    .prologue
    .line 1035
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->resolveProperties()V

    #@3
    .line 1036
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    #@5
    return v0
.end method

.method isSerializable()Z
    .locals 1

    #@0
    .prologue
    .line 1025
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->resolveProperties()V

    #@3
    .line 1026
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isSerializable:Z

    #@5
    return v0
.end method

.method newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    #@0
    .prologue
    .line 673
    .local p1, "instantiationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Ljava/io/ObjectStreamClass;->resolveConstructorClass(Ljava/lang/Class;)Ljava/lang/Class;

    #@3
    .line 674
    iget-wide v0, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorMethodId:J

    #@5
    invoke-static {p1, v0, v1}, Ljava/io/ObjectStreamClass;->newInstance(Ljava/lang/Class;J)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method setClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1220
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->resolvedClass:Ljava/lang/Class;

    #@2
    .line 1219
    return-void
.end method

.method setConstructor(J)V
    .locals 1
    .param p1, "newConstructor"    # J

    #@0
    .prologue
    .line 181
    iput-wide p1, p0, Ljava/io/ObjectStreamClass;->constructor:J

    #@2
    .line 180
    return-void
.end method

.method setFields([Ljava/io/ObjectStreamField;)V
    .locals 0
    .param p1, "f"    # [Ljava/io/ObjectStreamField;

    #@0
    .prologue
    .line 1232
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    #@2
    .line 1231
    return-void
.end method

.method setFlags(B)V
    .locals 0
    .param p1, "b"    # B

    #@0
    .prologue
    .line 1258
    iput-byte p1, p0, Ljava/io/ObjectStreamClass;->flags:B

    #@2
    .line 1257
    return-void
.end method

.method setLoadFields([Ljava/io/ObjectStreamField;)V
    .locals 0
    .param p1, "f"    # [Ljava/io/ObjectStreamField;

    #@0
    .prologue
    .line 1244
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    #@2
    .line 1243
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "newName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1269
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->className:Ljava/lang/String;

    #@2
    .line 1268
    return-void
.end method

.method setSerialVersionUID(J)V
    .locals 1
    .param p1, "l"    # J

    #@0
    .prologue
    .line 1279
    iput-wide p1, p0, Ljava/io/ObjectStreamClass;->svUID:J

    #@2
    .line 1278
    return-void
.end method

.method setSuperclass(Ljava/io/ObjectStreamClass;)V
    .locals 0
    .param p1, "c"    # Ljava/io/ObjectStreamClass;

    #@0
    .prologue
    .line 1291
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->superclass:Ljava/io/ObjectStreamClass;

    #@2
    .line 1290
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, ": static final long serialVersionUID ="

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    #@17
    move-result-wide v2

    #@18
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string/jumbo v1, "L;"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method
