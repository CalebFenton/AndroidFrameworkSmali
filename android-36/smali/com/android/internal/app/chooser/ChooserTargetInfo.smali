.class public interface abstract Lcom/android/internal/app/chooser/ChooserTargetInfo;
.super Ljava/lang/Object;
.source "ChooserTargetInfo.java"

# interfaces
.implements Lcom/android/internal/app/chooser/TargetInfo;


# virtual methods
.method public abstract blacklist getChooserTarget()Landroid/service/chooser/ChooserTarget;
.end method

.method public abstract blacklist getModifiedScore()F
.end method

.method public blacklist isSimilar(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z
    .registers 7
    .param p1, "other"    # Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 36
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 38
    :cond_4
    invoke-interface {p0}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v1

    .line 39
    .local v1, "ct1":Landroid/service/chooser/ChooserTarget;
    invoke-interface {p1}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v2

    .line 43
    .local v2, "ct2":Landroid/service/chooser/ChooserTarget;
    if-eqz v1, :cond_3e

    if-nez v2, :cond_11

    goto :goto_3e

    .line 45
    :cond_11
    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 46
    invoke-interface {p0}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 47
    invoke-interface {p0}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 48
    const/4 v0, 0x1

    return v0

    .line 51
    :cond_3d
    return v0

    .line 43
    :cond_3e
    :goto_3e
    return v0
.end method
