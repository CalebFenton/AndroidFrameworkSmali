.class public Lcom/android/server/fingerprint/FingerprintUtils;
.super Ljava/lang/Object;
.source "FingerprintUtils.java"


# static fields
.field private static final FP_ERROR_VIBRATE_PATTERN:[J

.field private static final FP_SUCCESS_VIBRATE_PATTERN:[J

.field private static sInstance:Lcom/android/server/fingerprint/FingerprintUtils;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/fingerprint/FingerprintsUserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 33
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [J

    #@3
    fill-array-data v0, :array_0

    #@6
    sput-object v0, Lcom/android/server/fingerprint/FingerprintUtils;->FP_ERROR_VIBRATE_PATTERN:[J

    #@8
    .line 34
    const/4 v0, 0x2

    #@9
    new-array v0, v0, [J

    #@b
    fill-array-data v0, :array_1

    #@e
    sput-object v0, Lcom/android/server/fingerprint/FingerprintUtils;->FP_SUCCESS_VIBRATE_PATTERN:[J

    #@10
    .line 36
    new-instance v0, Ljava/lang/Object;

    #@12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@15
    sput-object v0, Lcom/android/server/fingerprint/FingerprintUtils;->sInstanceLock:Ljava/lang/Object;

    #@17
    .line 31
    return-void

    #@18
    .line 33
    :array_0
    .array-data 8
        0x0
        0x1e
        0x64
        0x1e
    .end array-data

    #@2c
    .line 34
    :array_1
    .array-data 8
        0x0
        0x1e
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintUtils;->mUsers:Landroid/util/SparseArray;

    #@a
    .line 51
    return-void
.end method

.method public static getInstance()Lcom/android/server/fingerprint/FingerprintUtils;
    .locals 2

    #@0
    .prologue
    .line 43
    sget-object v1, Lcom/android/server/fingerprint/FingerprintUtils;->sInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 44
    :try_start_0
    sget-object v0, Lcom/android/server/fingerprint/FingerprintUtils;->sInstance:Lcom/android/server/fingerprint/FingerprintUtils;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 45
    new-instance v0, Lcom/android/server/fingerprint/FingerprintUtils;

    #@9
    invoke-direct {v0}, Lcom/android/server/fingerprint/FingerprintUtils;-><init>()V

    #@c
    sput-object v0, Lcom/android/server/fingerprint/FingerprintUtils;->sInstance:Lcom/android/server/fingerprint/FingerprintUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit v1

    #@f
    .line 48
    sget-object v0, Lcom/android/server/fingerprint/FingerprintUtils;->sInstance:Lcom/android/server/fingerprint/FingerprintUtils;

    #@11
    return-object v0

    #@12
    .line 43
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method private getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 85
    monitor-enter p0

    #@1
    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintUtils;->mUsers:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/fingerprint/FingerprintsUserState;

    #@9
    .line 87
    .local v0, "state":Lcom/android/server/fingerprint/FingerprintsUserState;
    if-nez v0, :cond_0

    #@b
    .line 88
    new-instance v0, Lcom/android/server/fingerprint/FingerprintsUserState;

    #@d
    .end local v0    # "state":Lcom/android/server/fingerprint/FingerprintsUserState;
    invoke-direct {v0, p1, p2}, Lcom/android/server/fingerprint/FingerprintsUserState;-><init>(Landroid/content/Context;I)V

    #@10
    .line 89
    .restart local v0    # "state":Lcom/android/server/fingerprint/FingerprintsUserState;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintUtils;->mUsers:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_0
    monitor-exit p0

    #@16
    .line 91
    return-object v0

    #@17
    .line 85
    .end local v0    # "state":Lcom/android/server/fingerprint/FingerprintsUserState;
    :catchall_0
    move-exception v1

    #@18
    monitor-exit p0

    #@19
    throw v1
.end method

.method public static vibrateFingerprintError(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 71
    const-class v1, Landroid/os/Vibrator;

    #@2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/os/Vibrator;

    #@8
    .line 72
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    #@a
    .line 73
    sget-object v1, Lcom/android/server/fingerprint/FingerprintUtils;->FP_ERROR_VIBRATE_PATTERN:[J

    #@c
    const/4 v2, -0x1

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    #@10
    .line 70
    :cond_0
    return-void
.end method

.method public static vibrateFingerprintSuccess(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 78
    const-class v1, Landroid/os/Vibrator;

    #@2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/os/Vibrator;

    #@8
    .line 79
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    #@a
    .line 80
    sget-object v1, Lcom/android/server/fingerprint/FingerprintUtils;->FP_SUCCESS_VIBRATE_PATTERN:[J

    #@c
    const/4 v2, -0x1

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    #@10
    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public addFingerprintForUser(Landroid/content/Context;II)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "fingerId"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 59
    invoke-direct {p0, p1, p3}, Lcom/android/server/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2, p3}, Lcom/android/server/fingerprint/FingerprintsUserState;->addFingerprint(II)V

    #@7
    .line 58
    return-void
.end method

.method public getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintsUserState;->getFingerprints()Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public removeFingerprintIdForUser(Landroid/content/Context;II)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "fingerId"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 63
    invoke-direct {p0, p1, p3}, Lcom/android/server/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2}, Lcom/android/server/fingerprint/FingerprintsUserState;->removeFingerprint(I)V

    #@7
    .line 62
    return-void
.end method

.method public renameFingerprintForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "fingerId"    # I
    .param p3, "userId"    # I
    .param p4, "name"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p1, p3}, Lcom/android/server/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/fingerprint/FingerprintsUserState;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2, p4}, Lcom/android/server/fingerprint/FingerprintsUserState;->renameFingerprint(ILjava/lang/CharSequence;)V

    #@7
    .line 66
    return-void
.end method
