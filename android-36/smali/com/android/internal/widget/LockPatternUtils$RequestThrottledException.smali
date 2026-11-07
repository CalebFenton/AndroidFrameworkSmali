.class public final Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
.super Ljava/lang/Exception;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestThrottledException"
.end annotation


# instance fields
.field private blacklist mTimeoutMs:I


# direct methods
.method public constructor greylist <init>(I)V
    .registers 2
    .param p1, "timeoutMs"    # I

    .line 277
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 278
    iput p1, p0, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->mTimeoutMs:I

    .line 279
    return-void
.end method


# virtual methods
.method public greylist getTimeoutMs()I
    .registers 2

    .line 287
    iget v0, p0, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->mTimeoutMs:I

    return v0
.end method
