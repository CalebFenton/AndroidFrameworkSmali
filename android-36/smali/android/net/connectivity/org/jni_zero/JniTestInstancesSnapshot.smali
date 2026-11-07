.class public Landroid/net/connectivity/org/jni_zero/JniTestInstancesSnapshot;
.super Ljava/lang/Object;
.source "JniTestInstancesSnapshot.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist mValues:[Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 10
    return-void
.end method

.method private constructor blacklist <init>([Ljava/lang/Object;)V
    .registers 2
    .param p1, "values"    # [Ljava/lang/Object;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Landroid/net/connectivity/org/jni_zero/JniTestInstancesSnapshot;->mValues:[Ljava/lang/Object;

    .line 15
    return-void
.end method

.method public static blacklist clearAllForTesting()V
    .registers 2

    .line 57
    new-instance v0, Landroid/net/connectivity/org/jni_zero/JniTestInstancesSnapshot;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroid/net/connectivity/org/jni_zero/JniTestInstancesSnapshot;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/net/connectivity/org/jni_zero/JniTestInstancesSnapshot;->restoreSnapshotForTesting(Landroid/net/connectivity/org/jni_zero/JniTestInstancesSnapshot;)V

    .line 58
    return-void
.end method

.method public static blacklist restoreSnapshotForTesting(Landroid/net/connectivity/org/jni_zero/JniTestInstancesSnapshot;)V
    .registers 9
    .param p0, "overrides"    # Landroid/net/connectivity/org/jni_zero/JniTestInstancesSnapshot;

    .line 36
    const-class v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    monitor-enter v0

    .line 37
    :try_start_3
    iget-object v1, p0, Landroid/net/connectivity/org/jni_zero/JniTestInstancesSnapshot;->mValues:[Ljava/lang/Object;

    .line 38
    .local v1, "snapshotValues":[Ljava/lang/Object;
    sget-object v2, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->sAllOverrides:Ljava/util/ArrayList;

    .line 39
    .local v2, "holders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;>;"
    array-length v3, v1

    .line 40
    .local v3, "snapshotSize":I
    if-nez v2, :cond_d

    .line 41
    nop

    .line 42
    monitor-exit v0

    return-void

    .line 44
    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 45
    .local v4, "holdersSize":I
    nop

    .line 46
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_13
    if-ge v5, v3, :cond_22

    .line 47
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    aget-object v7, v1, v5

    iput-object v7, v6, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    .line 46
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 49
    .end local v5    # "i":I
    :cond_22
    move v5, v3

    .restart local v5    # "i":I
    :goto_23
    if-ge v5, v4, :cond_31

    .line 50
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    .line 49
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 52
    .end local v1    # "snapshotValues":[Ljava/lang/Object;
    .end local v2    # "holders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;>;"
    .end local v3    # "snapshotSize":I
    .end local v4    # "holdersSize":I
    .end local v5    # "i":I
    :cond_31
    monitor-exit v0

    .line 53
    return-void

    .line 52
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public static blacklist snapshotOverridesForTesting()Landroid/net/connectivity/org/jni_zero/JniTestInstancesSnapshot;
    .registers 6

    .line 19
    const-class v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    monitor-enter v0

    .line 20
    :try_start_3
    sget-object v1, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->sAllOverrides:Ljava/util/ArrayList;

    .line 21
    .local v1, "holders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;>;"
    if-nez v1, :cond_11

    .line 22
    new-instance v2, Landroid/net/connectivity/org/jni_zero/JniTestInstancesSnapshot;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v2, v3}, Landroid/net/connectivity/org/jni_zero/JniTestInstancesSnapshot;-><init>([Ljava/lang/Object;)V

    monitor-exit v0

    return-object v2

    .line 24
    :cond_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Object;

    .line 25
    .local v2, "overrideValues":[Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 26
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    if-ge v4, v3, :cond_2b

    .line 27
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    iget-object v5, v5, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    aput-object v5, v2, v4

    .line 26
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 30
    .end local v4    # "i":I
    :cond_2b
    new-instance v4, Landroid/net/connectivity/org/jni_zero/JniTestInstancesSnapshot;

    invoke-direct {v4, v2}, Landroid/net/connectivity/org/jni_zero/JniTestInstancesSnapshot;-><init>([Ljava/lang/Object;)V

    monitor-exit v0

    return-object v4

    .line 31
    .end local v1    # "holders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;>;"
    .end local v2    # "overrideValues":[Ljava/lang/Object;
    .end local v3    # "size":I
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method
