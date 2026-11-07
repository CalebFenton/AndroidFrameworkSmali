.class public final Landroid/adservices/common/KeyedFrequencyCap$Builder;
.super Ljava/lang/Object;
.source "KeyedFrequencyCap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/common/KeyedFrequencyCap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdCounterKey:I

.field private blacklist mInterval:Ljava/time/Duration;

.field private blacklist mMaxCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdCounterKey(Landroid/adservices/common/KeyedFrequencyCap$Builder;)I
    .registers 1

    iget p0, p0, Landroid/adservices/common/KeyedFrequencyCap$Builder;->mAdCounterKey:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInterval(Landroid/adservices/common/KeyedFrequencyCap$Builder;)Ljava/time/Duration;
    .registers 1

    iget-object p0, p0, Landroid/adservices/common/KeyedFrequencyCap$Builder;->mInterval:Ljava/time/Duration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxCount(Landroid/adservices/common/KeyedFrequencyCap$Builder;)I
    .registers 1

    iget p0, p0, Landroid/adservices/common/KeyedFrequencyCap$Builder;->mMaxCount:I

    return p0
.end method

.method public constructor whitelist <init>(IILjava/time/Duration;)V
    .registers 10
    .param p1, "adCounterKey"    # I
    .param p2, "maxCount"    # I
    .param p3, "interval"    # Ljava/time/Duration;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    .line 230
    :goto_a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 229
    const-string v4, "KeyedFrequencyCap max count %d must be strictly positive"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 231
    const-string v2, "KeyedFrequencyCap interval must not be null"

    invoke-static {p3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 232
    nop

    .line 233
    invoke-virtual {p3}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_29

    move v2, v0

    goto :goto_2a

    :cond_29
    move v2, v1

    :goto_2a
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v3

    .line 232
    const-string v4, "KeyedFrequencyCap interval %s must be strictly positive"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 234
    nop

    .line 235
    invoke-virtual {p3}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v2

    sget-object v4, Landroid/adservices/common/KeyedFrequencyCap;->MAX_INTERVAL:Ljava/time/Duration;

    invoke-virtual {v4}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_43

    goto :goto_44

    :cond_43
    move v0, v1

    :goto_44
    sget-object v1, Landroid/adservices/common/KeyedFrequencyCap;->MAX_INTERVAL:Ljava/time/Duration;

    filled-new-array {p3, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 234
    const-string v2, "KeyedFrequencyCap interval %s must be no greater than %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 240
    iput p1, p0, Landroid/adservices/common/KeyedFrequencyCap$Builder;->mAdCounterKey:I

    .line 241
    iput p2, p0, Landroid/adservices/common/KeyedFrequencyCap$Builder;->mMaxCount:I

    .line 242
    iput-object p3, p0, Landroid/adservices/common/KeyedFrequencyCap$Builder;->mInterval:Ljava/time/Duration;

    .line 243
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/common/KeyedFrequencyCap;
    .registers 3

    .line 292
    new-instance v0, Landroid/adservices/common/KeyedFrequencyCap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/common/KeyedFrequencyCap;-><init>(Landroid/adservices/common/KeyedFrequencyCap$Builder;Landroid/adservices/common/KeyedFrequencyCap-IA;)V

    return-object v0
.end method

.method public whitelist setAdCounterKey(I)Landroid/adservices/common/KeyedFrequencyCap$Builder;
    .registers 2
    .param p1, "adCounterKey"    # I

    .line 252
    iput p1, p0, Landroid/adservices/common/KeyedFrequencyCap$Builder;->mAdCounterKey:I

    .line 253
    return-object p0
.end method

.method public whitelist setInterval(Ljava/time/Duration;)Landroid/adservices/common/KeyedFrequencyCap$Builder;
    .registers 9
    .param p1, "interval"    # Ljava/time/Duration;

    .line 277
    const-string v0, "KeyedFrequencyCap interval must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    nop

    .line 279
    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    .line 278
    const-string v4, "KeyedFrequencyCap interval %s must be strictly positive"

    invoke-static {v0, v4, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 280
    nop

    .line 281
    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v3

    sget-object v0, Landroid/adservices/common/KeyedFrequencyCap;->MAX_INTERVAL:Ljava/time/Duration;

    invoke-virtual {v0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    sget-object v0, Landroid/adservices/common/KeyedFrequencyCap;->MAX_INTERVAL:Ljava/time/Duration;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 280
    const-string v2, "KeyedFrequencyCap interval %s must be no greater than %s"

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 285
    iput-object p1, p0, Landroid/adservices/common/KeyedFrequencyCap$Builder;->mInterval:Ljava/time/Duration;

    .line 286
    return-object p0
.end method

.method public whitelist setMaxCount(I)Landroid/adservices/common/KeyedFrequencyCap$Builder;
    .registers 5
    .param p1, "maxCount"    # I

    .line 263
    if-lez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 264
    :goto_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 263
    const-string v2, "KeyedFrequencyCap max count %d must be strictly positive"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 265
    iput p1, p0, Landroid/adservices/common/KeyedFrequencyCap$Builder;->mMaxCount:I

    .line 266
    return-object p0
.end method
