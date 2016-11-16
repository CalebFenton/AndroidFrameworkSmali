.class Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentVerifierProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier",
        "<",
        "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentIntentFilterVerifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentFilterVerifierComponent:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "verifierComponent"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 784
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 782
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    #@c
    .line 785
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mContext:Landroid/content/Context;

    #@e
    .line 786
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mIntentFilterVerifierComponent:Landroid/content/ComponentName;

    #@10
    .line 784
    return-void
.end method

.method private createDomainVerificationState(IIILjava/lang/String;)Lcom/android/server/pm/IntentFilterVerificationState;
    .locals 4
    .param p1, "verifierUid"    # I
    .param p2, "userId"    # I
    .param p3, "verificationId"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 953
    new-instance v0, Lcom/android/server/pm/IntentFilterVerificationState;

    #@2
    invoke-direct {v0, p1, p2, p4}, Lcom/android/server/pm/IntentFilterVerificationState;-><init>(IILjava/lang/String;)V

    #@5
    .line 955
    .local v0, "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    invoke-virtual {v0}, Lcom/android/server/pm/IntentFilterVerificationState;->setPendingState()V

    #@8
    .line 956
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@a
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@c
    monitor-enter v2

    #@d
    .line 957
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@f
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@14
    .line 958
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    #@16
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    monitor-exit v2

    #@1e
    .line 960
    return-object v0

    #@1f
    .line 956
    :catchall_0
    move-exception v1

    #@20
    monitor-exit v2

    #@21
    throw v1
.end method

.method private getDefaultScheme()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 790
    const-string/jumbo v0, "https"

    #@3
    return-object v0
.end method

