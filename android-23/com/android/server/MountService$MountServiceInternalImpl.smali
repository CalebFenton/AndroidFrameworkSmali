.class final Lcom/android/server/MountService$MountServiceInternalImpl;
.super Landroid/os/storage/MountServiceInternal;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MountServiceInternalImpl"
.end annotation


# instance fields
.field private final mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method private constructor <init>(Lcom/android/server/MountService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/MountService;

    #@0
    .prologue
    .line 3419
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceInternalImpl;->this$0:Lcom/android/server/MountService;

    #@2
    invoke-direct {p0}, Landroid/os/storage/MountServiceInternal;-><init>()V

    #@5
    .line 3422
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@a
    .line 3421
    iput-object v0, p0, Lcom/android/server/MountService$MountServiceInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@c
    .line 3419
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$MountServiceInternalImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MountService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService$MountServiceInternalImpl;-><init>(Lcom/android/server/MountService;)V

    #@3
    return-void
.end method


# virtual methods
.method public addExternalStoragePolicy(Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;)V
    .locals 1
    .param p1, "policy"    # Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;

    #@0
    .prologue
    .line 3427
    iget-object v0, p0, Lcom/android/server/MountService$MountServiceInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 3425
    return-void
.end method

.method public getExternalStorageMountMode(ILjava/lang/String;)I
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3439
    const v0, 0x7fffffff

    #@4
    .line 3440
    .local v0, "mountMode":I
    iget-object v4, p0, Lcom/android/server/MountService$MountServiceInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    .local v2, "policy$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;

    #@16
    .line 3441
    .local v1, "policy":Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;
    invoke-interface {v1, p1, p2}, Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;->getMountMode(ILjava/lang/String;)I

    #@19
    move-result v3

    #@1a
    .line 3442
    .local v3, "policyMode":I
    if-nez v3, :cond_0

    #@1c
    .line 3443
    return v5

    #@1d
    .line 3445
    :cond_0
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    #@20
    move-result v0

    #@21
    goto :goto_0

    #@22
    .line 3447
    .end local v1    # "policy":Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;
    .end local v3    # "policyMode":I
    :cond_1
    const v4, 0x7fffffff

    #@25
    if-ne v0, v4, :cond_2

    #@27
    .line 3448
    return v5

    #@28
    .line 3450
    :cond_2
    return v0
.end method

.method public hasExternalStorage(ILjava/lang/String;)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 3456
    const/16 v3, 0x3e8

    #@3
    if-ne p1, v3, :cond_0

    #@5
    .line 3457
    return v4

    #@6
    .line 3460
    :cond_0
    iget-object v3, p0, Lcom/android/server/MountService$MountServiceInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@8
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "policy$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_2

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;

    #@18
    .line 3461
    .local v0, "policy":Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;
    invoke-interface {v0, p1, p2}, Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;->hasExternalStorage(ILjava/lang/String;)Z

    #@1b
    move-result v2

    #@1c
    .line 3462
    .local v2, "policyHasStorage":Z
    if-nez v2, :cond_1

    #@1e
    .line 3463
    const/4 v3, 0x0

    #@1f
    return v3

    #@20
    .line 3466
    .end local v0    # "policy":Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;
    .end local v2    # "policyHasStorage":Z
    :cond_2
    return v4
.end method

.method public onExternalStoragePolicyChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3432
    invoke-virtual {p0, p1, p2}, Lcom/android/server/MountService$MountServiceInternalImpl;->getExternalStorageMountMode(ILjava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 3433
    .local v0, "mountMode":I
    iget-object v1, p0, Lcom/android/server/MountService$MountServiceInternalImpl;->this$0:Lcom/android/server/MountService;

    #@6
    invoke-static {v1, p1, v0}, Lcom/android/server/MountService;->-wrap9(Lcom/android/server/MountService;II)V

    #@9
    .line 3431
    return-void
.end method
