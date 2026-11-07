.class public Ljava/lang/constant/DynamicCallSiteDesc;
.super Ljava/lang/Object;
.source "DynamicCallSiteDesc.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

.field private final blacklist bootstrapMethod:Ljava/lang/constant/DirectMethodHandleDesc;

.field private final blacklist invocationName:Ljava/lang/String;

.field private final blacklist invocationType:Ljava/lang/constant/MethodTypeDesc;


# direct methods
.method public static synthetic blacklist $r8$lambda$vF2VvuFUa-tu3hP19oq2GBK17DA(Ljava/lang/constant/ConstantDesc;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 49
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/String;Ljava/lang/constant/MethodTypeDesc;[Ljava/lang/constant/ConstantDesc;)V
    .registers 8
    .param p1, "bootstrapMethod"    # Ljava/lang/constant/DirectMethodHandleDesc;
    .param p2, "invocationName"    # Ljava/lang/String;
    .param p3, "invocationType"    # Ljava/lang/constant/MethodTypeDesc;
    .param p4, "bootstrapArgs"    # [Ljava/lang/constant/ConstantDesc;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/constant/ConstantUtils;->validateMemberName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/constant/DynamicCallSiteDesc;->invocationName:Ljava/lang/String;

    .line 79
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/constant/MethodTypeDesc;

    iput-object v0, p0, Ljava/lang/constant/DynamicCallSiteDesc;->invocationType:Ljava/lang/constant/MethodTypeDesc;

    .line 80
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/constant/DirectMethodHandleDesc;

    iput-object v0, p0, Ljava/lang/constant/DynamicCallSiteDesc;->bootstrapMethod:Ljava/lang/constant/DirectMethodHandleDesc;

    .line 81
    invoke-virtual {p4}, [Ljava/lang/constant/ConstantDesc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/constant/ConstantDesc;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/constant/ConstantDesc;

    iput-object v0, p0, Ljava/lang/constant/DynamicCallSiteDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2f
    iget-object v1, p0, Ljava/lang/constant/DynamicCallSiteDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    array-length v1, v1

    if-ge v0, v1, :cond_3e

    .line 83
    iget-object v1, p0, Ljava/lang/constant/DynamicCallSiteDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 85
    .end local v0    # "i":I
    :cond_3e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_45

    .line 87
    return-void

    .line 86
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal invocation name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist of(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/String;Ljava/lang/constant/MethodTypeDesc;)Ljava/lang/constant/DynamicCallSiteDesc;
    .registers 5
    .param p0, "bootstrapMethod"    # Ljava/lang/constant/DirectMethodHandleDesc;
    .param p1, "invocationName"    # Ljava/lang/String;
    .param p2, "invocationType"    # Ljava/lang/constant/MethodTypeDesc;

    .line 132
    new-instance v0, Ljava/lang/constant/DynamicCallSiteDesc;

    sget-object v1, Ljava/lang/constant/ConstantUtils;->EMPTY_CONSTANTDESC:[Ljava/lang/constant/ConstantDesc;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/constant/DynamicCallSiteDesc;-><init>(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/String;Ljava/lang/constant/MethodTypeDesc;[Ljava/lang/constant/ConstantDesc;)V

    return-object v0
.end method

.method public static varargs blacklist of(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/String;Ljava/lang/constant/MethodTypeDesc;[Ljava/lang/constant/ConstantDesc;)Ljava/lang/constant/DynamicCallSiteDesc;
    .registers 5
    .param p0, "bootstrapMethod"    # Ljava/lang/constant/DirectMethodHandleDesc;
    .param p1, "invocationName"    # Ljava/lang/String;
    .param p2, "invocationType"    # Ljava/lang/constant/MethodTypeDesc;
    .param p3, "bootstrapArgs"    # [Ljava/lang/constant/ConstantDesc;

    .line 112
    new-instance v0, Ljava/lang/constant/DynamicCallSiteDesc;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/constant/DynamicCallSiteDesc;-><init>(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/String;Ljava/lang/constant/MethodTypeDesc;[Ljava/lang/constant/ConstantDesc;)V

    return-object v0
.end method

.method public static blacklist of(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/constant/MethodTypeDesc;)Ljava/lang/constant/DynamicCallSiteDesc;
    .registers 3
    .param p0, "bootstrapMethod"    # Ljava/lang/constant/DirectMethodHandleDesc;
    .param p1, "invocationType"    # Ljava/lang/constant/MethodTypeDesc;

    .line 150
    const-string v0, "_"

    invoke-static {p0, v0, p1}, Ljava/lang/constant/DynamicCallSiteDesc;->of(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/String;Ljava/lang/constant/MethodTypeDesc;)Ljava/lang/constant/DynamicCallSiteDesc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist bootstrapArgs()[Ljava/lang/constant/ConstantDesc;
    .registers 2

    .line 225
    iget-object v0, p0, Ljava/lang/constant/DynamicCallSiteDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    invoke-virtual {v0}, [Ljava/lang/constant/ConstantDesc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/constant/ConstantDesc;

    return-object v0
.end method

.method public blacklist bootstrapMethod()Ljava/lang/constant/MethodHandleDesc;
    .registers 2

    .line 215
    iget-object v0, p0, Ljava/lang/constant/DynamicCallSiteDesc;->bootstrapMethod:Ljava/lang/constant/DirectMethodHandleDesc;

    return-object v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 260
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 261
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_40

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_40

    .line 262
    :cond_12
    move-object v2, p1

    check-cast v2, Ljava/lang/constant/DynamicCallSiteDesc;

    .line 263
    .local v2, "specifier":Ljava/lang/constant/DynamicCallSiteDesc;
    iget-object v3, p0, Ljava/lang/constant/DynamicCallSiteDesc;->bootstrapMethod:Ljava/lang/constant/DirectMethodHandleDesc;

    iget-object v4, v2, Ljava/lang/constant/DynamicCallSiteDesc;->bootstrapMethod:Ljava/lang/constant/DirectMethodHandleDesc;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Ljava/lang/constant/DynamicCallSiteDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    iget-object v4, v2, Ljava/lang/constant/DynamicCallSiteDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    .line 264
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Ljava/lang/constant/DynamicCallSiteDesc;->invocationName:Ljava/lang/String;

    iget-object v4, v2, Ljava/lang/constant/DynamicCallSiteDesc;->invocationName:Ljava/lang/String;

    .line 265
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Ljava/lang/constant/DynamicCallSiteDesc;->invocationType:Ljava/lang/constant/MethodTypeDesc;

    iget-object v4, v2, Ljava/lang/constant/DynamicCallSiteDesc;->invocationType:Ljava/lang/constant/MethodTypeDesc;

    .line 266
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v1

    .line 263
    :goto_3f
    return v0

    .line 261
    .end local v2    # "specifier":Ljava/lang/constant/DynamicCallSiteDesc;
    :cond_40
    :goto_40
    return v1
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 271
    iget-object v0, p0, Ljava/lang/constant/DynamicCallSiteDesc;->bootstrapMethod:Ljava/lang/constant/DirectMethodHandleDesc;

    iget-object v1, p0, Ljava/lang/constant/DynamicCallSiteDesc;->invocationName:Ljava/lang/String;

    iget-object v2, p0, Ljava/lang/constant/DynamicCallSiteDesc;->invocationType:Ljava/lang/constant/MethodTypeDesc;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 272
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ljava/lang/constant/DynamicCallSiteDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 273
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public blacklist invocationName()Ljava/lang/String;
    .registers 2

    .line 196
    iget-object v0, p0, Ljava/lang/constant/DynamicCallSiteDesc;->invocationName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist invocationType()Ljava/lang/constant/MethodTypeDesc;
    .registers 2

    .line 206
    iget-object v0, p0, Ljava/lang/constant/DynamicCallSiteDesc;->invocationType:Ljava/lang/constant/MethodTypeDesc;

    return-object v0
.end method

.method public blacklist resolveCallSiteDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/invoke/CallSite;
    .registers 8
    .param p1, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 236
    nop

    .line 237
    iget-object v0, p0, Ljava/lang/constant/DynamicCallSiteDesc;->bootstrapMethod:Ljava/lang/constant/DirectMethodHandleDesc;

    invoke-interface {v0, p1}, Ljava/lang/constant/DirectMethodHandleDesc;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandle;

    .line 238
    .local v0, "bsm":Ljava/lang/invoke/MethodHandle;
    iget-object v1, p0, Ljava/lang/constant/DynamicCallSiteDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    array-length v1, v1

    const/4 v2, 0x3

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 239
    .local v1, "args":[Ljava/lang/Object;
    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 240
    const/4 v4, 0x1

    iget-object v5, p0, Ljava/lang/constant/DynamicCallSiteDesc;->invocationName:Ljava/lang/String;

    aput-object v5, v1, v4

    .line 241
    iget-object v4, p0, Ljava/lang/constant/DynamicCallSiteDesc;->invocationType:Ljava/lang/constant/MethodTypeDesc;

    invoke-interface {v4, p1}, Ljava/lang/constant/MethodTypeDesc;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    .line 242
    iget-object v4, p0, Ljava/lang/constant/DynamicCallSiteDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    iget-object v5, p0, Ljava/lang/constant/DynamicCallSiteDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    array-length v5, v5

    invoke-static {v4, v3, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/invoke/MethodHandle;->invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/invoke/CallSite;

    return-object v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 285
    iget-object v0, p0, Ljava/lang/constant/DynamicCallSiteDesc;->bootstrapMethod:Ljava/lang/constant/DirectMethodHandleDesc;

    .line 286
    invoke-interface {v0}, Ljava/lang/constant/DirectMethodHandleDesc;->owner()Ljava/lang/constant/ClassDesc;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/constant/ClassDesc;->displayName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/constant/DynamicCallSiteDesc;->bootstrapMethod:Ljava/lang/constant/DirectMethodHandleDesc;

    .line 287
    invoke-interface {v1}, Ljava/lang/constant/DirectMethodHandleDesc;->methodName()Ljava/lang/String;

    move-result-object v1

    .line 288
    iget-object v2, p0, Ljava/lang/constant/DynamicCallSiteDesc;->invocationName:Ljava/lang/String;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, ""

    goto :goto_32

    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/lang/constant/DynamicCallSiteDesc;->invocationName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_32
    iget-object v3, p0, Ljava/lang/constant/DynamicCallSiteDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    .line 289
    invoke-static {v3}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Ljava/lang/constant/DynamicCallSiteDesc$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/constant/DynamicCallSiteDesc$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    const-string v4, ","

    invoke-static {v4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Ljava/lang/constant/DynamicCallSiteDesc;->invocationType:Ljava/lang/constant/MethodTypeDesc;

    .line 290
    invoke-interface {v4}, Ljava/lang/constant/MethodTypeDesc;->displayDescriptor()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 285
    const-string v1, "DynamicCallSiteDesc[%s::%s(%s%s):%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs blacklist withArgs([Ljava/lang/constant/ConstantDesc;)Ljava/lang/constant/DynamicCallSiteDesc;
    .registers 6
    .param p1, "bootstrapArgs"    # [Ljava/lang/constant/ConstantDesc;

    .line 165
    new-instance v0, Ljava/lang/constant/DynamicCallSiteDesc;

    iget-object v1, p0, Ljava/lang/constant/DynamicCallSiteDesc;->bootstrapMethod:Ljava/lang/constant/DirectMethodHandleDesc;

    iget-object v2, p0, Ljava/lang/constant/DynamicCallSiteDesc;->invocationName:Ljava/lang/String;

    iget-object v3, p0, Ljava/lang/constant/DynamicCallSiteDesc;->invocationType:Ljava/lang/constant/MethodTypeDesc;

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/constant/DynamicCallSiteDesc;-><init>(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/String;Ljava/lang/constant/MethodTypeDesc;[Ljava/lang/constant/ConstantDesc;)V

    return-object v0
.end method

.method public blacklist withNameAndType(Ljava/lang/String;Ljava/lang/constant/MethodTypeDesc;)Ljava/lang/constant/DynamicCallSiteDesc;
    .registers 6
    .param p1, "invocationName"    # Ljava/lang/String;
    .param p2, "invocationType"    # Ljava/lang/constant/MethodTypeDesc;

    .line 186
    new-instance v0, Ljava/lang/constant/DynamicCallSiteDesc;

    iget-object v1, p0, Ljava/lang/constant/DynamicCallSiteDesc;->bootstrapMethod:Ljava/lang/constant/DirectMethodHandleDesc;

    iget-object v2, p0, Ljava/lang/constant/DynamicCallSiteDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    invoke-direct {v0, v1, p1, p2, v2}, Ljava/lang/constant/DynamicCallSiteDesc;-><init>(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/String;Ljava/lang/constant/MethodTypeDesc;[Ljava/lang/constant/ConstantDesc;)V

    return-object v0
.end method
