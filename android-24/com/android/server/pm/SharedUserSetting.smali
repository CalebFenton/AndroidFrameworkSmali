.class final Lcom/android/server/pm/SharedUserSetting;
.super Lcom/android/server/pm/SettingBase;
.source "SharedUserSetting.java"


# instance fields
.field final name:Ljava/lang/String;

.field final packages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final signatures:Lcom/android/server/pm/PackageSignatures;

.field uidFlags:I

.field uidPrivateFlags:I

.field userId:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "_name"    # Ljava/lang/String;
    .param p2, "_pkgFlags"    # I
    .param p3, "_pkgPrivateFlags"    # I

    #@0
    .prologue
    .line 38
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    #@3
    .line 33
    new-instance v0, Landroid/util/ArraySet;

    #@5
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    #@a
    .line 35
    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    #@c
    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@11
    .line 39
    iput p2, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    #@13
    .line 40
    iput p3, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    #@15
    .line 41
    iput-object p1, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    #@17
    .line 37
    return-void
.end method


# virtual methods
.method addPackage(Lcom/android/server/pm/PackageSetting;)V
    .locals 2
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSetting;

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 72
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->pkgFlags:I

    #@a
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    #@c
    or-int/2addr v0, v1

    #@d
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->setFlags(I)V

    #@10
    .line 73
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->pkgPrivateFlags:I

    #@12
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    #@14
    or-int/2addr v0, v1

    #@15
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->setPrivateFlags(I)V

    #@18
    .line 70
    :cond_0
    return-void
.end method

.method removePackage(Lcom/android/server/pm/PackageSetting;)V
    .locals 6
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSetting;

    #@0
    .prologue
    .line 51
    iget-object v4, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_3

    #@8
    .line 53
    iget v4, p0, Lcom/android/server/pm/SharedUserSetting;->pkgFlags:I

    #@a
    iget v5, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    #@c
    and-int/2addr v4, v5

    #@d
    if-eqz v4, :cond_1

    #@f
    .line 54
    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    #@11
    .line 55
    .local v0, "aggregatedFlags":I
    iget-object v4, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    #@13
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v3

    #@17
    .local v3, "ps$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_0

    #@1d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    #@23
    .line 56
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    iget v4, v2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    #@25
    or-int/2addr v0, v4

    #@26
    goto :goto_0

    #@27
    .line 58
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SharedUserSetting;->setFlags(I)V

    #@2a
    .line 60
    .end local v0    # "aggregatedFlags":I
    .end local v3    # "ps$iterator":Ljava/util/Iterator;
    :cond_1
    iget v4, p0, Lcom/android/server/pm/SharedUserSetting;->pkgPrivateFlags:I

    #@2c
    iget v5, p1, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    #@2e
    and-int/2addr v4, v5

    #@2f
    if-eqz v4, :cond_3

    #@31
    .line 61
    iget v1, p0, Lcom/android/server/pm/SharedUserSetting;->uidPrivateFlags:I

    #@33
    .line 62
    .local v1, "aggregatedPrivateFlags":I
    iget-object v4, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    #@35
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@38
    move-result-object v3

    #@39
    .restart local v3    # "ps$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@3c
    move-result v4

    #@3d
    if-eqz v4, :cond_2

    #@3f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@42
    move-result-object v2

    #@43
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    #@45
    .line 63
    .restart local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    iget v4, v2, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    #@47
    or-int/2addr v1, v4

    #@48
    goto :goto_1

    #@49
    .line 65
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/pm/SharedUserSetting;->setPrivateFlags(I)V

    #@4c
    .line 50
    .end local v1    # "aggregatedPrivateFlags":I
    .end local v3    # "ps$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SharedUserSetting{"

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
    .line 47
    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    #@21
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 47
    const-string/jumbo v1, "/"

    #@28
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 47
    iget v1, p0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@2e
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 47
    const-string/jumbo v1, "}"

    #@35
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    return-object v0
.end method
