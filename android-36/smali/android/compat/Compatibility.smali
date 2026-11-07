.class public final Landroid/compat/Compatibility;
.super Ljava/lang/Object;
.source "Compatibility.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/compat/Compatibility$BehaviorChangeDelegate;,
        Landroid/compat/Compatibility$OverrideCallbacks;,
        Landroid/compat/Compatibility$ChangeConfig;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_CALLBACKS:Landroid/compat/Compatibility$BehaviorChangeDelegate;

.field private static volatile blacklist sCallbacks:Landroid/compat/Compatibility$BehaviorChangeDelegate;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 90
    new-instance v0, Landroid/compat/Compatibility$1;

    invoke-direct {v0}, Landroid/compat/Compatibility$1;-><init>()V

    sput-object v0, Landroid/compat/Compatibility;->DEFAULT_CALLBACKS:Landroid/compat/Compatibility$BehaviorChangeDelegate;

    .line 92
    sget-object v0, Landroid/compat/Compatibility;->DEFAULT_CALLBACKS:Landroid/compat/Compatibility$BehaviorChangeDelegate;

    sput-object v0, Landroid/compat/Compatibility;->sCallbacks:Landroid/compat/Compatibility$BehaviorChangeDelegate;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist test-api clearBehaviorChangeDelegate()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 113
    sget-object v0, Landroid/compat/Compatibility;->DEFAULT_CALLBACKS:Landroid/compat/Compatibility$BehaviorChangeDelegate;

    sput-object v0, Landroid/compat/Compatibility;->sCallbacks:Landroid/compat/Compatibility$BehaviorChangeDelegate;

    .line 114
    return-void
.end method

.method public static blacklist test-api clearOverrides()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 153
    sget-object v0, Landroid/compat/Compatibility;->sCallbacks:Landroid/compat/Compatibility$BehaviorChangeDelegate;

    instance-of v0, v0, Landroid/compat/Compatibility$OverrideCallbacks;

    if-eqz v0, :cond_11

    .line 156
    sget-object v0, Landroid/compat/Compatibility;->sCallbacks:Landroid/compat/Compatibility$BehaviorChangeDelegate;

    check-cast v0, Landroid/compat/Compatibility$OverrideCallbacks;

    invoke-static {v0}, Landroid/compat/Compatibility$OverrideCallbacks;->-$$Nest$fgetdelegate(Landroid/compat/Compatibility$OverrideCallbacks;)Landroid/compat/Compatibility$BehaviorChangeDelegate;

    move-result-object v0

    sput-object v0, Landroid/compat/Compatibility;->sCallbacks:Landroid/compat/Compatibility$BehaviorChangeDelegate;

    .line 157
    return-void

    .line 154
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No overrides set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getBehaviorChangeDelegate()Landroid/compat/Compatibility$BehaviorChangeDelegate;
    .registers 1

    .line 124
    sget-object v0, Landroid/compat/Compatibility;->sCallbacks:Landroid/compat/Compatibility$BehaviorChangeDelegate;

    return-object v0
.end method

.method public static blacklist test-api isChangeEnabled(J)Z
    .registers 3
    .param p0, "changeId"    # J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 87
    sget-object v0, Landroid/compat/Compatibility;->sCallbacks:Landroid/compat/Compatibility$BehaviorChangeDelegate;

    invoke-interface {v0, p0, p1}, Landroid/compat/Compatibility$BehaviorChangeDelegate;->isChangeEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static blacklist test-api reportUnconditionalChange(J)V
    .registers 3
    .param p0, "changeId"    # J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 64
    sget-object v0, Landroid/compat/Compatibility;->sCallbacks:Landroid/compat/Compatibility$BehaviorChangeDelegate;

    invoke-interface {v0, p0, p1}, Landroid/compat/Compatibility$BehaviorChangeDelegate;->onChangeReported(J)V

    .line 65
    return-void
.end method

.method public static blacklist test-api setBehaviorChangeDelegate(Landroid/compat/Compatibility$BehaviorChangeDelegate;)V
    .registers 2
    .param p0, "callbacks"    # Landroid/compat/Compatibility$BehaviorChangeDelegate;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 103
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/compat/Compatibility$BehaviorChangeDelegate;

    sput-object v0, Landroid/compat/Compatibility;->sCallbacks:Landroid/compat/Compatibility$BehaviorChangeDelegate;

    .line 104
    return-void
.end method

.method public static blacklist test-api setOverrides(Landroid/compat/Compatibility$ChangeConfig;)V
    .registers 4
    .param p0, "overrides"    # Landroid/compat/Compatibility$ChangeConfig;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 140
    sget-object v0, Landroid/compat/Compatibility;->sCallbacks:Landroid/compat/Compatibility$BehaviorChangeDelegate;

    instance-of v0, v0, Landroid/compat/Compatibility$OverrideCallbacks;

    if-nez v0, :cond_11

    .line 143
    new-instance v0, Landroid/compat/Compatibility$OverrideCallbacks;

    sget-object v1, Landroid/compat/Compatibility;->sCallbacks:Landroid/compat/Compatibility$BehaviorChangeDelegate;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/compat/Compatibility$OverrideCallbacks;-><init>(Landroid/compat/Compatibility$BehaviorChangeDelegate;Landroid/compat/Compatibility$ChangeConfig;Landroid/compat/Compatibility-IA;)V

    sput-object v0, Landroid/compat/Compatibility;->sCallbacks:Landroid/compat/Compatibility$BehaviorChangeDelegate;

    .line 144
    return-void

    .line 141
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setOverrides has already been called!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
