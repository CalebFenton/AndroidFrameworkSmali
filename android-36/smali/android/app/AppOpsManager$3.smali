.class Landroid/app/AppOpsManager$3;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;


# direct methods
.method constructor blacklist <init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .registers 3
    .param p1, "this$0"    # Landroid/app/AppOpsManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 8808
    iput-object p2, p0, Landroid/app/AppOpsManager$3;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist opChanged(IILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "persistentDeviceId"    # Ljava/lang/String;

    .line 8811
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionApisEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 8812
    iget-object v0, p0, Landroid/app/AppOpsManager$3;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    instance-of v0, v0, Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    if-eqz v0, :cond_13

    .line 8813
    iget-object v0, p0, Landroid/app/AppOpsManager$3;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    check-cast v0, Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    invoke-virtual {v0, p1, p3, p4}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;->onOpChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 8816
    :cond_13
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_4f

    .line 8817
    iget-object v0, p0, Landroid/app/AppOpsManager$3;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    sget-object v1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    .line 8818
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 8817
    invoke-interface {v0, v1, p3, v2, p4}, Landroid/app/AppOpsManager$OnOpChangedListener;->onOpChanged(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4f

    .line 8821
    :cond_2b
    iget-object v0, p0, Landroid/app/AppOpsManager$3;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    instance-of v0, v0, Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    if-eqz v0, :cond_38

    .line 8822
    iget-object v0, p0, Landroid/app/AppOpsManager$3;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    check-cast v0, Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    invoke-virtual {v0, p1, p3}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;->onOpChanged(ILjava/lang/String;)V

    .line 8825
    :cond_38
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_4f

    .line 8826
    iget-object v0, p0, Landroid/app/AppOpsManager$3;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    sget-object v1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    .line 8827
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 8826
    invoke-interface {v0, v1, p3, v2}, Landroid/app/AppOpsManager$OnOpChangedListener;->onOpChanged(Ljava/lang/String;Ljava/lang/String;I)V

    .line 8830
    :cond_4f
    :goto_4f
    return-void
.end method
