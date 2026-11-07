.class final Ljava/lang/constant/DirectMethodHandleDescImpl;
.super Ljava/lang/Object;
.source "DirectMethodHandleDescImpl.java"

# interfaces
.implements Ljava/lang/constant/DirectMethodHandleDesc;


# instance fields
.field private final blacklist invocationType:Ljava/lang/constant/MethodTypeDesc;

.field private final blacklist kind:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

.field private final blacklist name:Ljava/lang/String;

.field private final blacklist owner:Ljava/lang/constant/ClassDesc;


# direct methods
.method constructor blacklist <init>(Ljava/lang/constant/DirectMethodHandleDesc$Kind;Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/MethodTypeDesc;)V
    .registers 8
    .param p1, "kind"    # Ljava/lang/constant/DirectMethodHandleDesc$Kind;
    .param p2, "owner"    # Ljava/lang/constant/ClassDesc;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/constant/MethodTypeDesc;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->CONSTRUCTOR:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    if-ne p1, v0, :cond_9

    .line 67
    const-string p3, "<init>"

    .line 69
    :cond_9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/constant/ClassDesc;

    invoke-static {v0}, Ljava/lang/constant/ConstantUtils;->validateClassOrInterface(Ljava/lang/constant/ClassDesc;)V

    .line 71
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/constant/ConstantUtils;->validateMemberName(Ljava/lang/String;Z)Ljava/lang/String;

    .line 72
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Ljava/lang/constant/DirectMethodHandleDescImpl$1;->$SwitchMap$java$lang$constant$DirectMethodHandleDesc$Kind:[I

    invoke-virtual {p1}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_68

    goto :goto_42

    .line 79
    :pswitch_2f
    invoke-static {p4, v1, v2}, Ljava/lang/constant/DirectMethodHandleDescImpl;->validateFieldType(Ljava/lang/constant/MethodTypeDesc;ZZ)V

    goto :goto_42

    .line 78
    :pswitch_33
    invoke-static {p4, v2, v2}, Ljava/lang/constant/DirectMethodHandleDescImpl;->validateFieldType(Ljava/lang/constant/MethodTypeDesc;ZZ)V

    goto :goto_42

    .line 77
    :pswitch_37
    invoke-static {p4, v1, v1}, Ljava/lang/constant/DirectMethodHandleDescImpl;->validateFieldType(Ljava/lang/constant/MethodTypeDesc;ZZ)V

    goto :goto_42

    .line 76
    :pswitch_3b
    invoke-static {p4, v2, v1}, Ljava/lang/constant/DirectMethodHandleDescImpl;->validateFieldType(Ljava/lang/constant/MethodTypeDesc;ZZ)V

    goto :goto_42

    .line 75
    :pswitch_3f
    invoke-static {p4}, Ljava/lang/constant/DirectMethodHandleDescImpl;->validateConstructor(Ljava/lang/constant/MethodTypeDesc;)V

    .line 82
    :goto_42
    iput-object p1, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->kind:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    .line 83
    iput-object p2, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->owner:Ljava/lang/constant/ClassDesc;

    .line 84
    iput-object p3, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->name:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->isVirtualMethod()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 86
    new-array v0, v1, [Ljava/lang/constant/ClassDesc;

    aput-object p2, v0, v2

    invoke-interface {p4, v2, v0}, Ljava/lang/constant/MethodTypeDesc;->insertParameterTypes(I[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->invocationType:Ljava/lang/constant/MethodTypeDesc;

    goto :goto_66

    .line 87
    :cond_59
    sget-object v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->CONSTRUCTOR:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    if-ne p1, v0, :cond_64

    .line 88
    invoke-interface {p4, p2}, Ljava/lang/constant/MethodTypeDesc;->changeReturnType(Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->invocationType:Ljava/lang/constant/MethodTypeDesc;

    goto :goto_66

    .line 90
    :cond_64
    iput-object p4, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->invocationType:Ljava/lang/constant/MethodTypeDesc;

    .line 91
    :goto_66
    return-void

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
    .end packed-switch
.end method

.method private static blacklist validateConstructor(Ljava/lang/constant/MethodTypeDesc;)V
    .registers 4
    .param p0, "type"    # Ljava/lang/constant/MethodTypeDesc;

    .line 106
    invoke-interface {p0}, Ljava/lang/constant/MethodTypeDesc;->returnType()Ljava/lang/constant/ClassDesc;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/constant/ClassDesc;->descriptorString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 109
    return-void

    .line 107
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected type of (T*)V for constructor, found %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist validateFieldType(Ljava/lang/constant/MethodTypeDesc;ZZ)V
    .registers 9
    .param p0, "type"    # Ljava/lang/constant/MethodTypeDesc;
    .param p1, "isSetter"    # Z
    .param p2, "isVirtual"    # Z

    .line 94
    invoke-interface {p0}, Ljava/lang/constant/MethodTypeDesc;->returnType()Ljava/lang/constant/ClassDesc;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/constant/ClassDesc;->descriptorString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 95
    .local v0, "isVoid":Z
    add-int v2, p1, p2

    .line 96
    .local v2, "expectedParams":I
    if-ne v0, p1, :cond_27

    .line 97
    invoke-interface {p0}, Ljava/lang/constant/MethodTypeDesc;->parameterCount()I

    move-result v3

    if-ne v3, v2, :cond_27

    if-eqz p2, :cond_26

    .line 98
    const/4 v3, 0x0

    invoke-interface {p0, v3}, Ljava/lang/constant/MethodTypeDesc;->parameterType(I)Ljava/lang/constant/ClassDesc;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/constant/ClassDesc;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_27

    .line 103
    :cond_26
    return-void

    .line 99
    :cond_27
    :goto_27
    const-string v3, ""

    if-eqz p2, :cond_2e

    const-string v4, "R"

    goto :goto_2f

    :cond_2e
    move-object v4, v3

    .line 100
    :goto_2f
    const-string v5, "T"

    if-eqz p1, :cond_34

    move-object v3, v5

    :cond_34
    if-eqz p1, :cond_37

    goto :goto_38

    :cond_37
    move-object v1, v5

    :goto_38
    filled-new-array {v4, v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 99
    const-string v3, "(%s%s)%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "expectedType":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Expected type of %s for getter, found %s"

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 185
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 186
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3c

    .line 187
    :cond_12
    move-object v2, p1

    check-cast v2, Ljava/lang/constant/DirectMethodHandleDescImpl;

    .line 188
    .local v2, "desc":Ljava/lang/constant/DirectMethodHandleDescImpl;
    iget-object v3, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->kind:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    iget-object v4, v2, Ljava/lang/constant/DirectMethodHandleDescImpl;->kind:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    if-ne v3, v4, :cond_3a

    iget-object v3, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->owner:Ljava/lang/constant/ClassDesc;

    iget-object v4, v2, Ljava/lang/constant/DirectMethodHandleDescImpl;->owner:Ljava/lang/constant/ClassDesc;

    .line 189
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->name:Ljava/lang/String;

    iget-object v4, v2, Ljava/lang/constant/DirectMethodHandleDescImpl;->name:Ljava/lang/String;

    .line 190
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->invocationType:Ljava/lang/constant/MethodTypeDesc;

    iget-object v4, v2, Ljava/lang/constant/DirectMethodHandleDescImpl;->invocationType:Ljava/lang/constant/MethodTypeDesc;

    .line 191
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, v1

    .line 188
    :goto_3b
    return v0

    .line 186
    .end local v2    # "desc":Ljava/lang/constant/DirectMethodHandleDescImpl;
    :cond_3c
    :goto_3c
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 196
    iget-object v0, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->kind:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    iget-object v1, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->owner:Ljava/lang/constant/ClassDesc;

    iget-object v2, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->name:Ljava/lang/String;

    iget-object v3, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->invocationType:Ljava/lang/constant/MethodTypeDesc;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist invocationType()Ljava/lang/constant/MethodTypeDesc;
    .registers 2

    .line 132
    iget-object v0, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->invocationType:Ljava/lang/constant/MethodTypeDesc;

    return-object v0
.end method

.method public blacklist isOwnerInterface()Z
    .registers 2

    .line 118
    iget-object v0, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->kind:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    iget-boolean v0, v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->isInterface:Z

    return v0
.end method

.method public blacklist kind()Ljava/lang/constant/DirectMethodHandleDesc$Kind;
    .registers 2

    .line 112
    iget-object v0, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->kind:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    return-object v0
.end method

.method public blacklist lookupDescriptor()Ljava/lang/String;
    .registers 4

    .line 137
    sget-object v0, Ljava/lang/constant/DirectMethodHandleDescImpl$1;->$SwitchMap$java$lang$constant$DirectMethodHandleDesc$Kind:[I

    iget-object v1, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->kind:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    invoke-virtual {v1}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_5c

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->kind:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    invoke-virtual {v1}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :pswitch_1b
    iget-object v0, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->invocationType:Ljava/lang/constant/MethodTypeDesc;

    invoke-interface {v0}, Ljava/lang/constant/MethodTypeDesc;->descriptorString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5a

    .line 141
    :pswitch_22
    iget-object v0, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->invocationType:Ljava/lang/constant/MethodTypeDesc;

    invoke-interface {v0, v1, v2}, Ljava/lang/constant/MethodTypeDesc;->dropParameterTypes(II)Ljava/lang/constant/MethodTypeDesc;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/constant/MethodTypeDesc;->descriptorString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5a

    .line 148
    :pswitch_2d
    iget-object v0, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->invocationType:Ljava/lang/constant/MethodTypeDesc;

    invoke-interface {v0, v1}, Ljava/lang/constant/MethodTypeDesc;->parameterType(I)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/constant/ClassDesc;->descriptorString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5a

    .line 147
    :pswitch_38
    iget-object v0, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->invocationType:Ljava/lang/constant/MethodTypeDesc;

    invoke-interface {v0, v2}, Ljava/lang/constant/MethodTypeDesc;->parameterType(I)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/constant/ClassDesc;->descriptorString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5a

    .line 146
    :pswitch_43
    iget-object v0, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->invocationType:Ljava/lang/constant/MethodTypeDesc;

    invoke-interface {v0}, Ljava/lang/constant/MethodTypeDesc;->returnType()Ljava/lang/constant/ClassDesc;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/constant/ClassDesc;->descriptorString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5a

    .line 144
    :pswitch_4e
    iget-object v0, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->invocationType:Ljava/lang/constant/MethodTypeDesc;

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_void:Ljava/lang/constant/ClassDesc;

    invoke-interface {v0, v1}, Ljava/lang/constant/MethodTypeDesc;->changeReturnType(Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/constant/MethodTypeDesc;->descriptorString()Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_5a
    return-object v0

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_43
        :pswitch_38
        :pswitch_43
        :pswitch_2d
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public blacklist methodName()Ljava/lang/String;
    .registers 2

    .line 127
    iget-object v0, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist owner()Ljava/lang/constant/ClassDesc;
    .registers 2

    .line 122
    iget-object v0, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->owner:Ljava/lang/constant/ClassDesc;

    return-object v0
.end method

.method public blacklist refKind()I
    .registers 2

    .line 115
    iget-object v0, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->kind:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    iget v0, v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->refKind:I

    return v0
.end method

.method public bridge synthetic blacklist resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/constant/DirectMethodHandleDescImpl;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    return-object p1
.end method

.method public blacklist resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/invoke/MethodHandle;
    .registers 7
    .param p1, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->owner:Ljava/lang/constant/ClassDesc;

    invoke-interface {v0, p1}, Ljava/lang/constant/ClassDesc;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;

    move-result-object v0

    .line 156
    .local v0, "resolvedOwner":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/constant/DirectMethodHandleDescImpl;->invocationType()Ljava/lang/constant/MethodTypeDesc;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/lang/constant/MethodTypeDesc;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/invoke/MethodType;

    .line 157
    .local v1, "invocationType":Ljava/lang/invoke/MethodType;
    sget-object v2, Ljava/lang/constant/DirectMethodHandleDescImpl$1;->$SwitchMap$java$lang$constant$DirectMethodHandleDesc$Kind:[I

    iget-object v3, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->kind:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    invoke-virtual {v3}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_84

    .line 169
    new-instance v2, Ljava/lang/IllegalStateException;

    iget-object v3, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->kind:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    invoke-virtual {v3}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :pswitch_2b
    iget-object v2, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    goto :goto_82

    .line 163
    :pswitch_32
    iget-object v2, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v0, v2, v3, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->findSpecial(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    goto :goto_82

    .line 161
    :pswitch_41
    iget-object v2, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    goto :goto_82

    .line 168
    :pswitch_4c
    iget-object v2, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findStaticSetter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    goto :goto_82

    .line 166
    :pswitch_57
    iget-object v2, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findStaticGetter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    goto :goto_82

    .line 167
    :pswitch_62
    iget-object v2, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findSetter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    goto :goto_82

    .line 165
    :pswitch_6d
    iget-object v2, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findGetter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    goto :goto_82

    .line 164
    :pswitch_78
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findConstructor(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    .line 157
    :goto_82
    return-object v2

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_78
        :pswitch_6d
        :pswitch_62
        :pswitch_57
        :pswitch_4c
        :pswitch_41
        :pswitch_32
        :pswitch_41
        :pswitch_32
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 201
    iget-object v0, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->kind:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    iget-object v1, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->owner:Ljava/lang/constant/ClassDesc;

    invoke-interface {v1}, Ljava/lang/constant/ClassDesc;->displayName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->name:Ljava/lang/String;

    iget-object v3, p0, Ljava/lang/constant/DirectMethodHandleDescImpl;->invocationType:Ljava/lang/constant/MethodTypeDesc;

    invoke-interface {v3}, Ljava/lang/constant/MethodTypeDesc;->displayDescriptor()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "MethodHandleDesc[%s/%s::%s%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
