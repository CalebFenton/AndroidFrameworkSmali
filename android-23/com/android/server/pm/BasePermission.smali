.class final Lcom/android/server/pm/BasePermission;
.super Ljava/lang/Object;
.source "BasePermission.java"


# static fields
.field static final TYPE_BUILTIN:I = 0x1

.field static final TYPE_DYNAMIC:I = 0x2

.field static final TYPE_NORMAL:I


# instance fields
.field private gids:[I

.field final name:Ljava/lang/String;

.field packageSetting:Lcom/android/server/pm/PackageSettingBase;

.field pendingInfo:Landroid/content/pm/PermissionInfo;

.field private perUser:Z

.field perm:Landroid/content/pm/PackageParser$Permission;

.field protectionLevel:I

.field sourcePackage:Ljava/lang/String;

.field final type:I

.field uid:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "_name"    # Ljava/lang/String;
    .param p2, "_sourcePackage"    # Ljava/lang/String;
    .param p3, "_type"    # I

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    iput-object p1, p0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    #@5
    .line 58
    iput-object p2, p0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    #@7
    .line 59
    iput p3, p0, Lcom/android/server/pm/BasePermission;->type:I

    #@9
    .line 61
    const/4 v0, 0x2

    #@a
    iput v0, p0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    #@c
    .line 56
    return-void
.end method


# virtual methods
.method public computeGids(I)[I
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 76
    iget-boolean v2, p0, Lcom/android/server/pm/BasePermission;->perUser:Z

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 77
    iget-object v2, p0, Lcom/android/server/pm/BasePermission;->gids:[I

    #@6
    array-length v2, v2

    #@7
    new-array v1, v2, [I

    #@9
    .line 78
    .local v1, "userGids":[I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/BasePermission;->gids:[I

    #@c
    array-length v2, v2

    #@d
    if-ge v0, v2, :cond_0

    #@f
    .line 79
    iget-object v2, p0, Lcom/android/server/pm/BasePermission;->gids:[I

    #@11
    aget v2, v2, v0

    #@13
    invoke-static {p1, v2}, Landroid/os/UserHandle;->getUid(II)I

    #@16
    move-result v2

    #@17
    aput v2, v1, v0

    #@19
    .line 78
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 81
    :cond_0
    return-object v1

    #@1d
    .line 83
    .end local v0    # "i":I
    .end local v1    # "userGids":[I
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/BasePermission;->gids:[I

    #@1f
    return-object v2
.end method

.method public isRuntime()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 88
    iget v1, p0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    #@3
    and-int/lit8 v1, v1, 0xf

    #@5
    if-ne v1, v0, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public setGids([IZ)V
    .locals 0
    .param p1, "gids"    # [I
    .param p2, "perUser"    # Z

    #@0
    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/server/pm/BasePermission;->gids:[I

    #@2
    .line 72
    iput-boolean p2, p0, Lcom/android/server/pm/BasePermission;->perUser:Z

    #@4
    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "BasePermission{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, " "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget-object v1, p0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 67
    const-string/jumbo v1, "}"

    #@28
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method
