.class Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
.super Landroid/content/pm/PermissionGroupInfo;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyPermissionGroupInfo"
.end annotation


# instance fields
.field final mAllPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field mLabel:Ljava/lang/CharSequence;

.field final mNewPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/pm/PermissionGroupInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/PermissionGroupInfo;

    #@0
    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    #@3
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    #@a
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    #@11
    .line 94
    return-void
.end method

.method constructor <init>(Landroid/content/pm/PermissionInfo;)V
    .locals 1
    .param p1, "perm"    # Landroid/content/pm/PermissionInfo;

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Landroid/content/pm/PermissionGroupInfo;-><init>()V

    #@3
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    #@a
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    #@11
    .line 90
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    #@13
    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->name:Ljava/lang/String;

    #@15
    .line 91
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    #@17
    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->packageName:Ljava/lang/String;

    #@19
    .line 89
    return-void
.end method


# virtual methods
.method public loadGroupIcon(Landroid/content/Context;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 99
    iget v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 100
    invoke-virtual {p0, p2}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 102
    :cond_0
    const v0, 0x10803f6

    #@c
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method
