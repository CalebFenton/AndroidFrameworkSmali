.class public final Landroid/adservices/common/FrequencyCapFilters$Builder;
.super Ljava/lang/Object;
.source "FrequencyCapFilters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/common/FrequencyCapFilters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mKeyedFrequencyCapsForClickEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/common/KeyedFrequencyCap;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mKeyedFrequencyCapsForImpressionEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/common/KeyedFrequencyCap;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mKeyedFrequencyCapsForViewEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/common/KeyedFrequencyCap;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mKeyedFrequencyCapsForWinEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/common/KeyedFrequencyCap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmKeyedFrequencyCapsForClickEvents(Landroid/adservices/common/FrequencyCapFilters$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/adservices/common/FrequencyCapFilters$Builder;->mKeyedFrequencyCapsForClickEvents:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyedFrequencyCapsForImpressionEvents(Landroid/adservices/common/FrequencyCapFilters$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/adservices/common/FrequencyCapFilters$Builder;->mKeyedFrequencyCapsForImpressionEvents:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyedFrequencyCapsForViewEvents(Landroid/adservices/common/FrequencyCapFilters$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/adservices/common/FrequencyCapFilters$Builder;->mKeyedFrequencyCapsForViewEvents:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyedFrequencyCapsForWinEvents(Landroid/adservices/common/FrequencyCapFilters$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/adservices/common/FrequencyCapFilters$Builder;->mKeyedFrequencyCapsForWinEvents:Ljava/util/List;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/adservices/common/FrequencyCapFilters$Builder;->mKeyedFrequencyCapsForWinEvents:Ljava/util/List;

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/adservices/common/FrequencyCapFilters$Builder;->mKeyedFrequencyCapsForImpressionEvents:Ljava/util/List;

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/adservices/common/FrequencyCapFilters$Builder;->mKeyedFrequencyCapsForViewEvents:Ljava/util/List;

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/adservices/common/FrequencyCapFilters$Builder;->mKeyedFrequencyCapsForClickEvents:Ljava/util/List;

    .line 371
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/common/FrequencyCapFilters;
    .registers 5

    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, "numFrequencyCapFilters":I
    iget-object v1, p0, Landroid/adservices/common/FrequencyCapFilters$Builder;->mKeyedFrequencyCapsForWinEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 458
    iget-object v1, p0, Landroid/adservices/common/FrequencyCapFilters$Builder;->mKeyedFrequencyCapsForImpressionEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 459
    iget-object v1, p0, Landroid/adservices/common/FrequencyCapFilters$Builder;->mKeyedFrequencyCapsForViewEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 460
    iget-object v1, p0, Landroid/adservices/common/FrequencyCapFilters$Builder;->mKeyedFrequencyCapsForClickEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 462
    const/16 v1, 0x14

    if-gt v0, v1, :cond_23

    const/4 v2, 0x1

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    .line 465
    :goto_24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 462
    const-string v3, "FrequencyCapFilters should have no more than %d filters"

    invoke-static {v2, v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 467
    new-instance v1, Landroid/adservices/common/FrequencyCapFilters;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/adservices/common/FrequencyCapFilters;-><init>(Landroid/adservices/common/FrequencyCapFilters$Builder;Landroid/adservices/common/FrequencyCapFilters-IA;)V

    return-object v1
.end method

.method public whitelist setKeyedFrequencyCapsForClickEvents(Ljava/util/List;)Landroid/adservices/common/FrequencyCapFilters$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/adservices/common/KeyedFrequencyCap;",
            ">;)",
            "Landroid/adservices/common/FrequencyCapFilters$Builder;"
        }
    .end annotation

    .line 437
    .local p1, "keyedFrequencyCapsForClickEvents":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/common/KeyedFrequencyCap;>;"
    const-string v0, "FrequencyCapFilters should not set null list of KeyedFrequencyCaps"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 440
    nop

    .line 441
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 440
    const-string v1, "FrequencyCapFilters should not contain null KeyedFrequencyCaps"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 443
    iput-object p1, p0, Landroid/adservices/common/FrequencyCapFilters$Builder;->mKeyedFrequencyCapsForClickEvents:Ljava/util/List;

    .line 444
    return-object p0
.end method

.method public whitelist setKeyedFrequencyCapsForImpressionEvents(Ljava/util/List;)Landroid/adservices/common/FrequencyCapFilters$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/adservices/common/KeyedFrequencyCap;",
            ">;)",
            "Landroid/adservices/common/FrequencyCapFilters$Builder;"
        }
    .end annotation

    .line 400
    .local p1, "keyedFrequencyCapsForImpressionEvents":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/common/KeyedFrequencyCap;>;"
    const-string v0, "FrequencyCapFilters should not set null list of KeyedFrequencyCaps"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 403
    nop

    .line 404
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 403
    const-string v1, "FrequencyCapFilters should not contain null KeyedFrequencyCaps"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 406
    iput-object p1, p0, Landroid/adservices/common/FrequencyCapFilters$Builder;->mKeyedFrequencyCapsForImpressionEvents:Ljava/util/List;

    .line 407
    return-object p0
.end method

.method public whitelist setKeyedFrequencyCapsForViewEvents(Ljava/util/List;)Landroid/adservices/common/FrequencyCapFilters$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/adservices/common/KeyedFrequencyCap;",
            ">;)",
            "Landroid/adservices/common/FrequencyCapFilters$Builder;"
        }
    .end annotation

    .line 419
    .local p1, "keyedFrequencyCapsForViewEvents":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/common/KeyedFrequencyCap;>;"
    const-string v0, "FrequencyCapFilters should not set null list of KeyedFrequencyCaps"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 421
    nop

    .line 422
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 421
    const-string v1, "FrequencyCapFilters should not contain null KeyedFrequencyCaps"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 424
    iput-object p1, p0, Landroid/adservices/common/FrequencyCapFilters$Builder;->mKeyedFrequencyCapsForViewEvents:Ljava/util/List;

    .line 425
    return-object p0
.end method

.method public whitelist setKeyedFrequencyCapsForWinEvents(Ljava/util/List;)Landroid/adservices/common/FrequencyCapFilters$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/adservices/common/KeyedFrequencyCap;",
            ">;)",
            "Landroid/adservices/common/FrequencyCapFilters$Builder;"
        }
    .end annotation

    .line 382
    .local p1, "keyedFrequencyCapsForWinEvents":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/common/KeyedFrequencyCap;>;"
    const-string v0, "FrequencyCapFilters should not set null list of KeyedFrequencyCaps"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 384
    nop

    .line 385
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 384
    const-string v1, "FrequencyCapFilters should not contain null KeyedFrequencyCaps"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 387
    iput-object p1, p0, Landroid/adservices/common/FrequencyCapFilters$Builder;->mKeyedFrequencyCapsForWinEvents:Ljava/util/List;

    .line 388
    return-object p0
.end method
