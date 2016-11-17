.class public Landroid/content/pm/PackageUserState;
.super Ljava/lang/Object;
.source "PackageUserState.java"


# instance fields
.field public appLinkGeneration:I

.field public blockUninstall:Z

.field public ceDataInode:J

.field public disabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public domainVerificationStatus:I

.field public enabled:I

.field public enabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hidden:Z

.field public installed:Z

.field public lastDisableAppCaller:Ljava/lang/String;

.field public notLaunched:Z

.field public stopped:Z

.field public suspended:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 55
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    #@7
    .line 56
    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    #@9
    .line 57
    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    #@b
    .line 58
    iput v1, p0, Landroid/content/pm/PackageUserState;->enabled:I

    #@d
    .line 59
    iput v1, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    #@f
    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageUserState;)V
    .locals 2
    .param p1, "o"    # Landroid/content/pm/PackageUserState;

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    iget-wide v0, p1, Landroid/content/pm/PackageUserState;->ceDataInode:J

    #@5
    iput-wide v0, p0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    #@7
    .line 65
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->installed:Z

    #@9
    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    #@b
    .line 66
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->stopped:Z

    #@d
    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->stopped:Z

    #@f
    .line 67
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->notLaunched:Z

    #@11
    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    #@13
    .line 68
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->hidden:Z

    #@15
    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    #@17
    .line 69
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->suspended:Z

    #@19
    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    #@1b
    .line 70
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    #@1d
    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    #@1f
    .line 71
    iget v0, p1, Landroid/content/pm/PackageUserState;->enabled:I

    #@21
    iput v0, p0, Landroid/content/pm/PackageUserState;->enabled:I

    #@23
    .line 72
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    #@25
    iput-object v0, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    #@27
    .line 73
    iget v0, p1, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    #@29
    iput v0, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    #@2b
    .line 74
    iget v0, p1, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    #@2d
    iput v0, p0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    #@2f
    .line 75
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@31
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull(Landroid/util/ArraySet;)Landroid/util/ArraySet;

    #@34
    move-result-object v0

    #@35
    iput-object v0, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@37
    .line 76
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@39
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull(Landroid/util/ArraySet;)Landroid/util/ArraySet;

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@3f
    .line 63
    return-void
.end method


# virtual methods
.method public isEnabled(Landroid/content/pm/ComponentInfo;I)Z
    .locals 4
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 117
    and-int/lit16 v0, p2, 0x200

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 118
    return v3

    #@7
    .line 123
    :cond_0
    iget v0, p0, Landroid/content/pm/PackageUserState;->enabled:I

    #@9
    packed-switch v0, :pswitch_data_0

    #@c
    .line 141
    :cond_1
    :pswitch_0
    iget-object v0, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@e
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    #@10
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Landroid/util/ArraySet;Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_3

    #@16
    .line 142
    return v3

    #@17
    .line 126
    :pswitch_1
    return v2

    #@18
    .line 128
    :pswitch_2
    const v0, 0x8000

    #@1b
    and-int/2addr v0, p2

    #@1c
    if-nez v0, :cond_2

    #@1e
    .line 129
    return v2

    #@1f
    .line 132
    :cond_2
    :pswitch_3
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@21
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@23
    if-nez v0, :cond_1

    #@25
    .line 133
    return v2

    #@26
    .line 144
    :cond_3
    iget-object v0, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@28
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    #@2a
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Landroid/util/ArraySet;Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_4

    #@30
    .line 145
    return v2

    #@31
    .line 148
    :cond_4
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    #@33
    return v0

    #@34
    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isInstalled(I)Z
    .locals 3
    .param p1, "flags"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 83
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->installed:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 84
    :cond_0
    and-int/lit16 v2, p1, 0x2000

    #@c
    if-eqz v2, :cond_2

    #@e
    .line 83
    :cond_1
    :goto_0
    return v0

    #@f
    :cond_2
    move v0, v1

    #@10
    .line 84
    goto :goto_0
.end method

.method public isMatch(Landroid/content/pm/ComponentInfo;I)Z
    .locals 4
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 97
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageUserState;->isInstalled(I)Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    return v3

    #@8
    .line 98
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageUserState;->isEnabled(Landroid/content/pm/ComponentInfo;I)Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_1

    #@e
    return v3

    #@f
    .line 100
    :cond_1
    const/high16 v2, 0x100000

    #@11
    and-int/2addr v2, p2

    #@12
    if-eqz v2, :cond_2

    #@14
    .line 101
    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@16
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_2

    #@1c
    .line 102
    return v3

    #@1d
    .line 106
    :cond_2
    const/high16 v2, 0x40000

    #@1f
    and-int/2addr v2, p2

    #@20
    if-eqz v2, :cond_4

    #@22
    .line 107
    iget-boolean v2, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    #@24
    if-eqz v2, :cond_3

    #@26
    const/4 v1, 0x0

    #@27
    .line 108
    .local v1, "matchesUnaware":Z
    :goto_0
    const/high16 v2, 0x80000

    #@29
    and-int/2addr v2, p2

    #@2a
    if-eqz v2, :cond_5

    #@2c
    .line 109
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    #@2e
    .line 110
    :goto_1
    if-nez v1, :cond_6

    #@30
    :goto_2
    return v0

    #@31
    .line 107
    .end local v1    # "matchesUnaware":Z
    :cond_3
    const/4 v1, 0x1

    #@32
    .restart local v1    # "matchesUnaware":Z
    goto :goto_0

    #@33
    .line 106
    .end local v1    # "matchesUnaware":Z
    :cond_4
    const/4 v1, 0x0

    #@34
    .restart local v1    # "matchesUnaware":Z
    goto :goto_0

    #@35
    .line 108
    :cond_5
    const/4 v0, 0x0

    #@36
    .local v0, "matchesAware":Z
    goto :goto_1

    #@37
    .line 110
    .end local v0    # "matchesAware":Z
    :cond_6
    const/4 v0, 0x1

    #@38
    goto :goto_2
.end method
