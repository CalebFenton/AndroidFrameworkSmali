.class final Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RuntimePermissionPersistence"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;
    }
.end annotation


# static fields
.field private static final MAX_WRITE_PERMISSIONS_DELAY_MILLIS:J = 0x7d0L

.field private static final WRITE_PERMISSIONS_DELAY_MILLIS:J = 0xc8L


# instance fields
.field private final mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mFingerprints:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mWriteScheduled:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/Settings;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->onUserRemoved(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsSync(I)V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/Settings;Ljava/lang/Object;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/Settings;
    .param p2, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4497
    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 4478
    new-instance v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;-><init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)V

    #@a
    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    #@c
    .line 4483
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@e
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    #@13
    .line 4487
    new-instance v0, Landroid/util/SparseLongArray;

    #@15
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    #@1a
    .line 4491
    new-instance v0, Landroid/util/SparseArray;

    #@1c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    #@21
    .line 4495
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@23
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@26
    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    #@28
    .line 4498
    iput-object p2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    #@2a
    .line 4497
    return-void
.end method

.method private onUserRemoved(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 4638
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeMessages(I)V

    #@5
    .line 4640
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@7
    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@9
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@c
    move-result-object v2

    #@d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "sb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@1d
    .line 4641
    .local v0, "sb":Lcom/android/server/pm/SettingBase;
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V

    #@20
    goto :goto_0

    #@21
    .line 4644
    .end local v0    # "sb":Lcom/android/server/pm/SettingBase;
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@23
    iget-object v2, v2, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@25
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@28
    move-result-object v2

    #@29
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v1

    #@2d
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_1

    #@33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    #@39
    .line 4645
    .restart local v0    # "sb":Lcom/android/server/pm/SettingBase;
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V

    #@3c
    goto :goto_1

    #@3d
    .line 4636
    .end local v0    # "sb":Lcom/android/server/pm/SettingBase;
    :cond_1
    return-void
.end method

.method private parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;I)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "permissionsState"    # Lcom/android/server/pm/PermissionsState;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 4738
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v6

    #@4
    .line 4740
    .local v6, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@7
    move-result v7

    #@8
    .local v7, "type":I
    const/4 v8, 0x1

    #@9
    if-eq v7, v8, :cond_6

    #@b
    .line 4741
    const/4 v8, 0x3

    #@c
    if-ne v7, v8, :cond_1

    #@e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@11
    move-result v8

    #@12
    if-le v8, v6, :cond_6

    #@14
    .line 4742
    :cond_1
    const/4 v8, 0x3

    #@15
    if-eq v7, v8, :cond_0

    #@17
    const/4 v8, 0x4

    #@18
    if-eq v7, v8, :cond_0

    #@1a
    .line 4746
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1d
    move-result-object v8

    #@1e
    const-string/jumbo v9, "item"

    #@21
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v8

    #@25
    if-eqz v8, :cond_0

    #@27
    .line 4748
    const-string/jumbo v8, "name"

    #@2a
    const/4 v9, 0x0

    #@2b
    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    .line 4749
    .local v5, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@31
    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    #@33
    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Lcom/android/server/pm/BasePermission;

    #@39
    .line 4750
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-nez v0, :cond_2

    #@3b
    .line 4751
    const-string/jumbo v8, "PackageManager"

    #@3e
    new-instance v9, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v10, "Unknown permission:"

    #@46
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v9

    #@4a
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v9

    #@4e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v9

    #@52
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 4752
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@58
    goto :goto_0

    #@59
    .line 4756
    :cond_2
    const-string/jumbo v8, "granted"

    #@5c
    const/4 v9, 0x0

    #@5d
    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@60
    move-result-object v4

    #@61
    .line 4757
    .local v4, "grantedStr":Ljava/lang/String;
    if-eqz v4, :cond_3

    #@63
    .line 4758
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@66
    move-result v3

    #@67
    .line 4760
    :goto_1
    const-string/jumbo v8, "flags"

    #@6a
    const/4 v9, 0x0

    #@6b
    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6e
    move-result-object v2

    #@6f
    .line 4761
    .local v2, "flagsStr":Ljava/lang/String;
    if-eqz v2, :cond_4

    #@71
    .line 4762
    const/16 v8, 0x10

    #@73
    invoke-static {v2, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@76
    move-result v1

    #@77
    .line 4764
    .local v1, "flags":I
    :goto_2
    if-eqz v3, :cond_5

    #@79
    .line 4765
    invoke-virtual {p2, v0, p3}, Lcom/android/server/pm/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/BasePermission;I)I

    #@7c
    .line 4767
    const/16 v8, 0xff

    #@7e
    .line 4766
    invoke-virtual {p2, v0, p3, v8, v1}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    #@81
    goto :goto_0

    #@82
    .line 4757
    .end local v1    # "flags":I
    .end local v2    # "flagsStr":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    #@83
    .local v3, "granted":Z
    goto :goto_1

    #@84
    .line 4762
    .end local v3    # "granted":Z
    .restart local v2    # "flagsStr":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    #@85
    .restart local v1    # "flags":I
    goto :goto_2

    #@86
    .line 4770
    :cond_5
    const/16 v8, 0xff

    #@88
    .line 4769
    invoke-virtual {p2, v0, p3, v8, v1}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    #@8b
    goto/16 :goto_0

    #@8d
    .line 4737
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "flags":I
    .end local v2    # "flagsStr":Ljava/lang/String;
    .end local v4    # "grantedStr":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private parseRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x3

    #@1
    const/4 v10, 0x0

    #@2
    .line 4695
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@5
    move-result v3

    #@6
    .line 4697
    .local v3, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@9
    move-result v6

    #@a
    .local v6, "type":I
    const/4 v7, 0x1

    #@b
    if-eq v6, v7, :cond_6

    #@d
    .line 4698
    if-ne v6, v11, :cond_1

    #@f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@12
    move-result v7

    #@13
    if-le v7, v3, :cond_6

    #@15
    .line 4699
    :cond_1
    if-eq v6, v11, :cond_0

    #@17
    const/4 v7, 0x4

    #@18
    if-eq v6, v7, :cond_0

    #@1a
    .line 4703
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1d
    move-result-object v7

    #@1e
    const-string/jumbo v8, "runtime-permissions"

    #@21
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v8

    #@25
    if-eqz v8, :cond_2

    #@27
    .line 4705
    const-string/jumbo v7, "fingerprint"

    #@2a
    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .line 4706
    .local v1, "fingerprint":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    #@30
    invoke-virtual {v7, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@33
    .line 4707
    sget-object v7, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@35
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v0

    #@39
    .line 4708
    .local v0, "defaultsGranted":Z
    iget-object v7, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    #@3b
    invoke-virtual {v7, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@3e
    goto :goto_0

    #@3f
    .line 4703
    .end local v0    # "defaultsGranted":Z
    .end local v1    # "fingerprint":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "pkg"

    #@42
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v8

    #@46
    if-eqz v8, :cond_3

    #@48
    .line 4712
    const-string/jumbo v7, "name"

    #@4b
    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    .line 4713
    .local v2, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@51
    iget-object v7, v7, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@53
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    move-result-object v4

    #@57
    check-cast v4, Lcom/android/server/pm/PackageSetting;

    #@59
    .line 4714
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v4, :cond_4

    #@5b
    .line 4715
    const-string/jumbo v7, "PackageManager"

    #@5e
    new-instance v8, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v9, "Unknown package:"

    #@66
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v8

    #@6a
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v8

    #@6e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v8

    #@72
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    .line 4716
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@78
    goto :goto_0

    #@79
    .line 4703
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_3
    const-string/jumbo v8, "shared-user"

    #@7c
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v7

    #@80
    if-eqz v7, :cond_0

    #@82
    .line 4723
    const-string/jumbo v7, "name"

    #@85
    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@88
    move-result-object v2

    #@89
    .line 4724
    .restart local v2    # "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@8b
    iget-object v7, v7, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@8d
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@90
    move-result-object v5

    #@91
    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    #@93
    .line 4725
    .local v5, "sus":Lcom/android/server/pm/SharedUserSetting;
    if-nez v5, :cond_5

    #@95
    .line 4726
    const-string/jumbo v7, "PackageManager"

    #@98
    new-instance v8, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v9, "Unknown shared user:"

    #@a0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v8

    #@a4
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v8

    #@a8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v8

    #@ac
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@af
    .line 4727
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@b2
    goto/16 :goto_0

    #@b4
    .line 4719
    .end local v5    # "sus":Lcom/android/server/pm/SharedUserSetting;
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@b7
    move-result-object v7

    #@b8
    invoke-direct {p0, p1, v7, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;I)V

    #@bb
    goto/16 :goto_0

    #@bd
    .line 4730
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_5
    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@c0
    move-result-object v7

    #@c1
    invoke-direct {p0, p1, v7, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;I)V

    #@c4
    goto/16 :goto_0

    #@c6
    .line 4694
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_6
    return-void
.end method

.method private revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V
    .locals 6
    .param p1, "sb"    # Lcom/android/server/pm/SettingBase;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 4650
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@3
    move-result-object v3

    #@4
    .line 4652
    .local v3, "permissionsState":Lcom/android/server/pm/PermissionsState;
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    #@7
    move-result-object v4

    #@8
    .line 4651
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v2

    #@c
    .local v2, "permissionState$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Lcom/android/server/pm/PermissionsState$PermissionState;

    #@18
    .line 4653
    .local v1, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@1a
    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    #@1c
    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Lcom/android/server/pm/BasePermission;

    #@26
    .line 4654
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_0

    #@28
    .line 4655
    invoke-virtual {v3, v0, p2}, Lcom/android/server/pm/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/BasePermission;I)I

    #@2b
    .line 4657
    const/16 v4, 0xff

    #@2d
    const/4 v5, 0x0

    #@2e
    .line 4656
    invoke-virtual {v3, v0, p2, v4, v5}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    #@31
    goto :goto_0

    #@32
    .line 4649
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    :cond_1
    return-void
.end method

.method private writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    const/4 v4, 0x0

    #@1
    .line 4780
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v1

    #@5
    .local v1, "permissionState$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    #@11
    .line 4781
    .local v0, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    const-string/jumbo v2, "item"

    #@14
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@17
    .line 4782
    const-string/jumbo v2, "name"

    #@1a
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@21
    .line 4783
    const-string/jumbo v2, "granted"

    #@24
    .line 4784
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->isGranted()Z

    #@27
    move-result v3

    #@28
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    .line 4783
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2f
    .line 4785
    const-string/jumbo v2, "flags"

    #@32
    .line 4786
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    #@35
    move-result v3

    #@36
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    .line 4785
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3d
    .line 4787
    const-string/jumbo v2, "item"

    #@40
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@43
    goto :goto_0

    #@44
    .line 4779
    .end local v0    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    :cond_0
    return-void
.end method

.method private writePermissionsSync(I)V
    .locals 22
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 4548
    new-instance v3, Landroid/util/AtomicFile;

    #@2
    move-object/from16 v0, p0

    #@4
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@6
    move-object/from16 v20, v0

    #@8
    move-object/from16 v0, v20

    #@a
    move/from16 v1, p1

    #@c
    invoke-static {v0, v1}, Lcom/android/server/pm/Settings;->-wrap0(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    #@f
    move-result-object v20

    #@10
    move-object/from16 v0, v20

    #@12
    invoke-direct {v3, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@15
    .line 4550
    .local v3, "destination":Landroid/util/AtomicFile;
    new-instance v11, Landroid/util/ArrayMap;

    #@17
    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    #@1a
    .line 4551
    .local v11, "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;>;"
    new-instance v12, Landroid/util/ArrayMap;

    #@1c
    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    #@1f
    .line 4553
    .local v12, "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;>;"
    move-object/from16 v0, p0

    #@21
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    #@23
    move-object/from16 v21, v0

    #@25
    monitor-enter v21

    #@26
    .line 4554
    :try_start_0
    move-object/from16 v0, p0

    #@28
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    #@2a
    move-object/from16 v20, v0

    #@2c
    move-object/from16 v0, v20

    #@2e
    move/from16 v1, p1

    #@30
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    #@33
    .line 4556
    move-object/from16 v0, p0

    #@35
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@37
    move-object/from16 v20, v0

    #@39
    move-object/from16 v0, v20

    #@3b
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@3d
    move-object/from16 v20, v0

    #@3f
    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    #@42
    move-result v7

    #@43
    .line 4557
    .local v7, "packageCount":I
    const/4 v5, 0x0

    #@44
    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_1

    #@46
    .line 4558
    move-object/from16 v0, p0

    #@48
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@4a
    move-object/from16 v20, v0

    #@4c
    move-object/from16 v0, v20

    #@4e
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@50
    move-object/from16 v20, v0

    #@52
    move-object/from16 v0, v20

    #@54
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@57
    move-result-object v8

    #@58
    check-cast v8, Ljava/lang/String;

    #@5a
    .line 4559
    .local v8, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5c
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@5e
    move-object/from16 v20, v0

    #@60
    move-object/from16 v0, v20

    #@62
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@64
    move-object/from16 v20, v0

    #@66
    move-object/from16 v0, v20

    #@68
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@6b
    move-result-object v9

    #@6c
    check-cast v9, Lcom/android/server/pm/PackageSetting;

    #@6e
    .line 4560
    .local v9, "packageSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@70
    move-object/from16 v20, v0

    #@72
    if-nez v20, :cond_0

    #@74
    .line 4561
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@77
    move-result-object v13

    #@78
    .line 4562
    .local v13, "permissionsState":Lcom/android/server/pm/PermissionsState;
    move/from16 v0, p1

    #@7a
    invoke-virtual {v13, v0}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    #@7d
    move-result-object v14

    #@7e
    .line 4564
    .local v14, "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    #@81
    move-result v20

    #@82
    if-nez v20, :cond_0

    #@84
    .line 4565
    invoke-virtual {v11, v8, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@87
    .line 4557
    .end local v13    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    .end local v14    # "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@89
    goto :goto_0

    #@8a
    .line 4570
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    :cond_1
    move-object/from16 v0, p0

    #@8c
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@8e
    move-object/from16 v20, v0

    #@90
    move-object/from16 v0, v20

    #@92
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@94
    move-object/from16 v20, v0

    #@96
    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    #@99
    move-result v17

    #@9a
    .line 4571
    .local v17, "sharedUserCount":I
    const/4 v5, 0x0

    #@9b
    :goto_1
    move/from16 v0, v17

    #@9d
    if-ge v5, v0, :cond_3

    #@9f
    .line 4572
    move-object/from16 v0, p0

    #@a1
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@a3
    move-object/from16 v20, v0

    #@a5
    move-object/from16 v0, v20

    #@a7
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@a9
    move-object/from16 v20, v0

    #@ab
    move-object/from16 v0, v20

    #@ad
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@b0
    move-result-object v18

    #@b1
    check-cast v18, Ljava/lang/String;

    #@b3
    .line 4573
    .local v18, "sharedUserName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@b5
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@b7
    move-object/from16 v20, v0

    #@b9
    move-object/from16 v0, v20

    #@bb
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@bd
    move-object/from16 v20, v0

    #@bf
    move-object/from16 v0, v20

    #@c1
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@c4
    move-result-object v16

    #@c5
    check-cast v16, Lcom/android/server/pm/SharedUserSetting;

    #@c7
    .line 4574
    .local v16, "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@ca
    move-result-object v13

    #@cb
    .line 4575
    .restart local v13    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    move/from16 v0, p1

    #@cd
    invoke-virtual {v13, v0}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    #@d0
    move-result-object v14

    #@d1
    .line 4577
    .restart local v14    # "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    #@d4
    move-result v20

    #@d5
    if-nez v20, :cond_2

    #@d7
    .line 4578
    move-object/from16 v0, v18

    #@d9
    invoke-virtual {v12, v0, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@dc
    .line 4571
    :cond_2
    add-int/lit8 v5, v5, 0x1

    #@de
    goto :goto_1

    #@df
    .end local v13    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    .end local v14    # "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    .end local v16    # "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    .end local v18    # "sharedUserName":Ljava/lang/String;
    :cond_3
    monitor-exit v21

    #@e0
    .line 4583
    const/4 v6, 0x0

    #@e1
    .line 4585
    .local v6, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@e4
    move-result-object v6

    #@e5
    .line 4587
    .local v6, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    #@e8
    move-result-object v15

    #@e9
    .line 4588
    .local v15, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v20, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@eb
    invoke-virtual/range {v20 .. v20}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@ee
    move-result-object v20

    #@ef
    move-object/from16 v0, v20

    #@f1
    invoke-interface {v15, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@f4
    .line 4590
    const-string/jumbo v20, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@f7
    const/16 v21, 0x1

    #@f9
    .line 4589
    move-object/from16 v0, v20

    #@fb
    move/from16 v1, v21

    #@fd
    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@100
    .line 4591
    const/16 v20, 0x1

    #@102
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@105
    move-result-object v20

    #@106
    const/16 v21, 0x0

    #@108
    move-object/from16 v0, v21

    #@10a
    move-object/from16 v1, v20

    #@10c
    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@10f
    .line 4592
    const-string/jumbo v20, "runtime-permissions"

    #@112
    const/16 v21, 0x0

    #@114
    move-object/from16 v0, v21

    #@116
    move-object/from16 v1, v20

    #@118
    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@11b
    .line 4594
    move-object/from16 v0, p0

    #@11d
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    #@11f
    move-object/from16 v20, v0

    #@121
    move-object/from16 v0, v20

    #@123
    move/from16 v1, p1

    #@125
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@128
    move-result-object v4

    #@129
    check-cast v4, Ljava/lang/String;

    #@12b
    .line 4595
    .local v4, "fingerprint":Ljava/lang/String;
    if-eqz v4, :cond_4

    #@12d
    .line 4596
    const-string/jumbo v20, "fingerprint"

    #@130
    const/16 v21, 0x0

    #@132
    move-object/from16 v0, v21

    #@134
    move-object/from16 v1, v20

    #@136
    invoke-interface {v15, v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@139
    .line 4599
    :cond_4
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    #@13c
    move-result v7

    #@13d
    .line 4600
    const/4 v5, 0x0

    #@13e
    :goto_2
    if-ge v5, v7, :cond_5

    #@140
    .line 4601
    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@143
    move-result-object v8

    #@144
    check-cast v8, Ljava/lang/String;

    #@146
    .line 4602
    .restart local v8    # "packageName":Ljava/lang/String;
    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@149
    move-result-object v10

    #@14a
    check-cast v10, Ljava/util/List;

    #@14c
    .line 4603
    .local v10, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    const-string/jumbo v20, "pkg"

    #@14f
    const/16 v21, 0x0

    #@151
    move-object/from16 v0, v21

    #@153
    move-object/from16 v1, v20

    #@155
    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@158
    .line 4604
    const-string/jumbo v20, "name"

    #@15b
    const/16 v21, 0x0

    #@15d
    move-object/from16 v0, v21

    #@15f
    move-object/from16 v1, v20

    #@161
    invoke-interface {v15, v0, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@164
    .line 4605
    move-object/from16 v0, p0

    #@166
    invoke-direct {v0, v15, v10}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    #@169
    .line 4606
    const-string/jumbo v20, "pkg"

    #@16c
    const/16 v21, 0x0

    #@16e
    move-object/from16 v0, v21

    #@170
    move-object/from16 v1, v20

    #@172
    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@175
    .line 4600
    add-int/lit8 v5, v5, 0x1

    #@177
    goto :goto_2

    #@178
    .line 4553
    .end local v4    # "fingerprint":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .end local v7    # "packageCount":I
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v10    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    .end local v15    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v17    # "sharedUserCount":I
    :catchall_0
    move-exception v20

    #@179
    monitor-exit v21

    #@17a
    throw v20

    #@17b
    .line 4609
    .restart local v4    # "fingerprint":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "packageCount":I
    .restart local v15    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v17    # "sharedUserCount":I
    :cond_5
    :try_start_2
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    #@17e
    move-result v17

    #@17f
    .line 4610
    const/4 v5, 0x0

    #@180
    :goto_3
    move/from16 v0, v17

    #@182
    if-ge v5, v0, :cond_6

    #@184
    .line 4611
    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@187
    move-result-object v8

    #@188
    check-cast v8, Ljava/lang/String;

    #@18a
    .line 4612
    .restart local v8    # "packageName":Ljava/lang/String;
    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@18d
    move-result-object v10

    #@18e
    check-cast v10, Ljava/util/List;

    #@190
    .line 4613
    .restart local v10    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    const-string/jumbo v20, "shared-user"

    #@193
    const/16 v21, 0x0

    #@195
    move-object/from16 v0, v21

    #@197
    move-object/from16 v1, v20

    #@199
    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@19c
    .line 4614
    const-string/jumbo v20, "name"

    #@19f
    const/16 v21, 0x0

    #@1a1
    move-object/from16 v0, v21

    #@1a3
    move-object/from16 v1, v20

    #@1a5
    invoke-interface {v15, v0, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1a8
    .line 4615
    move-object/from16 v0, p0

    #@1aa
    invoke-direct {v0, v15, v10}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    #@1ad
    .line 4616
    const-string/jumbo v20, "shared-user"

    #@1b0
    const/16 v21, 0x0

    #@1b2
    move-object/from16 v0, v21

    #@1b4
    move-object/from16 v1, v20

    #@1b6
    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b9
    .line 4610
    add-int/lit8 v5, v5, 0x1

    #@1bb
    goto :goto_3

    #@1bc
    .line 4619
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v10    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    :cond_6
    const-string/jumbo v20, "runtime-permissions"

    #@1bf
    const/16 v21, 0x0

    #@1c1
    move-object/from16 v0, v21

    #@1c3
    move-object/from16 v1, v20

    #@1c5
    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1c8
    .line 4620
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@1cb
    .line 4621
    invoke-virtual {v3, v6}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    #@1ce
    .line 4623
    sget-object v20, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@1d0
    move-object/from16 v0, v20

    #@1d2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d5
    move-result v20

    #@1d6
    if-eqz v20, :cond_7

    #@1d8
    .line 4624
    move-object/from16 v0, p0

    #@1da
    iget-object v0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    #@1dc
    move-object/from16 v20, v0

    #@1de
    const/16 v21, 0x1

    #@1e0
    move-object/from16 v0, v20

    #@1e2
    move/from16 v1, p1

    #@1e4
    move/from16 v2, v21

    #@1e6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1e9
    .line 4632
    :cond_7
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1ec
    .line 4547
    .end local v4    # "fingerprint":Ljava/lang/String;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .end local v15    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_4
    return-void

    #@1ed
    .line 4627
    :catch_0
    move-exception v19

    #@1ee
    .line 4628
    .local v19, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v20, "PackageManager"

    #@1f1
    .line 4629
    const-string/jumbo v21, "Failed to write settings, restoring backup"

    #@1f4
    .line 4628
    move-object/from16 v0, v20

    #@1f6
    move-object/from16 v1, v21

    #@1f8
    move-object/from16 v2, v19

    #@1fa
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1fd
    .line 4630
    invoke-virtual {v3, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@200
    .line 4632
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@203
    goto :goto_4

    #@204
    .line 4631
    .end local v19    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v20

    #@205
    .line 4632
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@208
    .line 4631
    throw v20
.end method


# virtual methods
.method public areDefaultRuntimPermissionsGrantedLPr(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 4502
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public deleteUserRuntimePermissionsFile(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 4663
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/pm/Settings;->-wrap0(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@9
    .line 4662
    return-void
.end method

.method public onDefaultRuntimePermissionsGrantedLPr(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 4506
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    #@2
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@4
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@7
    .line 4507
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    #@a
    .line 4505
    return-void
.end method

.method public readStateForUserSyncLPr(I)V
    .locals 8
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 4667
    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    #@2
    invoke-static {v5, p1}, Lcom/android/server/pm/Settings;->-wrap0(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    #@5
    move-result-object v4

    #@6
    .line 4668
    .local v4, "permissionsFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    #@9
    move-result v5

    #@a
    if-nez v5, :cond_0

    #@c
    .line 4669
    return-void

    #@d
    .line 4674
    :cond_0
    :try_start_0
    new-instance v5, Landroid/util/AtomicFile;

    #@f
    invoke-direct {v5, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@12
    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v2

    #@16
    .line 4681
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@19
    move-result-object v3

    #@1a
    .line 4682
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    #@1b
    invoke-interface {v3, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@1e
    .line 4683
    invoke-direct {p0, v3, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parseRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    .line 4689
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@24
    .line 4666
    return-void

    #@25
    .line 4675
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    #@26
    .line 4676
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    const-string/jumbo v5, "PackageManager"

    #@29
    const-string/jumbo v6, "No permissions state"

    #@2c
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 4677
    return-void

    #@30
    .line 4685
    .end local v1    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    #@31
    .line 4686
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/IllegalStateException;

    #@33
    new-instance v6, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v7, "Failed parsing permissions file: "

    #@3b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4a
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4b
    .line 4688
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@4c
    .line 4689
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@4f
    .line 4688
    throw v5
.end method

.method public writePermissionsForUserAsyncLPr(I)V
    .locals 18
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 4516
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v2

    #@4
    .line 4518
    .local v2, "currentTimeMillis":J
    move-object/from16 v0, p0

    #@6
    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    #@8
    move/from16 v0, p1

    #@a
    invoke-virtual {v9, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@d
    move-result v9

    #@e
    if-eqz v9, :cond_1

    #@10
    .line 4519
    move-object/from16 v0, p0

    #@12
    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    #@14
    move/from16 v0, p1

    #@16
    invoke-virtual {v9, v0}, Landroid/os/Handler;->removeMessages(I)V

    #@19
    .line 4522
    move-object/from16 v0, p0

    #@1b
    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    #@1d
    move/from16 v0, p1

    #@1f
    invoke-virtual {v9, v0}, Landroid/util/SparseLongArray;->get(I)J

    #@22
    move-result-wide v4

    #@23
    .line 4524
    .local v4, "lastNotWrittenMutationTimeMillis":J
    sub-long v10, v2, v4

    #@25
    .line 4526
    .local v10, "timeSinceLastNotWrittenMutationMillis":J
    const-wide/16 v14, 0x7d0

    #@27
    cmp-long v9, v10, v14

    #@29
    if-ltz v9, :cond_0

    #@2b
    .line 4527
    move-object/from16 v0, p0

    #@2d
    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    #@2f
    move/from16 v0, p1

    #@31
    invoke-virtual {v9, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@34
    move-result-object v9

    #@35
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    #@38
    .line 4528
    return-void

    #@39
    .line 4533
    :cond_0
    const-wide/16 v14, 0x7d0

    #@3b
    .line 4532
    add-long/2addr v14, v4

    #@3c
    sub-long/2addr v14, v2

    #@3d
    .line 4533
    const-wide/16 v16, 0x0

    #@3f
    .line 4532
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    #@42
    move-result-wide v6

    #@43
    .line 4534
    .local v6, "maxDelayMillis":J
    const-wide/16 v14, 0xc8

    #@45
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(JJ)J

    #@48
    move-result-wide v12

    #@49
    .line 4537
    .local v12, "writeDelayMillis":J
    move-object/from16 v0, p0

    #@4b
    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    #@4d
    move/from16 v0, p1

    #@4f
    invoke-virtual {v9, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@52
    move-result-object v8

    #@53
    .line 4538
    .local v8, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    #@55
    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    #@57
    invoke-virtual {v9, v8, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@5a
    .line 4515
    .end local v4    # "lastNotWrittenMutationTimeMillis":J
    .end local v6    # "maxDelayMillis":J
    .end local v10    # "timeSinceLastNotWrittenMutationMillis":J
    .end local v12    # "writeDelayMillis":J
    :goto_0
    return-void

    #@5b
    .line 4540
    .end local v8    # "message":Landroid/os/Message;
    :cond_1
    move-object/from16 v0, p0

    #@5d
    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    #@5f
    move/from16 v0, p1

    #@61
    invoke-virtual {v9, v0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    #@64
    .line 4541
    move-object/from16 v0, p0

    #@66
    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    #@68
    move/from16 v0, p1

    #@6a
    invoke-virtual {v9, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@6d
    move-result-object v8

    #@6e
    .line 4542
    .restart local v8    # "message":Landroid/os/Message;
    move-object/from16 v0, p0

    #@70
    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    #@72
    const-wide/16 v14, 0xc8

    #@74
    invoke-virtual {v9, v8, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@77
    .line 4543
    move-object/from16 v0, p0

    #@79
    iget-object v9, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    #@7b
    const/4 v14, 0x1

    #@7c
    move/from16 v0, p1

    #@7e
    invoke-virtual {v9, v0, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@81
    goto :goto_0
.end method

.method public writePermissionsForUserSyncLPr(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 4511
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    #@5
    .line 4512
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsSync(I)V

    #@8
    .line 4510
    return-void
.end method
