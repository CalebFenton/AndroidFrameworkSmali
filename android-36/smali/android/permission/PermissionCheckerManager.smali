.class public Landroid/permission/PermissionCheckerManager;
.super Ljava/lang/Object;
.source "PermissionCheckerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/PermissionCheckerManager$PermissionResult;
    }
.end annotation


# static fields
.field public static final blacklist PERMISSION_GRANTED:I = 0x0

.field public static final blacklist PERMISSION_HARD_DENIED:I = 0x2

.field public static final blacklist PERMISSION_SOFT_DENIED:I = 0x1


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mPackageManager:Landroid/content/pm/PackageManager;

.field private final blacklist mService:Landroid/permission/IPermissionChecker;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Landroid/permission/PermissionCheckerManager;->mContext:Landroid/content/Context;

    .line 91
    const-string/jumbo v0, "permission_checker"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/permission/IPermissionChecker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionChecker;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/PermissionCheckerManager;->mService:Landroid/permission/IPermissionChecker;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/PermissionCheckerManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 94
    return-void
.end method


# virtual methods
.method public blacklist checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I
    .registers 12
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSourceState;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "forDataDelivery"    # Z
    .param p5, "startDataDelivery"    # Z

    .line 177
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :try_start_3
    iget-object v0, p0, Landroid/permission/PermissionCheckerManager;->mService:Landroid/permission/IPermissionChecker;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_5} :catch_12

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "op":I
    .end local p2    # "attributionSource":Landroid/content/AttributionSourceState;
    .end local p3    # "message":Ljava/lang/String;
    .end local p4    # "forDataDelivery":Z
    .end local p5    # "startDataDelivery":Z
    .local v1, "op":I
    .local v2, "attributionSource":Landroid/content/AttributionSourceState;
    .local v3, "message":Ljava/lang/String;
    .local v4, "forDataDelivery":Z
    .local v5, "startDataDelivery":Z
    :try_start_a
    invoke-interface/range {v0 .. v5}, Landroid/permission/IPermissionChecker;->checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I

    move-result p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    return p1

    .line 181
    :catch_f
    move-exception v0

    move-object p1, v0

    goto :goto_19

    .end local v1    # "op":I
    .end local v2    # "attributionSource":Landroid/content/AttributionSourceState;
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "forDataDelivery":Z
    .end local v5    # "startDataDelivery":Z
    .restart local p1    # "op":I
    .restart local p2    # "attributionSource":Landroid/content/AttributionSourceState;
    .restart local p3    # "message":Ljava/lang/String;
    .restart local p4    # "forDataDelivery":Z
    .restart local p5    # "startDataDelivery":Z
    :catch_12
    move-exception v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object p1, v0

    .line 182
    .end local p2    # "attributionSource":Landroid/content/AttributionSourceState;
    .end local p3    # "message":Ljava/lang/String;
    .end local p4    # "forDataDelivery":Z
    .end local p5    # "startDataDelivery":Z
    .restart local v1    # "op":I
    .restart local v2    # "attributionSource":Landroid/content/AttributionSourceState;
    .restart local v3    # "message":Ljava/lang/String;
    .restart local v4    # "forDataDelivery":Z
    .restart local v5    # "startDataDelivery":Z
    .local p1, "e":Landroid/os/RemoteException;
    :goto_19
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 184
    .end local p1    # "e":Landroid/os/RemoteException;
    const/4 p1, 0x2

    return p1
.end method

.method public blacklist checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I
    .registers 18
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSourceState;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "forDataDelivery"    # Z
    .param p5, "startDataDelivery"    # Z
    .param p6, "fromDatasource"    # Z
    .param p7, "attributedOp"    # I

    .line 117
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v9, 0x2

    if-ne v0, v1, :cond_42

    .line 123
    const/4 v0, 0x0

    if-eqz p6, :cond_32

    .line 124
    iget-object v1, p2, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-eqz v1, :cond_42

    iget-object v1, p2, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v1, v1

    if-lez v1, :cond_42

    .line 126
    iget-object v1, p0, Landroid/permission/PermissionCheckerManager;->mContext:Landroid/content/Context;

    iget-object v4, p2, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    aget-object v4, v4, v0

    iget v4, v4, Landroid/content/AttributionSourceState;->pid:I

    iget-object v5, p2, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    aget-object v5, v5, v0

    iget v5, v5, Landroid/content/AttributionSourceState;->uid:I

    .line 125
    invoke-virtual {v1, p1, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_30

    .line 127
    move v9, v0

    goto :goto_31

    :cond_30
    nop

    .line 125
    :goto_31
    return v9

    .line 130
    :cond_32
    iget-object v1, p0, Landroid/permission/PermissionCheckerManager;->mContext:Landroid/content/Context;

    iget v4, p2, Landroid/content/AttributionSourceState;->pid:I

    iget v5, p2, Landroid/content/AttributionSourceState;->uid:I

    invoke-virtual {v1, p1, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_40

    .line 132
    move v9, v0

    goto :goto_41

    :cond_40
    nop

    .line 130
    :goto_41
    return v9

    .line 136
    :cond_42
    :try_start_42
    iget-object v1, p0, Landroid/permission/PermissionCheckerManager;->mService:Landroid/permission/IPermissionChecker;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/permission/IPermissionChecker;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I

    move-result v0
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_51} :catch_52

    return v0

    .line 138
    :catch_52
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 141
    .end local v0    # "e":Landroid/os/RemoteException;
    return v9
.end method

.method public blacklist finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V
    .registers 5
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSourceState;
    .param p3, "fromDatasource"    # Z

    .line 154
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :try_start_3
    iget-object v0, p0, Landroid/permission/PermissionCheckerManager;->mService:Landroid/permission/IPermissionChecker;

    invoke-interface {v0, p1, p2, p3}, Landroid/permission/IPermissionChecker;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 159
    goto :goto_d

    .line 157
    :catch_9
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 160
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_d
    return-void
.end method
