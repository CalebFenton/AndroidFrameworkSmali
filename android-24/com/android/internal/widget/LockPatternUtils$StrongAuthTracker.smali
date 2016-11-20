.class public Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrongAuthTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$1;,
        Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;
    }
.end annotation


# static fields
.field private static final ALLOWING_FINGERPRINT:I = 0x14

.field public static final SOME_AUTH_REQUIRED_AFTER_USER_REQUEST:I = 0x4

.field public static final SOME_AUTH_REQUIRED_AFTER_WRONG_CREDENTIAL:I = 0x10

.field public static final STRONG_AUTH_NOT_REQUIRED:I = 0x0

.field public static final STRONG_AUTH_REQUIRED_AFTER_BOOT:I = 0x1

.field public static final STRONG_AUTH_REQUIRED_AFTER_DPM_LOCK_NOW:I = 0x2

.field public static final STRONG_AUTH_REQUIRED_AFTER_LOCKOUT:I = 0x8


# instance fields
.field private final mDefaultStrongAuthFlags:I

.field private final mHandler:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;

.field private final mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

.field protected final mStub:Landroid/app/trust/IStrongAuthTracker$Stub;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mHandler:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1531
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    #@7
    .line 1530
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1526
    new-instance v0, Landroid/util/SparseIntArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

    #@a
    .line 1597
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$1;

    #@c
    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$1;-><init>(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    #@f
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    #@11
    .line 1540
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;

    #@13
    invoke-direct {v0, p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;-><init>(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;Landroid/os/Looper;)V

    #@16
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mHandler:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;

    #@18
    .line 1541
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mDefaultStrongAuthFlags:I

    #@1e
    .line 1539
    return-void
.end method

.method public static getDefaultFlags(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1545
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v1

    #@4
    .line 1546
    const v2, 0x11200ab

    #@7
    .line 1545
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@a
    move-result v0

    #@b
    .line 1547
    .local v0, "strongAuthRequired":Z
    if-eqz v0, :cond_0

    #@d
    const/4 v1, 0x1

    #@e
    :goto_0
    return v1

    #@f
    :cond_0
    const/4 v1, 0x0

    #@10
    goto :goto_0
.end method


# virtual methods
.method public getStrongAuthForUser(I)I
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1558
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

    #@2
    iget v1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mDefaultStrongAuthFlags:I

    #@4
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method protected handleStrongAuthRequiredChanged(II)V
    .locals 2
    .param p1, "strongAuthFlags"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1585
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    #@3
    move-result v0

    #@4
    .line 1586
    .local v0, "oldValue":I
    if-eq p1, v0, :cond_0

    #@6
    .line 1587
    iget v1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mDefaultStrongAuthFlags:I

    #@8
    if-ne p1, v1, :cond_1

    #@a
    .line 1588
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

    #@c
    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    #@f
    .line 1592
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->onStrongAuthRequiredChanged(I)V

    #@12
    .line 1584
    :cond_0
    return-void

    #@13
    .line 1590
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

    #@15
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    #@18
    goto :goto_0
.end method

.method public isFingerprintAllowedForUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1574
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    #@4
    move-result v1

    #@5
    and-int/lit8 v1, v1, -0x15

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public isTrustAllowedForUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1566
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public onStrongAuthRequiredChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1580
    return-void
.end method
