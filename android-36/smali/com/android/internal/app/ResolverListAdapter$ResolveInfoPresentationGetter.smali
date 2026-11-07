.class public Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;
.super Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;
.source "ResolverListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResolveInfoPresentationGetter"
.end annotation


# instance fields
.field private final blacklist mRi:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "iconDpi"    # I
    .param p3, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 1023
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;-><init>(Landroid/content/Context;ILandroid/content/pm/ActivityInfo;)V

    .line 1024
    iput-object p3, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    .line 1025
    return-void
.end method


# virtual methods
.method blacklist getAppLabelForSubstitutePermission()Ljava/lang/String;
    .registers 3

    .line 1057
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getAppSubLabelInternal()Ljava/lang/String;
    .registers 3

    .line 1051
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getIconSubstituteInternal()Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1029
    const/4 v0, 0x0

    .line 1032
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget v1, v1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v1, :cond_20

    .line 1033
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 1034
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget v2, v2, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1033
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->loadIconFromResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1f} :catch_21

    move-object v0, v1

    .line 1039
    :cond_20
    goto :goto_29

    .line 1036
    :catch_21
    move-exception v1

    .line 1037
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ResolverListAdapter"

    const-string v3, "SUBSTITUTE_SHARE_TARGET_APP_NAME_AND_ICON permission granted but couldn\'t find resources for package"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1042
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_29
    if-nez v0, :cond_2f

    invoke-super {p0}, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;->getIconSubstituteInternal()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1044
    :cond_2f
    return-object v0
.end method
