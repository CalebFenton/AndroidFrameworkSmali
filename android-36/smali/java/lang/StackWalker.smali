.class public final Ljava/lang/StackWalker;
.super Ljava/lang/Object;
.source "StackWalker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/StackWalker$Option;,
        Ljava/lang/StackWalker$ExtendedOption;,
        Ljava/lang/StackWalker$StackFrame;
    }
.end annotation


# static fields
.field static final blacklist DEFAULT_EMPTY_OPTION:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Ljava/lang/StackWalker$Option;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_WALKER:Ljava/lang/StackWalker;


# instance fields
.field private final blacklist estimateDepth:I

.field private final blacklist extendedOption:Ljava/lang/StackWalker$ExtendedOption;

.field private final blacklist options:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/StackWalker$Option;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist retainClassRef:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 295
    const-class v0, Ljava/lang/StackWalker$Option;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Ljava/lang/StackWalker;->DEFAULT_EMPTY_OPTION:Ljava/util/EnumSet;

    .line 297
    new-instance v0, Ljava/lang/StackWalker;

    sget-object v1, Ljava/lang/StackWalker;->DEFAULT_EMPTY_OPTION:Ljava/util/EnumSet;

    invoke-direct {v0, v1}, Ljava/lang/StackWalker;-><init>(Ljava/util/EnumSet;)V

    sput-object v0, Ljava/lang/StackWalker;->DEFAULT_WALKER:Ljava/lang/StackWalker;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/EnumSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Ljava/lang/StackWalker$Option;",
            ">;)V"
        }
    .end annotation

    .line 411
    .local p1, "options":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljava/lang/StackWalker$Option;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/StackWalker;-><init>(Ljava/util/EnumSet;ILjava/lang/StackWalker$ExtendedOption;)V

    .line 412
    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/EnumSet;I)V
    .registers 4
    .param p2, "estimateDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Ljava/lang/StackWalker$Option;",
            ">;I)V"
        }
    .end annotation

    .line 414
    .local p1, "options":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljava/lang/StackWalker$Option;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/lang/StackWalker;-><init>(Ljava/util/EnumSet;ILjava/lang/StackWalker$ExtendedOption;)V

    .line 415
    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/EnumSet;ILjava/lang/StackWalker$ExtendedOption;)V
    .registers 5
    .param p2, "estimateDepth"    # I
    .param p3, "extendedOption"    # Ljava/lang/StackWalker$ExtendedOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Ljava/lang/StackWalker$Option;",
            ">;I",
            "Ljava/lang/StackWalker$ExtendedOption;",
            ")V"
        }
    .end annotation

    .line 416
    .local p1, "options":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljava/lang/StackWalker$Option;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-object p1, p0, Ljava/lang/StackWalker;->options:Ljava/util/Set;

    .line 418
    iput p2, p0, Ljava/lang/StackWalker;->estimateDepth:I

    .line 419
    iput-object p3, p0, Ljava/lang/StackWalker;->extendedOption:Ljava/lang/StackWalker$ExtendedOption;

    .line 420
    sget-object v0, Ljava/lang/StackWalker$Option;->RETAIN_CLASS_REFERENCE:Ljava/lang/StackWalker$Option;

    invoke-virtual {p0, v0}, Ljava/lang/StackWalker;->hasOption(Ljava/lang/StackWalker$Option;)Z

    move-result v0

    iput-boolean v0, p0, Ljava/lang/StackWalker;->retainClassRef:Z

    .line 421
    return-void
.end method

.method private static blacklist checkPermission(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/StackWalker$Option;",
            ">;)V"
        }
    .end annotation

    .line 424
    .local p0, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/StackWalker$Option;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 427
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1b

    .line 428
    sget-object v1, Ljava/lang/StackWalker$Option;->RETAIN_CLASS_REFERENCE:Ljava/lang/StackWalker$Option;

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 429
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getStackWalkerWithClassReference"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 432
    :cond_1b
    return-void
.end method

.method public static whitelist test-api getInstance()Ljava/lang/StackWalker;
    .registers 1

    .line 319
    sget-object v0, Ljava/lang/StackWalker;->DEFAULT_WALKER:Ljava/lang/StackWalker;

    return-object v0
.end method

.method public static whitelist test-api getInstance(Ljava/lang/StackWalker$Option;)Ljava/lang/StackWalker;
    .registers 2
    .param p0, "option"    # Ljava/lang/StackWalker$Option;

    .line 340
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StackWalker$Option;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/StackWalker;->getInstance(Ljava/util/Set;)Ljava/lang/StackWalker;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Ljava/util/Set;)Ljava/lang/StackWalker;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/StackWalker$Option;",
            ">;)",
            "Ljava/lang/StackWalker;"
        }
    .end annotation

    .line 364
    .local p0, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/StackWalker$Option;>;"
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 365
    sget-object v0, Ljava/lang/StackWalker;->DEFAULT_WALKER:Ljava/lang/StackWalker;

    return-object v0

    .line 368
    :cond_9
    invoke-static {p0}, Ljava/lang/StackWalker;->toEnumSet(Ljava/util/Set;)Ljava/util/EnumSet;

    move-result-object v0

    .line 369
    .local v0, "optionSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljava/lang/StackWalker$Option;>;"
    invoke-static {v0}, Ljava/lang/StackWalker;->checkPermission(Ljava/util/Set;)V

    .line 370
    new-instance v1, Ljava/lang/StackWalker;

    invoke-direct {v1, v0}, Ljava/lang/StackWalker;-><init>(Ljava/util/EnumSet;)V

    return-object v1
.end method

