.class public Ljava/io/ObjectStreamClass;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectStreamClass$Caches;,
        Ljava/io/ObjectStreamClass$WeakClassKey;,
        Ljava/io/ObjectStreamClass$EntryFuture;,
        Ljava/io/ObjectStreamClass$FieldReflector;,
        Ljava/io/ObjectStreamClass$ExceptionInfo;,
        Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;,
        Ljava/io/ObjectStreamClass$ClassDataSlot;,
        Ljava/io/ObjectStreamClass$MemberSignature;,
        Ljava/io/ObjectStreamClass$DefaultSUIDCompatibilityListener;,
        Ljava/io/ObjectStreamClass$FieldReflectorKey;,
        Ljava/io/ObjectStreamClass$RecordSupport;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final greylist-max-o MAX_SDK_TARGET_FOR_CLINIT_UIDGEN_WORKAROUND:I = 0x17

.field public static final whitelist test-api NO_FIELDS:[Ljava/io/ObjectStreamField;

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final whitelist serialVersionUID:J = -0x54f190e511018478L

.field public static blacklist suidCompatibilityListener:Ljava/io/ObjectStreamClass$DefaultSUIDCompatibilityListener;


# instance fields
.field private blacklist canonicalCtr:Ljava/lang/invoke/MethodHandle;

.field private greylist-max-o cl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private greylist-max-o cons:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile greylist-max-o dataLayout:[Ljava/io/ObjectStreamClass$ClassDataSlot;

.field private greylist-max-o defaultSerializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

.field private blacklist deserializationCtr:Ljava/lang/invoke/MethodHandle;

.field private blacklist deserializationCtrs:Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;

.field private greylist-max-o deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

.field private greylist-max-o externalizable:Z

.field private greylist-max-o fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

.field private greylist fields:[Ljava/io/ObjectStreamField;

.field private greylist-max-o hasBlockExternalData:Z

.field private greylist-max-o hasWriteObjectData:Z

.field private greylist-max-o initialized:Z

.field private greylist-max-o isEnum:Z

.field private greylist-max-o isProxy:Z

.field private blacklist isRecord:Z

.field private greylist-max-o localDesc:Ljava/io/ObjectStreamClass;

.field private greylist-max-o name:Ljava/lang/String;

.field private greylist-max-o numObjFields:I

.field private greylist-max-o primDataSize:I

.field private greylist-max-o readObjectMethod:Ljava/lang/reflect/Method;

.field private greylist-max-o readObjectNoDataMethod:Ljava/lang/reflect/Method;

.field private greylist-max-o readResolveMethod:Ljava/lang/reflect/Method;

.field private greylist-max-o resolveEx:Ljava/lang/ClassNotFoundException;

.field private greylist-max-o serializable:Z

.field private greylist-max-o serializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

.field private volatile greylist-max-o suid:Ljava/lang/Long;

.field private greylist-max-o superDesc:Ljava/io/ObjectStreamClass;

.field private greylist-max-o writeObjectMethod:Ljava/lang/reflect/Method;

.field private greylist-max-o writeReplaceMethod:Ljava/lang/reflect/Method;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcl(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .registers 1

    iget-object p0, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetdeserializationCtr(Ljava/io/ObjectStreamClass;)Ljava/lang/invoke/MethodHandle;
    .registers 1

    iget-object p0, p0, Ljava/io/ObjectStreamClass;->deserializationCtr:Ljava/lang/invoke/MethodHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetdeserializationCtrs(Ljava/io/ObjectStreamClass;)Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;
    .registers 1

    iget-object p0, p0, Ljava/io/ObjectStreamClass;->deserializationCtrs:Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetexternalizable(Ljava/io/ObjectStreamClass;)Z
    .registers 1

    iget-boolean p0, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetisEnum(Ljava/io/ObjectStreamClass;)Z
    .registers 1

    iget-boolean p0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetisRecord(Ljava/io/ObjectStreamClass;)Z
    .registers 1

    iget-boolean p0, p0, Ljava/io/ObjectStreamClass;->isRecord:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetwriteObjectMethod(Ljava/io/ObjectStreamClass;)Ljava/lang/reflect/Method;
    .registers 1

    iget-object p0, p0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputcanonicalCtr(Ljava/io/ObjectStreamClass;Ljava/lang/invoke/MethodHandle;)V
    .registers 2

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->canonicalCtr:Ljava/lang/invoke/MethodHandle;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputcons(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Constructor;)V
    .registers 2

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputdeserializationCtr(Ljava/io/ObjectStreamClass;Ljava/lang/invoke/MethodHandle;)V
    .registers 2

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->deserializationCtr:Ljava/lang/invoke/MethodHandle;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputdeserializationCtrs(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;)V
    .registers 2

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->deserializationCtrs:Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputdeserializeEx(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass$ExceptionInfo;)V
    .registers 2

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputfields(Ljava/io/ObjectStreamClass;[Ljava/io/ObjectStreamField;)V
    .registers 2

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputhasWriteObjectData(Ljava/io/ObjectStreamClass;Z)V
    .registers 2

    iput-boolean p1, p0, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputreadObjectMethod(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)V
    .registers 2

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputreadObjectNoDataMethod(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)V
    .registers 2

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputreadResolveMethod(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)V
    .registers 2

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputserializeEx(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass$ExceptionInfo;)V
    .registers 2

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->serializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputsuid(Ljava/io/ObjectStreamClass;Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputwriteObjectMethod(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)V
    .registers 2

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputwriteReplaceMethod(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)V
    .registers 2

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcomputeFieldOffsets(Ljava/io/ObjectStreamClass;)V
    .registers 1

    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->computeFieldOffsets()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcanonicalRecordCtr(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 1

    invoke-static {p0}, Ljava/io/ObjectStreamClass;->canonicalRecordCtr(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcomputeDefaultSUID(Ljava/lang/Class;)J
    .registers 3

    invoke-static {p0}, Ljava/io/ObjectStreamClass;->computeDefaultSUID(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetClassSignature(Ljava/lang/Class;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getClassSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetDeclaredSUID(Ljava/lang/Class;)Ljava/lang/Long;
    .registers 1

    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getDeclaredSUID(Ljava/lang/Class;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetExternalizableConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 1

    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getExternalizableConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetInheritableMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ljava/io/ObjectStreamClass;->getInheritableMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetMethodSignature([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Ljava/io/ObjectStreamClass;->getMethodSignature([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ljava/io/ObjectStreamClass;->getPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;
    .registers 1

    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetSerializableConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 1

    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getSerializableConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    nop

    .line 82
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    sput-object v0, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    .line 86
    sget-object v0, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    sput-object v0, Ljava/io/ObjectStreamClass;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 2001
    new-instance v0, Ljava/io/ObjectStreamClass$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/io/ObjectStreamClass$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Ljava/io/ObjectStreamClass;->suidCompatibilityListener:Ljava/io/ObjectStreamClass$DefaultSUIDCompatibilityListener;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    .line 584
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/Class;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 487
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    .line 488
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    .line 489
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    .line 490
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    .line 491
    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    .line 492
    invoke-virtual {p1}, Ljava/lang/Class;->isRecord()Z

    move-result v1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isRecord:Z

    .line 493
    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    .line 494
    const-class v1, Ljava/io/Externalizable;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    .line 496
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 497
    .local v1, "superCl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_3e

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v2

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    iput-object v2, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    .line 498
    iput-object p0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    .line 500
    iget-boolean v2, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    if-eqz v2, :cond_50

    .line 501
    new-instance v2, Ljava/io/ObjectStreamClass$2;

    invoke-direct {v2, p0, p1}, Ljava/io/ObjectStreamClass$2;-><init>(Ljava/io/ObjectStreamClass;Ljava/lang/Class;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    goto :goto_5c

    .line 548
    :cond_50
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    .line 549
    sget-object v2, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    iput-object v2, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    .line 553
    :goto_5c
    :try_start_5c
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    invoke-static {v2, p0}, Ljava/io/ObjectStreamClass;->getReflector([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)Ljava/io/ObjectStreamClass$FieldReflector;

    move-result-object v2

    iput-object v2, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;
    :try_end_64
    .catch Ljava/io/InvalidClassException; {:try_start_5c .. :try_end_64} :catch_c1

    .line 557
    nop

    .line 559
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    if-nez v2, :cond_8c

    .line 560
    iget-boolean v2, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-eqz v2, :cond_79

    .line 561
    new-instance v2, Ljava/io/ObjectStreamClass$ExceptionInfo;

    iget-object v3, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string v4, "enum type"

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamClass$ExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    goto :goto_8c

    .line 562
    :cond_79
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    if-nez v2, :cond_8c

    iget-boolean v2, p0, Ljava/io/ObjectStreamClass;->isRecord:Z

    if-nez v2, :cond_8c

    .line 563
    new-instance v2, Ljava/io/ObjectStreamClass$ExceptionInfo;

    iget-object v3, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string v4, "no valid constructor"

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamClass$ExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    .line 566
    :cond_8c
    :goto_8c
    iget-boolean v2, p0, Ljava/io/ObjectStreamClass;->isRecord:Z

    if-eqz v2, :cond_a0

    iget-object v2, p0, Ljava/io/ObjectStreamClass;->canonicalCtr:Ljava/lang/invoke/MethodHandle;

    if-nez v2, :cond_a0

    .line 567
    new-instance v2, Ljava/io/ObjectStreamClass$ExceptionInfo;

    iget-object v3, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string v4, "record canonical constructor not found"

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamClass$ExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    goto :goto_be

    .line 569
    :cond_a0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a1
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v3, v3

    if-ge v2, v3, :cond_be

    .line 570
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v3

    if-nez v3, :cond_bb

    .line 571
    new-instance v3, Ljava/io/ObjectStreamClass$ExceptionInfo;

    iget-object v4, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string v5, "unmatched serializable field(s) declared"

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamClass$ExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Ljava/io/ObjectStreamClass;->defaultSerializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    .line 569
    :cond_bb
    add-int/lit8 v2, v2, 0x1

    goto :goto_a1

    .line 576
    .end local v2    # "i":I
    :cond_be
    :goto_be
    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->initialized:Z

    .line 577
    return-void

    .line 554
    :catch_c1
    move-exception v0

    .line 556
    .local v0, "ex":Ljava/io/InvalidClassException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist canonicalRecordCtr(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 1491
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 1492
    new-instance v0, Ljava/io/ObjectStreamClass$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Ljava/io/ObjectStreamClass$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Class;)V

    .line 1504
    .local v0, "pa":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<Ljava/lang/invoke/MethodHandle;>;"
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/invoke/MethodHandle;

    return-object v1
.end method

.method private static greylist-max-o classNamesEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "name1"    # Ljava/lang/String;
    .param p1, "name2"    # Ljava/lang/String;

    .line 1600
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1601
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1602
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static greylist computeDefaultSUID(Ljava/lang/Class;)J
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)J"
        }
    .end annotation

    .line 1808
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v1, p0

    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d2

    invoke-static {v1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_1d2

    .line 1814
    :cond_12
    :try_start_12
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1815
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1817
    .local v2, "dout":Ljava/io/DataOutputStream;
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1819
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    and-int/lit16 v3, v3, 0x611

    .line 1827
    .local v3, "classMods":I
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1828
    .local v4, "methods":[Ljava/lang/reflect/Method;
    and-int/lit16 v5, v3, 0x200

    if-eqz v5, :cond_3a

    .line 1829
    array-length v5, v4

    if-lez v5, :cond_37

    .line 1830
    or-int/lit16 v5, v3, 0x400

    goto :goto_39

    .line 1831
    :cond_37
    and-int/lit16 v5, v3, -0x401

    :goto_39
    move v3, v5

    .line 1833
    :cond_3a
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1835
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-nez v5, :cond_68

    .line 1841
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    .line 1842
    .local v5, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v6, v5

    new-array v6, v6, [Ljava/lang/String;

    .line 1843
    .local v6, "ifaceNames":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4b
    array-length v8, v5

    if-ge v7, v8, :cond_59

    .line 1844
    aget-object v8, v5, v7

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1843
    add-int/lit8 v7, v7, 0x1

    goto :goto_4b

    .line 1846
    .end local v7    # "i":I
    :cond_59
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1847
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5d
    array-length v8, v6

    if-ge v7, v8, :cond_68

    .line 1848
    aget-object v8, v6, v7

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1847
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    .line 1852
    .end local v5    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v6    # "ifaceNames":[Ljava/lang/String;
    .end local v7    # "i":I
    :cond_68
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 1853
    .local v5, "fields":[Ljava/lang/reflect/Field;
    array-length v6, v5

    new-array v6, v6, [Ljava/io/ObjectStreamClass$MemberSignature;

    .line 1854
    .local v6, "fieldSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_70
    array-length v8, v5

    if-ge v7, v8, :cond_7f

    .line 1855
    new-instance v8, Ljava/io/ObjectStreamClass$MemberSignature;

    aget-object v9, v5, v7

    invoke-direct {v8, v9}, Ljava/io/ObjectStreamClass$MemberSignature;-><init>(Ljava/lang/reflect/Field;)V

    aput-object v8, v6, v7

    .line 1854
    add-int/lit8 v7, v7, 0x1

    goto :goto_70

    .line 1857
    .end local v7    # "i":I
    :cond_7f
    new-instance v7, Ljava/io/ObjectStreamClass$3;

    invoke-direct {v7}, Ljava/io/ObjectStreamClass$3;-><init>()V

    invoke-static {v6, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1862
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_88
    array-length v8, v6

    if-ge v7, v8, :cond_ad

    .line 1863
    aget-object v8, v6, v7

    .line 1864
    .local v8, "sig":Ljava/io/ObjectStreamClass$MemberSignature;
    iget-object v9, v8, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    invoke-interface {v9}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v9

    and-int/lit16 v9, v9, 0xdf

    .line 1868
    .local v9, "mods":I
    and-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_9d

    and-int/lit16 v10, v9, 0x88

    if-nez v10, :cond_aa

    .line 1871
    :cond_9d
    iget-object v10, v8, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1872
    invoke-virtual {v2, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1873
    iget-object v10, v8, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1862
    .end local v8    # "sig":Ljava/io/ObjectStreamClass$MemberSignature;
    .end local v9    # "mods":I
    :cond_aa
    add-int/lit8 v7, v7, 0x1

    goto :goto_88

    .line 1885
    .end local v7    # "i":I
    :cond_ad
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v7

    const/16 v8, 0x17

    const/4 v9, 0x0

    if-gt v7, v8, :cond_bc

    const/4 v7, 0x1

    goto :goto_bd

    :cond_bc
    move v7, v9

    .line 1887
    .local v7, "inheritStaticInitializer":Z
    :goto_bd
    const/4 v8, 0x0

    .line 1888
    .local v8, "warnIncompatibleSUIDChange":Z
    invoke-static {v1, v7}, Ljava/io/ObjectStreamClass;->hasStaticInitializer(Ljava/lang/Class;Z)Z

    move-result v11

    const/16 v12, 0x8

    if-eqz v11, :cond_dc

    .line 1892
    if-eqz v7, :cond_cf

    invoke-static {v1, v9}, Ljava/io/ObjectStreamClass;->hasStaticInitializer(Ljava/lang/Class;Z)Z

    move-result v9

    if-nez v9, :cond_cf

    .line 1895
    const/4 v8, 0x1

    .line 1898
    :cond_cf
    const-string v9, "<clinit>"

    invoke-virtual {v2, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1899
    invoke-virtual {v2, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1900
    const-string v9, "()V"

    invoke-virtual {v2, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1903
    :cond_dc
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 1904
    .local v9, "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    array-length v11, v9

    new-array v11, v11, [Ljava/io/ObjectStreamClass$MemberSignature;

    .line 1905
    .local v11, "consSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_e4
    array-length v14, v9

    if-ge v13, v14, :cond_f3

    .line 1906
    new-instance v14, Ljava/io/ObjectStreamClass$MemberSignature;

    aget-object v15, v9, v13

    invoke-direct {v14, v15}, Ljava/io/ObjectStreamClass$MemberSignature;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v14, v11, v13

    .line 1905
    add-int/lit8 v13, v13, 0x1

    goto :goto_e4

    .line 1908
    .end local v13    # "i":I
    :cond_f3
    new-instance v13, Ljava/io/ObjectStreamClass$4;

    invoke-direct {v13}, Ljava/io/ObjectStreamClass$4;-><init>()V

    invoke-static {v11, v13}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1913
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_fc
    array-length v14, v11

    const/16 v15, 0x2e

    const/16 v16, 0x1

    if-ge v13, v14, :cond_130

    .line 1914
    aget-object v14, v11, v13

    .line 1915
    .local v14, "sig":Ljava/io/ObjectStreamClass$MemberSignature;
    iget-object v12, v14, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    invoke-interface {v12}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v12

    and-int/lit16 v12, v12, 0xd3f

    .line 1920
    .local v12, "mods":I
    and-int/lit8 v18, v12, 0x2

    if-nez v18, :cond_127

    .line 1921
    const-string v10, "<init>"

    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1922
    invoke-virtual {v2, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1923
    iget-object v10, v14, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v0, 0x2f

    .end local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    .local v19, "bout":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v10, v0, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_129

    .line 1920
    .end local v19    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    :cond_127
    move-object/from16 v19, v0

    .line 1913
    .end local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "mods":I
    .end local v14    # "sig":Ljava/io/ObjectStreamClass$MemberSignature;
    .restart local v19    # "bout":Ljava/io/ByteArrayOutputStream;
    :goto_129
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v19

    const/16 v12, 0x8

    goto :goto_fc

    .end local v19    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    :cond_130
    move-object/from16 v19, v0

    .line 1927
    .end local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "i":I
    .restart local v19    # "bout":Ljava/io/ByteArrayOutputStream;
    array-length v0, v4

    new-array v0, v0, [Ljava/io/ObjectStreamClass$MemberSignature;

    .line 1928
    .local v0, "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_136
    array-length v12, v4

    if-ge v10, v12, :cond_145

    .line 1929
    new-instance v12, Ljava/io/ObjectStreamClass$MemberSignature;

    aget-object v13, v4, v10

    invoke-direct {v12, v13}, Ljava/io/ObjectStreamClass$MemberSignature;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v12, v0, v10

    .line 1928
    add-int/lit8 v10, v10, 0x1

    goto :goto_136

    .line 1931
    .end local v10    # "i":I
    :cond_145
    new-instance v10, Ljava/io/ObjectStreamClass$5;

    invoke-direct {v10}, Ljava/io/ObjectStreamClass$5;-><init>()V

    invoke-static {v0, v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1940
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_14e
    array-length v12, v0

    if-ge v10, v12, :cond_17e

    .line 1941
    aget-object v12, v0, v10

    .line 1942
    .local v12, "sig":Ljava/io/ObjectStreamClass$MemberSignature;
    iget-object v13, v12, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    invoke-interface {v13}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v13

    and-int/lit16 v13, v13, 0xd3f

    .line 1947
    .local v13, "mods":I
    and-int/lit8 v14, v13, 0x2

    if-nez v14, :cond_175

    .line 1948
    iget-object v14, v12, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1949
    invoke-virtual {v2, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1950
    iget-object v14, v12, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v0, 0x2f

    .end local v0    # "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    .local v20, "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    invoke-virtual {v14, v0, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_179

    .line 1947
    .end local v20    # "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    .restart local v0    # "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    :cond_175
    move-object/from16 v20, v0

    const/16 v0, 0x2f

    .line 1940
    .end local v0    # "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    .end local v12    # "sig":Ljava/io/ObjectStreamClass$MemberSignature;
    .end local v13    # "mods":I
    .restart local v20    # "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    :goto_179
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v20

    goto :goto_14e

    .end local v20    # "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    .restart local v0    # "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    :cond_17e
    move-object/from16 v20, v0

    .line 1954
    .end local v0    # "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    .end local v10    # "i":I
    .restart local v20    # "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 1956
    const-string v0, "SHA"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1957
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v10

    .line 1958
    .local v10, "hashBytes":[B
    const-wide/16 v12, 0x0

    .line 1959
    .local v12, "hash":J
    array-length v14, v10

    const/16 v15, 0x8

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    .local v14, "i":I
    :goto_19c
    if-ltz v14, :cond_1b4

    .line 1960
    shl-long v16, v12, v15

    aget-byte v15, v10, v14

    and-int/lit16 v15, v15, 0xff

    move-object/from16 v21, v2

    move/from16 v22, v3

    .end local v2    # "dout":Ljava/io/DataOutputStream;
    .end local v3    # "classMods":I
    .local v21, "dout":Ljava/io/DataOutputStream;
    .local v22, "classMods":I
    int-to-long v2, v15

    or-long v12, v16, v2

    .line 1959
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v2, v21

    move/from16 v3, v22

    const/16 v15, 0x8

    goto :goto_19c

    .end local v21    # "dout":Ljava/io/DataOutputStream;
    .end local v22    # "classMods":I
    .restart local v2    # "dout":Ljava/io/DataOutputStream;
    .restart local v3    # "classMods":I
    :cond_1b4
    move-object/from16 v21, v2

    move/from16 v22, v3

    .line 1966
    .end local v2    # "dout":Ljava/io/DataOutputStream;
    .end local v3    # "classMods":I
    .end local v14    # "i":I
    .restart local v21    # "dout":Ljava/io/DataOutputStream;
    .restart local v22    # "classMods":I
    if-eqz v8, :cond_1bf

    .line 1967
    sget-object v2, Ljava/io/ObjectStreamClass;->suidCompatibilityListener:Ljava/io/ObjectStreamClass$DefaultSUIDCompatibilityListener;

    invoke-interface {v2, v1, v12, v13}, Ljava/io/ObjectStreamClass$DefaultSUIDCompatibilityListener;->warnDefaultSUIDTargetVersionDependent(Ljava/lang/Class;J)V
    :try_end_1bf
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1bf} :catch_1cb
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12 .. :try_end_1bf} :catch_1c0

    .line 1970
    :cond_1bf
    return-wide v12

    .line 1973
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v4    # "methods":[Ljava/lang/reflect/Method;
    .end local v5    # "fields":[Ljava/lang/reflect/Field;
    .end local v6    # "fieldSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    .end local v7    # "inheritStaticInitializer":Z
    .end local v8    # "warnIncompatibleSUIDChange":Z
    .end local v9    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v10    # "hashBytes":[B
    .end local v11    # "consSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    .end local v12    # "hash":J
    .end local v19    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v20    # "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    .end local v21    # "dout":Ljava/io/DataOutputStream;
    .end local v22    # "classMods":I
    :catch_1c0
    move-exception v0

    .line 1974
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1971
    .end local v0    # "ex":Ljava/security/NoSuchAlgorithmException;
    :catch_1cb
    move-exception v0

    .line 1972
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1810
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_1d2
    :goto_1d2
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method private greylist computeFieldOffsets()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 1365
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    .line 1366
    iput v0, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    .line 1367
    const/4 v0, -0x1

    .line 1369
    .local v0, "firstObjIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v2, v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_5c

    .line 1370
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    aget-object v2, v2, v1

    .line 1371
    .local v2, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getTypeCode()C

    move-result v4

    sparse-switch v4, :sswitch_data_72

    .line 1404
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    .line 1397
    :sswitch_1e
    iget v4, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    invoke-virtual {v2, v4}, Ljava/io/ObjectStreamField;->setOffset(I)V

    .line 1398
    if-ne v0, v3, :cond_59

    .line 1399
    move v0, v1

    goto :goto_59

    .line 1385
    :sswitch_2b
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    invoke-virtual {v2, v3}, Ljava/io/ObjectStreamField;->setOffset(I)V

    .line 1386
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    .line 1387
    goto :goto_59

    .line 1391
    :sswitch_37
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    invoke-virtual {v2, v3}, Ljava/io/ObjectStreamField;->setOffset(I)V

    .line 1392
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    .line 1393
    goto :goto_59

    .line 1379
    :sswitch_43
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    invoke-virtual {v2, v3}, Ljava/io/ObjectStreamField;->setOffset(I)V

    .line 1380
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    .line 1381
    goto :goto_59

    .line 1374
    :sswitch_4f
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    invoke-virtual {v2, v3}, Ljava/io/ObjectStreamField;->setOffset(I)V

    .line 1375
    nop

    .line 1369
    .end local v2    # "f":Ljava/io/ObjectStreamField;
    :cond_59
    :goto_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1407
    .end local v1    # "i":I
    :cond_5c
    if-eq v0, v3, :cond_71

    iget v1, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    add-int/2addr v1, v0

    iget-object v2, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v2, v2

    if-ne v1, v2, :cond_67

    goto :goto_71

    .line 1410
    :cond_67
    new-instance v1, Ljava/io/InvalidClassException;

    iget-object v2, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string v3, "illegal field order"

    invoke-direct {v1, v2, v3}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1412
    :cond_71
    :goto_71
    return-void

    :sswitch_data_72
    .sparse-switch
        0x42 -> :sswitch_4f
        0x43 -> :sswitch_43
        0x44 -> :sswitch_37
        0x46 -> :sswitch_2b
        0x49 -> :sswitch_2b
        0x4a -> :sswitch_37
        0x4c -> :sswitch_1e
        0x53 -> :sswitch_43
        0x5a -> :sswitch_4f
        0x5b -> :sswitch_1e
    .end sparse-switch
.end method

.method private greylist-max-o getClassDataLayout0()[Ljava/io/ObjectStreamClass$ClassDataSlot;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 1254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1255
    .local v0, "slots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/ObjectStreamClass$ClassDataSlot;>;"
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    .local v1, "start":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    .line 1258
    .local v2, "end":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_9
    if-eqz v2, :cond_18

    const-class v3, Ljava/io/Serializable;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1259
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_9

    .line 1262
    :cond_18
    new-instance v3, Ljava/util/HashSet;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 1264
    .local v3, "oscNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v4, p0

    .local v4, "d":Ljava/io/ObjectStreamClass;
    :goto_1f
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_83

    .line 1265
    iget-object v7, v4, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7b

    .line 1268
    iget-object v7, v4, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1272
    iget-object v7, v4, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    if-eqz v7, :cond_3b

    iget-object v7, v4, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_3d

    :cond_3b
    iget-object v7, v4, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    .line 1273
    .local v7, "searchName":Ljava/lang/String;
    :goto_3d
    const/4 v8, 0x0

    .line 1274
    .local v8, "match":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v9, v1

    .local v9, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3f
    if-eq v9, v2, :cond_52

    .line 1275
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4d

    .line 1276
    move-object v8, v9

    .line 1277
    goto :goto_52

    .line 1274
    :cond_4d
    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    goto :goto_3f

    .line 1282
    .end local v9    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_52
    :goto_52
    if-eqz v8, :cond_6c

    .line 1283
    move-object v9, v1

    .restart local v9    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_55
    if-eq v9, v8, :cond_68

    .line 1284
    new-instance v10, Ljava/io/ObjectStreamClass$ClassDataSlot;

    .line 1285
    invoke-static {v9, v6}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v11

    invoke-direct {v10, v11, v5}, Ljava/io/ObjectStreamClass$ClassDataSlot;-><init>(Ljava/io/ObjectStreamClass;Z)V

    .line 1284
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1283
    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    goto :goto_55

    .line 1287
    .end local v9    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_68
    invoke-virtual {v8}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 1291
    :cond_6c
    new-instance v5, Ljava/io/ObjectStreamClass$ClassDataSlot;

    invoke-direct {v4, v8}, Ljava/io/ObjectStreamClass;->getVariantFor(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v9

    invoke-direct {v5, v9, v6}, Ljava/io/ObjectStreamClass$ClassDataSlot;-><init>(Ljava/io/ObjectStreamClass;Z)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1264
    .end local v7    # "searchName":Ljava/lang/String;
    .end local v8    # "match":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, v4, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    goto :goto_1f

    .line 1266
    :cond_7b
    new-instance v5, Ljava/io/InvalidClassException;

    const-string v6, "Circular reference."

    invoke-direct {v5, v6}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1295
    .end local v4    # "d":Ljava/io/ObjectStreamClass;
    :cond_83
    move-object v4, v1

    .local v4, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_84
    if-eq v4, v2, :cond_97

    .line 1296
    new-instance v7, Ljava/io/ObjectStreamClass$ClassDataSlot;

    .line 1297
    invoke-static {v4, v6}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Ljava/io/ObjectStreamClass$ClassDataSlot;-><init>(Ljava/io/ObjectStreamClass;Z)V

    .line 1296
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1295
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_84

    .line 1301
    .end local v4    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_97
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1302
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/io/ObjectStreamClass$ClassDataSlot;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/io/ObjectStreamClass$ClassDataSlot;

    return-object v4
.end method

.method private static greylist-max-o getClassSignature(Ljava/lang/Class;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1609
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1610
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1611
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1612
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_5

    .line 1614
    :cond_15
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 1615
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_26

    .line 1616
    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_a5

    .line 1617
    :cond_26
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_31

    .line 1618
    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_a5

    .line 1619
    :cond_31
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_3b

    .line 1620
    const/16 v1, 0x4a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a5

    .line 1621
    :cond_3b
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_45

    .line 1622
    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a5

    .line 1623
    :cond_45
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_4f

    .line 1624
    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a5

    .line 1625
    :cond_4f
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_59

    .line 1626
    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a5

    .line 1627
    :cond_59
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_63

    .line 1628
    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a5

    .line 1629
    :cond_63
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_6d

    .line 1630
    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a5

    .line 1631
    :cond_6d
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_77

    .line 1632
    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a5

    .line 1634
    :cond_77
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 1637
    :cond_7d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    :goto_a5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist getConstructorId(Ljava/lang/Class;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)J"
        }
    .end annotation

    .line 2481
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    .line 2482
    .local v0, "targetSdkVersion":I
    if-lez v0, :cond_19

    const/16 v1, 0x18

    if-gt v0, v1, :cond_19

    .line 2483
    const-string v1, "WARNING: ObjectStreamClass.getConstructorId(Class<?>) is private API andwill be removed in a future Android release."

    invoke-static {v1}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 2495
    const-wide v1, 0x1083b99f34b59645L    # 4.065670734428704E-229

    return-wide v1

    .line 2498
    :cond_19
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ObjectStreamClass.getConstructorId(Class<?>) is not supported on SDK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o getDeclaredSUID(Ljava/lang/Class;)Ljava/lang/Long;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 1793
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "serialVersionUID"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1794
    .local v1, "f":Ljava/lang/reflect/Field;
    const/16 v2, 0x18

    .line 1795
    .local v2, "mask":I
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_1d

    .line 1796
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1797
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1e

    return-object v0

    .line 1800
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "mask":I
    :cond_1d
    goto :goto_1f

    .line 1799
    :catch_1e
    move-exception v1

    .line 1801
    :goto_1f
    return-object v0
.end method

.method private static greylist-max-o getDeclaredSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/io/ObjectStreamField;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 1718
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 1720
    .local v0, "serialPersistentFields":[Ljava/io/ObjectStreamField;
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_3
    const-string v3, "serialPersistentFields"

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1721
    .local v3, "f":Ljava/lang/reflect/Field;
    const/16 v4, 0x1a

    .line 1722
    .local v4, "mask":I
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    and-int/2addr v5, v4

    if-ne v5, v4, :cond_1c

    .line 1723
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1724
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/io/ObjectStreamField;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_1d

    move-object v0, v5

    .line 1727
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "mask":I
    :cond_1c
    goto :goto_1e

    .line 1726
    :catch_1d
    move-exception v3

    .line 1728
    :goto_1e
    if-nez v0, :cond_21

    .line 1729
    return-object v1

    .line 1730
    :cond_21
    array-length v1, v0

    if-nez v1, :cond_27

    .line 1731
    sget-object v1, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    return-object v1

    .line 1734
    :cond_27
    array-length v1, v0

    new-array v1, v1, [Ljava/io/ObjectStreamField;

    .line 1736
    .local v1, "boundFields":[Ljava/io/ObjectStreamField;
    new-instance v3, Ljava/util/HashSet;

    array-length v4, v0

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 1738
    .local v3, "fieldNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_31
    array-length v5, v0

    if-ge v4, v5, :cond_95

    .line 1739
    aget-object v5, v0, v4

    .line 1741
    .local v5, "spf":Ljava/io/ObjectStreamField;
    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1742
    .local v6, "fname":Ljava/lang/String;
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7c

    .line 1746
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1749
    :try_start_43
    invoke-virtual {p0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 1750
    .local v7, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v9

    if-ne v8, v9, :cond_64

    .line 1751
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    and-int/lit8 v8, v8, 0x8

    if-nez v8, :cond_64

    .line 1753
    new-instance v8, Ljava/io/ObjectStreamField;

    .line 1754
    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v9

    invoke-direct {v8, v7, v9, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/reflect/Field;ZZ)V

    aput-object v8, v1, v4
    :try_end_64
    .catch Ljava/lang/NoSuchFieldException; {:try_start_43 .. :try_end_64} :catch_65

    .line 1757
    .end local v7    # "f":Ljava/lang/reflect/Field;
    :cond_64
    goto :goto_66

    .line 1756
    :catch_65
    move-exception v7

    .line 1758
    :goto_66
    aget-object v7, v1, v4

    if-nez v7, :cond_79

    .line 1759
    new-instance v7, Ljava/io/ObjectStreamField;

    .line 1760
    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v9

    invoke-direct {v7, v6, v8, v9}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    aput-object v7, v1, v4

    .line 1738
    .end local v5    # "spf":Ljava/io/ObjectStreamField;
    .end local v6    # "fname":Ljava/lang/String;
    :cond_79
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 1743
    .restart local v5    # "spf":Ljava/io/ObjectStreamField;
    .restart local v6    # "fname":Ljava/lang/String;
    :cond_7c
    new-instance v2, Ljava/io/InvalidClassException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "multiple serializable fields named "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1763
    .end local v4    # "i":I
    .end local v5    # "spf":Ljava/io/ObjectStreamField;
    .end local v6    # "fname":Ljava/lang/String;
    :cond_95
    return-object v1
.end method

.method private static greylist-max-o getDefaultSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/io/ObjectStreamField;"
        }
    .end annotation

    .line 1773
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1774
    .local v0, "clFields":[Ljava/lang/reflect/Field;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1775
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/ObjectStreamField;>;"
    const/16 v2, 0x88

    .line 1777
    .local v2, "mask":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    array-length v4, v0

    if-ge v3, v4, :cond_27

    .line 1778
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/2addr v4, v2

    if-nez v4, :cond_24

    .line 1779
    new-instance v4, Ljava/io/ObjectStreamField;

    aget-object v5, v0, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/reflect/Field;ZZ)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1777
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1782
    .end local v3    # "i":I
    :cond_27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1783
    .local v3, "size":I
    if-nez v3, :cond_30

    sget-object v4, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    goto :goto_38

    .line 1784
    :cond_30
    new-array v4, v3, [Ljava/io/ObjectStreamField;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/io/ObjectStreamField;

    .line 1783
    :goto_38
    return-object v4
.end method

.method private static greylist-max-o getExternalizableConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 1441
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    :try_start_1
    move-object v1, v0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1442
    .local v1, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1443
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3
    :try_end_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_10} :catch_17

    and-int/2addr v2, v3

    if-eqz v2, :cond_15

    .line 1444
    move-object v0, v1

    goto :goto_16

    :cond_15
    nop

    .line 1443
    :goto_16
    return-object v0

    .line 1445
    .end local v1    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_17
    move-exception v1

    .line 1446
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    return-object v0
.end method

.method private static greylist-max-o getInheritableMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1525
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p3, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 1526
    .local v0, "meth":Ljava/lang/reflect/Method;
    move-object v1, p0

    .line 1527
    .local v1, "defCl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    if-eqz v1, :cond_10

    .line 1529
    :try_start_4
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_8} :catch_a

    move-object v0, v2

    .line 1530
    goto :goto_10

    .line 1531
    :catch_a
    move-exception v2

    .line 1532
    .local v2, "ex":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 1533
    .end local v2    # "ex":Ljava/lang/NoSuchMethodException;
    goto :goto_2

    .line 1536
    :cond_10
    :goto_10
    const/4 v2, 0x0

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    if-eq v3, p3, :cond_1a

    goto :goto_3c

    .line 1539
    :cond_1a
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1540
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    .line 1541
    .local v3, "mods":I
    and-int/lit16 v4, v3, 0x408

    if-eqz v4, :cond_27

    .line 1542
    return-object v2

    .line 1543
    :cond_27
    and-int/lit8 v4, v3, 0x5

    if-eqz v4, :cond_2c

    .line 1544
    return-object v0

    .line 1545
    :cond_2c
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_34

    .line 1546
    if-ne p0, v1, :cond_33

    move-object v2, v0

    :cond_33
    return-object v2

    .line 1548
    :cond_34
    invoke-static {p0, v1}, Ljava/io/ObjectStreamClass;->packageEquals(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3b

    move-object v2, v0

    :cond_3b
    return-object v2

    .line 1537
    .end local v3    # "mods":I
    :cond_3c
    :goto_3c
    return-object v2
.end method

.method private static greylist-max-o getMethodSignature([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1648
    .local p0, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "retType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1649
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1650
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_1a

    .line 1651
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/io/ObjectStreamClass;->getClassSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1653
    .end local v1    # "i":I
    :cond_1a
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1654
    invoke-static {p1}, Ljava/io/ObjectStreamClass;->getClassSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o getPackageName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1586
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1587
    .local v0, "s":Ljava/lang/String;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1588
    .local v1, "i":I
    if-ltz v1, :cond_12

    .line 1589
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1591
    :cond_12
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1592
    if-ltz v1, :cond_20

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_22

    :cond_20
    const-string v2, ""

    :goto_22
    return-object v2
.end method

.method private static greylist-max-o getPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1562
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p3, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1563
    .local v1, "meth":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1564
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    .line 1565
    .local v2, "mods":I
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_11} :catch_1f

    if-ne v3, p3, :cond_1d

    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_1d

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_1d

    .line 1567
    move-object v0, v1

    goto :goto_1e

    :cond_1d
    nop

    .line 1565
    :goto_1e
    return-object v0

    .line 1568
    .end local v1    # "meth":Ljava/lang/reflect/Method;
    .end local v2    # "mods":I
    :catch_1f
    move-exception v1

    .line 1569
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    return-object v0
.end method

.method private static greylist-max-o getReflector([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)Ljava/io/ObjectStreamClass$FieldReflector;
    .registers 10
    .param p0, "fields"    # [Ljava/io/ObjectStreamField;
    .param p1, "localDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 2318
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    array-length v1, p0

    if-lez v1, :cond_9

    .line 2319
    iget-object v1, p1, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    goto :goto_a

    :cond_9
    move-object v1, v0

    .line 2320
    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_a
    invoke-static {}, Ljava/io/ObjectStreamClass$Caches;->-$$Nest$sfgetreflectorsQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    sget-object v3, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v2, v3}, Ljava/io/ObjectStreamClass;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    .line 2321
    new-instance v2, Ljava/io/ObjectStreamClass$FieldReflectorKey;

    invoke-static {}, Ljava/io/ObjectStreamClass$Caches;->-$$Nest$sfgetreflectorsQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-direct {v2, v1, p0, v3}, Ljava/io/ObjectStreamClass$FieldReflectorKey;-><init>(Ljava/lang/Class;[Ljava/io/ObjectStreamField;Ljava/lang/ref/ReferenceQueue;)V

    .line 2323
    .local v2, "key":Ljava/io/ObjectStreamClass$FieldReflectorKey;
    sget-object v3, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 2324
    .local v3, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    const/4 v4, 0x0

    .line 2325
    .local v4, "entry":Ljava/lang/Object;
    if-eqz v3, :cond_2b

    .line 2326
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    .line 2328
    :cond_2b
    const/4 v5, 0x0

    .line 2329
    .local v5, "future":Ljava/io/ObjectStreamClass$EntryFuture;
    if-nez v4, :cond_55

    .line 2330
    new-instance v6, Ljava/io/ObjectStreamClass$EntryFuture;

    invoke-direct {v6, v0}, Ljava/io/ObjectStreamClass$EntryFuture;-><init>(Ljava/io/ObjectStreamClass-IA;)V

    .line 2331
    .local v6, "newEntry":Ljava/io/ObjectStreamClass$EntryFuture;
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 2333
    .local v0, "newRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_38
    if-eqz v3, :cond_3f

    .line 2334
    sget-object v7, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2336
    :cond_3f
    sget-object v7, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    check-cast v3, Ljava/lang/ref/Reference;

    .line 2337
    if-eqz v3, :cond_4e

    .line 2338
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    .line 2340
    :cond_4e
    if-eqz v3, :cond_52

    if-eqz v4, :cond_38

    .line 2341
    :cond_52
    if-nez v4, :cond_55

    .line 2342
    move-object v5, v6

    .line 2346
    .end local v0    # "newRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    .end local v6    # "newEntry":Ljava/io/ObjectStreamClass$EntryFuture;
    :cond_55
    instance-of v0, v4, Ljava/io/ObjectStreamClass$FieldReflector;

    if-eqz v0, :cond_5d

    .line 2347
    move-object v0, v4

    check-cast v0, Ljava/io/ObjectStreamClass$FieldReflector;

    return-object v0

    .line 2348
    :cond_5d
    instance-of v0, v4, Ljava/io/ObjectStreamClass$EntryFuture;

    if-eqz v0, :cond_69

    .line 2349
    move-object v0, v4

    check-cast v0, Ljava/io/ObjectStreamClass$EntryFuture;

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass$EntryFuture;->get()Ljava/lang/Object;

    move-result-object v4

    goto :goto_85

    .line 2350
    :cond_69
    if-nez v4, :cond_85

    .line 2352
    :try_start_6b
    new-instance v0, Ljava/io/ObjectStreamClass$FieldReflector;

    invoke-static {p0, p1}, Ljava/io/ObjectStreamClass;->matchFields([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)[Ljava/io/ObjectStreamField;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/ObjectStreamClass$FieldReflector;-><init>([Ljava/io/ObjectStreamField;)V
    :try_end_74
    .catchall {:try_start_6b .. :try_end_74} :catchall_76

    .line 2355
    .end local v4    # "entry":Ljava/lang/Object;
    .local v0, "entry":Ljava/lang/Object;
    move-object v4, v0

    goto :goto_78

    .line 2353
    .end local v0    # "entry":Ljava/lang/Object;
    .restart local v4    # "entry":Ljava/lang/Object;
    :catchall_76
    move-exception v0

    .line 2354
    .local v0, "th":Ljava/lang/Throwable;
    move-object v4, v0

    .line 2356
    .end local v0    # "th":Ljava/lang/Throwable;
    :goto_78
    invoke-virtual {v5, v4}, Ljava/io/ObjectStreamClass$EntryFuture;->set(Ljava/lang/Object;)Z

    .line 2357
    sget-object v0, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2, v6}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2360
    :cond_85
    :goto_85
    instance-of v0, v4, Ljava/io/ObjectStreamClass$FieldReflector;

    if-eqz v0, :cond_8d

    .line 2361
    move-object v0, v4

    check-cast v0, Ljava/io/ObjectStreamClass$FieldReflector;

    return-object v0

    .line 2362
    :cond_8d
    instance-of v0, v4, Ljava/io/InvalidClassException;

    if-nez v0, :cond_ba

    .line 2364
    instance-of v0, v4, Ljava/lang/RuntimeException;

    if-nez v0, :cond_b6

    .line 2366
    instance-of v0, v4, Ljava/lang/Error;

    if-eqz v0, :cond_9d

    .line 2367
    move-object v0, v4

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 2369
    :cond_9d
    new-instance v0, Ljava/lang/InternalError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected entry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2365
    :cond_b6
    move-object v0, v4

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 2363
    :cond_ba
    move-object v0, v4

    check-cast v0, Ljava/io/InvalidClassException;

    throw v0
.end method

.method private static greylist-max-o getSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/io/ObjectStreamField;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 1686
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isRecord()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1687
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getDefaultSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;

    move-result-object v0

    .line 1688
    .local v0, "fields":[Ljava/io/ObjectStreamField;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_3d

    .line 1689
    .end local v0    # "fields":[Ljava/io/ObjectStreamField;
    :cond_e
    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-class v0, Ljava/io/Externalizable;

    .line 1690
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1691
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1692
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1694
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getDeclaredSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;

    move-result-object v0

    move-object v1, v0

    .local v1, "fields":[Ljava/io/ObjectStreamField;
    if-nez v0, :cond_36

    .line 1695
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getDefaultSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;

    move-result-object v0

    .end local v1    # "fields":[Ljava/io/ObjectStreamField;
    .restart local v0    # "fields":[Ljava/io/ObjectStreamField;
    goto :goto_37

    .line 1694
    .end local v0    # "fields":[Ljava/io/ObjectStreamField;
    .restart local v1    # "fields":[Ljava/io/ObjectStreamField;
    :cond_36
    move-object v0, v1

    .line 1697
    .end local v1    # "fields":[Ljava/io/ObjectStreamField;
    .restart local v0    # "fields":[Ljava/io/ObjectStreamField;
    :goto_37
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_3d

    .line 1699
    .end local v0    # "fields":[Ljava/io/ObjectStreamField;
    :cond_3b
    sget-object v0, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    .line 1701
    .restart local v0    # "fields":[Ljava/io/ObjectStreamField;
    :goto_3d
    return-object v0
.end method

.method private static greylist-max-o getSerializableConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 1456
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 1457
    .local v0, "initCl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 1458
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    if-nez v1, :cond_1

    .line 1459
    return-object v2

    .line 1463
    :cond_12
    :try_start_12
    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1464
    .local v1, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3

    .line 1465
    .local v3, "mods":I
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_40

    and-int/lit8 v4, v3, 0x5

    if-nez v4, :cond_2c

    .line 1467
    invoke-static {p0, v0}, Ljava/io/ObjectStreamClass;->packageEquals(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2c

    goto :goto_40

    .line 1473
    :cond_2c
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, p0, :cond_3b

    .line 1474
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4, p0}, Ljava/lang/reflect/Constructor;->serializationCopy(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    move-object v1, v4

    .line 1477
    :cond_3b
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_3f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12 .. :try_end_3f} :catch_41

    .line 1478
    return-object v1

    .line 1469
    :cond_40
    :goto_40
    return-object v2

    .line 1479
    .end local v1    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "mods":I
    :catch_41
    move-exception v1

    .line 1480
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    return-object v2
.end method

.method private greylist-max-o getVariantFor(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 1422
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    if-ne v0, p1, :cond_5

    .line 1423
    return-object p0

    .line 1425
    :cond_5
    new-instance v0, Ljava/io/ObjectStreamClass;

    invoke-direct {v0}, Ljava/io/ObjectStreamClass;-><init>()V

    .line 1426
    .local v0, "desc":Ljava/io/ObjectStreamClass;
    iget-boolean v1, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 1427
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ObjectStreamClass;->initProxy(Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V

    goto :goto_1a

    .line 1429
    :cond_15
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v0, p0, p1, v2, v1}, Ljava/io/ObjectStreamClass;->initNonProxy(Ljava/io/ObjectStreamClass;Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V

    .line 1431
    :goto_1a
    return-object v0
.end method

.method private static native greylist-max-o hasStaticInitializer(Ljava/lang/Class;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation
.end method

.method static synthetic blacklist lambda$canonicalRecordCtr$0(I)[Ljava/lang/Class;
    .registers 2
    .param p0, "x$0"    # I

    .line 1495
    new-array v0, p0, [Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic blacklist lambda$canonicalRecordCtr$1(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .param p0, "cls"    # Ljava/lang/Class;

    .line 1493
    invoke-virtual {p0}, Ljava/lang/Class;->getRecordComponents()[Ljava/lang/reflect/RecordComponent;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/io/ObjectStreamClass$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/io/ObjectStreamClass$$ExternalSyntheticLambda0;-><init>()V

    .line 1494
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/io/ObjectStreamClass$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/io/ObjectStreamClass$$ExternalSyntheticLambda1;-><init>()V

    .line 1495
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    .line 1497
    .local v0, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_1c
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1498
    .local v1, "ctr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1499
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectConstructor(Ljava/lang/reflect/Constructor;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_2c} :catch_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1c .. :try_end_2c} :catch_2d

    return-object v2

    .line 1500
    .end local v1    # "ctr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_2d
    move-exception v1

    .line 1501
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    const/4 v2, 0x0

    return-object v2
.end method

.method static synthetic blacklist lambda$static$2(Ljava/lang/Class;J)V
    .registers 5
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "hash"    # J

    .line 2003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " relies on its default SUID which is dependent on the app\'s targetSdkVersion. To avoid problems during upgrade add the following to class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2005
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n    private static final long serialVersionUID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "L;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2003
    invoke-static {v0}, Ljava/lang/System;->logW(Ljava/lang/String;)V

    .line 2007
    return-void
.end method

.method public static whitelist test-api lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .line 238
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;
    .registers 9
    .param p1, "all"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .line 350
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-nez p1, :cond_c

    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 351
    return-object v0

    .line 353
    :cond_c
    invoke-static {}, Ljava/io/ObjectStreamClass$Caches;->-$$Nest$sfgetlocalDescsQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    sget-object v2, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1, v2}, Ljava/io/ObjectStreamClass;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    .line 354
    new-instance v1, Ljava/io/ObjectStreamClass$WeakClassKey;

    invoke-static {}, Ljava/io/ObjectStreamClass$Caches;->-$$Nest$sfgetlocalDescsQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/ObjectStreamClass$WeakClassKey;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V

    .line 355
    .local v1, "key":Ljava/io/ObjectStreamClass$WeakClassKey;
    sget-object v2, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 356
    .local v2, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    const/4 v3, 0x0

    .line 357
    .local v3, "entry":Ljava/lang/Object;
    if-eqz v2, :cond_2d

    .line 358
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 360
    :cond_2d
    const/4 v4, 0x0

    .line 361
    .local v4, "future":Ljava/io/ObjectStreamClass$EntryFuture;
    if-nez v3, :cond_57

    .line 362
    new-instance v5, Ljava/io/ObjectStreamClass$EntryFuture;

    invoke-direct {v5, v0}, Ljava/io/ObjectStreamClass$EntryFuture;-><init>(Ljava/io/ObjectStreamClass-IA;)V

    .line 363
    .local v5, "newEntry":Ljava/io/ObjectStreamClass$EntryFuture;
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 365
    .local v0, "newRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_3a
    if-eqz v2, :cond_41

    .line 366
    sget-object v6, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 368
    :cond_41
    sget-object v6, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, Ljava/lang/ref/Reference;

    .line 369
    if-eqz v2, :cond_50

    .line 370
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 372
    :cond_50
    if-eqz v2, :cond_54

    if-eqz v3, :cond_3a

    .line 373
    :cond_54
    if-nez v3, :cond_57

    .line 374
    move-object v4, v5

    .line 378
    .end local v0    # "newRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    .end local v5    # "newEntry":Ljava/io/ObjectStreamClass$EntryFuture;
    :cond_57
    instance-of v0, v3, Ljava/io/ObjectStreamClass;

    if-eqz v0, :cond_5f

    .line 379
    move-object v0, v3

    check-cast v0, Ljava/io/ObjectStreamClass;

    return-object v0

    .line 381
    :cond_5f
    instance-of v0, v3, Ljava/io/ObjectStreamClass$EntryFuture;

    if-eqz v0, :cond_76

    .line 382
    move-object v4, v3

    check-cast v4, Ljava/io/ObjectStreamClass$EntryFuture;

    .line 383
    invoke-virtual {v4}, Ljava/io/ObjectStreamClass$EntryFuture;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    if-ne v0, v5, :cond_72

    .line 390
    const/4 v3, 0x0

    goto :goto_76

    .line 392
    :cond_72
    invoke-virtual {v4}, Ljava/io/ObjectStreamClass$EntryFuture;->get()Ljava/lang/Object;

    move-result-object v3

    .line 395
    :cond_76
    :goto_76
    if-nez v3, :cond_96

    .line 397
    :try_start_78
    new-instance v0, Ljava/io/ObjectStreamClass;

    invoke-direct {v0, p0}, Ljava/io/ObjectStreamClass;-><init>(Ljava/lang/Class;)V
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_7f

    .line 400
    .end local v3    # "entry":Ljava/lang/Object;
    .local v0, "entry":Ljava/lang/Object;
    move-object v3, v0

    goto :goto_81

    .line 398
    .end local v0    # "entry":Ljava/lang/Object;
    .restart local v3    # "entry":Ljava/lang/Object;
    :catchall_7f
    move-exception v0

    .line 399
    .local v0, "th":Ljava/lang/Throwable;
    move-object v3, v0

    .line 401
    .end local v0    # "th":Ljava/lang/Throwable;
    :goto_81
    invoke-virtual {v4, v3}, Ljava/io/ObjectStreamClass$EntryFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 402
    sget-object v0, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_96

    .line 405
    :cond_92
    invoke-virtual {v4}, Ljava/io/ObjectStreamClass$EntryFuture;->get()Ljava/lang/Object;

    move-result-object v3

    .line 409
    :cond_96
    :goto_96
    instance-of v0, v3, Ljava/io/ObjectStreamClass;

    if-eqz v0, :cond_9e

    .line 410
    move-object v0, v3

    check-cast v0, Ljava/io/ObjectStreamClass;

    return-object v0

    .line 411
    :cond_9e
    instance-of v0, v3, Ljava/lang/RuntimeException;

    if-nez v0, :cond_c3

    .line 413
    instance-of v0, v3, Ljava/lang/Error;

    if-eqz v0, :cond_aa

    .line 414
    move-object v0, v3

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 416
    :cond_aa
    new-instance v0, Ljava/lang/InternalError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_c3
    move-object v0, v3

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method

.method public static whitelist test-api lookupAny(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .line 250
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o matchFields([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)[Ljava/io/ObjectStreamField;
    .registers 13
    .param p0, "fields"    # [Ljava/io/ObjectStreamField;
    .param p1, "localDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 2434
    if-eqz p1, :cond_5

    .line 2435
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    goto :goto_7

    :cond_5
    sget-object v0, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    .line 2448
    .local v0, "localFields":[Ljava/io/ObjectStreamField;
    :goto_7
    array-length v1, p0

    new-array v1, v1, [Ljava/io/ObjectStreamField;

    .line 2449
    .local v1, "matches":[Ljava/io/ObjectStreamField;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    array-length v3, p0

    if-ge v2, v3, :cond_7a

    .line 2450
    aget-object v3, p0, v2

    .local v3, "f":Ljava/io/ObjectStreamField;
    const/4 v4, 0x0

    .line 2451
    .local v4, "m":Ljava/io/ObjectStreamField;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_12
    array-length v6, v0

    const/4 v7, 0x0

    if-ge v5, v6, :cond_5e

    .line 2452
    aget-object v6, v0, v5

    .line 2454
    .local v6, "lf":Ljava/io/ObjectStreamField;
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 2455
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->getSignature()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 2456
    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v8

    if-eqz v8, :cond_49

    .line 2457
    new-instance v8, Ljava/io/ObjectStreamField;

    .line 2458
    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v10

    invoke-direct {v8, v9, v10, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/reflect/Field;ZZ)V

    move-object v4, v8

    .end local v4    # "m":Ljava/io/ObjectStreamField;
    .local v8, "m":Ljava/io/ObjectStreamField;
    goto :goto_5b

    .line 2460
    .end local v8    # "m":Ljava/io/ObjectStreamField;
    .restart local v4    # "m":Ljava/io/ObjectStreamField;
    :cond_49
    new-instance v7, Ljava/io/ObjectStreamField;

    .line 2461
    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->getSignature()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v10

    invoke-direct {v7, v8, v9, v10}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v4, v7

    .line 2451
    .end local v6    # "lf":Ljava/io/ObjectStreamField;
    :cond_5b
    :goto_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 2465
    .end local v5    # "j":I
    :cond_5e
    if-nez v4, :cond_6e

    .line 2466
    new-instance v5, Ljava/io/ObjectStreamField;

    .line 2467
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v4, v5

    .line 2469
    :cond_6e
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getOffset()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/ObjectStreamField;->setOffset(I)V

    .line 2470
    aput-object v4, v1, v2

    .line 2449
    .end local v3    # "f":Ljava/io/ObjectStreamField;
    .end local v4    # "m":Ljava/io/ObjectStreamField;
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2472
    .end local v2    # "i":I
    :cond_7a
    return-object v1
.end method

.method private static greylist newInstance(Ljava/lang/Class;J)Ljava/lang/Object;
    .registers 7
    .param p1, "constructorId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;J)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2502
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    .line 2503
    .local v0, "targetSdkVersion":I
    if-lez v0, :cond_1c

    const/16 v1, 0x18

    if-gt v0, v1, :cond_1c

    .line 2504
    const-string v1, "WARNING: ObjectStreamClass.newInstance(Class<?>, long) is private API andwill be removed in a future Android release."

    invoke-static {v1}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 2506
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljdk/internal/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 2509
    :cond_1c
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ObjectStreamClass.newInstance(Class<?>, long) is not supported on SDK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o packageEquals(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1578
    .local p0, "cl1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "cl2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_1a

    .line 1579
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/io/ObjectStreamClass;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 1578
    :goto_1b
    return v0
.end method

.method static greylist-max-o processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "+",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Class<",
            "*>;>;*>;)V"
        }
    .end annotation

    .line 2523
    .local p0, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Class<*>;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<+Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;*>;"
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    move-object v1, v0

    .local v1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Ljava/lang/Class<*>;>;"
    if-eqz v0, :cond_c

    .line 2524
    invoke-interface {p1, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2526
    :cond_c
    return-void
.end method

.method private final greylist-max-o requireInitialized()V
    .registers 3

    .line 820
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->initialized:Z

    if-eqz v0, :cond_5

    .line 822
    return-void

    .line 821
    :cond_5
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Unexpected call when not initialized"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o throwMiscException(Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "th"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1664
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_17

    .line 1666
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_c

    .line 1667
    move-object v0, p0

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 1669
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected exception type"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1670
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1671
    throw v0

    .line 1665
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_17
    move-object v0, p0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method


# virtual methods
.method greylist-max-o checkDefaultSerialize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 856
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 857
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->defaultSerializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    if-nez v0, :cond_8

    .line 860
    return-void

    .line 858
    :cond_8
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->defaultSerializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass$ExceptionInfo;->newInvalidClassException()Ljava/io/InvalidClassException;

    move-result-object v0

    throw v0
.end method

.method greylist-max-o checkDeserialize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 830
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 831
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    if-nez v0, :cond_8

    .line 834
    return-void

    .line 832
    :cond_8
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass$ExceptionInfo;->newInvalidClassException()Ljava/io/InvalidClassException;

    move-result-object v0

    throw v0
.end method

.method greylist-max-o checkSerialize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 842
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 843
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->serializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    if-nez v0, :cond_8

    .line 846
    return-void

    .line 844
    :cond_8
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->serializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass$ExceptionInfo;->newInvalidClassException()Ljava/io/InvalidClassException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api forClass()Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 297
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    if-nez v0, :cond_6

    .line 298
    const/4 v0, 0x0

    return-object v0

    .line 300
    :cond_6
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 301
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 302
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    .line 303
    .local v0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iget-object v2, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v1, v2}, Lsun/reflect/misc/ReflectUtil;->needsPackageAccessCheck(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 304
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    invoke-static {v1}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 307
    .end local v0    # "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_28
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    return-object v0
.end method

.method greylist-max-o getClassDataLayout()[Ljava/io/ObjectStreamClass$ClassDataSlot;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 1245
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->dataLayout:[Ljava/io/ObjectStreamClass$ClassDataSlot;

    if-nez v0, :cond_a

    .line 1246
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->getClassDataLayout0()[Ljava/io/ObjectStreamClass$ClassDataSlot;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->dataLayout:[Ljava/io/ObjectStreamClass$ClassDataSlot;

    .line 1248
    :cond_a
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->dataLayout:[Ljava/io/ObjectStreamClass$ClassDataSlot;

    return-object v0
.end method

.method public whitelist test-api getField(Ljava/lang/String;)Ljava/io/ObjectStreamField;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/io/ObjectStreamField;"
        }
    .end annotation

    .line 900
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v1, v1

    if-ge v0, v1, :cond_32

    .line 901
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    aget-object v1, v1, v0

    .line 902
    .local v1, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 903
    if-eqz p2, :cond_2e

    const-class v2, Ljava/lang/Object;

    if-ne p2, v2, :cond_21

    .line 904
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_2e

    .line 908
    :cond_21
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 909
    .local v2, "ftype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_2f

    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 910
    return-object v1

    .line 906
    .end local v2    # "ftype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2e
    :goto_2e
    return-object v1

    .line 900
    .end local v1    # "f":Ljava/io/ObjectStreamField;
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 914
    .end local v0    # "i":I
    :cond_32
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getFields()[Ljava/io/ObjectStreamField;
    .registers 2

    .line 319
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getFields(Z)[Ljava/io/ObjectStreamField;
    .registers 3
    .param p1, "copy"    # Z

    .line 890
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    if-eqz p1, :cond_a

    invoke-virtual {v0}, [Ljava/io/ObjectStreamField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/ObjectStreamField;

    :cond_a
    return-object v0
.end method

.method greylist getLocalDesc()Ljava/io/ObjectStreamClass;
    .registers 2

    .line 879
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 880
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    return-object v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 261
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    return-object v0
.end method

.method greylist getNumObjFields()I
    .registers 2

    .line 1318
    iget v0, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    return v0
.end method

.method greylist-max-o getObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "vals"    # [Ljava/lang/Object;

    .line 1347
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectStreamClass$FieldReflector;->getObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1348
    return-void
.end method

.method greylist getPrimDataSize()I
    .registers 2

    .line 1310
    iget v0, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    return v0
.end method

.method greylist-max-o getPrimFieldValues(Ljava/lang/Object;[B)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "buf"    # [B

    .line 1328
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectStreamClass$FieldReflector;->getPrimFieldValues(Ljava/lang/Object;[B)V

    .line 1329
    return-void
.end method

.method blacklist getRecordConstructor()Ljava/lang/invoke/MethodHandle;
    .registers 2

    .line 1512
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->canonicalCtr:Ljava/lang/invoke/MethodHandle;

    return-object v0
.end method

.method greylist-max-o getResolveException()Ljava/lang/ClassNotFoundException;
    .registers 2

    .line 813
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->resolveEx:Ljava/lang/ClassNotFoundException;

    return-object v0
.end method

.method public whitelist test-api getSerialVersionUID()J
    .registers 3

    .line 274
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    if-nez v0, :cond_18

    .line 275
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isRecord:Z

    if-eqz v0, :cond_b

    .line 276
    const-wide/16 v0, 0x0

    return-wide v0

    .line 278
    :cond_b
    new-instance v0, Ljava/io/ObjectStreamClass$1;

    invoke-direct {v0, p0}, Ljava/io/ObjectStreamClass$1;-><init>(Ljava/io/ObjectStreamClass;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    .line 286
    :cond_18
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method greylist-max-o getSuperDesc()Ljava/io/ObjectStreamClass;
    .registers 2

    .line 868
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 869
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    return-object v0
.end method

.method greylist-max-o hasBlockExternalData()Z
    .registers 2

    .line 967
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 968
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    return v0
.end method

.method greylist hasReadObjectMethod()Z
    .registers 2

    .line 1009
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 1010
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method greylist hasReadObjectNoDataMethod()Z
    .registers 2

    .line 1019
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 1020
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method greylist-max-o hasReadResolveMethod()Z
    .registers 2

    .line 1037
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 1038
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method greylist hasWriteObjectData()Z
    .registers 2

    .line 977
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 978
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    return v0
.end method

.method greylist-max-o hasWriteObjectMethod()Z
    .registers 2

    .line 999
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 1000
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method greylist-max-o hasWriteReplaceMethod()Z
    .registers 2

    .line 1028
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 1029
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method greylist-max-o initNonProxy(Ljava/io/ObjectStreamClass;Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V
    .registers 13
    .param p1, "model"    # Ljava/io/ObjectStreamClass;
    .param p3, "resolveEx"    # Ljava/lang/ClassNotFoundException;
    .param p4, "superDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            "Ljava/lang/Class<",
            "*>;",
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

    .line 631
    .local p2, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 632
    .local v0, "suid":J
    const/4 v2, 0x0

    .line 633
    .local v2, "osc":Ljava/io/ObjectStreamClass;
    const/4 v3, 0x1

    if-eqz p2, :cond_e1

    .line 634
    invoke-static {p2, v3}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v2

    .line 635
    iget-boolean v4, v2, Ljava/io/ObjectStreamClass;->isProxy:Z

    if-nez v4, :cond_d9

    .line 639
    iget-boolean v4, p1, Ljava/io/ObjectStreamClass;->isEnum:Z

    iget-boolean v5, v2, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-eq v4, v5, :cond_2d

    .line 640
    new-instance v3, Ljava/io/InvalidClassException;

    iget-boolean v4, p1, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-eqz v4, :cond_27

    .line 641
    const-string v4, "cannot bind enum descriptor to a non-enum class"

    goto :goto_29

    .line 642
    :cond_27
    const-string v4, "cannot bind non-enum descriptor to an enum class"

    :goto_29
    invoke-direct {v3, v4}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 645
    :cond_2d
    iget-boolean v4, p1, Ljava/io/ObjectStreamClass;->serializable:Z

    iget-boolean v5, v2, Ljava/io/ObjectStreamClass;->serializable:Z

    if-ne v4, v5, :cond_71

    .line 646
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-nez v4, :cond_71

    invoke-virtual {p2}, Ljava/lang/Class;->isRecord()Z

    move-result v4

    if-nez v4, :cond_71

    .line 647
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-nez v4, :cond_48

    goto :goto_71

    .line 648
    :cond_48
    new-instance v3, Ljava/io/InvalidClassException;

    iget-object v4, v2, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "local class incompatible: stream classdesc serialVersionUID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", local class serialVersionUID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 652
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 655
    :cond_71
    :goto_71
    iget-object v4, p1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    iget-object v5, v2, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/io/ObjectStreamClass;->classNamesEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 661
    iget-boolean v4, p1, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-nez v4, :cond_e1

    .line 662
    iget-boolean v4, p1, Ljava/io/ObjectStreamClass;->serializable:Z

    iget-boolean v5, v2, Ljava/io/ObjectStreamClass;->serializable:Z

    if-ne v4, v5, :cond_96

    iget-boolean v4, p1, Ljava/io/ObjectStreamClass;->externalizable:Z

    iget-boolean v5, v2, Ljava/io/ObjectStreamClass;->externalizable:Z

    if-ne v4, v5, :cond_8c

    goto :goto_96

    .line 664
    :cond_8c
    new-instance v3, Ljava/io/InvalidClassException;

    iget-object v4, v2, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string v5, "Serializable incompatible with Externalizable"

    invoke-direct {v3, v4, v5}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 668
    :cond_96
    :goto_96
    iget-boolean v4, p1, Ljava/io/ObjectStreamClass;->serializable:Z

    iget-boolean v5, v2, Ljava/io/ObjectStreamClass;->serializable:Z

    if-ne v4, v5, :cond_aa

    iget-boolean v4, p1, Ljava/io/ObjectStreamClass;->externalizable:Z

    iget-boolean v5, v2, Ljava/io/ObjectStreamClass;->externalizable:Z

    if-ne v4, v5, :cond_aa

    iget-boolean v4, p1, Ljava/io/ObjectStreamClass;->serializable:Z

    if-nez v4, :cond_e1

    iget-boolean v4, p1, Ljava/io/ObjectStreamClass;->externalizable:Z

    if-nez v4, :cond_e1

    .line 671
    :cond_aa
    new-instance v4, Ljava/io/ObjectStreamClass$ExceptionInfo;

    iget-object v5, v2, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string v6, "class invalid for deserialization"

    invoke-direct {v4, v5, v6}, Ljava/io/ObjectStreamClass$ExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    goto :goto_e1

    .line 656
    :cond_b6
    new-instance v3, Ljava/io/InvalidClassException;

    iget-object v4, v2, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "local class name incompatible with stream class name \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 636
    :cond_d9
    new-instance v3, Ljava/io/InvalidClassException;

    const-string v4, "cannot bind non-proxy descriptor to a proxy class"

    invoke-direct {v3, v4}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 677
    :cond_e1
    :goto_e1
    iput-object p2, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    .line 678
    iput-object p3, p0, Ljava/io/ObjectStreamClass;->resolveEx:Ljava/lang/ClassNotFoundException;

    .line 679
    iput-object p4, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    .line 680
    iget-object v4, p1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    iput-object v4, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    .line 681
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    .line 682
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    .line 683
    iget-boolean v4, p1, Ljava/io/ObjectStreamClass;->isEnum:Z

    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    .line 684
    iget-boolean v4, p1, Ljava/io/ObjectStreamClass;->serializable:Z

    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    .line 685
    iget-boolean v4, p1, Ljava/io/ObjectStreamClass;->externalizable:Z

    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    .line 686
    iget-boolean v4, p1, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    .line 687
    iget-boolean v4, p1, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    .line 688
    iget-object v4, p1, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    iput-object v4, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    .line 689
    iget v4, p1, Ljava/io/ObjectStreamClass;->primDataSize:I

    iput v4, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    .line 690
    iget v4, p1, Ljava/io/ObjectStreamClass;->numObjFields:I

    iput v4, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    .line 692
    if-eqz v2, :cond_159

    .line 693
    iput-object v2, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    .line 694
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-boolean v4, v4, Ljava/io/ObjectStreamClass;->isRecord:Z

    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->isRecord:Z

    .line 696
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v4, v4, Ljava/io/ObjectStreamClass;->canonicalCtr:Ljava/lang/invoke/MethodHandle;

    iput-object v4, p0, Ljava/io/ObjectStreamClass;->canonicalCtr:Ljava/lang/invoke/MethodHandle;

    .line 698
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v4, v4, Ljava/io/ObjectStreamClass;->deserializationCtrs:Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;

    iput-object v4, p0, Ljava/io/ObjectStreamClass;->deserializationCtrs:Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;

    .line 699
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v4, v4, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    iput-object v4, p0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    .line 700
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v4, v4, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    iput-object v4, p0, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    .line 701
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v4, v4, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    iput-object v4, p0, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    .line 702
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v4, v4, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    iput-object v4, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    .line 703
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v4, v4, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    iput-object v4, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    .line 704
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    if-nez v4, :cond_152

    .line 705
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v4, v4, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    iput-object v4, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    .line 707
    :cond_152
    nop

    .line 708
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v4, v4, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    iput-object v4, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    .line 711
    :cond_159
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    iget-object v5, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    invoke-static {v4, v5}, Ljava/io/ObjectStreamClass;->getReflector([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)Ljava/io/ObjectStreamClass$FieldReflector;

    move-result-object v4

    iput-object v4, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    .line 713
    iget-object v4, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    invoke-virtual {v4}, Ljava/io/ObjectStreamClass$FieldReflector;->getFields()[Ljava/io/ObjectStreamField;

    move-result-object v4

    iput-object v4, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    .line 714
    iput-boolean v3, p0, Ljava/io/ObjectStreamClass;->initialized:Z

    .line 715
    return-void
.end method

.method greylist-max-o initProxy(Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V
    .registers 8
    .param p2, "resolveEx"    # Ljava/lang/ClassNotFoundException;
    .param p3, "superDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
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

    .line 594
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 595
    .local v0, "osc":Ljava/io/ObjectStreamClass;
    const/4 v1, 0x1

    if-eqz p1, :cond_15

    .line 596
    invoke-static {p1, v1}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 597
    iget-boolean v2, v0, Ljava/io/ObjectStreamClass;->isProxy:Z

    if-eqz v2, :cond_d

    goto :goto_15

    .line 598
    :cond_d
    new-instance v1, Ljava/io/InvalidClassException;

    const-string v2, "cannot bind proxy descriptor to a non-proxy class"

    invoke-direct {v1, v2}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 602
    :cond_15
    :goto_15
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    .line 603
    iput-object p2, p0, Ljava/io/ObjectStreamClass;->resolveEx:Ljava/lang/ClassNotFoundException;

    .line 604
    iput-object p3, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    .line 605
    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    .line 606
    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    .line 607
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    .line 608
    sget-object v2, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    iput-object v2, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    .line 609
    if-eqz v0, :cond_53

    .line 610
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    .line 611
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v2, v2, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    iput-object v2, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    .line 612
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-boolean v2, v2, Ljava/io/ObjectStreamClass;->externalizable:Z

    iput-boolean v2, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    .line 613
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v2, v2, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    iput-object v2, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    .line 614
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v2, v2, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    iput-object v2, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    .line 615
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v2, v2, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    iput-object v2, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    .line 616
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    iget-object v2, v2, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    iput-object v2, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    .line 618
    :cond_53
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    iget-object v3, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    invoke-static {v2, v3}, Ljava/io/ObjectStreamClass;->getReflector([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)Ljava/io/ObjectStreamClass$FieldReflector;

    move-result-object v2

    iput-object v2, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    .line 619
    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->initialized:Z

    .line 620
    return-void
.end method

.method greylist-max-o invokeReadObject(Ljava/lang/Object;Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1106
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 1107
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_32

    .line 1109
    :try_start_7
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_10} :catch_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_28

    .line 1119
    :catch_11
    move-exception v0

    .line 1121
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1110
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_18
    move-exception v0

    .line 1111
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 1112
    .local v1, "th":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/ClassNotFoundException;

    if-nez v2, :cond_2e

    .line 1114
    instance-of v2, v1, Ljava/io/IOException;

    if-nez v2, :cond_2a

    .line 1117
    invoke-static {v1}, Ljava/io/ObjectStreamClass;->throwMiscException(Ljava/lang/Throwable;)V

    .line 1122
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "th":Ljava/lang/Throwable;
    :goto_28
    nop

    .line 1126
    return-void

    .line 1115
    .restart local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .restart local v1    # "th":Ljava/lang/Throwable;
    :cond_2a
    move-object v2, v1

    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 1113
    :cond_2e
    move-object v2, v1

    check-cast v2, Ljava/lang/ClassNotFoundException;

    throw v2

    .line 1124
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "th":Ljava/lang/Throwable;
    :cond_32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method greylist-max-o invokeReadObjectNoData(Ljava/lang/Object;)V
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1137
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 1138
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2a

    .line 1140
    :try_start_7
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_10} :catch_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_24

    .line 1148
    :catch_11
    move-exception v0

    .line 1150
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1141
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_18
    move-exception v0

    .line 1142
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 1143
    .local v1, "th":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/io/ObjectStreamException;

    if-nez v2, :cond_26

    .line 1146
    invoke-static {v1}, Ljava/io/ObjectStreamClass;->throwMiscException(Ljava/lang/Throwable;)V

    .line 1151
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "th":Ljava/lang/Throwable;
    :goto_24
    nop

    .line 1155
    return-void

    .line 1144
    .restart local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .restart local v1    # "th":Ljava/lang/Throwable;
    :cond_26
    move-object v2, v1

    check-cast v2, Ljava/io/ObjectStreamException;

    throw v2

    .line 1153
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "th":Ljava/lang/Throwable;
    :cond_2a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method greylist-max-o invokeReadResolve(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1196
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 1197
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2f

    .line 1199
    :try_start_7
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_11} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_11} :catch_12

    return-object v0

    .line 1208
    :catch_12
    move-exception v0

    .line 1210
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1200
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_19
    move-exception v0

    .line 1201
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 1202
    .local v1, "th":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/io/ObjectStreamException;

    if-eqz v2, :cond_26

    .line 1203
    move-object v2, v1

    check-cast v2, Ljava/io/ObjectStreamException;

    throw v2

    .line 1205
    :cond_26
    invoke-static {v1}, Ljava/io/ObjectStreamClass;->throwMiscException(Ljava/lang/Throwable;)V

    .line 1206
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1213
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "th":Ljava/lang/Throwable;
    :cond_2f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method greylist-max-o invokeWriteObject(Ljava/lang/Object;Ljava/io/ObjectOutputStream;)V
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1076
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 1077
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2a

    .line 1079
    :try_start_7
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_10} :catch_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_24

    .line 1087
    :catch_11
    move-exception v0

    .line 1089
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1080
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_18
    move-exception v0

    .line 1081
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 1082
    .local v1, "th":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/io/IOException;

    if-nez v2, :cond_26

    .line 1085
    invoke-static {v1}, Ljava/io/ObjectStreamClass;->throwMiscException(Ljava/lang/Throwable;)V

    .line 1090
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "th":Ljava/lang/Throwable;
    :goto_24
    nop

    .line 1094
    return-void

    .line 1083
    .restart local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .restart local v1    # "th":Ljava/lang/Throwable;
    :cond_26
    move-object v2, v1

    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 1092
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "th":Ljava/lang/Throwable;
    :cond_2a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method greylist-max-o invokeWriteReplace(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1166
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 1167
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2f

    .line 1169
    :try_start_7
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_11} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_11} :catch_12

    return-object v0

    .line 1178
    :catch_12
    move-exception v0

    .line 1180
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1170
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_19
    move-exception v0

    .line 1171
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 1172
    .local v1, "th":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/io/ObjectStreamException;

    if-eqz v2, :cond_26

    .line 1173
    move-object v2, v1

    check-cast v2, Ljava/io/ObjectStreamException;

    throw v2

    .line 1175
    :cond_26
    invoke-static {v1}, Ljava/io/ObjectStreamClass;->throwMiscException(Ljava/lang/Throwable;)V

    .line 1176
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1183
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "th":Ljava/lang/Throwable;
    :cond_2f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method greylist-max-o isEnum()Z
    .registers 2

    .line 931
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 932
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    return v0
.end method

.method greylist-max-o isExternalizable()Z
    .registers 2

    .line 949
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 950
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    return v0
.end method

.method greylist-max-o isInstantiable()Z
    .registers 2

    .line 989
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 990
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method greylist-max-o isProxy()Z
    .registers 2

    .line 922
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 923
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    return v0
.end method

.method blacklist isRecord()Z
    .registers 2

    .line 940
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 941
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isRecord:Z

    return v0
.end method

.method greylist-max-o isSerializable()Z
    .registers 2

    .line 958
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 959
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    return v0
.end method

.method greylist newInstance()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1054
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 1055
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_18

    .line 1057
    :try_start_7
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_10} :catch_11

    return-object v0

    .line 1058
    :catch_11
    move-exception v0

    .line 1060
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1063
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method greylist-max-o readNonProxy(Ljava/io/ObjectInputStream;)V
    .registers 14
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 726
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    .line 727
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    .line 728
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    .line 730
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v1

    .line 731
    .local v1, "flags":B
    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_1e

    move v2, v3

    goto :goto_1f

    :cond_1e
    move v2, v0

    :goto_1f
    iput-boolean v2, p0, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    .line 733
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_27

    move v2, v3

    goto :goto_28

    :cond_27
    move v2, v0

    :goto_28
    iput-boolean v2, p0, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    .line 735
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_30

    move v2, v3

    goto :goto_31

    :cond_30
    move v2, v0

    :goto_31
    iput-boolean v2, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    .line 737
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_39

    move v2, v3

    goto :goto_3a

    :cond_39
    move v2, v0

    .line 739
    .local v2, "sflag":Z
    :goto_3a
    iget-boolean v4, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    if-eqz v4, :cond_4b

    if-nez v2, :cond_41

    goto :goto_4b

    .line 740
    :cond_41
    new-instance v0, Ljava/io/InvalidClassException;

    iget-object v3, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string v4, "serializable and externalizable flags conflict"

    invoke-direct {v0, v3, v4}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_4b
    :goto_4b
    iget-boolean v4, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    if-nez v4, :cond_54

    if-eqz v2, :cond_52

    goto :goto_54

    :cond_52
    move v4, v0

    goto :goto_55

    :cond_54
    :goto_54
    move v4, v3

    :goto_55
    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    .line 744
    and-int/lit8 v4, v1, 0x10

    if-eqz v4, :cond_5d

    move v4, v3

    goto :goto_5e

    :cond_5d
    move v4, v0

    :goto_5e
    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    .line 745
    iget-boolean v4, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-eqz v4, :cond_8e

    iget-object v4, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_71

    goto :goto_8e

    .line 746
    :cond_71
    new-instance v0, Ljava/io/InvalidClassException;

    iget-object v3, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enum descriptor has non-zero serialVersionUID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_8e
    :goto_8e
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readShort()S

    move-result v4

    .line 751
    .local v4, "numFields":I
    iget-boolean v5, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-eqz v5, :cond_b4

    if-nez v4, :cond_99

    goto :goto_b4

    .line 752
    :cond_99
    new-instance v0, Ljava/io/InvalidClassException;

    iget-object v3, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enum descriptor has non-zero field count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 755
    :cond_b4
    :goto_b4
    if-lez v4, :cond_b9

    .line 756
    new-array v5, v4, [Ljava/io/ObjectStreamField;

    goto :goto_bb

    :cond_b9
    sget-object v5, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    :goto_bb
    iput-object v5, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    .line 757
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_be
    if-ge v5, v4, :cond_10f

    .line 758
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v6

    int-to-char v6, v6

    .line 759
    .local v6, "tcode":C
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 760
    .local v7, "fname":Ljava/lang/String;
    const/16 v8, 0x4c

    if-eq v6, v8, :cond_dc

    const/16 v8, 0x5b

    if-ne v6, v8, :cond_d2

    goto :goto_dc

    .line 761
    :cond_d2
    new-instance v8, Ljava/lang/String;

    new-array v9, v3, [C

    aput-char v6, v9, v0

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    goto :goto_e0

    :cond_dc
    :goto_dc
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readTypeString()Ljava/lang/String;

    move-result-object v8

    .line 763
    .local v8, "signature":Ljava/lang/String;
    :goto_e0
    :try_start_e0
    iget-object v9, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    new-instance v10, Ljava/io/ObjectStreamField;

    invoke-direct {v10, v7, v8, v0}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v10, v9, v5
    :try_end_e9
    .catch Ljava/lang/RuntimeException; {:try_start_e0 .. :try_end_e9} :catch_ed

    .line 767
    nop

    .line 757
    .end local v6    # "tcode":C
    .end local v7    # "fname":Ljava/lang/String;
    .end local v8    # "signature":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_be

    .line 764
    .restart local v6    # "tcode":C
    .restart local v7    # "fname":Ljava/lang/String;
    .restart local v8    # "signature":Ljava/lang/String;
    :catch_ed
    move-exception v0

    .line 765
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/io/InvalidClassException;

    iget-object v9, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid descriptor for field "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-virtual {v3, v0}, Ljava/io/InvalidClassException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;

    throw v3

    .line 769
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v5    # "i":I
    .end local v6    # "tcode":C
    .end local v7    # "fname":Ljava/lang/String;
    .end local v8    # "signature":Ljava/lang/String;
    :cond_10f
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->computeFieldOffsets()V

    .line 770
    return-void
.end method

.method greylist-max-o setObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "vals"    # [Ljava/lang/Object;

    .line 1356
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectStreamClass$FieldReflector;->setObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1357
    return-void
.end method

.method greylist-max-o setPrimFieldValues(Ljava/lang/Object;[B)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "buf"    # [B

    .line 1338
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectStreamClass$FieldReflector;->setPrimFieldValues(Ljava/lang/Object;[B)V

    .line 1339
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": static final long serialVersionUID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 338
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "L;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    return-object v0
.end method

.method greylist-max-o writeNonProxy(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 776
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 779
    const/4 v0, 0x0

    .line 780
    .local v0, "flags":B
    iget-boolean v1, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    if-eqz v1, :cond_1f

    .line 781
    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 782
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->getProtocolVersion()I

    move-result v1

    .line 783
    .local v1, "protocol":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_27

    .line 784
    or-int/lit8 v2, v0, 0x8

    int-to-byte v0, v2

    goto :goto_27

    .line 786
    .end local v1    # "protocol":I
    :cond_1f
    iget-boolean v1, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    if-eqz v1, :cond_27

    .line 787
    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    goto :goto_28

    .line 786
    :cond_27
    :goto_27
    nop

    .line 789
    :goto_28
    iget-boolean v1, p0, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    if-eqz v1, :cond_2f

    .line 790
    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 792
    :cond_2f
    iget-boolean v1, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-eqz v1, :cond_36

    .line 793
    or-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    .line 795
    :cond_36
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    .line 797
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeShort(I)V

    .line 798
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_40
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v2, v2

    if-ge v1, v2, :cond_67

    .line 799
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    aget-object v2, v2, v1

    .line 800
    .local v2, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getTypeCode()C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    .line 801
    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 802
    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_64

    .line 803
    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeTypeString(Ljava/lang/String;)V

    .line 798
    .end local v2    # "f":Ljava/io/ObjectStreamField;
    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 806
    .end local v1    # "i":I
    :cond_67
    return-void
.end method
