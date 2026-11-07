.class public final Landroid/adservices/common/AdData$Builder;
.super Ljava/lang/Object;
.source "AdData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/common/AdData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdCounterKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAdFilters:Landroid/adservices/common/AdFilters;

.field private blacklist mAdRenderId:Ljava/lang/String;

.field private blacklist mMetadata:Ljava/lang/String;

.field private blacklist mRenderUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdCounterKeys(Landroid/adservices/common/AdData$Builder;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/adservices/common/AdData$Builder;->mAdCounterKeys:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAdFilters(Landroid/adservices/common/AdData$Builder;)Landroid/adservices/common/AdFilters;
    .registers 1

    iget-object p0, p0, Landroid/adservices/common/AdData$Builder;->mAdFilters:Landroid/adservices/common/AdFilters;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAdRenderId(Landroid/adservices/common/AdData$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/common/AdData$Builder;->mAdRenderId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMetadata(Landroid/adservices/common/AdData$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/common/AdData$Builder;->mMetadata:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRenderUri(Landroid/adservices/common/AdData$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/adservices/common/AdData$Builder;->mRenderUri:Landroid/net/Uri;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/adservices/common/AdData$Builder;->mAdCounterKeys:Ljava/util/Set;

    .line 217
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/common/AdData;
    .registers 3

    .line 300
    iget-object v0, p0, Landroid/adservices/common/AdData$Builder;->mRenderUri:Landroid/net/Uri;

    const-string v1, "The render URI has not been provided"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Landroid/adservices/common/AdData$Builder;->mMetadata:Ljava/lang/String;

    const-string v1, "The metadata has not been provided"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    new-instance v0, Landroid/adservices/common/AdData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/common/AdData;-><init>(Landroid/adservices/common/AdData$Builder;Landroid/adservices/common/AdData-IA;)V

    return-object v0
.end method

.method public whitelist setAdCounterKeys(Ljava/util/Set;)Landroid/adservices/common/AdData$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/adservices/common/AdData$Builder;"
        }
    .end annotation

    .line 260
    .local p1, "adCounterKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    nop

    .line 262
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 261
    const-string v2, "Ad counter keys must not contain null value"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 263
    nop

    .line 264
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v2, 0xa

    if-gt v0, v2, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 266
    :goto_1b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 263
    const-string v2, "AdData should have no more than %d ad counter keys"

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 267
    iput-object p1, p0, Landroid/adservices/common/AdData$Builder;->mAdCounterKeys:Ljava/util/Set;

    .line 268
    return-object p0
.end method

.method public whitelist setAdFilters(Landroid/adservices/common/AdFilters;)Landroid/adservices/common/AdData$Builder;
    .registers 2
    .param p1, "adFilters"    # Landroid/adservices/common/AdFilters;

    .line 278
    iput-object p1, p0, Landroid/adservices/common/AdData$Builder;->mAdFilters:Landroid/adservices/common/AdFilters;

    .line 279
    return-object p0
.end method

.method public whitelist setAdRenderId(Ljava/lang/String;)Landroid/adservices/common/AdData$Builder;
    .registers 2
    .param p1, "adRenderId"    # Ljava/lang/String;

    .line 289
    iput-object p1, p0, Landroid/adservices/common/AdData$Builder;->mAdRenderId:Ljava/lang/String;

    .line 290
    return-object p0
.end method

.method public whitelist setMetadata(Ljava/lang/String;)Landroid/adservices/common/AdData$Builder;
    .registers 2
    .param p1, "metadata"    # Ljava/lang/String;

    .line 246
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iput-object p1, p0, Landroid/adservices/common/AdData$Builder;->mMetadata:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public whitelist setRenderUri(Landroid/net/Uri;)Landroid/adservices/common/AdData$Builder;
    .registers 2
    .param p1, "renderUri"    # Landroid/net/Uri;

    .line 226
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iput-object p1, p0, Landroid/adservices/common/AdData$Builder;->mRenderUri:Landroid/net/Uri;

    .line 228
    return-object p0
.end method
