.class public final Landroid/adservices/adselection/AdSelectionResponse$Builder;
.super Ljava/lang/Object;
.source "AdSelectionResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/AdSelectionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdSelectionId:J

.field private blacklist mRenderUri:Landroid/net/Uri;

.field private blacklist mWinningSeller:Landroid/adservices/common/AdTechIdentifier;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/adselection/AdSelectionResponse$Builder;->mAdSelectionId:J

    .line 145
    sget-object v0, Landroid/adservices/common/AdTechIdentifier;->UNSET_AD_TECH_IDENTIFIER:Landroid/adservices/common/AdTechIdentifier;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionResponse$Builder;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 146
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/adselection/AdSelectionResponse;
    .registers 9

    .line 179
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionResponse$Builder;->mRenderUri:Landroid/net/Uri;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-wide v0, p0, Landroid/adservices/adselection/AdSelectionResponse$Builder;->mAdSelectionId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-string v1, "Non-zero ad selection ID must be set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 184
    new-instance v2, Landroid/adservices/adselection/AdSelectionResponse;

    iget-wide v3, p0, Landroid/adservices/adselection/AdSelectionResponse$Builder;->mAdSelectionId:J

    iget-object v5, p0, Landroid/adservices/adselection/AdSelectionResponse$Builder;->mRenderUri:Landroid/net/Uri;

    iget-object v6, p0, Landroid/adservices/adselection/AdSelectionResponse$Builder;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/adservices/adselection/AdSelectionResponse;-><init>(JLandroid/net/Uri;Landroid/adservices/common/AdTechIdentifier;Landroid/adservices/adselection/AdSelectionResponse-IA;)V

    return-object v2
.end method

.method public blacklist setAdSelectionId(J)Landroid/adservices/adselection/AdSelectionResponse$Builder;
    .registers 3
    .param p1, "adSelectionId"    # J

    .line 150
    iput-wide p1, p0, Landroid/adservices/adselection/AdSelectionResponse$Builder;->mAdSelectionId:J

    .line 151
    return-object p0
.end method

.method public blacklist setRenderUri(Landroid/net/Uri;)Landroid/adservices/adselection/AdSelectionResponse$Builder;
    .registers 2
    .param p1, "renderUri"    # Landroid/net/Uri;

    .line 156
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionResponse$Builder;->mRenderUri:Landroid/net/Uri;

    .line 159
    return-object p0
.end method

.method public blacklist setWinningSeller(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/adselection/AdSelectionResponse$Builder;
    .registers 4
    .param p1, "winningSeller"    # Landroid/adservices/common/AdTechIdentifier;

    .line 164
    const-string v0, "Winning seller cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    sget-object v0, Landroid/adservices/common/AdTechIdentifier;->UNSET_AD_TECH_IDENTIFIER:Landroid/adservices/common/AdTechIdentifier;

    .line 166
    invoke-virtual {p1, v0}, Landroid/adservices/common/AdTechIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 165
    const-string v1, "Winning seller cannot be empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 168
    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionResponse$Builder;->mWinningSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 169
    return-object p0
.end method
