.class Landroid/app/AppOpsManager$6;
.super Lcom/android/internal/app/IAppOpsNotedCallback$Stub;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/AppOpsManager;->startWatchingNoted([ILjava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/app/AppOpsManager$OnOpNotedListener;


# direct methods
.method constructor blacklist <init>(Landroid/app/AppOpsManager;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedListener;)V
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

    .line 9168
    iput-object p2, p0, Landroid/app/AppOpsManager$6;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/AppOpsManager$6;->val$listener:Landroid/app/AppOpsManager$OnOpNotedListener;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsNotedCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$opNoted$0(ILandroid/app/AppOpsManager$OnOpNotedListener;ILjava/lang/String;Ljava/lang/String;III)V
    .registers 18
    .param p0, "op"    # I
    .param p1, "listener"    # Landroid/app/AppOpsManager$OnOpNotedListener;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "virtualDeviceId"    # I
    .param p6, "flags"    # I
    .param p7, "mode"    # I

    .line 9175
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget-object v0, v0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_32

    .line 9176
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionApisEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 9177
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget-object v2, v0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/app/AppOpsManager$OnOpNotedListener;->onOpNoted(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;III)V

    goto :goto_32

    .line 9180
    :cond_21
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget-object v4, v0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    move-object v3, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v3 .. v9}, Landroid/app/AppOpsManager$OnOpNotedListener;->onOpNoted(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 9184
    :cond_32
    :goto_32
    return-void
.end method


# virtual methods
.method public blacklist opNoted(IILjava/lang/String;Ljava/lang/String;III)V
    .registers 20
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "virtualDeviceId"    # I
    .param p6, "flags"    # I
    .param p7, "mode"    # I

    .line 9172
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 9174
    .local v1, "identity":J
    :try_start_4
    iget-object v0, p0, Landroid/app/AppOpsManager$6;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Landroid/app/AppOpsManager$6;->val$listener:Landroid/app/AppOpsManager$OnOpNotedListener;

    new-instance v3, Landroid/app/AppOpsManager$6$$ExternalSyntheticLambda0;

    move v4, p1

    move v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Landroid/app/AppOpsManager$6$$ExternalSyntheticLambda0;-><init>(ILandroid/app/AppOpsManager$OnOpNotedListener;ILjava/lang/String;Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_20

    .line 9186
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9187
    nop

    .line 9188
    return-void

    .line 9186
    :catchall_20
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9187
    throw v0
.end method
