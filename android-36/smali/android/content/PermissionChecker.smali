.class public final Landroid/content/PermissionChecker;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# static fields
.field public static final greylist-max-o PERMISSION_GRANTED:I = 0x0

.field public static final blacklist PERMISSION_HARD_DENIED:I = 0x2

.field public static final blacklist PERMISSION_SOFT_DENIED:I = 0x1

.field public static final blacklist PID_UNKNOWN:I = -0x1

.field private static volatile blacklist sService:Landroid/permission/IPermissionChecker;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public static blacklist checkCallingOrSelfPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .line 770
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 771
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    move-object v0, p2

    :goto_10
    move-object v5, v0

    .line 772
    .end local p2    # "callingPackageName":Ljava/lang/String;
    .local v5, "callingPackageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p2, v0, :cond_21

    .line 773
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p2

    move-object v6, p2

    goto :goto_22

    :cond_21
    move-object v6, p3

    .line 774
    .end local p3    # "callingAttributionTag":Ljava/lang/String;
    .local v6, "callingAttributionTag":Ljava/lang/String;
    :goto_22
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 775
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 774
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v7, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "permission":Ljava/lang/String;
    .end local p4    # "message":Ljava/lang/String;
    .local v1, "context":Landroid/content/Context;
    .local v2, "permission":Ljava/lang/String;
    .local v7, "message":Ljava/lang/String;
    invoke-static/range {v1 .. v8}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static blacklist checkCallingOrSelfPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 808
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 809
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 810
    .local v0, "packageName":Ljava/lang/String;
    :goto_10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 811
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 810
    invoke-static {p0, p1, v1, v2, v0}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static blacklist checkCallingPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .line 689
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 690
    const/4 v0, 0x2

    return v0

    .line 692
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 693
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 692
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "permission":Ljava/lang/String;
    .end local p2    # "callingPackageName":Ljava/lang/String;
    .end local p3    # "callingAttributionTag":Ljava/lang/String;
    .end local p4    # "message":Ljava/lang/String;
    .local v1, "context":Landroid/content/Context;
    .local v2, "permission":Ljava/lang/String;
    .local v5, "callingPackageName":Ljava/lang/String;
    .local v6, "callingAttributionTag":Ljava/lang/String;
    .local v7, "message":Ljava/lang/String;
    invoke-static/range {v1 .. v8}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static blacklist checkCallingPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 728
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 729
    const/4 v0, 0x2

    return v0

    .line 731
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 732
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 731
    invoke-static {p0, p1, v0, v1, p2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist checkOpForDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "opName"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;

    .line 502
    const-class v0, Landroid/permission/PermissionCheckerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/permission/PermissionCheckerManager;

    .line 503
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    .line 502
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v4, p3

    .end local p3    # "message":Ljava/lang/String;
    .local v4, "message":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/permission/PermissionCheckerManager;->checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I

    move-result p3

    return p3
.end method

.method public static blacklist checkOpForPreflight(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "opName"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;

    .line 467
    const-class v0, Landroid/permission/PermissionCheckerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/permission/PermissionCheckerManager;

    .line 468
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    .line 467
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p3

    .end local p3    # "message":Ljava/lang/String;
    .local v4, "message":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/permission/PermissionCheckerManager;->checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I

    move-result p3

    return p3
.end method

.method public static blacklist checkPermissionAndStartDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;

    .line 355
    const-class v0, Landroid/permission/PermissionCheckerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/permission/PermissionCheckerManager;

    .line 356
    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    .line 355
    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v2, p1

    move-object v4, p3

    .end local p1    # "permission":Ljava/lang/String;
    .end local p3    # "message":Ljava/lang/String;
    .local v2, "permission":Ljava/lang/String;
    .local v4, "message":Ljava/lang/String;
    invoke-virtual/range {v1 .. v8}, Landroid/permission/PermissionCheckerManager;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I

    move-result p1

    return p1
.end method

.method public static blacklist checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "message"    # Ljava/lang/String;

    .line 196
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "permission":Ljava/lang/String;
    .end local p2    # "pid":I
    .end local p3    # "uid":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "attributionTag":Ljava/lang/String;
    .end local p6    # "message":Ljava/lang/String;
    .local v0, "context":Landroid/content/Context;
    .local v1, "permission":Ljava/lang/String;
    .local v2, "pid":I
    .local v3, "uid":I
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "attributionTag":Ljava/lang/String;
    .local v6, "message":Ljava/lang/String;
    invoke-static/range {v0 .. v7}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static blacklist checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "startDataDelivery"    # Z

    .line 153
    new-instance v3, Landroid/content/AttributionSource;

    invoke-direct {v3, p3, p2, p4, p5}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p6

    move v5, p7

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "permission":Ljava/lang/String;
    .end local p2    # "pid":I
    .end local p6    # "message":Ljava/lang/String;
    .end local p7    # "startDataDelivery":Z
    .local v0, "context":Landroid/content/Context;
    .local v1, "permission":Ljava/lang/String;
    .local v2, "pid":I
    .local v4, "message":Ljava/lang/String;
    .local v5, "startDataDelivery":Z
    invoke-static/range {v0 .. v5}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static blacklist checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;

    .line 271
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "permission":Ljava/lang/String;
    .end local p2    # "pid":I
    .end local p3    # "attributionSource":Landroid/content/AttributionSource;
    .end local p4    # "message":Ljava/lang/String;
    .local v0, "context":Landroid/content/Context;
    .local v1, "permission":Ljava/lang/String;
    .local v2, "pid":I
    .local v3, "attributionSource":Landroid/content/AttributionSource;
    .local v4, "message":Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static blacklist checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;Z)I
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "startDataDelivery"    # Z

    .line 309
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "permission":Ljava/lang/String;
    .end local p3    # "attributionSource":Landroid/content/AttributionSource;
    .end local p4    # "message":Ljava/lang/String;
    .end local p5    # "startDataDelivery":Z
    .local v0, "context":Landroid/content/Context;
    .local v1, "permission":Ljava/lang/String;
    .local v2, "attributionSource":Landroid/content/AttributionSource;
    .local v3, "message":Ljava/lang/String;
    .local v4, "startDataDelivery":Z
    invoke-static/range {v0 .. v5}, Landroid/content/PermissionChecker;->checkPermissionForDataDeliveryCommon(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I

    move-result p0

    return p0
.end method

.method private static blacklist checkPermissionForDataDeliveryCommon(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "startDataDelivery"    # Z
    .param p5, "fromDatasource"    # Z

    .line 317
    const-class v0, Landroid/permission/PermissionCheckerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/permission/PermissionCheckerManager;

    .line 318
    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    .line 317
    const/4 v5, 0x1

    const/4 v8, -0x1

    move-object v2, p1

    move-object v4, p3

    move v6, p4

    move v7, p5

    .end local p1    # "permission":Ljava/lang/String;
    .end local p3    # "message":Ljava/lang/String;
    .end local p4    # "startDataDelivery":Z
    .end local p5    # "fromDatasource":Z
    .local v2, "permission":Ljava/lang/String;
    .local v4, "message":Ljava/lang/String;
    .local v6, "startDataDelivery":Z
    .local v7, "fromDatasource":Z
    invoke-virtual/range {v1 .. v8}, Landroid/permission/PermissionCheckerManager;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I

    move-result p1

    return p1
.end method

.method public static blacklist checkPermissionForDataDeliveryFromDataSource(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;

    .line 234
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "permission":Ljava/lang/String;
    .end local p3    # "attributionSource":Landroid/content/AttributionSource;
    .end local p4    # "message":Ljava/lang/String;
    .local v0, "context":Landroid/content/Context;
    .local v1, "permission":Ljava/lang/String;
    .local v2, "attributionSource":Landroid/content/AttributionSource;
    .local v3, "message":Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Landroid/content/PermissionChecker;->checkPermissionForDataDeliveryCommon(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I

    move-result p0

    return p0
.end method

.method public static blacklist checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 540
    new-instance v0, Landroid/content/AttributionSource;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p4, v1}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v0

    return v0
.end method

.method public static blacklist checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)I
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 576
    const-class v0, Landroid/permission/PermissionCheckerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/permission/PermissionCheckerManager;

    .line 577
    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    .end local p1    # "permission":Ljava/lang/String;
    .local v2, "permission":Ljava/lang/String;
    invoke-virtual/range {v1 .. v8}, Landroid/permission/PermissionCheckerManager;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I

    move-result p1

    .line 576
    return p1
.end method

.method public static blacklist checkSelfPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 613
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 614
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 613
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "permission":Ljava/lang/String;
    .end local p2    # "message":Ljava/lang/String;
    .local v0, "context":Landroid/content/Context;
    .local v1, "permission":Ljava/lang/String;
    .local v6, "message":Ljava/lang/String;
    invoke-static/range {v0 .. v7}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static blacklist checkSelfPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 649
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 650
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 649
    invoke-static {p0, p1, v0, v1, v2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist finishDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 409
    const-class v0, Landroid/permission/PermissionCheckerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionCheckerManager;

    .line 410
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v2

    .line 409
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/permission/PermissionCheckerManager;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    .line 412
    return-void
.end method

.method public static blacklist finishDataDeliveryFromDatasource(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 429
    const-class v0, Landroid/permission/PermissionCheckerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionCheckerManager;

    .line 430
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v2

    .line 429
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/permission/PermissionCheckerManager;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    .line 432
    return-void
.end method

.method public static blacklist startOpForDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "opName"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;

    .line 390
    const-class v0, Landroid/permission/PermissionCheckerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/permission/PermissionCheckerManager;

    .line 391
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    .line 390
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v4, p3

    .end local p3    # "message":Ljava/lang/String;
    .local v4, "message":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/permission/PermissionCheckerManager;->checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I

    move-result p3

    return p3
.end method
