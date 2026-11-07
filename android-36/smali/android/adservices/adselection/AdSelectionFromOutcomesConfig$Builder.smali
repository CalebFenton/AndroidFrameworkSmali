.class public final Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;
.super Ljava/lang/Object;
.source "AdSelectionFromOutcomesConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdSelectionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSelectionLogicUri:Landroid/net/Uri;

.field private blacklist mSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

.field private blacklist mSeller:Landroid/adservices/common/AdTechIdentifier;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;
    .registers 8

    .line 236
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;->mAdSelectionIds:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;->mSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;->mSelectionLogicUri:Landroid/net/Uri;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v1, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

    iget-object v2, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    iget-object v3, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;->mAdSelectionIds:Ljava/util/List;

    iget-object v4, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;->mSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

    iget-object v5, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;->mSelectionLogicUri:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;-><init>(Landroid/adservices/common/AdTechIdentifier;Ljava/util/List;Landroid/adservices/common/AdSelectionSignals;Landroid/net/Uri;Landroid/adservices/adselection/AdSelectionFromOutcomesConfig-IA;)V

    return-object v1
.end method

.method public whitelist setAdSelectionIds(Ljava/util/List;)Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;"
        }
    .end annotation

    .line 176
    .local p1, "adSelectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;->mAdSelectionIds:Ljava/util/List;

    .line 179
    return-object p0
.end method

.method public whitelist setSelectionLogicUri(Landroid/net/Uri;)Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;
    .registers 2
    .param p1, "selectionLogicUri"    # Landroid/net/Uri;

    .line 227
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;->mSelectionLogicUri:Landroid/net/Uri;

    .line 230
    return-object p0
.end method

.method public whitelist setSelectionSignals(Landroid/adservices/common/AdSelectionSignals;)Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;
    .registers 2
    .param p1, "selectionSignals"    # Landroid/adservices/common/AdSelectionSignals;

    .line 189
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;->mSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 192
    return-object p0
.end method

.method public whitelist setSeller(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;
    .registers 2
    .param p1, "seller"    # Landroid/adservices/common/AdTechIdentifier;

    .line 166
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig$Builder;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 169
    return-object p0
.end method
