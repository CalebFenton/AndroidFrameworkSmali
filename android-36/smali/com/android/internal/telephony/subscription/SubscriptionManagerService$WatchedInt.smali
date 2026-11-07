.class public Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;
.super Ljava/lang/Object;
.source "SubscriptionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/subscription/SubscriptionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WatchedInt"
.end annotation


# instance fields
.field protected blacklist mValue:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->mValue:I

    return-void
.end method


# virtual methods
.method public blacklist get()I
    .registers 1

    .line 399
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->mValue:I

    return p0
.end method

.method public blacklist set(I)Z
    .registers 3

    .line 410
    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->mValue:I

    if-eq v0, p1, :cond_b

    .line 411
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->mValue:I

    .line 412
    invoke-static {}, Landroid/telephony/SubscriptionManager;->invalidateSubscriptionManagerServiceCaches()V

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method
