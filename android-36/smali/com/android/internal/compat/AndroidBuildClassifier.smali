.class public Lcom/android/internal/compat/AndroidBuildClassifier;
.super Ljava/lang/Object;
.source "AndroidBuildClassifier.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist isDebuggableBuild()Z
    .registers 2

    .line 29
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    return v0
.end method

.method public blacklist isFinalBuild()Z
    .registers 3

    .line 33
    const-string v0, "REL"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist platformTargetSdk()I
    .registers 2

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/compat/AndroidBuildClassifier;->isFinalBuild()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0

    .line 43
    :cond_9
    const/16 v0, 0x2710

    return v0
.end method
