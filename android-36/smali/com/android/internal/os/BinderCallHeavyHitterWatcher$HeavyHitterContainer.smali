.class public final Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;
.super Ljava/lang/Object;
.source "BinderCallHeavyHitterWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeavyHitterContainer"
.end annotation


# instance fields
.field public blacklist mClass:Ljava/lang/Class;

.field public blacklist mCode:I

.field public blacklist mFrequency:F

.field public blacklist mUid:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;)V
    .registers 3
    .param p1, "other"    # Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iget v0, p1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mUid:I

    iput v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mUid:I

    .line 185
    iget-object v0, p1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mClass:Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mClass:Ljava/lang/Class;

    .line 186
    iget v0, p1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mCode:I

    iput v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mCode:I

    .line 187
    iget v0, p1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mFrequency:F

    iput v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mFrequency:F

    .line 188
    return-void
.end method

.method static blacklist hashCode(ILjava/lang/Class;I)I
    .registers 6
    .param p0, "uid"    # I
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "code"    # I

    .line 209
    move v0, p0

    .line 210
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 211
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x1f

    add-int/2addr v0, p2

    .line 212
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 192
    const/4 v0, 0x0

    if-eqz p1, :cond_31

    instance-of v1, p1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    if-nez v1, :cond_8

    goto :goto_31

    .line 195
    :cond_8
    move-object v1, p1

    check-cast v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    .line 196
    .local v1, "o":Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;
    iget v2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mUid:I

    iget v3, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mUid:I

    if-ne v2, v3, :cond_2f

    iget-object v2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mClass:Ljava/lang/Class;

    iget-object v3, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mClass:Ljava/lang/Class;

    if-ne v2, v3, :cond_2f

    iget v2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mCode:I

    iget v3, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mCode:I

    if-ne v2, v3, :cond_2f

    iget v2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mFrequency:F

    iget v3, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mFrequency:F

    sub-float/2addr v2, v3

    .line 197
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3727c5ac    # 1.0E-5f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    nop

    .line 196
    :goto_30
    return v0

    .line 193
    .end local v1    # "o":Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;
    :cond_31
    :goto_31
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 202
    iget v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mUid:I

    iget-object v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mClass:Ljava/lang/Class;

    iget v2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->hashCode(ILjava/lang/Class;I)I

    move-result v0

    return v0
.end method
