.class final Ljava/lang/StackStreamFactory;
.super Ljava/lang/Object;
.source "StackStreamFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/StackStreamFactory$LiveStackInfoTraverser;,
        Ljava/lang/StackStreamFactory$StackFrameTraverser;,
        Ljava/lang/StackStreamFactory$CallerClassFinder;,
        Ljava/lang/StackStreamFactory$AbstractStackWalker;,
        Ljava/lang/StackStreamFactory$FrameBuffer;,
        Ljava/lang/StackStreamFactory$WalkerState;
    }
.end annotation


# static fields
.field private static final blacklist BATCH_SIZE:I = 0x20

.field private static final blacklist DEFAULT_MODE:I = 0x0

.field private static final blacklist FILL_CLASS_REFS_ONLY:I = 0x2

.field private static final blacklist FILL_LIVE_STACK_FRAMES:I = 0x100

.field private static final blacklist GET_CALLER_CLASS:I = 0x4

.field private static final blacklist LARGE_BATCH_SIZE:I = 0x100

.field private static final blacklist MIN_BATCH_SIZE:I = 0x8

.field private static final blacklist SHOW_HIDDEN_FRAMES:I = 0x20

.field private static final blacklist SMALL_BATCH:I = 0x8

.field static final blacklist isDebug:Z

.field private static final blacklist stackWalkImplClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetstackWalkImplClasses()Ljava/util/Set;
    .registers 1

    sget-object v0, Ljava/lang/StackStreamFactory;->stackWalkImplClasses:Ljava/util/Set;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smfilterStackWalkImpl(Ljava/lang/Class;)Z
    .registers 1

    invoke-static {p0}, Ljava/lang/StackStreamFactory;->filterStackWalkImpl(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisMethodHandleFrame(Ljava/lang/Class;)Z
    .registers 1

    invoke-static {p0}, Ljava/lang/StackStreamFactory;->isMethodHandleFrame(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisReflectionFrame(Ljava/lang/Class;)Z
    .registers 1

    invoke-static {p0}, Ljava/lang/StackStreamFactory;->isReflectionFrame(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeFetchStackFrameInfo(JLjava/lang/Object;III[Ljava/lang/Object;)I
    .registers 7

    invoke-static/range {p0 .. p6}, Ljava/lang/StackStreamFactory;->nativeFetchStackFrameInfo(JLjava/lang/Object;III[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetStackAnchor()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Ljava/lang/StackStreamFactory;->nativeGetStackAnchor()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 66
    invoke-static {}, Ljava/lang/StackStreamFactory;->init()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/lang/StackStreamFactory;->stackWalkImplClasses:Ljava/util/Set;

    .line 84
    nop

    .line 85
    const-string v0, "stackwalk.debug"

    invoke-static {v0}, Lsun/security/action/GetPropertyAction;->privilegedGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Ljava/lang/StackStreamFactory;->isDebug:Z

    .line 84
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkStackWalkModes()Z
    .registers 1

    .line 1029
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist filterStackWalkImpl(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1046
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/StackStreamFactory;->stackWalkImplClasses:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1047
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.stream."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 1046
    :goto_18
    return v0
.end method

.method private static blacklist init()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1034
    invoke-static {}, Ljava/lang/StackStreamFactory;->checkStackWalkModes()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1038
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1039
    .local v0, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    const-class v1, Ljava/lang/StackWalker;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1040
    const-class v1, Ljava/lang/StackStreamFactory;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1041
    const-class v1, Ljava/lang/StackStreamFactory$AbstractStackWalker;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1042
    return-object v0

    .line 1035
    .end local v0    # "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    :cond_1b
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "StackWalker mode values do not match with JVM"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist isMethodHandleFrame(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1053
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.invoke."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isReflectionFrame(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1058
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/reflect/Method;

    if-eq p0, v0, :cond_17

    const-class v0, Ljava/lang/reflect/Constructor;

    if-eq p0, v0, :cond_17

    .line 1063
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.invoke.LambdaForm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 1058
    :goto_18
    return v0
.end method

.method static blacklist makeCallerFinder(Ljava/lang/StackWalker;)Ljava/lang/StackStreamFactory$CallerClassFinder;
    .registers 2
    .param p0, "walker"    # Ljava/lang/StackWalker;

    .line 100
    new-instance v0, Ljava/lang/StackStreamFactory$CallerClassFinder;

    invoke-direct {v0, p0}, Ljava/lang/StackStreamFactory$CallerClassFinder;-><init>(Ljava/lang/StackWalker;)V

    return-object v0
.end method

.method static blacklist makeStackTraverser(Ljava/lang/StackWalker;Ljava/util/function/Function;)Ljava/lang/StackStreamFactory$StackFrameTraverser;
    .registers 3
    .param p0, "walker"    # Ljava/lang/StackWalker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/StackWalker;",
            "Ljava/util/function/Function<",
            "-",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/StackWalker$StackFrame;",
            ">;+TT;>;)",
            "Ljava/lang/StackStreamFactory$StackFrameTraverser<",
            "TT;>;"
        }
    .end annotation

    .line 90
    .local p1, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/util/stream/Stream<Ljava/lang/StackWalker$StackFrame;>;+TT;>;"
    invoke-virtual {p0}, Ljava/lang/StackWalker;->hasLocalsOperandsOption()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 91
    new-instance v0, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser;

    invoke-direct {v0, p0, p1}, Ljava/lang/StackStreamFactory$LiveStackInfoTraverser;-><init>(Ljava/lang/StackWalker;Ljava/util/function/Function;)V

    return-object v0

    .line 93
    :cond_c
    new-instance v0, Ljava/lang/StackStreamFactory$StackFrameTraverser;

    invoke-direct {v0, p0, p1}, Ljava/lang/StackStreamFactory$StackFrameTraverser;-><init>(Ljava/lang/StackWalker;Ljava/util/function/Function;)V

    return-object v0
.end method

.method private static native blacklist nativeFetchStackFrameInfo(JLjava/lang/Object;III[Ljava/lang/Object;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeGetStackAnchor()Ljava/lang/Object;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method
