.class public Landroid/content/pm/LauncherActivityInfo;
.super Ljava/lang/Object;
.source "LauncherActivityInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LauncherActivityInfo"


# instance fields
.field private mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private mComponentName:Landroid/content/ComponentName;

.field private mFirstInstallTime:J

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    #@9
    .line 63
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "firstInstallTime"    # J

    #@0
    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherActivityInfo;-><init>(Landroid/content/Context;)V

    #@3
    .line 56
    iput-object p2, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@5
    .line 57
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@7
    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@9
    .line 58
    invoke-static {p2}, Landroid/content/pm/LauncherApps;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mComponentName:Landroid/content/ComponentName;

    #@f
    .line 59
    iput-object p3, p0, Landroid/content/pm/LauncherActivityInfo;->mUser:Landroid/os/UserHandle;

    #@11
    .line 60
    iput-wide p4, p0, Landroid/content/pm/LauncherActivityInfo;->mFirstInstallTime:J

    #@13
    .line 54
    return-void
.end method

.method private getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "iconRes"    # I
    .param p2, "density"    # I

    #@0
    .prologue
    .line 147
    if-eqz p2, :cond_0

    #@2
    if-eqz p1, :cond_0

    #@4
    .line 150
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    #@6
    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@8
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@d
    move-result-object v1

    #@e
    .line 151
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1, p1, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v2

    #@12
    return-object v2

    #@13
    .line 152
    .end local v1    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    #@14
    .line 155
    :cond_0
    const/4 v2, 0x0

    #@15
    return-object v2
.end method

.method private getOriginalIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "density"    # I

    #@0
    .prologue
    .line 128
    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@2
    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getIconResourceInternal()I

    #@5
    move-result v1

    #@6
    .line 129
    .local v1, "iconRes":I
    invoke-direct {p0, v1, p1}, Landroid/content/pm/LauncherActivityInfo;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    .line 131
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    #@c
    .line 132
    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@e
    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    #@10
    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v0

    #@14
    .line 134
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getApplicationFlags()I
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@2
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@6
    return v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@2
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4
    return-object v0
.end method

.method public getBadgedIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "density"    # I

    #@0
    .prologue
    .line 201
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherActivityInfo;->getOriginalIcon(I)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    .line 203
    .local v0, "originalIcon":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 204
    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    #@a
    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mUser:Landroid/os/UserHandle;

    #@c
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 206
    :cond_0
    const-string/jumbo v1, "LauncherActivityInfo"

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "Unable to create badged icon for "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 208
    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mComponentName:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public getFirstInstallTime()J
    .locals 2

    #@0
    .prologue
    .line 182
    iget-wide v0, p0, Landroid/content/pm/LauncherActivityInfo;->mFirstInstallTime:J

    #@2
    return-wide v0
.end method

.method public getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "density"    # I

    #@0
    .prologue
    .line 109
    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@2
    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    #@5
    move-result v1

    #@6
    .line 110
    .local v1, "iconRes":I
    invoke-direct {p0, v1, p1}, Landroid/content/pm/LauncherActivityInfo;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    .line 112
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    #@c
    .line 113
    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@e
    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    #@10
    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v0

    #@14
    .line 115
    :cond_0
    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@2
    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    #@4
    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@2
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@4
    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mUser:Landroid/os/UserHandle;

    #@2
    return-object v0
.end method