.method public static whitelist test-api getInstance(Ljava/util/Set;I)Ljava/lang/StackWalker;
    .registers 4
    .param p1, "estimateDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/StackWalker$Option;",
            ">;I)",
            "Ljava/lang/StackWalker;"
        }
    .end annotation

    .line 401
    .local p0, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/StackWalker$Option;>;"
    if-lez p1, :cond_f

    .line 404
    invoke-static {p0}, Ljava/lang/StackWalker;->toEnumSet(Ljava/util/Set;)Ljava/util/EnumSet;

    move-result-object v0

    .line 405
    .local v0, "optionSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljava/lang/StackWalker$Option;>;"
    invoke-static {v0}, Ljava/lang/StackWalker;->checkPermission(Ljava/util/Set;)V

    .line 406
    new-instance v1, Ljava/lang/StackWalker;

    invoke-direct {v1, v0, p1}, Ljava/lang/StackWalker;-><init>(Ljava/util/EnumSet;I)V

    return-object v1

    .line 402
    .end local v0    # "optionSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljava/lang/StackWalker$Option;>;"
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "estimateDepth must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$forEach$0(Ljava/util/function/Consumer;Ljava/util/stream/Stream;)Ljava/lang/Object;
    .registers 3
    .param p0, "action"    # Ljava/util/function/Consumer;
    .param p1, "s"    # Ljava/util/stream/Stream;

    .line 523
    invoke-interface {p1, p0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 524
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist newInstance(Ljava/util/Set;Ljava/lang/StackWalker$ExtendedOption;)Ljava/lang/StackWalker;
    .registers 5
    .param p1, "extendedOption"    # Ljava/lang/StackWalker$ExtendedOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/StackWalker$Option;",
            ">;",
            "Ljava/lang/StackWalker$ExtendedOption;",
            ")",
            "Ljava/lang/StackWalker;"
        }
    .end annotation

    .line 611
    .local p0, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/StackWalker$Option;>;"
    invoke-static {p0}, Ljava/lang/StackWalker;->toEnumSet(Ljava/util/Set;)Ljava/util/EnumSet;

    move-result-object v0

    .line 612
    .local v0, "optionSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljava/lang/StackWalker$Option;>;"
    invoke-static {v0}, Ljava/lang/StackWalker;->checkPermission(Ljava/util/Set;)V

    .line 613
    new-instance v1, Ljava/lang/StackWalker;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Ljava/lang/StackWalker;-><init>(Ljava/util/EnumSet;ILjava/lang/StackWalker$ExtendedOption;)V

    return-object v1
.end method

.method private static blacklist toEnumSet(Ljava/util/Set;)Ljava/util/EnumSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/StackWalker$Option;",
            ">;)",
            "Ljava/util/EnumSet<",
            "Ljava/lang/StackWalker$Option;",
            ">;"
        }
    .end annotation

    .line 438
    .local p0, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/StackWalker$Option;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 440
    sget-object v0, Ljava/lang/StackWalker;->DEFAULT_EMPTY_OPTION:Ljava/util/EnumSet;

    return-object v0

    .line 442
    :cond_c
    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method blacklist estimateDepth()I
    .registers 2

    .line 617
    iget v0, p0, Ljava/lang/StackWalker;->estimateDepth:I

    return v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/StackWalker$StackFrame;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 521
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/StackWalker$StackFrame;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    new-instance v0, Ljava/lang/StackWalker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljava/lang/StackWalker$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {p0, v0}, Ljava/lang/StackStreamFactory;->makeStackTraverser(Ljava/lang/StackWalker;Ljava/util/function/Function;)Ljava/lang/StackStreamFactory$StackFrameTraverser;

    move-result-object v0

    .line 525
    invoke-virtual {v0}, Ljava/lang/StackStreamFactory$StackFrameTraverser;->walk()Ljava/lang/Object;

    .line 526
    return-void
.end method

.method public whitelist test-api getCallerClass()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 600
    iget-boolean v0, p0, Ljava/lang/StackWalker;->retainClassRef:Z

    if-eqz v0, :cond_d

    .line 605
    invoke-static {p0}, Ljava/lang/StackStreamFactory;->makeCallerFinder(Ljava/lang/StackWalker;)Ljava/lang/StackStreamFactory$CallerClassFinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StackStreamFactory$CallerClassFinder;->findCaller()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 601
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This stack walker does not have RETAIN_CLASS_REFERENCE access"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist hasLocalsOperandsOption()Z
    .registers 3

    .line 625
    iget-object v0, p0, Ljava/lang/StackWalker;->extendedOption:Ljava/lang/StackWalker$ExtendedOption;

    sget-object v1, Ljava/lang/StackWalker$ExtendedOption;->LOCALS_AND_OPERANDS:Ljava/lang/StackWalker$ExtendedOption;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method blacklist hasOption(Ljava/lang/StackWalker$Option;)Z
    .registers 3
    .param p1, "option"    # Ljava/lang/StackWalker$Option;

    .line 621
    iget-object v0, p0, Ljava/lang/StackWalker;->options:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api walk(Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/StackWalker$StackFrame;",
            ">;+TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 501
    .local p1, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/util/stream/Stream<Ljava/lang/StackWalker$StackFrame;>;+TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    invoke-static {p0, p1}, Ljava/lang/StackStreamFactory;->makeStackTraverser(Ljava/lang/StackWalker;Ljava/util/function/Function;)Ljava/lang/StackStreamFactory$StackFrameTraverser;

    move-result-object v0

    .line 503
    invoke-virtual {v0}, Ljava/lang/StackStreamFactory$StackFrameTraverser;->walk()Ljava/lang/Object;

    move-result-object v0

    .line 502
    return-object v0
.end method
