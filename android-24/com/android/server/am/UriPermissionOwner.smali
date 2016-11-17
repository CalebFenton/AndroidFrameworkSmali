.class final Lcom/android/server/am/UriPermissionOwner;
.super Ljava/lang/Object;
.source "UriPermissionOwner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UriPermissionOwner$ExternalToken;
    }
.end annotation


# instance fields
.field externalToken:Landroid/os/Binder;

.field private mReadPerms:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/UriPermission;",
            ">;"
        }
    .end annotation
.end field

.field private mWritePerms:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/UriPermission;",
            ">;"
        }
    .end annotation
.end field

.field final owner:Ljava/lang/Object;

.field final service:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/Object;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "owner"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    iput-object p1, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    #@5
    .line 46
    iput-object p2, p0, Lcom/android/server/am/UriPermissionOwner;->owner:Ljava/lang/Object;

    #@7
    .line 44
    return-void
.end method

.method static fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/am/UriPermissionOwner;
    .locals 1
    .param p0, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 57
    instance-of v0, p0, Lcom/android/server/am/UriPermissionOwner$ExternalToken;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 58
    check-cast p0, Lcom/android/server/am/UriPermissionOwner$ExternalToken;

    #@6
    .end local p0    # "token":Landroid/os/IBinder;
    invoke-virtual {p0}, Lcom/android/server/am/UriPermissionOwner$ExternalToken;->getOwner()Lcom/android/server/am/UriPermissionOwner;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 60
    .restart local p0    # "token":Landroid/os/IBinder;
    :cond_0
    const/4 v0, 0x0

    #@c
    return-object v0
.end method


# virtual methods
.method public addReadPermission(Lcom/android/server/am/UriPermission;)V
    .locals 1
    .param p1, "perm"    # Lcom/android/server/am/UriPermission;

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 107
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    #@a
    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    #@c
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@f
    .line 105
    return-void
.end method

.method public addWritePermission(Lcom/android/server/am/UriPermission;)V
    .locals 1
    .param p1, "perm"    # Lcom/android/server/am/UriPermission;

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 114
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    #@a
    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    #@c
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@f
    .line 112
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 135
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7
    const-string/jumbo v0, "readUriPermissions="

    #@a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    #@f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@12
    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 138
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19
    const-string/jumbo v0, "writeUriPermissions="

    #@1c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    #@21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@24
    .line 133
    :cond_1
    return-void
.end method

.method getExternalTokenLocked()Landroid/os/Binder;
    .locals 1

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 51
    new-instance v0, Lcom/android/server/am/UriPermissionOwner$ExternalToken;

    #@6
    invoke-direct {v0, p0}, Lcom/android/server/am/UriPermissionOwner$ExternalToken;-><init>(Lcom/android/server/am/UriPermissionOwner;)V

    #@9
    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    #@b
    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    #@d
    return-object v0
.end method

.method public removeReadPermission(Lcom/android/server/am/UriPermission;)V
    .locals 1
    .param p1, "perm"    # Lcom/android/server/am/UriPermission;

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@5
    .line 121
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    #@7
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 122
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    #@10
    .line 119
    :cond_0
    return-void
.end method

.method removeUriPermissionLocked(Lcom/android/server/am/ActivityManagerService$GrantUri;I)V
    .locals 4
    .param p1, "grantUri"    # Lcom/android/server/am/ActivityManagerService$GrantUri;
    .param p2, "mode"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 73
    and-int/lit8 v2, p2, 0x1

    #@3
    if-eqz v2, :cond_3

    #@5
    .line 74
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    #@7
    if-eqz v2, :cond_3

    #@9
    .line 75
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    #@b
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v0

    #@f
    .line 76
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/UriPermission;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_2

    #@15
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/android/server/am/UriPermission;

    #@1b
    .line 78
    .local v1, "perm":Lcom/android/server/am/UriPermission;
    if-eqz p1, :cond_1

    #@1d
    iget-object v2, v1, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    #@1f
    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityManagerService$GrantUri;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_0

    #@25
    .line 79
    :cond_1
    invoke-virtual {v1, p0}, Lcom/android/server/am/UriPermission;->removeReadOwner(Lcom/android/server/am/UriPermissionOwner;)V

    #@28
    .line 80
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    #@2a
    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/am/UriPermission;)V

    #@2d
    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@30
    goto :goto_0

    #@31
    .line 84
    .end local v1    # "perm":Lcom/android/server/am/UriPermission;
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    #@33
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_3

    #@39
    .line 85
    iput-object v3, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    #@3b
    .line 88
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/UriPermission;>;"
    :cond_3
    and-int/lit8 v2, p2, 0x2

    #@3d
    if-eqz v2, :cond_7

    #@3f
    .line 89
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    #@41
    if-eqz v2, :cond_7

    #@43
    .line 90
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    #@45
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    #@48
    move-result-object v0

    #@49
    .line 91
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/UriPermission;>;"
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@4c
    move-result v2

    #@4d
    if-eqz v2, :cond_6

    #@4f
    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@52
    move-result-object v1

    #@53
    check-cast v1, Lcom/android/server/am/UriPermission;

    #@55
    .line 93
    .restart local v1    # "perm":Lcom/android/server/am/UriPermission;
    if-eqz p1, :cond_5

    #@57
    iget-object v2, v1, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    #@59
    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityManagerService$GrantUri;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v2

    #@5d
    if-eqz v2, :cond_4

    #@5f
    .line 94
    :cond_5
    invoke-virtual {v1, p0}, Lcom/android/server/am/UriPermission;->removeWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V

    #@62
    .line 95
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    #@64
    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/am/UriPermission;)V

    #@67
    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@6a
    goto :goto_1

    #@6b
    .line 99
    .end local v1    # "perm":Lcom/android/server/am/UriPermission;
    :cond_6
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    #@6d
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    #@70
    move-result v2

    #@71
    if-eqz v2, :cond_7

    #@73
    .line 100
    iput-object v3, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    #@75
    .line 72
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/UriPermission;>;"
    :cond_7
    return-void
.end method

.method removeUriPermissionsLocked()V
    .locals 1

    #@0
    .prologue
    .line 64
    const/4 v0, 0x3

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionsLocked(I)V

    #@4
    .line 63
    return-void
.end method

.method removeUriPermissionsLocked(I)V
    .locals 1
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 69
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionLocked(Lcom/android/server/am/ActivityManagerService$GrantUri;I)V

    #@4
    .line 68
    return-void
.end method

.method public removeWritePermission(Lcom/android/server/am/UriPermission;)V
    .locals 1
    .param p1, "perm"    # Lcom/android/server/am/UriPermission;

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@5
    .line 128
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    #@7
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 129
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    #@10
    .line 126
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->owner:Ljava/lang/Object;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
