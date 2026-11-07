.class public Lcom/android/icu/util/regex/PatternNative;
.super Ljava/lang/Object;
.source "PatternNative.java"


# static fields
.field private static final blacklist REGISTRY:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist address:J
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 29
    nop

    .line 30
    const-class v0, Lcom/android/icu/util/regex/PatternNative;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Lcom/android/icu/util/regex/PatternNative;->getNativeFinalizer()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Lcom/android/icu/util/regex/PatternNative;->REGISTRY:Llibcore/util/NativeAllocationRegistry;

    .line 29
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 6
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1, p2}, Lcom/android/icu/util/regex/PatternNative;->compileImpl(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/icu/util/regex/PatternNative;->address:J

    .line 54
    sget-object v0, Lcom/android/icu/util/regex/PatternNative;->REGISTRY:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Lcom/android/icu/util/regex/PatternNative;->address:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 55
    return-void
.end method

.method private static native blacklist compileImpl(Ljava/lang/String;I)J
.end method

.method public static blacklist create(Ljava/lang/String;I)Lcom/android/icu/util/regex/PatternNative;
    .registers 3
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 49
    new-instance v0, Lcom/android/icu/util/regex/PatternNative;

    invoke-direct {v0, p0, p1}, Lcom/android/icu/util/regex/PatternNative;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private static native blacklist getMatchedGroupIndexImpl(JLjava/lang/String;)I
.end method

.method private static native blacklist getNativeFinalizer()J
.end method

.method private static native blacklist openMatcherImpl(J)J
.end method


# virtual methods
.method blacklist getMatchedGroupIndex(Ljava/lang/String;)I
    .registers 4
    .param p1, "groupName"    # Ljava/lang/String;

    .line 58
    iget-wide v0, p0, Lcom/android/icu/util/regex/PatternNative;->address:J

    invoke-static {v0, v1, p1}, Lcom/android/icu/util/regex/PatternNative;->getMatchedGroupIndexImpl(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method blacklist openMatcher()J
    .registers 3

    .line 62
    iget-wide v0, p0, Lcom/android/icu/util/regex/PatternNative;->address:J

    invoke-static {v0, v1}, Lcom/android/icu/util/regex/PatternNative;->openMatcherImpl(J)J

    move-result-wide v0

    return-wide v0
.end method
