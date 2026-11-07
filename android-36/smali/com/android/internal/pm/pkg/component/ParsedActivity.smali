.class public interface abstract Lcom/android/internal/pm/pkg/component/ParsedActivity;
.super Ljava/lang/Object;
.source "ParsedActivity.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedMainComponent;


# virtual methods
.method public abstract blacklist getColorMode()I
.end method

.method public abstract blacklist getConfigChanges()I
.end method

.method public abstract blacklist getDocumentLaunchMode()I
.end method

.method public abstract blacklist getKnownActivityEmbeddingCerts()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getLaunchMode()I
.end method

.method public abstract blacklist getLockTaskLaunchMode()I
.end method

.method public abstract blacklist getMaxAspectRatio()F
.end method

.method public abstract blacklist getMaxRecents()I
.end method

.method public abstract blacklist getMinAspectRatio()F
.end method

.method public abstract blacklist getParentActivityName()Ljava/lang/String;
.end method

.method public abstract blacklist getPermission()Ljava/lang/String;
.end method

.method public abstract blacklist getPersistableMode()I
.end method

.method public abstract blacklist getPrivateFlags()I
.end method

.method public abstract blacklist getRequestedVrComponent()Ljava/lang/String;
.end method

.method public abstract blacklist getRequireContentUriPermissionFromCaller()I
.end method

.method public abstract blacklist getRequiredDisplayCategory()Ljava/lang/String;
.end method

.method public abstract blacklist getResizeMode()I
.end method

.method public abstract blacklist getRotationAnimation()I
.end method

.method public abstract blacklist getScreenOrientation()I
.end method

.method public abstract blacklist getSoftInputMode()I
.end method

.method public abstract blacklist getTargetActivity()Ljava/lang/String;
.end method

.method public abstract blacklist getTaskAffinity()Ljava/lang/String;
.end method

.method public abstract blacklist getTheme()I
.end method

.method public abstract blacklist getUiOptions()I
.end method

.method public abstract blacklist getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;
.end method

.method public abstract blacklist isSupportsSizeChanges()Z
.end method
