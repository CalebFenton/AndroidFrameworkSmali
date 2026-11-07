.class public final Landroid/adservices/adselection/AdSelectionOutcome$Builder;
.super Ljava/lang/Object;
.source "AdSelectionOutcome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/AdSelectionOutcome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
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

.field private blacklist mRenderUri:Landroid/net/Uri;

.field private blacklist mWinningSeller:Landroid/adservices/common/AdTechIdentifier;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/adselection/AdSelectionOutcome$Builder;->mAdSelectionId:J

    .line 150
    sget-object v0, Landroid/adservices/common/AdTechIdentifier;->UNSET_AD_TECH_IDENTIFIER:Landroid/adservices/common/AdTechIdentifier;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionOutcome$Builder;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 153
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/adselection/AdSelectionOutcome;
    .registers 10

    .line 200
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionOutcome$Builder;->mRenderUri:Landroid/net/Uri;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionOutcome$Builder;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionOutcome$Builder;->mComponentAdUris:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-nez v0, :cond_17

    .line 203
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionOutcome$Builder;->mComponentAdUris:Ljava/util/List;

    .line 206
    :cond_17
    iget-wide v0, p0, Landroid/adservices/adselection/AdSelectionOutcome$Builder;->mAdSelectionId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    const-string v1, "Non-zero ad selection ID must be set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 209
    new-instance v2, Landroid/adservices/adselection/AdSelectionOutcome;

    iget-wide v3, p0, Landroid/adservices/adselection/AdSelectionOutcome$Builder;->mAdSelectionId:J

    iget-object v5, p0, Landroid/adservices/adselection/AdSelectionOutcome$Builder;->mRenderUri:Landroid/net/Uri;

    iget-object v6, p0, Landroid/adservices/adselection/AdSelectionOutcome$Builder;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    iget-object v7, p0, Landroid/adservices/adselection/AdSelectionOutcome$Builder;->mComponentAdUris:Ljava/util/List;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/adservices/adselection/AdSelectionOutcome;-><init>(JLandroid/net/Uri;Landroid/adservices/common/AdTechIdentifier;Ljava/util/List;Landroid/adservices/adselection/AdSelectionOutcome-IA;)V

    return-object v2
.end method

.method public whitelist setAdSelectionId(J)Landroid/adservices/adselection/AdSelectionOutcome$Builder;
    .registers 3
    .param p1, "adSelectionId"    # J

    .line 158
    iput-wide p1, p0, Landroid/adservices/adselection/AdSelectionOutcome$Builder;->mAdSelectionId:J

    .line 159
    return-object p0
.end method

.method public whitelist setComponentAdUris(Ljava/util/List;)Landroid/adservices/adselection/AdSelectionOutcome$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/adservices/adselection/AdSelectionOutcome$Builder;"
        }
    .end annotation

    .line 187
    .local p1, "componentAdUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    nop

    .line 188
    const-string v0, "Component ad Uris cannot be null!"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionOutcome$Builder;->mComponentAdUris:Ljava/util/List;

    .line 189
    return-object p0
.end method

.method public whitelist setRenderUri(Landroid/net/Uri;)Landroid/adservices/adselection/AdSelectionOutcome$Builder;
    .registers 3
    .param p1, "renderUri"    # Landroid/net/Uri;

    .line 165
    const-string v0, "Render uri cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionOutcome$Builder;->mRenderUri:Landroid/net/Uri;

    .line 166
    return-object p0
.end method

.method public blacklist setWinningSeller(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/adselection/AdSelectionOutcome$Builder;
    .registers 3
    .param p1, "winningSeller"    # Landroid/adservices/common/AdTechIdentifier;

    .line 177
    const-string v0, "Winning seller cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/AdTechIdentifier;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionOutcome$Builder;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 178
    return-object p0
.end method
