.class public Ljava/lang/invoke/MutableCallSite;
.super Ljava/lang/invoke/CallSite;
.source "MutableCallSite.java"


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/invoke/MethodHandle;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;

    .line 106
    invoke-direct {p0, p1}, Ljava/lang/invoke/CallSite;-><init>(Ljava/lang/invoke/MethodHandle;)V

    .line 107
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/invoke/MethodType;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/invoke/MethodType;

    .line 96
    invoke-direct {p0, p1}, Ljava/lang/invoke/CallSite;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 97
    return-void
.end method


# virtual methods
.method public final whitelist test-api dynamicInvoker()Ljava/lang/invoke/MethodHandle;
    .registers 2

    .line 158
    invoke-virtual {p0}, Ljava/lang/invoke/MutableCallSite;->makeDynamicInvoker()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getTarget()Ljava/lang/invoke/MethodHandle;
    .registers 2

    .line 125
    iget-object v0, p0, Ljava/lang/invoke/MutableCallSite;->target:Ljava/lang/invoke/MethodHandle;

    return-object v0
.end method

.method public whitelist test-api setTarget(Ljava/lang/invoke/MethodHandle;)V
    .registers 3
    .param p1, "newTarget"    # Ljava/lang/invoke/MethodHandle;

    .line 149
    iget-object v0, p0, Ljava/lang/invoke/MutableCallSite;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p0, v0, p1}, Ljava/lang/invoke/MutableCallSite;->checkTargetChange(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    .line 150
    invoke-virtual {p0, p1}, Ljava/lang/invoke/MutableCallSite;->setTargetNormal(Ljava/lang/invoke/MethodHandle;)V

    .line 151
    return-void
.end method
