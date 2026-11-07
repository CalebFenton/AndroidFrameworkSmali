.class interface abstract Ljava/lang/LiveStackFrame;
.super Ljava/lang/Object;
.source "LiveStackFrame.java"

# interfaces
.implements Ljava/lang/StackWalker$StackFrame;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/LiveStackFrame$PrimitiveSlot;
    }
.end annotation


# direct methods
.method public static blacklist getStackWalker()Ljava/lang/StackWalker;
    .registers 1

    .line 159
    const-class v0, Ljava/lang/StackWalker$Option;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/LiveStackFrame;->getStackWalker(Ljava/util/Set;)Ljava/lang/StackWalker;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getStackWalker(Ljava/util/Set;)Ljava/lang/StackWalker;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/StackWalker$Option;",
            ">;)",
            "Ljava/lang/StackWalker;"
        }
    .end annotation

    .line 181
    .local p0, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/StackWalker$Option;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 182
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 183
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "liveStackFrames"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 185
    :cond_10
    sget-object v1, Ljava/lang/StackWalker$ExtendedOption;->LOCALS_AND_OPERANDS:Ljava/lang/StackWalker$ExtendedOption;

    invoke-static {p0, v1}, Ljava/lang/StackWalker;->newInstance(Ljava/util/Set;Ljava/lang/StackWalker$ExtendedOption;)Ljava/lang/StackWalker;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abstract blacklist getLocals()[Ljava/lang/Object;
.end method

.method public abstract blacklist getMonitors()[Ljava/lang/Object;
.end method

.method public abstract blacklist getStack()[Ljava/lang/Object;
.end method
