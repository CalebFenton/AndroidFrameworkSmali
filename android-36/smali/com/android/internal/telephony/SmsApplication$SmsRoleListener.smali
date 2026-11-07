.class final Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;
.super Ljava/lang/Object;
.source "SmsApplication.java"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SmsRoleListener"
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mRoleManager:Landroid/app/role/RoleManager;

.field private final blacklist mSmsPackageNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 874
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;->mSmsPackageNames:Landroid/util/SparseArray;

    .line 877
    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;->mContext:Landroid/content/Context;

    .line 878
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    iput-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;->mRoleManager:Landroid/app/role/RoleManager;

    .line 879
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 880
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object v0

    .line 881
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 882
    .local v1, "usersSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    if-ge v2, v1, :cond_40

    .line 883
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 884
    .local v3, "user":Landroid/os/UserHandle;
    iget-object v4, p0, Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;->mSmsPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;->getSmsPackageName(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 882
    .end local v3    # "user":Landroid/os/UserHandle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 886
    .end local v2    # "i":I
    :cond_40
    iget-object v2, p0, Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;->mRoleManager:Landroid/app/role/RoleManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, p0, v4}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 888
    return-void
.end method

.method private blacklist getSmsPackageName(Landroid/os/UserHandle;)Ljava/lang/String;
    .registers 4
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 903
    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;->mRoleManager:Landroid/app/role/RoleManager;

    const-string v1, "android.app.role.SMS"

    invoke-virtual {v0, v1, p1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 905
    .local v0, "roleHolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return-object v1
.end method


# virtual methods
.method public whitelist onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 892
    const-string v0, "android.app.role.SMS"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 893
    return-void

    .line 895
    :cond_9
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 896
    .local v0, "userId":I
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;->getSmsPackageName(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v1

    .line 897
    .local v1, "newSmsPackageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;->mSmsPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, p2, v3, v1}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$smbroadcastSmsAppChange(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    iget-object v2, p0, Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;->mSmsPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 899
    return-void
.end method
