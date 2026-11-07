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
        Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;,
        Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$StrongAuthFlags;
    }
.end annotation


# static fields
.field private static final blacklist ALLOWING_BIOMETRIC:I = 0x304

.field public static final blacklist SOME_AUTH_REQUIRED_AFTER_ADAPTIVE_AUTH_REQUEST:I = 0x200

.field public static final blacklist SOME_AUTH_REQUIRED_AFTER_TRUSTAGENT_EXPIRED:I = 0x100

.field public static final blacklist SOME_AUTH_REQUIRED_AFTER_USER_REQUEST:I = 0x4

.field public static final blacklist STRONG_AUTH_NOT_REQUIRED:I = 0x0

.field public static final blacklist STRONG_AUTH_REQUIRED_AFTER_BOOT:I = 0x1

.field public static final blacklist STRONG_AUTH_REQUIRED_AFTER_DPM_LOCK_NOW:I = 0x2

.field public static final blacklist STRONG_AUTH_REQUIRED_AFTER_LOCKOUT:I = 0x8

.field public static final blacklist STRONG_AUTH_REQUIRED_AFTER_NON_STRONG_BIOMETRICS_TIMEOUT:I = 0x80

.field public static final blacklist STRONG_AUTH_REQUIRED_AFTER_TIMEOUT:I = 0x10

.field public static final blacklist STRONG_AUTH_REQUIRED_AFTER_USER_LOCKDOWN:I = 0x20

.field public static final blacklist STRONG_AUTH_REQUIRED_FOR_UNATTENDED_UPDATE:I = 0x40


# instance fields
.field private final blacklist mDefaultIsNonStrongBiometricAllowed:Z

.field private final blacklist mDefaultStrongAuthFlags:I

.field private final blacklist mHandler:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;

.field private final blacklist mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

.field private final blacklist mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

.field private final blacklist mStub:Landroid/app/trust/IStrongAuthTracker$Stub;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mHandler:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1803
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 1804
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1794
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

    .line 1798
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 1800
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mDefaultIsNonStrongBiometricAllowed:Z

    .line 1900
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$1;-><init>(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    .line 1812
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;-><init>(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mHandler:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;

    .line 1813
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mDefaultStrongAuthFlags:I

    .line 1814
    return-void
.end method

.method public static blacklist getDefaultFlags(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1817
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110258

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1819
    .local v0, "strongAuthRequired":Z
    return v0
.end method


# virtual methods
.method public blacklist getStrongAuthForUser(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 1830
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mDefaultStrongAuthFlags:I

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public blacklist getStub()Landroid/app/trust/IStrongAuthTracker$Stub;
    .registers 2

    .line 1916
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    return-object v0
.end method

.method protected blacklist handleIsNonStrongBiometricAllowedChanged(ZI)V
    .registers 5
    .param p1, "allowed"    # Z
    .param p2, "userId"    # I

    .line 1889
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    move-result v0

    .line 1890
    .local v0, "oldValue":Z
    if-eq p1, v0, :cond_17

    .line 1891
    const/4 v1, 0x1

    if-ne p1, v1, :cond_f

    .line 1892
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_14

    .line 1894
    :cond_f
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1896
    :goto_14
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->onIsNonStrongBiometricAllowedChanged(I)V

    .line 1898
    :cond_17
    return-void
.end method

.method protected blacklist handleStrongAuthRequiredChanged(II)V
    .registers 5
    .param p1, "strongAuthFlags"    # I
    .param p2, "userId"    # I

    .line 1876
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    .line 1877
    .local v0, "oldValue":I
    if-eq p1, v0, :cond_18

    .line 1878
    iget v1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mDefaultStrongAuthFlags:I

    if-ne p1, v1, :cond_10

    .line 1879
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_15

    .line 1881
    :cond_10
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStrongAuthRequiredForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1883
    :goto_15
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->onStrongAuthRequiredChanged(I)V

    .line 1885
    :cond_18
    return-void
.end method

.method public blacklist isBiometricAllowedForUser(ZI)Z
    .registers 5
    .param p1, "isStrongBiometric"    # Z
    .param p2, "userId"    # I

    .line 1846
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    and-int/lit16 v0, v0, -0x305

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 1847
    .local v0, "allowed":Z
    :goto_b
    if-nez p1, :cond_12

    .line 1848
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 1850
    :cond_12
    return v0
.end method

.method public blacklist isNonStrongBiometricAllowedAfterIdleTimeout(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1858
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public blacklist isTrustAllowedForUser(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1838
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist onIsNonStrongBiometricAllowedChanged(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 1872
    return-void
.end method

.method public blacklist onStrongAuthRequiredChanged(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 1866
    return-void
.end method
