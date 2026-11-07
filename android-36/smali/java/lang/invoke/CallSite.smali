.class public abstract Ljava/lang/invoke/CallSite;
.super Ljava/lang/Object;
.source "CallSite.java"


# static fields
.field private static greylist-max-o GET_TARGET:Ljava/lang/invoke/MethodHandle;

.field private static final greylist-max-o TARGET_OFFSET:J


# instance fields
.field greylist-max-o target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 242
    const/4 v0, 0x0

    sput-object v0, Ljava/lang/invoke/CallSite;->GET_TARGET:Ljava/lang/invoke/MethodHandle;

    .line 272
    :try_start_3
    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    const-class v1, Ljava/lang/invoke/CallSite;

    const-string v2, "target"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/lang/invoke/CallSite;->TARGET_OFFSET:J
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_15

    .line 273
    nop

    .line 274
    return-void

    .line 273
    :catch_15
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor greylist-max-o <init>(Ljava/lang/invoke/MethodHandle;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    .line 131
    iput-object p1, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    .line 134
    invoke-direct {p0}, Ljava/lang/invoke/CallSite;->initializeGetTarget()V

    .line 135
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/invoke/MethodType;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/invoke/MethodType;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/IllegalStateException;

    invoke-static {v0, v1}, Ljava/lang/invoke/MethodHandles;->throwException(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    .line 113
    iget-object v0, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "uninitialized call site"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/invoke/MethodHandles;->insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    .line 115
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    if-lez v0, :cond_35

    .line 116
    iget-object v0, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v2, v1}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    .line 120
    :cond_35
    invoke-direct {p0}, Ljava/lang/invoke/CallSite;->initializeGetTarget()V

    .line 121
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;)V
    .registers 6
    .param p1, "targetType"    # Ljava/lang/invoke/MethodType;
    .param p2, "createTargetHook"    # Ljava/lang/invoke/MethodHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1}, Ljava/lang/invoke/CallSite;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 150
    move-object v0, p0

    check-cast v0, Ljava/lang/invoke/ConstantCallSite;

    .line 151
    .local v0, "selfCCS":Ljava/lang/invoke/ConstantCallSite;
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/invoke/MethodHandle;->invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/invoke/MethodHandle;

    .line 152
    .local v1, "boundTarget":Ljava/lang/invoke/MethodHandle;
    iget-object v2, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p0, v2, v1}, Ljava/lang/invoke/CallSite;->checkTargetChange(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    .line 153
    iput-object v1, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    .line 156
    invoke-direct {p0}, Ljava/lang/invoke/CallSite;->initializeGetTarget()V

    .line 157
    return-void
.end method

.method private greylist-max-o initializeGetTarget()V
    .registers 6

    .line 248
    const-class v0, Ljava/lang/invoke/CallSite;

    monitor-enter v0

    .line 249
    :try_start_3
    sget-object v1, Ljava/lang/invoke/CallSite;->GET_TARGET:Ljava/lang/invoke/MethodHandle;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_23

    if-nez v1, :cond_21

    .line 251
    :try_start_7
    sget-object v1, Ljava/lang/invoke/MethodHandles$Lookup;->IMPL_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    const-class v2, Ljava/lang/invoke/CallSite;

    const-string v3, "getTarget"

    const-class v4, Ljava/lang/invoke/MethodHandle;

    .line 253
    invoke-static {v4}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 252
    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    sput-object v1, Ljava/lang/invoke/CallSite;->GET_TARGET:Ljava/lang/invoke/MethodHandle;
    :try_end_19
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_7 .. :try_end_19} :catch_1a
    .catchall {:try_start_7 .. :try_end_19} :catchall_23

    .line 256
    goto :goto_21

    .line 254
    :catch_1a
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :try_start_1b
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Ljava/lang/invoke/CallSite;
    throw v2

    .line 258
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    .restart local p0    # "this":Ljava/lang/invoke/CallSite;
    :cond_21
    :goto_21
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw v1
.end method

.method private static greylist-max-o wrongTargetType(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/WrongMethodTypeException;
    .registers 5
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "type"    # Ljava/lang/invoke/MethodType;

    .line 215
    new-instance v0, Ljava/lang/invoke/WrongMethodTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/invoke/WrongMethodTypeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method greylist-max-o checkTargetChange(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V
    .registers 6
    .param p1, "oldTarget"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "newTarget"    # Ljava/lang/invoke/MethodHandle;

    .line 208
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 209
    .local v0, "oldType":Ljava/lang/invoke/MethodType;
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 210
    .local v1, "newType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v1, v0}, Ljava/lang/invoke/MethodType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 212
    return-void

    .line 211
    :cond_f
    invoke-static {p2, v0}, Ljava/lang/invoke/CallSite;->wrongTargetType(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/WrongMethodTypeException;

    move-result-object v2

    throw v2
.end method

.method public abstract whitelist test-api dynamicInvoker()Ljava/lang/invoke/MethodHandle;
.end method

.method public abstract whitelist test-api getTarget()Ljava/lang/invoke/MethodHandle;
.end method

.method greylist-max-o getTargetVolatile()Ljava/lang/invoke/MethodHandle;
    .registers 4

    .line 284
    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/lang/invoke/CallSite;->TARGET_OFFSET:J

    invoke-virtual {v0, p0, v1, v2}, Ljdk/internal/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandle;

    return-object v0
.end method

.method greylist-max-o makeDynamicInvoker()Ljava/lang/invoke/MethodHandle;
    .registers 4

    .line 236
    sget-object v0, Ljava/lang/invoke/CallSite;->GET_TARGET:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0, p0}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 237
    .local v0, "getTarget":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {p0}, Ljava/lang/invoke/CallSite;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/invoke/MethodHandles;->exactInvoker(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    .line 238
    .local v1, "invoker":Ljava/lang/invoke/MethodHandle;
    invoke-static {v1, v0}, Ljava/lang/invoke/MethodHandles;->foldArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    return-object v2
.end method

.method public abstract whitelist test-api setTarget(Ljava/lang/invoke/MethodHandle;)V
.end method

.method greylist-max-o setTargetNormal(Ljava/lang/invoke/MethodHandle;)V
    .registers 2
    .param p1, "newTarget"    # Ljava/lang/invoke/MethodHandle;

    .line 280
    iput-object p1, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    .line 281
    return-void
.end method

.method greylist-max-o setTargetVolatile(Ljava/lang/invoke/MethodHandle;)V
    .registers 5
    .param p1, "newTarget"    # Ljava/lang/invoke/MethodHandle;

    .line 290
    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/lang/invoke/CallSite;->TARGET_OFFSET:J

    invoke-virtual {v0, p0, v1, v2, p1}, Ljdk/internal/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 291
    return-void
.end method

.method public whitelist test-api type()Ljava/lang/invoke/MethodType;
    .registers 2

    .line 168
    iget-object v0, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method
