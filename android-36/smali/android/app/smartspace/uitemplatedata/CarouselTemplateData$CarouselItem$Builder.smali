.class public final Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;
.super Ljava/lang/Object;
.source "CarouselTemplateData.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mImage:Landroid/app/smartspace/uitemplatedata/Icon;

.field private blacklist mLowerText:Landroid/app/smartspace/uitemplatedata/Text;

.field private blacklist mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

.field private blacklist mUpperText:Landroid/app/smartspace/uitemplatedata/Text;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;
    .registers 9

    .line 363
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;->mUpperText:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-static {v0}, Landroid/app/smartspace/SmartspaceUtils;->isEmpty(Landroid/app/smartspace/uitemplatedata/Text;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;->mImage:Landroid/app/smartspace/uitemplatedata/Icon;

    if-nez v0, :cond_1d

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;->mLowerText:Landroid/app/smartspace/uitemplatedata/Text;

    .line 364
    invoke-static {v0}, Landroid/app/smartspace/SmartspaceUtils;->isEmpty(Landroid/app/smartspace/uitemplatedata/Text;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1d

    .line 366
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Carousel data is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_1d
    :goto_1d
    new-instance v2, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;->mUpperText:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v4, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;->mImage:Landroid/app/smartspace/uitemplatedata/Icon;

    iget-object v5, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;->mLowerText:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v6, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;->mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;-><init>(Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/TapAction;Landroid/app/smartspace/uitemplatedata/CarouselTemplateData-IA;)V

    return-object v2
.end method

.method public whitelist setImage(Landroid/app/smartspace/uitemplatedata/Icon;)Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;
    .registers 2
    .param p1, "image"    # Landroid/app/smartspace/uitemplatedata/Icon;

    .line 333
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;->mImage:Landroid/app/smartspace/uitemplatedata/Icon;

    .line 334
    return-object p0
.end method

.method public whitelist setLowerText(Landroid/app/smartspace/uitemplatedata/Text;)Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;
    .registers 2
    .param p1, "lowerText"    # Landroid/app/smartspace/uitemplatedata/Text;

    .line 343
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;->mLowerText:Landroid/app/smartspace/uitemplatedata/Text;

    .line 344
    return-object p0
.end method

.method public whitelist setTapAction(Landroid/app/smartspace/uitemplatedata/TapAction;)Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;
    .registers 2
    .param p1, "tapAction"    # Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 352
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;->mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 353
    return-object p0
.end method

.method public whitelist setUpperText(Landroid/app/smartspace/uitemplatedata/Text;)Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;
    .registers 2
    .param p1, "upperText"    # Landroid/app/smartspace/uitemplatedata/Text;

    .line 324
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem$Builder;->mUpperText:Landroid/app/smartspace/uitemplatedata/Text;

    .line 325
    return-object p0
.end method
