.class public final Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$Builder;
.super Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
.source "CarouselTemplateData.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCarouselAction:Landroid/app/smartspace/uitemplatedata/TapAction;

.field private final blacklist mCarouselItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;",
            ">;)V"
        }
    .end annotation

    .line 154
    .local p1, "carouselItems":Ljava/util/List;, "Ljava/util/List<Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;>;"
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;-><init>(I)V

    .line 155
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$Builder;->mCarouselItems:Ljava/util/List;

    .line 156
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist build()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
    .registers 2

    .line 144
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$Builder;->build()Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;

    move-result-object v0

    return-object v0
.end method

.method public whitelist build()Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;
    .registers 13

    .line 174
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$Builder;->mCarouselItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 178
    new-instance v1, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$Builder;->getTemplateType()I

    move-result v2

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$Builder;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v3

    .line 179
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$Builder;->getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$Builder;->getSubtitleSupplemtnalItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v5

    .line 180
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$Builder;->getSupplementalLineItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$Builder;->getSupplementalAlarmItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v7

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$Builder;->getLayoutWeight()I

    move-result v8

    iget-object v9, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$Builder;->mCarouselItems:Ljava/util/List;

    iget-object v10, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$Builder;->mCarouselAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;-><init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;ILjava/util/List;Landroid/app/smartspace/uitemplatedata/TapAction;Landroid/app/smartspace/uitemplatedata/CarouselTemplateData-IA;)V

    .line 178
    return-object v1

    .line 175
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Carousel data is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCarouselAction(Landroid/app/smartspace/uitemplatedata/TapAction;)Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$Builder;
    .registers 2
    .param p1, "carouselAction"    # Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 163
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$Builder;->mCarouselAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 164
    return-object p0
.end method
