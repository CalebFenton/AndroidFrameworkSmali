.class public Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;
.super Landroid/app/ForegroundServiceTypePolicy;
.source "ForegroundServiceTypePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceTypePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultForegroundServiceTypePolicy"
.end annotation


# instance fields
.field private final blacklist mForegroundServiceTypePolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPermissionEnforcementToPolicyInfoMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 6

    .line 1377
    invoke-direct {p0}, Landroid/app/ForegroundServiceTypePolicy;-><init>()V

    .line 1365
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    .line 1371
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mPermissionEnforcementToPolicyInfoMap:Landroid/util/ArrayMap;

    .line 1378
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/4 v1, -0x1

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_MANIFEST:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1380
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/4 v1, 0x0

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_NONE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1382
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/4 v1, 0x1

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_DATA_SYNC:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1384
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/4 v1, 0x2

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_MEDIA_PLAYBACK:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1386
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/4 v1, 0x4

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_PHONE_CALL:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1388
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x8

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_LOCATION:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1390
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x10

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_CONNECTED_DEVICE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1392
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x20

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_MEDIA_PROJECTION:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1394
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x40

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_CAMERA:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1396
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x80

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_MICROPHONE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1398
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x100

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_HEALTH:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1400
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x200

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_REMOTE_MESSAGING:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1402
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x400

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_SYSTEM_EXEMPTED:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1404
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x800

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_SHORT_SERVICE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1406
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/16 v1, 0x2000

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_MEDIA_PROCESSING:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1410
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    const/high16 v1, 0x40000000    # 2.0f

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_SPECIAL_USE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1412
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "size":I
    :goto_a3
    if-ge v0, v1, :cond_b7

    .line 1413
    iget-object v2, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    .line 1414
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 1415
    .local v2, "info":Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;
    iget-object v3, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mPermissionEnforcementToPolicyInfoMap:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlag:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    .end local v2    # "info":Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    .line 1417
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_b7
    return-void
.end method


# virtual methods
.method public blacklist checkForegroundServiceTypePolicy(Landroid/content/Context;Ljava/lang/String;IIZLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;)I
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "allowWhileInUse"    # Z
    .param p6, "policy"    # Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 1441
    invoke-virtual {p6, p3}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->isTypeDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1442
    const/4 v0, 0x3

    return v0

    .line 1444
    :cond_8
    const/4 v0, 0x0

    .line 1446
    .local v0, "permissionResult":I
    iget-object v1, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    if-eqz v1, :cond_1e

    .line 1447
    iget-object v2, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    move-object v3, p1

    move-object v6, p2

    move v4, p3

    move v5, p4

    move v7, p5

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "callerUid":I
    .end local p4    # "callerPid":I
    .end local p5    # "allowWhileInUse":Z
    .local v3, "context":Landroid/content/Context;
    .local v4, "callerUid":I
    .local v5, "callerPid":I
    .local v6, "packageName":Ljava/lang/String;
    .local v7, "allowWhileInUse":Z
    invoke-virtual/range {v2 .. v7}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->checkPermissions(Landroid/content/Context;IILjava/lang/String;Z)I

    move-result v0

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v7

    .end local v7    # "allowWhileInUse":Z
    .local v2, "context":Landroid/content/Context;
    .local v3, "callerUid":I
    .local v4, "callerPid":I
    .local v5, "packageName":Ljava/lang/String;
    .local v6, "allowWhileInUse":Z
    goto :goto_23

    .line 1446
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "callerUid":I
    .end local v4    # "callerPid":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "allowWhileInUse":Z
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "callerUid":I
    .restart local p4    # "callerPid":I
    .restart local p5    # "allowWhileInUse":Z
    :cond_1e
    move-object v2, p1

    move-object v5, p2

    move v3, p3

    move v4, p4

    move v6, p5

    .line 1451
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "callerUid":I
    .end local p4    # "callerPid":I
    .end local p5    # "allowWhileInUse":Z
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v3    # "callerUid":I
    .restart local v4    # "callerPid":I
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "allowWhileInUse":Z
    :goto_23
    if-nez v0, :cond_3f

    .line 1452
    const/4 p1, 0x1

    .line 1454
    .local p1, "checkCustomPermission":Z
    iget-object p2, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    if-eqz p2, :cond_33

    .line 1455
    iget-object v1, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    invoke-virtual/range {v1 .. v6}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->checkPermissions(Landroid/content/Context;IILjava/lang/String;Z)I

    move-result v0

    .line 1457
    if-nez v0, :cond_33

    .line 1459
    const/4 p1, 0x0

    .line 1463
    :cond_33
    if-eqz p1, :cond_3f

    iget-object p2, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mCustomPermission:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    if-eqz p2, :cond_3f

    .line 1464
    iget-object v1, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mCustomPermission:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    invoke-virtual/range {v1 .. v6}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;->checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I

    move-result v0

    .line 1468
    .end local p1    # "checkCustomPermission":Z
    :cond_3f
    if-eqz v0, :cond_52

    .line 1470
    iget-boolean p1, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlagValue:Z

    if-eqz p1, :cond_50

    const-wide/32 p1, 0xf2dd77a    # 1.258200034E-315

    invoke-static {p1, p2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 1471
    const/4 p1, 0x5

    goto :goto_51

    .line 1472
    :cond_50
    const/4 p1, 0x4

    .line 1469
    :goto_51
    return p1

    .line 1475
    :cond_52
    invoke-virtual {p6, v3}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->isTypeDeprecated(I)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 1476
    const/4 p1, 0x2

    return p1

    .line 1478
    :cond_5a
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist getForegroundServiceTypePolicyInfo(II)Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;
    .registers 7
    .param p1, "type"    # I
    .param p2, "defaultToType"    # I

    .line 1422
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 1423
    .local v0, "info":Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;
    if-nez v0, :cond_2f

    .line 1425
    iget-object v1, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 1426
    if-eqz v0, :cond_16

    goto :goto_2f

    .line 1428
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid default fgs type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1431
    :cond_2f
    :goto_2f
    return-object v0
.end method

.method public blacklist updatePermissionEnforcementFlagIfNecessary(Ljava/lang/String;)V
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 1483
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mPermissionEnforcementToPolicyInfoMap:Landroid/util/ArrayMap;

    .line 1484
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    .line 1485
    .local v0, "info":Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;
    if-eqz v0, :cond_d

    .line 1486
    invoke-static {v0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->-$$Nest$mupdatePermissionEnforcementFlagIfNecessary(Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;Ljava/lang/String;)V

    .line 1488
    :cond_d
    return-void
.end method
