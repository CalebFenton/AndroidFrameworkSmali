.class Landroid/app/AppOpsManager$4;
.super Lcom/android/internal/app/IAppOpsActiveCallback$Stub;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/AppOpsManager;->startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/app/AppOpsManager;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    .registers 4
    .param p1, "this$0"    # Landroid/app/AppOpsManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 8906
    iput-object p2, p0, Landroid/app/AppOpsManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/AppOpsManager$4;->val$callback:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsActiveCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$opActiveChanged$0(Landroid/app/AppOpsManager$OnOpActiveChangedListener;IILjava/lang/String;IZLjava/lang/String;II)V
    .registers 16
    .param p0, "callback"    # Landroid/app/AppOpsManager$OnOpActiveChangedListener;
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "virtualDeviceId"    # I
    .param p5, "active"    # Z
    .param p6, "attributionTag"    # Ljava/lang/String;
    .param p7, "attributionFlags"    # I
    .param p8, "attributionChainId"    # I

    .line 8912
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionApisEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 8913
    instance-of v0, p0, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;

    if-eqz v0, :cond_17

    .line 8914
    move-object v1, p0

    check-cast v1, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "virtualDeviceId":I
    .end local p5    # "active":Z
    .local v2, "op":I
    .local v3, "uid":I
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "virtualDeviceId":I
    .local v6, "active":Z
    invoke-interface/range {v1 .. v6}, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;->onOpActiveChanged(IILjava/lang/String;IZ)V

    move p5, v5

    .end local v3    # "uid":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "virtualDeviceId":I
    .restart local p2    # "uid":I
    .restart local p3    # "packageName":Ljava/lang/String;
    .local p5, "virtualDeviceId":I
    goto :goto_1a

    .line 8913
    .end local v2    # "op":I
    .end local v6    # "active":Z
    .restart local p1    # "op":I
    .restart local p4    # "virtualDeviceId":I
    .local p5, "active":Z
    :cond_17
    move v2, p1

    move v6, p5

    move p5, p4

    .line 8917
    .end local p1    # "op":I
    .end local p4    # "virtualDeviceId":I
    .restart local v2    # "op":I
    .restart local v6    # "active":Z
    .local p5, "virtualDeviceId":I
    :goto_1a
    sget-object p1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object p1, p1, v2

    iget-object p1, p1, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    if-eqz p1, :cond_31

    .line 8918
    sget-object p1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object p1, p1, v2

    iget-object p1, p1, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    move-object p4, p6

    move p6, v6

    .end local v6    # "active":Z
    .local p4, "attributionTag":Ljava/lang/String;
    .local p6, "active":Z
    invoke-interface/range {p0 .. p8}, Landroid/app/AppOpsManager$OnOpActiveChangedListener;->onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZII)V

    move v5, p5

    move p6, p7

    move p7, p8

    .end local p5    # "virtualDeviceId":I
    .end local p8    # "attributionChainId":I
    .restart local v5    # "virtualDeviceId":I
    .restart local v6    # "active":Z
    .local p6, "attributionFlags":I
    .local p7, "attributionChainId":I
    goto :goto_58

    .line 8917
    .end local v5    # "virtualDeviceId":I
    .end local p4    # "attributionTag":Ljava/lang/String;
    .restart local p5    # "virtualDeviceId":I
    .local p6, "attributionTag":Ljava/lang/String;
    .local p7, "attributionFlags":I
    .restart local p8    # "attributionChainId":I
    :cond_31
    move v5, p5

    move-object p4, p6

    move p6, p7

    move p7, p8

    .end local p5    # "virtualDeviceId":I
    .end local p8    # "attributionChainId":I
    .restart local v5    # "virtualDeviceId":I
    .restart local p4    # "attributionTag":Ljava/lang/String;
    .local p6, "attributionFlags":I
    .local p7, "attributionChainId":I
    goto :goto_58

    .line 8923
    .end local v2    # "op":I
    .end local v5    # "virtualDeviceId":I
    .end local v6    # "active":Z
    .restart local p1    # "op":I
    .local p4, "virtualDeviceId":I
    .local p5, "active":Z
    .local p6, "attributionTag":Ljava/lang/String;
    .local p7, "attributionFlags":I
    .restart local p8    # "attributionChainId":I
    :cond_36
    move v2, p1

    move v5, p4

    move v6, p5

    move-object p4, p6

    move p6, p7

    move p7, p8

    .end local p1    # "op":I
    .end local p5    # "active":Z
    .end local p8    # "attributionChainId":I
    .restart local v2    # "op":I
    .restart local v5    # "virtualDeviceId":I
    .restart local v6    # "active":Z
    .local p4, "attributionTag":Ljava/lang/String;
    .local p6, "attributionFlags":I
    .local p7, "attributionChainId":I
    instance-of p1, p0, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;

    if-eqz p1, :cond_46

    .line 8924
    move-object p1, p0

    check-cast p1, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;

    invoke-interface {p1, v2, p2, p3, v6}, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;->onOpActiveChanged(IILjava/lang/String;Z)V

    .line 8927
    :cond_46
    sget-object p1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object p1, p1, v2

    iget-object p1, p1, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    if-eqz p1, :cond_58

    .line 8928
    sget-object p1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object p1, p1, v2

    iget-object p1, p1, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    move p5, v6

    .end local v6    # "active":Z
    .restart local p5    # "active":Z
    invoke-interface/range {p0 .. p7}, Landroid/app/AppOpsManager$OnOpActiveChangedListener;->onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V

    .line 8933
    .end local p5    # "active":Z
    .restart local v6    # "active":Z
    :cond_58
    :goto_58
    return-void
.end method


# virtual methods
.method public blacklist opActiveChanged(IILjava/lang/String;Ljava/lang/String;IZII)V
    .registers 20
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "virtualDeviceId"    # I
    .param p6, "active"    # Z
    .param p7, "attributionFlags"    # I
    .param p8, "attributionChainId"    # I

    .line 8911
    iget-object v0, p0, Landroid/app/AppOpsManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/app/AppOpsManager$4;->val$callback:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    new-instance v1, Landroid/app/AppOpsManager$4$$ExternalSyntheticLambda0;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v8, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Landroid/app/AppOpsManager$4$$ExternalSyntheticLambda0;-><init>(Landroid/app/AppOpsManager$OnOpActiveChangedListener;IILjava/lang/String;IZLjava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8934
    return-void
.end method