.method private sendVerificationRequest(IILcom/android/server/pm/IntentFilterVerificationState;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "verificationId"    # I
    .param p3, "ivs"    # Lcom/android/server/pm/IntentFilterVerificationState;

    #@0
    .prologue
    .line 826
    new-instance v1, Landroid/content/Intent;

    #@2
    const-string/jumbo v2, "android.intent.action.INTENT_FILTER_NEEDS_VERIFICATION"

    #@5
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 828
    .local v1, "verificationIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_ID"

    #@b
    .line 827
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@e
    .line 831
    const-string/jumbo v2, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_URI_SCHEME"

    #@11
    .line 832
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->getDefaultScheme()Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    .line 830
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@18
    .line 834
    const-string/jumbo v2, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_HOSTS"

    #@1b
    .line 835
    invoke-virtual {p3}, Lcom/android/server/pm/IntentFilterVerificationState;->getHostsString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 833
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@22
    .line 837
    const-string/jumbo v2, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_PACKAGE_NAME"

    #@25
    .line 838
    invoke-virtual {p3}, Lcom/android/server/pm/IntentFilterVerificationState;->getPackageName()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    .line 836
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@2c
    .line 839
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mIntentFilterVerifierComponent:Landroid/content/ComponentName;

    #@2e
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@31
    .line 840
    const/high16 v2, 0x10000000

    #@33
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@36
    .line 842
    new-instance v0, Landroid/os/UserHandle;

    #@38
    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    #@3b
    .line 843
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mContext:Landroid/content/Context;

    #@3d
    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@40
    .line 824
    return-void
.end method


# virtual methods
.method public bridge synthetic addOneIntentFilterVerification(IIILandroid/content/IntentFilter;Ljava/lang/String;)Z
    .locals 6
    .param p1, "verifierUid"    # I
    .param p2, "userId"    # I
    .param p3, "verificationId"    # I
    .param p4, "filter"    # Landroid/content/IntentFilter;
    .param p5, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    move-object v4, p4

    #@1
    .line 934
    check-cast v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@3
    move-object v0, p0

    #@4
    move v1, p1

    #@5
    move v2, p2

    #@6
    move v3, p3

    #@7
    move-object v5, p5

    #@8
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->addOneIntentFilterVerification(IIILandroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public addOneIntentFilterVerification(IIILandroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/lang/String;)Z
    .locals 2
    .param p1, "verifierUid"    # I
    .param p2, "userId"    # I
    .param p3, "verificationId"    # I
    .param p4, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .param p5, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 936
    invoke-static {p4}, Lcom/android/server/pm/PackageManagerService;->-wrap3(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 937
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 939
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@a
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/pm/IntentFilterVerificationState;

    #@12
    .line 940
    .local v0, "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    if-nez v0, :cond_1

    #@14
    .line 941
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->createDomainVerificationState(IIILjava/lang/String;)Lcom/android/server/pm/IntentFilterVerificationState;

    #@17
    move-result-object v0

    #@18
    .line 947
    :cond_1
    invoke-virtual {v0, p4}, Lcom/android/server/pm/IntentFilterVerificationState;->addFilter(Landroid/content/pm/PackageParser$ActivityIntentInfo;)V

    #@1b
    .line 948
    const/4 v1, 0x1

    #@1c
    return v1
.end method

.method public receiveVerificationResponse(I)V
    .locals 16
    .param p1, "verificationId"    # I

    #@0
    .prologue
    .line 849
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@4
    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    #@6
    move/from16 v0, p1

    #@8
    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v5

    #@c
    check-cast v5, Lcom/android/server/pm/IntentFilterVerificationState;

    #@e
    .line 851
    .local v5, "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    invoke-virtual {v5}, Lcom/android/server/pm/IntentFilterVerificationState;->isVerified()Z

    #@11
    move-result v12

    #@12
    .line 853
    .local v12, "verified":Z
    invoke-virtual {v5}, Lcom/android/server/pm/IntentFilterVerificationState;->getFilters()Ljava/util/ArrayList;

    #@15
    move-result-object v3

    #@16
    .line 854
    .local v3, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v1

    #@1a
    .line 859
    .local v1, "count":I
    const/4 v6, 0x0

    #@1b
    .local v6, "n":I
    :goto_0
    if-ge v6, v1, :cond_0

    #@1d
    .line 860
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@23
    .line 861
    .local v2, "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {v2, v12}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVerified(Z)V

    #@26
    .line 859
    add-int/lit8 v6, v6, 0x1

    #@28
    goto :goto_0

    #@29
    .line 868
    .end local v2    # "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_0
    move-object/from16 v0, p0

    #@2b
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2d
    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    #@2f
    move/from16 v0, p1

    #@31
    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->remove(I)V

    #@34
    .line 870
    invoke-virtual {v5}, Lcom/android/server/pm/IntentFilterVerificationState;->getPackageName()Ljava/lang/String;

    #@37
    move-result-object v8

    #@38
    .line 871
    .local v8, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    #@39
    .line 873
    .local v4, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    move-object/from16 v0, p0

    #@3b
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@3d
    iget-object v14, v13, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@3f
    monitor-enter v14

    #@40
    .line 874
    :try_start_0
    move-object/from16 v0, p0

    #@42
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@44
    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@46
    invoke-virtual {v13, v8}, Lcom/android/server/pm/Settings;->getIntentFilterVerificationLPr(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    move-result-object v4

    #@4a
    .local v4, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    monitor-exit v14

    #@4b
    .line 876
    if-nez v4, :cond_1

    #@4d
    .line 877
    const-string/jumbo v13, "PackageManager"

    #@50
    new-instance v14, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v15, "IntentFilterVerificationInfo not found for verificationId:"

    #@58
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v14

    #@5c
    move/from16 v0, p1

    #@5e
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v14

    #@62
    .line 878
    const-string/jumbo v15, " packageName:"

    #@65
    .line 877
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v14

    #@69
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v14

    #@6d
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v14

    #@71
    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 879
    return-void

    #@75
    .line 873
    .local v4, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    :catchall_0
    move-exception v13

    #@76
    monitor-exit v14

    #@77
    throw v13

    #@78
    .line 885
    .local v4, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    :cond_1
    move-object/from16 v0, p0

    #@7a
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@7c
    iget-object v14, v13, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@7e
    monitor-enter v14

    #@7f
    .line 886
    if-eqz v12, :cond_4

    #@81
    .line 887
    const/4 v13, 0x2

    #@82
    :try_start_1
    invoke-virtual {v4, v13}, Landroid/content/pm/IntentFilterVerificationInfo;->setStatus(I)V

    #@85
    .line 891
    :goto_1
    move-object/from16 v0, p0

    #@87
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@89
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    #@8c
    .line 893
    invoke-virtual {v5}, Lcom/android/server/pm/IntentFilterVerificationState;->getUserId()I

    #@8f
    move-result v10

    #@90
    .line 894
    .local v10, "userId":I
    const/4 v13, -0x1

    #@91
    if-eq v10, v13, :cond_3

    #@93
    .line 896
    move-object/from16 v0, p0

    #@95
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@97
    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@99
    invoke-virtual {v13, v8, v10}, Lcom/android/server/pm/Settings;->getIntentFilterVerificationStatusLPr(Ljava/lang/String;I)I

    #@9c
    move-result v11

    #@9d
    .line 898
    .local v11, "userStatus":I
    const/4 v9, 0x0

    #@9e
    .line 899
    .local v9, "updatedStatus":I
    const/4 v7, 0x0

    #@9f
    .line 903
    .local v7, "needUpdate":Z
    packed-switch v11, :pswitch_data_0

    #@a2
    .line 924
    :cond_2
    :goto_2
    if-eqz v7, :cond_3

    #@a4
    .line 925
    move-object/from16 v0, p0

    #@a6
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@a8
    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@aa
    invoke-virtual {v13, v8, v9, v10}, Lcom/android/server/pm/Settings;->updateIntentFilterVerificationStatusLPw(Ljava/lang/String;II)Z

    #@ad
    .line 927
    move-object/from16 v0, p0

    #@af
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@b1
    invoke-virtual {v13, v10}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictionsLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@b4
    .end local v7    # "needUpdate":Z
    .end local v9    # "updatedStatus":I
    .end local v11    # "userStatus":I
    :cond_3
    monitor-exit v14

    #@b5
    .line 848
    return-void

    #@b6
    .line 889
    .end local v10    # "userId":I
    :cond_4
    const/4 v13, 0x1

    #@b7
    :try_start_2
    invoke-virtual {v4, v13}, Landroid/content/pm/IntentFilterVerificationInfo;->setStatus(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@ba
    goto :goto_1

    #@bb
    .line 885
    :catchall_1
    move-exception v13

    #@bc
    monitor-exit v14

    #@bd
    throw v13

    #@be
    .line 905
    .restart local v7    # "needUpdate":Z
    .restart local v9    # "updatedStatus":I
    .restart local v10    # "userId":I
    .restart local v11    # "userStatus":I
    :pswitch_0
    if-eqz v12, :cond_5

    #@c0
    .line 906
    const/4 v9, 0x2

    #@c1
    .line 910
    :goto_3
    const/4 v7, 0x1

    #@c2
    .line 911
    goto :goto_2

    #@c3
    .line 908
    :cond_5
    const/4 v9, 0x1

    #@c4
    goto :goto_3

    #@c5
    .line 914
    :pswitch_1
    if-eqz v12, :cond_2

    #@c7
    .line 915
    const/4 v9, 0x2

    #@c8
    .line 916
    const/4 v7, 0x1

    #@c9
    goto :goto_2

    #@ca
    .line 903
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startVerifications(I)V
    .locals 13
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 796
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 797
    .local v0, "count":I
    const/4 v8, 0x0

    #@7
    .local v8, "n":I
    :goto_0
    if-ge v8, v0, :cond_2

    #@9
    .line 798
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v11

    #@f
    check-cast v11, Ljava/lang/Integer;

    #@11
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    #@14
    move-result v10

    #@15
    .line 800
    .local v10, "verificationId":I
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@17
    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v6

    #@1d
    check-cast v6, Lcom/android/server/pm/IntentFilterVerificationState;

    #@1f
    .line 802
    .local v6, "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    invoke-virtual {v6}, Lcom/android/server/pm/IntentFilterVerificationState;->getPackageName()Ljava/lang/String;

    #@22
    move-result-object v9

    #@23
    .line 804
    .local v9, "packageName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/server/pm/IntentFilterVerificationState;->getFilters()Ljava/util/ArrayList;

    #@26
    move-result-object v5

    #@27
    .line 805
    .local v5, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@2a
    move-result v4

    #@2b
    .line 806
    .local v4, "filterCount":I
    new-instance v2, Landroid/util/ArraySet;

    #@2d
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    #@30
    .line 807
    .local v2, "domainsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v7, 0x0

    #@31
    .local v7, "m":I
    :goto_1
    if-ge v7, v4, :cond_0

    #@33
    .line 808
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v3

    #@37
    check-cast v3, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@39
    .line 809
    .local v3, "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {v3}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getHostsList()Ljava/util/ArrayList;

    #@3c
    move-result-object v11

    #@3d
    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    #@40
    .line 807
    add-int/lit8 v7, v7, 0x1

    #@42
    goto :goto_1

    #@43
    .line 811
    .end local v3    # "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@45
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@48
    .line 812
    .local v1, "domainsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@4a
    iget-object v12, v11, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@4c
    monitor-enter v12

    #@4d
    .line 813
    :try_start_0
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@4f
    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@51
    invoke-virtual {v11, v9, v1}, Lcom/android/server/pm/Settings;->createIntentFilterVerificationIfNeededLPw(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/pm/IntentFilterVerificationInfo;

    #@54
    move-result-object v11

    #@55
    if-eqz v11, :cond_1

    #@57
    .line 815
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@59
    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5c
    :cond_1
    monitor-exit v12

    #@5d
    .line 818
    invoke-direct {p0, p1, v10, v6}, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->sendVerificationRequest(IILcom/android/server/pm/IntentFilterVerificationState;)V

    #@60
    .line 797
    add-int/lit8 v8, v8, 0x1

    #@62
    goto :goto_0

    #@63
    .line 812
    :catchall_0
    move-exception v11

    #@64
    monitor-exit v12

    #@65
    throw v11

    #@66
    .line 820
    .end local v1    # "domainsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "domainsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "filterCount":I
    .end local v5    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v6    # "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    .end local v7    # "m":I
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "verificationId":I
    :cond_2
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    #@68
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    #@6b
    .line 794
    return-void
.end method
