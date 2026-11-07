.class public final Landroid/adservices/adselection/PersistAdSelectionResultResponse$Builder;
.super Ljava/lang/Object;
.source "PersistAdSelectionResultResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/PersistAdSelectionResultResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdRenderUri:Landroid/net/Uri;

.field private blacklist mAdSelectionId:J

.field private blacklist mComponentAdUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWinningSeller:Landroid/adservices/common/AdTechIdentifier;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse$Builder;->mComponentAdUris:Ljava/util/List;

    .line 149
    sget-object v0, Landroid/adservices/common/AdTechIdentifier;->UNSET_AD_TECH_IDENTIFIER:Landroid/adservices/common/AdTechIdentifier;

    iput-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse$Builder;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 150
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/adselection/PersistAdSelectionResultResponse;
    .registers 10

    .line 189
    iget-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse$Builder;->mAdRenderUri:Landroid/net/Uri;

    const-string v1, "Ad render uri cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse$Builder;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    const-string v1, "Winning seller cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    iget-wide v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse$Builder;->mAdSelectionId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    const-string v1, "Non-zero ad selection ID must be set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 195
    new-instance v2, Landroid/adservices/adselection/PersistAdSelectionResultResponse;

    iget-wide v3, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse$Builder;->mAdSelectionId:J

    iget-object v5, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse$Builder;->mAdRenderUri:Landroid/net/Uri;

    iget-object v6, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse$Builder;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    iget-object v7, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse$Builder;->mComponentAdUris:Ljava/util/List;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/adservices/adselection/PersistAdSelectionResultResponse;-><init>(JLandroid/net/Uri;Landroid/adservices/common/AdTechIdentifier;Ljava/util/List;Landroid/adservices/adselection/PersistAdSelectionResultResponse-IA;)V

    return-object v2
.end method

.method public blacklist setAdRenderUri(Landroid/net/Uri;)Landroid/adservices/adselection/PersistAdSelectionResultResponse$Builder;
    .registers 2
    .param p1, "adRenderUri"    # Landroid/net/Uri;

    .line 160
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iput-object p1, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse$Builder;->mAdRenderUri:Landroid/net/Uri;

    .line 163
    return-object p0
.end method

.method public blacklist setAdSelectionId(J)Landroid/adservices/adselection/PersistAdSelectionResultResponse$Builder;
    .registers 3
    .param p1, "adSelectionId"    # J

    .line 154
    iput-wide p1, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse$Builder;->mAdSelectionId:J

    .line 155
    return-object p0
.end method

.method public blacklist setComponentAdUris(Ljava/util/List;)Landroid/adservices/adselection/PersistAdSelectionResultResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/adservices/adselection/PersistAdSelectionResultResponse$Builder;"
        }
    .end annotation

    .line 176
    .local p1, "componentAdUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iput-object p1, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse$Builder;->mComponentAdUris:Ljava/util/List;

    .line 178
    return-object p0
.end method

.method public blacklist setWinningSeller(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/adselection/PersistAdSelectionResultResponse$Builder;
    .registers 2
    .param p1, "winningSeller"    # Landroid/adservices/common/AdTechIdentifier;

    .line 169
    iput-object p1, p0, Landroid/adservices/adselection/PersistAdSelectionResultResponse$Builder;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 170
    return-object p0
.end method
