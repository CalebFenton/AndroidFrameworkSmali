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
.field private mTimeoutMs:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "timeoutMs"    # I

    #@0
    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    #@3
    .line 140
    iput p1, p0, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->mTimeoutMs:I

    #@5
    .line 139
    return-void
.end method


# virtual methods
.method public getTimeoutMs()I
    .locals 1

    #@0
    .prologue
    .line 148
    iget v0, p0, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->mTimeoutMs:I

    #@2
    return v0
.end method
