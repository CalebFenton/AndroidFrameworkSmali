.class public Lcom/android/server/LockSettingsStrongAuth;
.super Ljava/lang/Object;
.source "LockSettingsStrongAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsStrongAuth$1;
    }
.end annotation


# static fields
.field private static final MSG_REGISTER_TRACKER:I = 0x2

.field private static final MSG_REMOVE_USER:I = 0x4

.field private static final MSG_REQUIRE_STRONG_AUTH:I = 0x1

.field private static final MSG_UNREGISTER_TRACKER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LockSettings"


# instance fields
.field private final mDefaultStrongAuthFlags:I

.field private final mHandler:Landroid/os/Handler;

.field private final mStrongAuthForUser:Landroid/util/SparseIntArray;

.field private final mStrongAuthTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/trust/IStrongAuthTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V
    .locals 0
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStrongAuth;->handleAddStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V
    .locals 0
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStrongAuth;->handleRemoveStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/LockSettingsStrongAuth;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStrongAuth;->handleRemoveUser(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/LockSettingsStrongAuth;II)V
    .locals 0
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsStrongAuth;->handleRequireStrongAuth(II)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    #@a
    .line 49
    new-instance v0, Landroid/util/SparseIntArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    #@11
    .line 154
    new-instance v0, Lcom/android/server/LockSettingsStrongAuth$1;

    #@13
    invoke-direct {v0, p0}, Lcom/android/server/LockSettingsStrongAuth$1;-><init>(Lcom/android/server/LockSettingsStrongAuth;)V

    #@16
    iput-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    #@18
    .line 53
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    #@1e
    .line 52
    return-void
.end method

.method private handleAddStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 6
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    #@0
    .prologue
    .line 57
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v4

    #@7
    if-ge v1, v4, :cond_1

    #@9
    .line 58
    iget-object v4, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v4

    #@f
    check-cast v4, Landroid/app/trust/IStrongAuthTracker;

    #@11
    invoke-interface {v4}, Landroid/app/trust/IStrongAuthTracker;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v4

    #@15
    invoke-interface {p1}, Landroid/app/trust/IStrongAuthTracker;->asBinder()Landroid/os/IBinder;

    #@18
    move-result-object v5

    #@19
    if-ne v4, v5, :cond_0

    #@1b
    .line 59
    return-void

    #@1c
    .line 57
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 62
    :cond_1
    iget-object v4, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    .line 64
    const/4 v1, 0x0

    #@25
    :goto_1
    iget-object v4, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    #@27
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    #@2a
    move-result v4

    #@2b
    if-ge v1, v4, :cond_2

    #@2d
    .line 65
    iget-object v4, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    #@2f
    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@32
    move-result v2

    #@33
    .line 66
    .local v2, "key":I
    iget-object v4, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    #@35
    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@38
    move-result v3

    #@39
    .line 68
    .local v3, "value":I
    :try_start_0
    invoke-interface {p1, v3, v2}, Landroid/app/trust/IStrongAuthTracker;->onStrongAuthRequiredChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    .line 64
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 69
    :catch_0
    move-exception v0

    #@40
    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "LockSettings"

    #@43
    const-string/jumbo v5, "Exception while adding StrongAuthTracker."

    #@46
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@49
    goto :goto_2

    #@4a
    .line 56
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "key":I
    .end local v3    # "value":I
    :cond_2
    return-void
.end method

.method private handleRemoveStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 3
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    #@0
    .prologue
    .line 76
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 77
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/app/trust/IStrongAuthTracker;

    #@11
    invoke-interface {v1}, Landroid/app/trust/IStrongAuthTracker;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v1

    #@15
    invoke-interface {p1}, Landroid/app/trust/IStrongAuthTracker;->asBinder()Landroid/os/IBinder;

    #@18
    move-result-object v2

    #@19
    if-ne v1, v2, :cond_0

    #@1b
    .line 78
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@20
    .line 79
    return-void

    #@21
    .line 76
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 75
    :cond_1
    return-void
