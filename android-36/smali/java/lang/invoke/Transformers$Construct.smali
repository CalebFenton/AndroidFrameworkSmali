.class Ljava/lang/invoke/Transformers$Construct;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Construct"
.end annotation


# instance fields
.field private final greylist-max-o callerRange:Ldalvik/system/EmulatedStackFrame$Range;

.field private final greylist-max-o constructorHandle:Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V
    .registers 4
    .param p1, "constructorHandle"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "returnedType"    # Ljava/lang/invoke/MethodType;

    .line 374
    invoke-direct {p0, p2}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 375
    iput-object p1, p0, Ljava/lang/invoke/Transformers$Construct;->constructorHandle:Ljava/lang/invoke/MethodHandle;

    .line 376
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$Construct;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame$Range;->all(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$Construct;->callerRange:Ldalvik/system/EmulatedStackFrame$Range;

    .line 377
    return-void
.end method

.method private static greylist-max-o checkInstantiable(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 388
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/lang/invoke/Transformers$Construct;->isAbstract(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 389
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "interface "

    goto :goto_11

    :cond_f
    const-string v0, "abstract class "

    .line 390
    .local v0, "s":Ljava/lang/String;
    :goto_11
    new-instance v1, Ljava/lang/InstantiationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t instantiate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 392
    .end local v0    # "s":Ljava/lang/String;
    :cond_2e
    return-void
.end method

.method private static greylist-max-o isAbstract(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 384
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method


# virtual methods
.method greylist-max-o getConstructorHandle()Ljava/lang/invoke/MethodHandle;
    .registers 2

    .line 380
    iget-object v0, p0, Ljava/lang/invoke/Transformers$Construct;->constructorHandle:Ljava/lang/invoke/MethodHandle;

    return-object v0
.end method

.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 8
    .param p1, "emulatedStackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 396
    iget-object v0, p0, Ljava/lang/invoke/Transformers$Construct;->constructorHandle:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v0

    .line 397
    .local v0, "receiverType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Ljava/lang/invoke/Transformers$Construct;->checkInstantiable(Ljava/lang/Class;)V

    .line 400
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljdk/internal/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 407
    .local v2, "receiver":Ljava/lang/Object;
    iget-object v3, p0, Ljava/lang/invoke/Transformers$Construct;->constructorHandle:Ljava/lang/invoke/MethodHandle;

    .line 408
    invoke-virtual {v3}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-static {v3}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v3

    .line 409
    .local v3, "constructorFrame":Ldalvik/system/EmulatedStackFrame;
    invoke-virtual {v3, v1, v2}, Ldalvik/system/EmulatedStackFrame;->setReference(ILjava/lang/Object;)V

    .line 410
    iget-object v4, p0, Ljava/lang/invoke/Transformers$Construct;->callerRange:Ldalvik/system/EmulatedStackFrame$Range;

    const/4 v5, 0x1

    invoke-virtual {p1, v3, v4, v5, v1}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 411
    iget-object v1, p0, Ljava/lang/invoke/Transformers$Construct;->constructorHandle:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p0, v1, v3}, Ljava/lang/invoke/Transformers$Construct;->invokeExactFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 414
    invoke-virtual {p1, v2}, Ldalvik/system/EmulatedStackFrame;->setReturnValueTo(Ljava/lang/Object;)V

    .line 415
    return-void
.end method
