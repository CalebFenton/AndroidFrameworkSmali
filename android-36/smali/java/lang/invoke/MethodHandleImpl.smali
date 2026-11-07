.class public Ljava/lang/invoke/MethodHandleImpl;
.super Ljava/lang/invoke/MethodHandle;
.source "MethodHandleImpl.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/invoke/MethodHandleImpl$HandleInfo;
    }
.end annotation


# instance fields
.field blacklist field:Ljava/lang/reflect/Field;

.field private final blacklist target:J

.field private blacklist targetClassOrMethodHandleInfo:Ljava/lang/Object;


# direct methods
.method constructor greylist-max-o <init>(JILjava/lang/invoke/MethodType;)V
    .registers 7
    .param p1, "artFieldOrMethod"    # J
    .param p3, "handleKind"    # I
    .param p4, "type"    # Ljava/lang/invoke/MethodType;

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/lang/invoke/MethodHandle;-><init>(JILjava/lang/invoke/MethodType;)V

    .line 52
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandleImpl;->getMemberInternal()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/MethodHandleImpl;->targetClassOrMethodHandleInfo:Ljava/lang/Object;

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/lang/invoke/MethodHandleImpl;->target:J

    .line 54
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/reflect/Field;ILjava/lang/invoke/MethodType;)V
    .registers 6
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "handleKind"    # I
    .param p3, "type"    # Ljava/lang/invoke/MethodType;

    .line 57
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getArtField()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/lang/invoke/MethodHandle;-><init>(JILjava/lang/invoke/MethodType;)V

    .line 60
    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdk/internal/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    .line 61
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandleImpl;->getMemberInternal()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/MethodHandleImpl;->targetClassOrMethodHandleInfo:Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Ljava/lang/invoke/MethodHandleImpl;->field:Ljava/lang/reflect/Field;

    .line 63
    invoke-static {p2, p1}, Ljava/lang/invoke/MethodHandleImpl;->resolveTarget(ILjava/lang/reflect/Field;)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/lang/invoke/MethodHandleImpl;->target:J

    .line 64
    return-void
.end method

.method private static blacklist resolveTarget(ILjava/lang/reflect/Field;)J
    .registers 9
    .param p0, "handleKind"    # I
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "name":Ljava/lang/StringBuilder;
    const/16 v1, 0xa

    const/16 v2, 0x9

    const/16 v3, 0xb

    if-eq p0, v1, :cond_36

    const/16 v1, 0x8

    if-ne p0, v1, :cond_12

    goto :goto_36

    .line 71
    :cond_12
    if-eq p0, v3, :cond_30

    if-ne p0, v2, :cond_17

    goto :goto_30

    .line 74
    :cond_17
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected handleKind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 72
    :cond_30
    :goto_30
    const-string v1, "put"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 70
    :cond_36
    :goto_36
    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :goto_3b
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 79
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 80
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "fieldTypeName":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .end local v4    # "fieldTypeName":Ljava/lang/String;
    goto :goto_63

    .line 84
    :cond_5e
    const-string v4, "Reference"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :goto_63
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 88
    const-string v4, "Volatile"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_72
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    .local v4, "signature":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_87

    .line 93
    const-class v5, Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_87
    if-eq p0, v3, :cond_8b

    if-ne p0, v2, :cond_9a

    .line 96
    :cond_8b
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_95

    .line 97
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    .line 99
    :cond_95
    const-class v2, Ljava/lang/Object;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_9a
    :goto_9a
    const-class v2, Ljava/lang/invoke/MethodHandleImpl;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/lang/invoke/DirectMethodHandle;->getImplementation(Ljava/lang/String;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 104
    .local v2, "target":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_ae

    .line 107
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getArtMethod()J

    move-result-wide v5

    return-wide v5

    .line 105
    :cond_ae
    new-instance v3, Ljava/lang/InternalError;

    const-string v5, "DirectMethodHandle$Holder is missing a method"

    invoke-direct {v3, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 112
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public native greylist-max-o getMemberInternal()Ljava/lang/reflect/Member;
.end method

.method greylist-max-o reveal()Ljava/lang/invoke/MethodHandleInfo;
    .registers 3

    .line 116
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl;->targetClassOrMethodHandleInfo:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;

    .line 122
    .local v0, "handleInfo":Ljava/lang/invoke/MethodHandleImpl$HandleInfo;
    return-object v0

    .line 117
    .end local v0    # "handleInfo":Ljava/lang/invoke/MethodHandleImpl$HandleInfo;
    :cond_9
    new-instance v0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandleImpl;->getMemberInternal()Ljava/lang/reflect/Member;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;-><init>(Ljava/lang/reflect/Member;Ljava/lang/invoke/MethodHandle;)V

    .line 118
    .local v0, "info":Ljava/lang/invoke/MethodHandleInfo;
    iput-object v0, p0, Ljava/lang/invoke/MethodHandleImpl;->targetClassOrMethodHandleInfo:Ljava/lang/Object;

    .line 119
    return-object v0
.end method
