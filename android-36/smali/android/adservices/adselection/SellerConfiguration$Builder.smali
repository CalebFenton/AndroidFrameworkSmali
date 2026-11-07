.class public final Landroid/adservices/adselection/SellerConfiguration$Builder;
.super Ljava/lang/Object;
.source "SellerConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/SellerConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mMaximumPayloadSizeBytes:I

.field private blacklist mPerBuyerConfigurations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/adservices/adselection/PerBuyerConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/adservices/adselection/SellerConfiguration$Builder;->mPerBuyerConfigurations:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/adselection/SellerConfiguration;
    .registers 5

    .line 177
    iget v0, p0, Landroid/adservices/adselection/SellerConfiguration$Builder;->mMaximumPayloadSizeBytes:I

    if-eqz v0, :cond_f

    .line 181
    new-instance v0, Landroid/adservices/adselection/SellerConfiguration;

    iget v1, p0, Landroid/adservices/adselection/SellerConfiguration$Builder;->mMaximumPayloadSizeBytes:I

    iget-object v2, p0, Landroid/adservices/adselection/SellerConfiguration$Builder;->mPerBuyerConfigurations:Ljava/util/Set;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/adservices/adselection/SellerConfiguration;-><init>(ILjava/util/Set;Landroid/adservices/adselection/SellerConfiguration-IA;)V

    return-object v0

    .line 178
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Maximum size must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMaximumPayloadSizeBytes(I)Landroid/adservices/adselection/SellerConfiguration$Builder;
    .registers 5
    .param p1, "maximumPayloadSizeBytes"    # I

    .line 152
    iput p1, p0, Landroid/adservices/adselection/SellerConfiguration$Builder;->mMaximumPayloadSizeBytes:I

    .line 154
    if-lez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 157
    :goto_7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 154
    const-string v2, "Maximum payload of size %d must be greater than 0."

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 158
    return-object p0
.end method

.method public whitelist setPerBuyerConfigurations(Ljava/util/Set;)Landroid/adservices/adselection/SellerConfiguration$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/adservices/adselection/PerBuyerConfiguration;",
            ">;)",
            "Landroid/adservices/adselection/SellerConfiguration$Builder;"
        }
    .end annotation

    .line 168
    .local p1, "perBuyerConfigurations":Ljava/util/Set;, "Ljava/util/Set<Landroid/adservices/adselection/PerBuyerConfiguration;>;"
    nop

    .line 169
    const-string v0, "Per Buyer Configurations cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Landroid/adservices/adselection/SellerConfiguration$Builder;->mPerBuyerConfigurations:Ljava/util/Set;

    .line 171
    return-object p0
.end method
