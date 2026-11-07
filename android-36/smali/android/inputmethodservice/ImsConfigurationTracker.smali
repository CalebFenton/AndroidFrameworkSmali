.class public final Landroid/inputmethodservice/ImsConfigurationTracker;
.super Ljava/lang/Object;
.source "ImsConfigurationTracker.java"


# static fields
.field private static final blacklist CONFIG_CHANGED:I = -0x1


# instance fields
.field private blacklist mHandledConfigChanges:I

.field private blacklist mInitialized:Z

.field private blacklist mLastKnownConfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mLastKnownConfig:Landroid/content/res/Configuration;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mHandledConfigChanges:I

    .line 48
    iput-boolean v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mInitialized:Z

    return-void
.end method


# virtual methods
.method public blacklist onBindInput(Landroid/content/res/Resources;)V
    .registers 4
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 68
    iget-boolean v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mInitialized:Z

    if-nez v0, :cond_5

    .line 69
    return-void

    .line 71
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mLastKnownConfig:Landroid/content/res/Configuration;

    if-nez v0, :cond_16

    if-eqz p1, :cond_16

    .line 72
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mLastKnownConfig:Landroid/content/res/Configuration;

    .line 74
    :cond_16
    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "resetStateForNewConfigurationRunner"    # Ljava/lang/Runnable;

    .line 90
    iget-boolean v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mInitialized:Z

    if-nez v0, :cond_5

    .line 91
    return-void

    .line 94
    :cond_5
    invoke-static {}, Landroid/content/res/Flags;->handleAllConfigChanges()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mHandledConfigChanges:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 97
    .local v0, "neverReset":Z
    :goto_15
    iget-object v1, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mLastKnownConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_20

    .line 98
    iget-object v1, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mLastKnownConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v1

    goto :goto_21

    :cond_20
    const/4 v1, -0x1

    .line 101
    .local v1, "diff":I
    :goto_21
    iget v2, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mHandledConfigChanges:I

    not-int v2, v2

    and-int/2addr v2, v1

    .line 102
    .local v2, "unhandledDiff":I
    if-eqz v2, :cond_2c

    if-nez v0, :cond_2c

    .line 103
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 105
    :cond_2c
    if-eqz v1, :cond_35

    .line 106
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v3, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mLastKnownConfig:Landroid/content/res/Configuration;

    .line 108
    :cond_35
    return-void
.end method

.method public blacklist onInitialize(I)V
    .registers 5
    .param p1, "handledConfigChanges"    # I

    .line 58
    iget-boolean v0, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mInitialized:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "onInitialize can be called only once."

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 59
    iput-boolean v1, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mInitialized:Z

    .line 60
    iput p1, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mHandledConfigChanges:I

    .line 61
    return-void
.end method

.method public blacklist setHandledConfigChanges(I)V
    .registers 2
    .param p1, "configChanges"    # I

    .line 81
    iput p1, p0, Landroid/inputmethodservice/ImsConfigurationTracker;->mHandledConfigChanges:I

    .line 82
    return-void
.end method
