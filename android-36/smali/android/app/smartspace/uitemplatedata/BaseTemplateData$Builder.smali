.class public Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
.super Ljava/lang/Object;
.source "BaseTemplateData.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mLayoutWeight:I

.field private blacklist mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

.field private blacklist mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

.field private blacklist mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

.field private blacklist mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

.field private blacklist mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

.field private final blacklist mTemplateType:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "templateType"    # I

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mTemplateType:I

    .line 263
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mLayoutWeight:I

    .line 264
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
    .registers 9

    .line 373
    new-instance v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    iget v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mTemplateType:I

    iget-object v2, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v4, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v5, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v6, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget v7, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mLayoutWeight:I

    invoke-direct/range {v0 .. v7}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;-><init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;I)V

    return-object v0
.end method

.method blacklist getLayoutWeight()I
    .registers 2

    .line 311
    iget v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mLayoutWeight:I

    return v0
.end method

.method blacklist getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .registers 2

    .line 277
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object v0
.end method

.method blacklist getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .registers 2

    .line 284
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object v0
.end method

.method blacklist getSubtitleSupplemtnalItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .registers 2

    .line 291
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object v0
.end method

.method blacklist getSupplementalAlarmItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .registers 2

    .line 305
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object v0
.end method

.method blacklist getSupplementalLineItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .registers 2

    .line 298
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object v0
.end method

.method blacklist getTemplateType()I
    .registers 2

    .line 270
    iget v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mTemplateType:I

    return v0
.end method

.method public whitelist setLayoutWeight(I)Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
    .registers 2
    .param p1, "layoutWeight"    # I

    .line 364
    iput p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mLayoutWeight:I

    .line 365
    return-object p0
.end method

.method public whitelist setPrimaryItem(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
    .registers 2
    .param p1, "primaryItem"    # Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 319
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 320
    return-object p0
.end method

.method public whitelist setSubtitleItem(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
    .registers 2
    .param p1, "subtitleItem"    # Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 328
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 329
    return-object p0
.end method

.method public whitelist setSubtitleSupplementalItem(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
    .registers 2
    .param p1, "subtitleSupplementalItem"    # Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 337
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 338
    return-object p0
.end method

.method public whitelist setSupplementalAlarmItem(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
    .registers 2
    .param p1, "supplementalAlarmItem"    # Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 355
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 356
    return-object p0
.end method

.method public whitelist setSupplementalLineItem(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
    .registers 2
    .param p1, "supplementalLineItem"    # Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 346
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 347
    return-object p0
.end method
