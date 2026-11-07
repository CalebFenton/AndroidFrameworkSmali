.class public final Landroid/adservices/common/AdFilters$Builder;
.super Ljava/lang/Object;
.source "AdFilters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/common/AdFilters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppInstallFilters:Landroid/adservices/common/AppInstallFilters;

.field private blacklist mFrequencyCapFilters:Landroid/adservices/common/FrequencyCapFilters;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppInstallFilters(Landroid/adservices/common/AdFilters$Builder;)Landroid/adservices/common/AppInstallFilters;
    .registers 1

    iget-object p0, p0, Landroid/adservices/common/AdFilters$Builder;->mAppInstallFilters:Landroid/adservices/common/AppInstallFilters;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrequencyCapFilters(Landroid/adservices/common/AdFilters$Builder;)Landroid/adservices/common/FrequencyCapFilters;
    .registers 1

    iget-object p0, p0, Landroid/adservices/common/AdFilters$Builder;->mFrequencyCapFilters:Landroid/adservices/common/FrequencyCapFilters;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/common/AdFilters;
    .registers 3

    .line 240
    new-instance v0, Landroid/adservices/common/AdFilters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/common/AdFilters;-><init>(Landroid/adservices/common/AdFilters$Builder;Landroid/adservices/common/AdFilters-IA;)V

    return-object v0
.end method

.method public whitelist setAppInstallFilters(Landroid/adservices/common/AppInstallFilters;)Landroid/adservices/common/AdFilters$Builder;
    .registers 2
    .param p1, "appInstallFilters"    # Landroid/adservices/common/AppInstallFilters;

    .line 233
    iput-object p1, p0, Landroid/adservices/common/AdFilters$Builder;->mAppInstallFilters:Landroid/adservices/common/AppInstallFilters;

    .line 234
    return-object p0
.end method

.method public whitelist setFrequencyCapFilters(Landroid/adservices/common/FrequencyCapFilters;)Landroid/adservices/common/AdFilters$Builder;
    .registers 2
    .param p1, "frequencyCapFilters"    # Landroid/adservices/common/FrequencyCapFilters;

    .line 220
    iput-object p1, p0, Landroid/adservices/common/AdFilters$Builder;->mFrequencyCapFilters:Landroid/adservices/common/FrequencyCapFilters;

    .line 221
    return-object p0
.end method
