.class abstract Lcom/android/server/pm/SettingBase;
.super Ljava/lang/Object;
.source "SettingBase.java"


# instance fields
.field protected final mPermissionsState:Lcom/android/server/pm/PermissionsState;

.field pkgFlags:I

.field pkgPrivateFlags:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "pkgFlags"    # I
    .param p2, "pkgPrivateFlags"    # I

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SettingBase;->setFlags(I)V

    #@6
    .line 29
    invoke-virtual {p0, p2}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)V

    #@9
    .line 30
    new-instance v0, Lcom/android/server/pm/PermissionsState;

    #@b
    invoke-direct {v0}, Lcom/android/server/pm/PermissionsState;-><init>()V

    #@e
    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mPermissionsState:Lcom/android/server/pm/PermissionsState;

    #@10
    .line 27
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/SettingBase;)V
    .locals 2
    .param p1, "base"    # Lcom/android/server/pm/SettingBase;

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    iget v0, p1, Lcom/android/server/pm/SettingBase;->pkgFlags:I

    #@5
    iput v0, p0, Lcom/android/server/pm/SettingBase;->pkgFlags:I

    #@7
    .line 35
    iget v0, p1, Lcom/android/server/pm/SettingBase;->pkgPrivateFlags:I

    #@9
    iput v0, p0, Lcom/android/server/pm/SettingBase;->pkgPrivateFlags:I

    #@b
    .line 36
    new-instance v0, Lcom/android/server/pm/PermissionsState;

    #@d
    iget-object v1, p1, Lcom/android/server/pm/SettingBase;->mPermissionsState:Lcom/android/server/pm/PermissionsState;

    #@f
    invoke-direct {v0, v1}, Lcom/android/server/pm/PermissionsState;-><init>(Lcom/android/server/pm/PermissionsState;)V

    #@12
    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mPermissionsState:Lcom/android/server/pm/PermissionsState;

    #@14
    .line 33
    return-void
.end method


# virtual methods
.method public getPermissionsState()Lcom/android/server/pm/PermissionsState;
    .locals 1

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/pm/SettingBase;->mPermissionsState:Lcom/android/server/pm/PermissionsState;

    #@2
    return-object v0
.end method

.method setFlags(I)V
    .locals 1
    .param p1, "pkgFlags"    # I

    #@0
    .prologue
    .line 45
    const v0, 0x40001

    #@3
    .line 44
    and-int/2addr v0, p1

    #@4
    iput v0, p0, Lcom/android/server/pm/SettingBase;->pkgFlags:I

    #@6
    .line 43
    return-void
.end method

.method setPrivateFlags(I)V
    .locals 1
    .param p1, "pkgPrivateFlags"    # I

    #@0
    .prologue
    .line 50
    and-int/lit8 v0, p1, 0xc

    #@2
    iput v0, p0, Lcom/android/server/pm/SettingBase;->pkgPrivateFlags:I

    #@4
    .line 49
    return-void
.end method
