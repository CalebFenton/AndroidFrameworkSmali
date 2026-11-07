.class public final Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;
.super Ljava/lang/Object;
.source "ForegroundServiceTypePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceTypePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ForegroundServiceTypePolicyInfo"
.end annotation


# static fields
.field private static final blacklist INVALID_CHANGE_ID:J


# instance fields
.field final blacklist mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

.field final blacklist mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

.field blacklist mCustomPermission:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

.field final blacklist mDeprecationChangeId:J

.field final blacklist mDisabledChangeId:J

.field final blacklist mForegroundOnlyPermission:Z

.field final blacklist mPermissionEnforcementFlag:Ljava/lang/String;

.field final blacklist mPermissionEnforcementFlagDefaultValue:Z

.field volatile blacklist mPermissionEnforcementFlagValue:Z

.field final blacklist mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mupdatePermissionEnforcementFlagIfNecessary(Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->updatePermissionEnforcementFlagIfNecessary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(IJJLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Ljava/lang/String;ZZ)V
    .registers 11
    .param p1, "type"    # I
    .param p2, "deprecationChangeId"    # J
    .param p4, "disabledChangeId"    # J
    .param p6, "allOfPermissions"    # Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;
    .param p7, "anyOfPermissions"    # Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;
    .param p8, "permissionEnforcementFlag"    # Ljava/lang/String;
    .param p9, "permissionEnforcementFlagDefaultValue"    # Z
    .param p10, "foregroundOnlyPermission"    # Z

    .line 872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 873
    iput p1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mType:I

    .line 874
    iput-wide p2, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDeprecationChangeId:J

    .line 875
    iput-wide p4, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDisabledChangeId:J

    .line 876
    iput-object p6, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    .line 877
    iput-object p7, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    .line 878
    iput-object p8, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlag:Ljava/lang/String;

    .line 879
    iput-boolean p9, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlagDefaultValue:Z

    .line 880
    iput-boolean p9, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlagValue:Z

    .line 881
    iput-boolean p10, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mForegroundOnlyPermission:Z

    .line 882
    return-void
.end method

.method private blacklist clearOverrideForTest(JLjava/lang/String;)V
    .registers 5
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1037
    nop

    .line 1038
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1037
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    .line 1039
    .local v0, "platformCompat":Lcom/android/internal/compat/IPlatformCompat;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/compat/IPlatformCompat;->clearOverrideForTest(JLjava/lang/String;)Z

    .line 1040
    return-void
.end method

.method private static blacklist isValidChangeId(J)Z
    .registers 4
    .param p0, "changeId"    # J

    .line 858
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private blacklist overrideChangeIdForTest(JZLjava/lang/String;)V
    .registers 9
    .param p1, "changeId"    # J
    .param p3, "enable"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1018
    invoke-static {p1, p2}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->isValidChangeId(J)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1019
    return-void

    .line 1021
    :cond_7
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1022
    .local v0, "enabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1023
    .local v1, "disabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    if-eqz p3, :cond_1b

    .line 1024
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 1026
    :cond_1b
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1028
    :goto_22
    new-instance v2, Lcom/android/internal/compat/CompatibilityChangeConfig;

    new-instance v3, Landroid/compat/Compatibility$ChangeConfig;

    invoke-direct {v3, v0, v1}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {v2, v3}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    .line 1030
    .local v2, "overrides":Lcom/android/internal/compat/CompatibilityChangeConfig;
    nop

    .line 1031
    const-string/jumbo v3, "platform_compat"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1030
    invoke-static {v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v3

    .line 1032
    .local v3, "platformCompat":Lcom/android/internal/compat/IPlatformCompat;
    invoke-interface {v3, v2, p4}, Lcom/android/internal/compat/IPlatformCompat;->setOverridesForTest(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    .line 1033
    return-void
.end method

.method private blacklist toPermissionString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 914
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    const/16 v1, 0x20

    if-eqz v0, :cond_17

    .line 915
    const-string v0, "all of the permissions "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    invoke-virtual {v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 919
    :cond_17
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    if-eqz v0, :cond_2c

    .line 920
    const-string v0, "any of the permissions "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    invoke-virtual {v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 924
    :cond_2c
    return-object p1
.end method

.method private blacklist updatePermissionEnforcementFlagIfNecessary(Ljava/lang/String;)V
    .registers 5
    .param p1, "flagName"    # Ljava/lang/String;

    .line 928
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlag:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlag:Ljava/lang/String;

    .line 929
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1a

    .line 932
    :cond_d
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlag:Ljava/lang/String;

    iget-boolean v1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlagDefaultValue:Z

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlagValue:Z

    .line 936
    return-void

    .line 930
    :cond_1a
    :goto_1a
    return-void
.end method


# virtual methods
.method public blacklist clearTypeDisabledForTest(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1007
    iget-wide v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDisabledChangeId:J

    invoke-direct {p0, v0, v1, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->clearOverrideForTest(JLjava/lang/String;)V

    .line 1008
    return-void
.end method

.method public blacklist getForegroundServiceType()I
    .registers 2

    .line 889
    iget v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mType:I

    return v0
.end method

.method public blacklist getPermissionEnforcementFlagForTest()Ljava/lang/String;
    .registers 2

    .line 1048
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRequiredAllOfPermissionsForTest(Landroid/content/Context;)Ljava/util/Optional;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Optional<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 954
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    if-nez v0, :cond_9

    .line 955
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 957
    :cond_9
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    invoke-virtual {v0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->toStringArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRequiredAnyOfPermissionsForTest(Landroid/content/Context;)Ljava/util/Optional;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Optional<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 968
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    if-nez v0, :cond_9

    .line 969
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 971
    :cond_9
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    invoke-virtual {v0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->toStringArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasForegroundOnlyPermission()Z
    .registers 2

    .line 988
    iget-boolean v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mForegroundOnlyPermission:Z

    return v0
.end method

.method blacklist isTypeDeprecated(I)Z
    .registers 4
    .param p1, "callerUid"    # I

    .line 1012
    iget-wide v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDeprecationChangeId:J

    invoke-static {v0, v1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->isValidChangeId(J)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-wide v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDeprecationChangeId:J

    .line 1013
    invoke-static {v0, v1, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 1012
    :goto_13
    return v0
.end method

.method public blacklist isTypeDisabled(I)Z
    .registers 4
    .param p1, "callerUid"    # I

    .line 979
    iget-wide v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDisabledChangeId:J

    invoke-static {v0, v1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->isValidChangeId(J)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-wide v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDisabledChangeId:J

    .line 980
    invoke-static {v0, v1, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 979
    :goto_13
    return v0
.end method

.method public blacklist setCustomPermission(Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;)V
    .registers 2
    .param p1, "customPermission"    # Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    .line 943
    iput-object p1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mCustomPermission:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    .line 944
    return-void
.end method

.method public blacklist setTypeDisabledForTest(ZLjava/lang/String;)V
    .registers 5
    .param p1, "disabled"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 998
    iget-wide v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDisabledChangeId:J

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->overrideChangeIdForTest(JZLjava/lang/String;)V

    .line 999
    return-void
.end method

.method public blacklist toPermissionString()Ljava/lang/String;
    .registers 2

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->toPermissionString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->toPermissionString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 895
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "type=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    iget v1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    const-string v1, " deprecationChangeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    iget-wide v1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDeprecationChangeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 899
    const-string v1, " disabledChangeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    iget-wide v1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDisabledChangeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 901
    const-string v1, " customPermission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    iget-object v1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mCustomPermission:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 903
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
