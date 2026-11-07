.class public Lcom/android/icu/util/regex/MatcherNative;
.super Ljava/lang/Object;
.source "MatcherNative.java"


# static fields
.field private static final blacklist REGISTRY:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist address:J
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private final blacklist nativePattern:Lcom/android/icu/util/regex/PatternNative;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 31
    nop

    .line 32
    const-class v0, Lcom/android/icu/util/regex/MatcherNative;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Lcom/android/icu/util/regex/MatcherNative;->getNativeFinalizer()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Lcom/android/icu/util/regex/MatcherNative;->REGISTRY:Llibcore/util/NativeAllocationRegistry;

    .line 31
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/icu/util/regex/PatternNative;)V
    .registers 5
    .param p1, "pattern"    # Lcom/android/icu/util/regex/PatternNative;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/icu/util/regex/MatcherNative;->nativePattern:Lcom/android/icu/util/regex/PatternNative;

    .line 50
    invoke-virtual {p1}, Lcom/android/icu/util/regex/PatternNative;->openMatcher()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/icu/util/regex/MatcherNative;->address:J

    .line 51
    sget-object v0, Lcom/android/icu/util/regex/MatcherNative;->REGISTRY:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Lcom/android/icu/util/regex/MatcherNative;->address:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 52
    return-void
.end method

.method public static blacklist create(Lcom/android/icu/util/regex/PatternNative;)Lcom/android/icu/util/regex/MatcherNative;
    .registers 2
    .param p0, "pattern"    # Lcom/android/icu/util/regex/PatternNative;

    .line 45
    new-instance v0, Lcom/android/icu/util/regex/MatcherNative;

    invoke-direct {v0, p0}, Lcom/android/icu/util/regex/MatcherNative;-><init>(Lcom/android/icu/util/regex/PatternNative;)V

    return-object v0
.end method

.method private static native blacklist findImpl(JI[I)Z
.end method

.method private static native blacklist findNextImpl(J[I)Z
.end method

.method private static native blacklist getNativeFinalizer()J
.end method

.method private static native blacklist groupCountImpl(J)I
.end method

.method private static native blacklist hitEndImpl(J)Z
.end method

.method private static native blacklist lookingAtImpl(J[I)Z
.end method

.method private static native blacklist matchesImpl(J[I)Z
.end method

.method private static native blacklist requireEndImpl(J)Z
.end method

.method private static native blacklist setInputImpl(JLjava/lang/String;II)V
.end method

.method private static native blacklist useAnchoringBoundsImpl(JZ)V
.end method

.method private static native blacklist useTransparentBoundsImpl(JZ)V
.end method


# virtual methods
.method public blacklist find(I[I)Z
    .registers 5
    .param p1, "startIndex"    # I
    .param p2, "offsets"    # [I

    .line 81
    iget-wide v0, p0, Lcom/android/icu/util/regex/MatcherNative;->address:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/icu/util/regex/MatcherNative;->findImpl(JI[I)Z

    move-result v0

    return v0
.end method

.method public blacklist findNext([I)Z
    .registers 4
    .param p1, "offsets"    # [I

    .line 99
    iget-wide v0, p0, Lcom/android/icu/util/regex/MatcherNative;->address:J

    invoke-static {v0, v1, p1}, Lcom/android/icu/util/regex/MatcherNative;->findNextImpl(J[I)Z

    move-result v0

    return v0
.end method

.method public blacklist getMatchedGroupIndex(Ljava/lang/String;)I
    .registers 3
    .param p1, "groupName"    # Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/android/icu/util/regex/MatcherNative;->nativePattern:Lcom/android/icu/util/regex/PatternNative;

    invoke-virtual {v0, p1}, Lcom/android/icu/util/regex/PatternNative;->getMatchedGroupIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist groupCount()I
    .registers 3

    .line 109
    iget-wide v0, p0, Lcom/android/icu/util/regex/MatcherNative;->address:J

    invoke-static {v0, v1}, Lcom/android/icu/util/regex/MatcherNative;->groupCountImpl(J)I

    move-result v0

    return v0
.end method

.method public blacklist hitEnd()Z
    .registers 3

    .line 119
    iget-wide v0, p0, Lcom/android/icu/util/regex/MatcherNative;->address:J

    invoke-static {v0, v1}, Lcom/android/icu/util/regex/MatcherNative;->hitEndImpl(J)Z

    move-result v0

    return v0
.end method

.method public blacklist lookingAt([I)Z
    .registers 4
    .param p1, "offsets"    # [I

    .line 136
    iget-wide v0, p0, Lcom/android/icu/util/regex/MatcherNative;->address:J

    invoke-static {v0, v1, p1}, Lcom/android/icu/util/regex/MatcherNative;->lookingAtImpl(J[I)Z

    move-result v0

    return v0
.end method

.method public blacklist matches([I)Z
    .registers 4
    .param p1, "offsets"    # [I

    .line 154
    iget-wide v0, p0, Lcom/android/icu/util/regex/MatcherNative;->address:J

    invoke-static {v0, v1, p1}, Lcom/android/icu/util/regex/MatcherNative;->matchesImpl(J[I)Z

    move-result v0

    return v0
.end method

.method public blacklist requireEnd()Z
    .registers 3

    .line 164
    iget-wide v0, p0, Lcom/android/icu/util/regex/MatcherNative;->address:J

    invoke-static {v0, v1}, Lcom/android/icu/util/regex/MatcherNative;->requireEndImpl(J)Z

    move-result v0

    return v0
.end method

.method public blacklist setInput(Ljava/lang/String;II)V
    .registers 6
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 177
    iget-wide v0, p0, Lcom/android/icu/util/regex/MatcherNative;->address:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/icu/util/regex/MatcherNative;->setInputImpl(JLjava/lang/String;II)V

    .line 178
    return-void
.end method

.method public blacklist useAnchoringBounds(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 189
    iget-wide v0, p0, Lcom/android/icu/util/regex/MatcherNative;->address:J

    invoke-static {v0, v1, p1}, Lcom/android/icu/util/regex/MatcherNative;->useAnchoringBoundsImpl(JZ)V

    .line 190
    return-void
.end method

.method public blacklist useTransparentBounds(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 202
    iget-wide v0, p0, Lcom/android/icu/util/regex/MatcherNative;->address:J

    invoke-static {v0, v1, p1}, Lcom/android/icu/util/regex/MatcherNative;->useTransparentBoundsImpl(JZ)V

    .line 203
    return-void
.end method
