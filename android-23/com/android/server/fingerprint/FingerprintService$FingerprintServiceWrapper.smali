.class final Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;
.super Landroid/hardware/fingerprint/IFingerprintService$Stub;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FingerprintServiceWrapper"
.end annotation


# static fields
.field private static final KEYGUARD_PACKAGE:Ljava/lang/String; = "com.android.systemui"


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method private constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;

    #@0
    .prologue
    .line 671
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    #@3
    return-void
.end method

.method private isRestricted()Z
    .locals 3

    #@0
    .prologue
    .line 716
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    const-string/jumbo v2, "android.permission.MANAGE_FINGERPRINT"

    #@5
    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x0

    #@c
    .line 717
    .local v0, "restricted":Z
    :goto_0
    return v0

    #@d
    .line 716
    .end local v0    # "restricted":Z
    :cond_0
    const/4 v0, 0x1

    #@e
    .restart local v0    # "restricted":Z
    goto :goto_0
.end method


# virtual methods
.method public authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .locals 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opId"    # J
    .param p4, "groupId"    # I
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "flags"    # I
    .param p7, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 735
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@5
    move-result v3

    #@6
    invoke-virtual {v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->isCurrentUserOrProfile(I)Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 736
    const-string/jumbo v2, "FingerprintService"

    #@f
    const-string/jumbo v3, "Can\'t authenticate non-current user"

    #@12
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 737
    return-void

    #@16
    .line 739
    :cond_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@18
    move-object/from16 v0, p7

    #@1a
    invoke-static {v2, v0}, Lcom/android/server/fingerprint/FingerprintService;->-wrap0(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_1

    #@20
    .line 740
    const-string/jumbo v2, "FingerprintService"

    #@23
    const-string/jumbo v3, "Calling not granted permission to use fingerprint"

    #@26
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 741
    return-void

    #@2a
    .line 746
    :cond_1
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2c
    move/from16 v0, p4

    #@2e
    invoke-virtual {v2, v0}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    #@31
    move-result v8

    #@32
    .line 748
    .local v8, "effectiveGroupId":I
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->isRestricted()Z

    #@35
    move-result v11

    #@36
    .line 749
    .local v11, "restricted":Z
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@38
    iget-object v2, v2, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    #@3a
    new-instance v3, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;

    #@3c
    move-object v4, p0

    #@3d
    move-object v5, p1

    #@3e
    move-wide v6, p2

    #@3f
    move-object/from16 v9, p5

    #@41
    move/from16 v10, p6

    #@43
    invoke-direct/range {v3 .. v11}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V

    #@46
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@49
    .line 734
    return-void
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-static {v0, p2}, Lcom/android/server/fingerprint/FingerprintService;->-wrap0(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 760
    return-void

    #@9
    .line 762
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@b
    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    #@d
    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$4;

    #@f
    invoke-direct {v1, p0, p1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$4;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;)V

    #@12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@15
    .line 758
    return-void
.end method

.method public cancelEnrollment(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    const-string/jumbo v1, "android.permission.MANAGE_FINGERPRINT"

    #@5
    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    #@8
    .line 723
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@a
    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    #@c
    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;

    #@e
    invoke-direct {v1, p0, p1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;)V

    #@11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@14
    .line 721
    return-void
.end method

.method public enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V
    .locals 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cryptoToken"    # [B
    .param p3, "groupId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "flags"    # I

    #@0
    .prologue
    .line 689
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    const-string/jumbo v2, "android.permission.MANAGE_FINGERPRINT"

    #@5
    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    #@8
    .line 690
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@a
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-get0(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@11
    move-result-object v1

    #@12
    .line 691
    const v2, 0x10e0097

    #@15
    .line 690
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@18
    move-result v11

    #@19
    .line 692
    .local v11, "limit":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1c
    move-result v9

    #@1d
    .line 693
    .local v9, "callingUid":I
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    #@20
    move-result v12

    #@21
    .line 694
    .local v12, "userId":I
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@23
    invoke-virtual {v1, v12}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    #@26
    move-result-object v1

    #@27
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@2a
    move-result v10

    #@2b
    .line 695
    .local v10, "enrolled":I
    if-lt v10, v11, :cond_0

    #@2d
    .line 696
    const-string/jumbo v1, "FingerprintService"

    #@30
    const-string/jumbo v2, "Too many fingerprints registered"

    #@33
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 697
    return-void

    #@37
    .line 699
    :cond_0
    move-object/from16 v0, p2

    #@39
    array-length v1, v0

    #@3a
    move-object/from16 v0, p2

    #@3c
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    #@3f
    move-result-object v4

    #@40
    .line 703
    .local v4, "cryptoClone":[B
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@42
    move/from16 v0, p3

    #@44
    invoke-virtual {v1, v0}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    #@47
    move-result v5

    #@48
    .line 705
    .local v5, "effectiveGroupId":I
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->isRestricted()Z

    #@4b
    move-result v8

    #@4c
    .line 706
    .local v8, "restricted":Z
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@4e
    iget-object v13, v1, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    #@50
    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;

    #@52
    move-object v2, p0

    #@53
    move-object v3, p1

    #@54
    move-object/from16 v6, p4

    #@56
    move/from16 v7, p5

    #@58
    invoke-direct/range {v1 .. v8}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V

    #@5b
    invoke-virtual {v13, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@5e
    .line 688
    return-void
.end method

.method public getAuthenticatorId(Ljava/lang/String;)J
    .locals 2
    .param p1, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getAuthenticatorId()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getEnrolledFingerprints(ILjava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 814
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-static {v1, p2}, Lcom/android/server/fingerprint/FingerprintService;->-wrap0(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 815
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 817
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@f
    invoke-virtual {v1, p1}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    #@12
    move-result v0

    #@13
    .line 819
    .local v0, "effectiveUserId":I
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@15
    invoke-virtual {v1, v0}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    #@18
    move-result-object v1

    #@19
    return-object v1
.end method

.method public hasEnrolledFingerprints(ILjava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 824
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-static {v1, p2}, Lcom/android/server/fingerprint/FingerprintService;->-wrap0(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 825
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    .line 828
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@c
    invoke-virtual {v1, p1}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    #@f
    move-result v0

    #@10
    .line 829
    .local v0, "effectiveUserId":I
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@12
    invoke-virtual {v1, v0}, Lcom/android/server/fingerprint/FingerprintService;->hasEnrolledFingerprints(I)Z

    #@15
    move-result v1

    #@16
    return v1
.end method

.method public isHardwareDetected(JLjava/lang/String;)Z
    .locals 6
    .param p1, "deviceId"    # J
    .param p3, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 790
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@3
    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService;->-wrap0(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 791
    return v0

    #@a
    .line 793
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@c
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-get2(Lcom/android/server/fingerprint/FingerprintService;)J

    #@f
    move-result-wide v2

    #@10
    const-wide/16 v4, 0x0

    #@12
    cmp-long v1, v2, v4

    #@14
    if-eqz v1, :cond_1

    #@16
    const/4 v0, 0x1

    #@17
    :cond_1
    return v0
.end method

.method public postEnroll(Landroid/os/IBinder;)I
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    const-string/jumbo v1, "android.permission.MANAGE_FINGERPRINT"

    #@5
    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    #@8
    .line 683
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@a
    invoke-virtual {v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->startPostEnroll(Landroid/os/IBinder;)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public preEnroll(Landroid/os/IBinder;)J
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    const-string/jumbo v1, "android.permission.MANAGE_FINGERPRINT"

    #@5
    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    #@8
    .line 677
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@a
    invoke-virtual {v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->startPreEnroll(Landroid/os/IBinder;)J

    #@d
    move-result-wide v0

    #@e
    return-wide v0
.end method

.method public remove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerId"    # I
    .param p3, "groupId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@0
    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    const-string/jumbo v1, "android.permission.MANAGE_FINGERPRINT"

    #@5
    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    #@8
    .line 774
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->isRestricted()Z

    #@b
    move-result v6

    #@c
    .line 778
    .local v6, "restricted":Z
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@e
    invoke-virtual {v0, p3}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    #@11
    move-result v4

    #@12
    .line 779
    .local v4, "effectiveGroupId":I
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@14
    iget-object v7, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    #@16
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;

    #@18
    move-object v1, p0

    #@19
    move-object v2, p1

    #@1a
    move v3, p2

    #@1b
    move-object v5, p4

    #@1c
    invoke-direct/range {v0 .. v6}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Z)V

    #@1f
    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@22
    .line 772
    return-void
.end method

.method public rename(IILjava/lang/String;)V
    .locals 3
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 798
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    const-string/jumbo v2, "android.permission.MANAGE_FINGERPRINT"

    #@5
    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    #@8
    .line 802
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@a
    invoke-virtual {v1, p2}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    #@d
    move-result v0

    #@e
    .line 803
    .local v0, "effectiveGroupId":I
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@10
    iget-object v1, v1, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    #@12
    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;

    #@14
    invoke-direct {v2, p0, p1, v0, p3}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;IILjava/lang/String;)V

    #@17
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1a
    .line 797
    return-void
.end method