.end method

.method private handleRemoveUser(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@5
    move-result v0

    #@6
    .line 108
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@8
    .line 109
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    #@a
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    #@d
    .line 110
    iget v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    #@f
    invoke-direct {p0, v1, p1}, Lcom/android/server/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    #@12
    .line 106
    :cond_0
    return-void
.end method

.method private handleRequireStrongAuth(II)V
    .locals 3
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 85
    const/4 v2, -0x1

    #@1
    if-ne p2, v2, :cond_0

    #@3
    .line 86
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    #@6
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    #@9
    move-result v2

    #@a
    if-ge v0, v2, :cond_1

    #@c
    .line 87
    iget-object v2, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    #@e
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@11
    move-result v1

    #@12
    .line 88
    .local v1, "key":I
    invoke-direct {p0, p1, v1}, Lcom/android/server/LockSettingsStrongAuth;->handleRequireStrongAuthOneUser(II)V

    #@15
    .line 86
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 91
    .end local v0    # "i":I
    .end local v1    # "key":I
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsStrongAuth;->handleRequireStrongAuthOneUser(II)V

    #@1b
    .line 84
    :cond_1
    return-void
.end method

.method private handleRequireStrongAuthOneUser(II)V
    .locals 4
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 96
    iget-object v2, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    #@3
    iget v3, p0, Lcom/android/server/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    #@5
    invoke-virtual {v2, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    #@8
    move-result v1

    #@9
    .line 97
    .local v1, "oldValue":I
    if-nez p1, :cond_1

    #@b
    .line 100
    .local v0, "newValue":I
    :goto_0
    if-eq v1, v0, :cond_0

    #@d
    .line 101
    iget-object v2, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    #@f
    invoke-virtual {v2, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    #@12
    .line 102
    invoke-direct {p0, v0, p2}, Lcom/android/server/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    #@15
    .line 95
    :cond_0
    return-void

    #@16
    .line 99
    .end local v0    # "newValue":I
    :cond_1
    or-int v0, v1, p1

    #@18
    goto :goto_0
.end method

.method private notifyStrongAuthTrackers(II)V
    .locals 5
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 115
    const/4 v2, 0x0

    #@1
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v3

    #@7
    if-ge v2, v3, :cond_0

    #@9
    .line 117
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/app/trust/IStrongAuthTracker;

    #@11
    invoke-interface {v3, p1, p2}, Landroid/app/trust/IStrongAuthTracker;->onStrongAuthRequiredChanged(II)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 115
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 122
    :catch_0
    move-exception v1

    #@18
    .line 123
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LockSettings"

    #@1b
    const-string/jumbo v4, "Exception while notifying StrongAuthTracker."

    #@1e
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_1

    #@22
    .line 118
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@23
    .line 119
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string/jumbo v3, "LockSettings"

    #@26
    const-string/jumbo v4, "Removing dead StrongAuthTracker."

    #@29
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 120
    iget-object v3, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@31
    .line 121
    add-int/lit8 v2, v2, -0x1

    #@33
    goto :goto_1

    #@34
    .line 114
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :cond_0
    return-void
.end method


# virtual methods
.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 2
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 128
    return-void
.end method

.method public removeUser(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x4

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@b
    .line 136
    return-void
.end method

.method public reportUnlock(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 151
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Lcom/android/server/LockSettingsStrongAuth;->requireStrongAuth(II)V

    #@4
    .line 150
    return-void
.end method

.method public requireStrongAuth(II)V
    .locals 2
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 141
    const/4 v0, -0x1

    #@1
    if-eq p2, v0, :cond_0

    #@3
    if-ltz p2, :cond_1

    #@5
    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    #@7
    const/4 v1, 0x1

    #@8
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 140
    return-void

    #@10
    .line 145
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    .line 146
    const-string/jumbo v1, "userId must be an explicit user id or USER_ALL"

    #@15
    .line 145
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 2
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 132
    return-void
.end method
