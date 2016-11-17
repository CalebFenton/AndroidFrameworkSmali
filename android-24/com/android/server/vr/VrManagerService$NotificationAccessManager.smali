.class final Lcom/android/server/vr/VrManagerService$NotificationAccessManager;
.super Ljava/lang/Object;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationAccessManager"
.end annotation


# instance fields
.field private final mAllowedPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/vr/VrManagerService;

    #@0
    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 201
    new-instance v0, Landroid/util/SparseArray;

    #@7
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mAllowedPackages:Landroid/util/SparseArray;

    #@c
    .line 203
    new-instance v0, Landroid/util/ArrayMap;

    #@e
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@11
    .line 202
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    #@13
    .line 200
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$NotificationAccessManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vr/VrManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;-><init>(Lcom/android/server/vr/VrManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public update(Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 206
    .local p1, "packageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@3
    move-result v1

    #@4
    .line 208
    .local v1, "currentUserId":I
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mAllowedPackages:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/util/ArraySet;

    #@c
    .line 209
    .local v0, "allowed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    #@e
    .line 210
    new-instance v0, Landroid/util/ArraySet;

    #@10
    .end local v0    # "allowed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@13
    .line 214
    .restart local v0    # "allowed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_0
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    #@15
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    #@18
    move-result v4

    #@19
    .line 215
    .local v4, "listenerCount":I
    add-int/lit8 v3, v4, -0x1

    #@1b
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    #@1d
    .line 216
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    #@1f
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@22
    move-result-object v8

    #@23
    check-cast v8, Ljava/lang/Integer;

    #@25
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@28
    move-result v2

    #@29
    .line 217
    .local v2, "grantUserId":I
    if-eq v2, v1, :cond_1

    #@2b
    .line 218
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    #@2d
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@30
    move-result-object v5

    #@31
    check-cast v5, Ljava/lang/String;

    #@33
    .line 219
    .local v5, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    #@35
    invoke-static {v8, v5, v2}, Lcom/android/server/vr/VrManagerService;->-wrap11(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    #@38
    .line 220
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    #@3a
    invoke-static {v8, v5}, Lcom/android/server/vr/VrManagerService;->-wrap12(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    #@3d
    .line 221
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    #@3f
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@42
    .line 215
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    #@44
    goto :goto_0

    #@45
    .line 225
    .end local v2    # "grantUserId":I
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@48
    move-result-object v7

    #@49
    .local v7, "pkg$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@4c
    move-result v8

    #@4d
    if-eqz v8, :cond_4

    #@4f
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@52
    move-result-object v6

    #@53
    check-cast v6, Ljava/lang/String;

    #@55
    .line 226
    .local v6, "pkg":Ljava/lang/String;
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@58
    move-result v8

    #@59
    if-nez v8, :cond_3

    #@5b
    .line 227
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    #@5d
    invoke-static {v8, v6, v1}, Lcom/android/server/vr/VrManagerService;->-wrap11(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    #@60
    .line 228
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    #@62
    invoke-static {v8, v6}, Lcom/android/server/vr/VrManagerService;->-wrap12(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    #@65
    .line 229
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    #@67
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@6a
    goto :goto_1

    #@6b
    .line 232
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6e
    move-result-object v7

    #@6f
    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@72
    move-result v8

    #@73
    if-eqz v8, :cond_6

    #@75
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@78
    move-result-object v6

    #@79
    check-cast v6, Ljava/lang/String;

    #@7b
    .line 233
    .restart local v6    # "pkg":Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@7e
    move-result v8

    #@7f
    if-nez v8, :cond_5

    #@81
    .line 234
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    #@83
    invoke-static {v8, v6}, Lcom/android/server/vr/VrManagerService;->-wrap9(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    #@86
    .line 235
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->this$0:Lcom/android/server/vr/VrManagerService;

    #@88
    invoke-static {v8, v6, v1}, Lcom/android/server/vr/VrManagerService;->-wrap8(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V

    #@8b
    .line 236
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mNotificationAccessPackageToUserId:Landroid/util/ArrayMap;

    #@8d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@90
    move-result-object v9

    #@91
    invoke-virtual {v8, v6, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@94
    goto :goto_2

    #@95
    .line 240
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    #@98
    .line 241
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    #@9b
    .line 242
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->mAllowedPackages:Landroid/util/SparseArray;

    #@9d
    invoke-virtual {v8, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@a0
    .line 205
    return-void
.end method
