.class Lcom/android/server/wm/DragAndDropPermissionsHandler;
.super Lcom/android/internal/view/IDragAndDropPermissions$Stub;
.source "DragAndDropPermissionsHandler.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private mActivityToken:Landroid/os/IBinder;

.field private final mMode:I

.field private mPermissionOwnerToken:Landroid/os/IBinder;

.field private final mSourceUid:I

.field private final mSourceUserId:I

.field private final mTargetPackage:Ljava/lang/String;

.field private final mTargetUserId:I

.field private final mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/ClipData;ILjava/lang/String;III)V
    .locals 2
    .param p1, "clipData"    # Landroid/content/ClipData;
    .param p2, "sourceUid"    # I
    .param p3, "targetPackage"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .param p5, "sourceUserId"    # I
    .param p6, "targetUserId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 44
    invoke-direct {p0}, Lcom/android/internal/view/IDragAndDropPermissions$Stub;-><init>()V

    #@4
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    #@b
    .line 41
    iput-object v1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    #@d
    .line 42
    iput-object v1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    #@f
    .line 46
    iput p2, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUid:I

    #@11
    .line 47
    iput-object p3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTargetPackage:Ljava/lang/String;

    #@13
    .line 48
    iput p4, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mMode:I

    #@15
    .line 49
    iput p5, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUserId:I

    #@17
    .line 50
    iput p6, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTargetUserId:I

    #@19
    .line 52
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->collectUris(Ljava/util/List;)V

    #@1e
    .line 45
    return-void
.end method

.method private doTake(Landroid/os/IBinder;)V
    .locals 12
    .param p1, "permissionOwner"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 70
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v10

    #@4
    .line 72
    .local v10, "origId":J
    const/4 v8, 0x0

    #@5
    .local v8, "i":I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v0

    #@b
    if-ge v8, v0, :cond_0

    #@d
    .line 73
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@10
    move-result-object v0

    #@11
    .line 74
    iget v2, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUid:I

    #@13
    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTargetPackage:Ljava/lang/String;

    #@15
    iget-object v1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    check-cast v4, Landroid/net/Uri;

    #@1d
    iget v5, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mMode:I

    #@1f
    .line 75
    iget v6, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUserId:I

    #@21
    iget v7, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTargetUserId:I

    #@23
    move-object v1, p1

    #@24
    .line 73
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 72
    add-int/lit8 v8, v8, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 78
    :cond_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 69
    return-void

    #@2e
    .line 77
    :catchall_0
    move-exception v0

    #@2f
    .line 78
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 77
    throw v0
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    #@0
    .prologue
    .line 125
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/DragAndDropPermissionsHandler;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 123
    :goto_0
    return-void

    #@4
    .line 126
    :catch_0
    move-exception v0

    #@5
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public release()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 95
    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    #@3
    if-nez v3, :cond_0

    #@5
    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    #@7
    if-nez v3, :cond_0

    #@9
    .line 96
    return-void

    #@a
    .line 99
    :cond_0
    const/4 v2, 0x0

    #@b
    .line 100
    .local v2, "permissionOwner":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 102
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@12
    move-result-object v3

    #@13
    .line 103
    iget-object v4, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    #@15
    .line 102
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result-object v2

    #@19
    .line 108
    .local v2, "permissionOwner":Landroid/os/IBinder;
    iput-object v5, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    #@1b
    .line 116
    :goto_0
    const/4 v1, 0x0

    #@1c
    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v3

    #@22
    if-ge v1, v3, :cond_2

    #@24
    .line 117
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@27
    move-result-object v4

    #@28
    .line 118
    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    check-cast v3, Landroid/net/Uri;

    #@30
    iget v5, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mMode:I

    #@32
    iget v6, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUserId:I

    #@34
    .line 117
    invoke-interface {v4, v2, v3, v5, v6}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    #@37
    .line 116
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 104
    .end local v1    # "i":I
    .local v2, "permissionOwner":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    #@3b
    .line 108
    .local v0, "e":Ljava/lang/Exception;
    iput-object v5, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    #@3d
    .line 106
    return-void

    #@3e
    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@3f
    .line 108
    iput-object v5, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    #@41
    .line 107
    throw v3

    #@42
    .line 111
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    #@44
    .line 112
    .local v2, "permissionOwner":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    #@46
    const/4 v4, 0x0

    #@47
    invoke-interface {v3, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@4a
    .line 113
    iput-object v5, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    #@4c
    goto :goto_0

    #@4d
    .line 94
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method public take(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    #@2
    if-nez v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 58
    :cond_0
    return-void

    #@9
    .line 60
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    #@b
    .line 63
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@e
    move-result-object v1

    #@f
    .line 64
    iget-object v2, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    #@11
    .line 63
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    #@14
    move-result-object v0

    #@15
    .line 66
    .local v0, "permissionOwner":Landroid/os/IBinder;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DragAndDropPermissionsHandler;->doTake(Landroid/os/IBinder;)V

    #@18
    .line 56
    return-void
.end method

.method public takeTransient(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "permissionOwnerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 85
    :cond_0
    return-void

    #@9
    .line 87
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    #@b
    .line 88
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@11
    .line 90
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    #@13
    invoke-direct {p0, v0}, Lcom/android/server/wm/DragAndDropPermissionsHandler;->doTake(Landroid/os/IBinder;)V

    #@16
    .line 83
    return-void
.end method
