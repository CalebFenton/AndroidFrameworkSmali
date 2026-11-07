.class Landroid/compat/Compatibility$OverrideCallbacks;
.super Ljava/lang/Object;
.source "Compatibility.java"

# interfaces
.implements Landroid/compat/Compatibility$BehaviorChangeDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/compat/Compatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverrideCallbacks"
.end annotation


# instance fields
.field private final blacklist changeConfig:Landroid/compat/Compatibility$ChangeConfig;

.field private final blacklist delegate:Landroid/compat/Compatibility$BehaviorChangeDelegate;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetdelegate(Landroid/compat/Compatibility$OverrideCallbacks;)Landroid/compat/Compatibility$BehaviorChangeDelegate;
    .registers 1

    iget-object p0, p0, Landroid/compat/Compatibility$OverrideCallbacks;->delegate:Landroid/compat/Compatibility$BehaviorChangeDelegate;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/compat/Compatibility$BehaviorChangeDelegate;Landroid/compat/Compatibility$ChangeConfig;)V
    .registers 4
    .param p1, "delegate"    # Landroid/compat/Compatibility$BehaviorChangeDelegate;
    .param p2, "changeConfig"    # Landroid/compat/Compatibility$ChangeConfig;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/compat/Compatibility$BehaviorChangeDelegate;

    iput-object v0, p0, Landroid/compat/Compatibility$OverrideCallbacks;->delegate:Landroid/compat/Compatibility$BehaviorChangeDelegate;

    .line 342
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/compat/Compatibility$ChangeConfig;

    iput-object v0, p0, Landroid/compat/Compatibility$OverrideCallbacks;->changeConfig:Landroid/compat/Compatibility$ChangeConfig;

    .line 343
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/compat/Compatibility$BehaviorChangeDelegate;Landroid/compat/Compatibility$ChangeConfig;Landroid/compat/Compatibility-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/compat/Compatibility$OverrideCallbacks;-><init>(Landroid/compat/Compatibility$BehaviorChangeDelegate;Landroid/compat/Compatibility$ChangeConfig;)V

    return-void
.end method


# virtual methods
.method public blacklist test-api isChangeEnabled(J)Z
    .registers 4
    .param p1, "changeId"    # J

    .line 346
    iget-object v0, p0, Landroid/compat/Compatibility$OverrideCallbacks;->changeConfig:Landroid/compat/Compatibility$ChangeConfig;

    invoke-virtual {v0, p1, p2}, Landroid/compat/Compatibility$ChangeConfig;->isForceEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 347
    const/4 v0, 0x1

    return v0

    .line 349
    :cond_a
    iget-object v0, p0, Landroid/compat/Compatibility$OverrideCallbacks;->changeConfig:Landroid/compat/Compatibility$ChangeConfig;

    invoke-virtual {v0, p1, p2}, Landroid/compat/Compatibility$ChangeConfig;->isForceDisabled(J)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 350
    const/4 v0, 0x0

    return v0

    .line 352
    :cond_14
    iget-object v0, p0, Landroid/compat/Compatibility$OverrideCallbacks;->delegate:Landroid/compat/Compatibility$BehaviorChangeDelegate;

    invoke-interface {v0, p1, p2}, Landroid/compat/Compatibility$BehaviorChangeDelegate;->isChangeEnabled(J)Z

    move-result v0

    return v0
.end method
