.class public Landroid/content/pm/PackageUserState;
.super Ljava/lang/Object;
.source "PackageUserState.java"


# instance fields
.field public appLinkGeneration:I

.field public blockUninstall:Z

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


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 44
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    #@7
    .line 45
    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    #@9
    .line 46
    iput v1, p0, Landroid/content/pm/PackageUserState;->enabled:I

    #@b
    .line 47
    iput v1, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    #@d
    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageUserState;)V
    .locals 3
    .param p1, "o"    # Landroid/content/pm/PackageUserState;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 52
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->installed:Z

    #@6
    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    #@8
    .line 53
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->stopped:Z

    #@a
    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->stopped:Z

    #@c
    .line 54
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->notLaunched:Z

    #@e
    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    #@10
    .line 55
    iget v0, p1, Landroid/content/pm/PackageUserState;->enabled:I

    #@12
    iput v0, p0, Landroid/content/pm/PackageUserState;->enabled:I

    #@14
    .line 56
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->hidden:Z

    #@16
    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    #@18
    .line 57
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    #@1a
    iput-object v0, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    #@1c
    .line 58
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 59
    new-instance v0, Landroid/util/ArraySet;

    #@22
    iget-object v2, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@24
    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    #@27
    .line 58
    :goto_0
    iput-object v0, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@29
    .line 60
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@2b
    if-eqz v0, :cond_0

    #@2d
    .line 61
    new-instance v1, Landroid/util/ArraySet;

    #@2f
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@31
    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    #@34
    .line 60
    :cond_0
    iput-object v1, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@36
    .line 62
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    #@38
    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    #@3a
    .line 63
    iget v0, p1, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    #@3c
    iput v0, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    #@3e
    .line 64
    iget v0, p1, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    #@40
    iput v0, p0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    #@42
    .line 51
    return-void

    #@43
    :cond_1
    move-object v0, v1

    #@44
    .line 59
    goto :goto_0
.end method
