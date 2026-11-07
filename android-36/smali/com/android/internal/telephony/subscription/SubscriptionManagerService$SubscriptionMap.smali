.class public Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionMap;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "SubscriptionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/subscription/SubscriptionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubscriptionMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 354
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 1

    .line 357
    invoke-super {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 358
    invoke-static {}, Landroid/telephony/SubscriptionManager;->invalidateSubscriptionManagerServiceCaches()V

    return-void
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 363
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 364
    invoke-static {p0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 365
    invoke-static {}, Landroid/telephony/SubscriptionManager;->invalidateSubscriptionManagerServiceCaches()V

    :cond_d
    return-object p0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 372
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 374
    invoke-static {}, Landroid/telephony/SubscriptionManager;->invalidateSubscriptionManagerServiceCaches()V

    :cond_9
    return-object p0
.end method
