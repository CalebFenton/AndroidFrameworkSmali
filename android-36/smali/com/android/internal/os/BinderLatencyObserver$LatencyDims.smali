.class public Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;
.super Ljava/lang/Object;
.source "BinderLatencyObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderLatencyObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LatencyDims"
.end annotation


# instance fields
.field private blacklist mBinderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHashCode:I

.field private blacklist mTransactionCode:I


# direct methods
.method private constructor blacklist <init>(Ljava/lang/Class;I)V
    .registers 4
    .param p2, "transactionCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;I)V"
        }
    .end annotation

    .line 329
    .local p1, "binderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/os/Binder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mHashCode:I

    .line 330
    iput-object p1, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mBinderClass:Ljava/lang/Class;

    .line 331
    iput p2, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mTransactionCode:I

    .line 332
    return-void
.end method

.method public static blacklist create(Ljava/lang/Class;I)Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;
    .registers 3
    .param p1, "transactionCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;I)",
            "Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;"
        }
    .end annotation

    .line 326
    .local p0, "binderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/os/Binder;>;"
    new-instance v0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;-><init>(Ljava/lang/Class;I)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 344
    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    instance-of v1, p1, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;

    if-nez v1, :cond_8

    goto :goto_1d

    .line 347
    :cond_8
    move-object v1, p1

    check-cast v1, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;

    .line 348
    .local v1, "o":Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;
    iget v2, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mTransactionCode:I

    invoke-virtual {v1}, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->getTransactionCode()I

    move-result v3

    if-ne v2, v3, :cond_1c

    iget-object v2, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mBinderClass:Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->getBinderClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0

    .line 345
    .end local v1    # "o":Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;
    :cond_1d
    :goto_1d
    return v0
.end method

.method public blacklist getBinderClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mBinderClass:Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist getTransactionCode()I
    .registers 2

    .line 339
    iget v0, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mTransactionCode:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 353
    iget v0, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mHashCode:I

    if-eqz v0, :cond_7

    .line 354
    iget v0, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mHashCode:I

    return v0

    .line 356
    :cond_7
    iget v0, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mTransactionCode:I

    .line 357
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mBinderClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 358
    .end local v0    # "hash":I
    .local v1, "hash":I
    iput v1, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mHashCode:I

    .line 359
    return v1
.end method
