.class public final Landroid/app/smartspace/uitemplatedata/SubCardTemplateData$Builder;
.super Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
.source "SubCardTemplateData.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/SubCardTemplateData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mSubCardAction:Landroid/app/smartspace/uitemplatedata/TapAction;

.field private final blacklist mSubCardIcon:Landroid/app/smartspace/uitemplatedata/Icon;

.field private blacklist mSubCardText:Landroid/app/smartspace/uitemplatedata/Text;


# direct methods
.method public constructor whitelist <init>(Landroid/app/smartspace/uitemplatedata/Icon;)V
    .registers 3
    .param p1, "subCardIcon"    # Landroid/app/smartspace/uitemplatedata/Icon;

    .line 168
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;-><init>(I)V

    .line 169
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/Icon;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/SubCardTemplateData$Builder;->mSubCardIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    .line 170
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist build()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
    .registers 2

    .line 157
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubCardTemplateData$Builder;->build()Landroid/app/smartspace/uitemplatedata/SubCardTemplateData;

    move-result-object v0

    return-object v0
.end method

.method public whitelist build()Landroid/app/smartspace/uitemplatedata/SubCardTemplateData;
    .registers 13

    .line 195
    new-instance v0, Landroid/app/smartspace/uitemplatedata/SubCardTemplateData;

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubCardTemplateData$Builder;->getTemplateType()I

    move-result v1

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubCardTemplateData$Builder;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v2

    .line 196
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubCardTemplateData$Builder;->getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubCardTemplateData$Builder;->getSubtitleSupplemtnalItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v4

    .line 197
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubCardTemplateData$Builder;->getSupplementalLineItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubCardTemplateData$Builder;->getSupplementalAlarmItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubCardTemplateData$Builder;->getLayoutWeight()I

    move-result v7

    iget-object v8, p0, Landroid/app/smartspace/uitemplatedata/SubCardTemplateData$Builder;->mSubCardIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    iget-object v9, p0, Landroid/app/smartspace/uitemplatedata/SubCardTemplateData$Builder;->mSubCardText:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v10, p0, Landroid/app/smartspace/uitemplatedata/SubCardTemplateData$Builder;->mSubCardAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Landroid/app/smartspace/uitemplatedata/SubCardTemplateData;-><init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;ILandroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/TapAction;Landroid/app/smartspace/uitemplatedata/SubCardTemplateData-IA;)V

    .line 195
    return-object v0
.end method

.method public whitelist setSubCardAction(Landroid/app/smartspace/uitemplatedata/TapAction;)Landroid/app/smartspace/uitemplatedata/SubCardTemplateData$Builder;
    .registers 2
    .param p1, "subCardAction"    # Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 186
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/SubCardTemplateData$Builder;->mSubCardAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 187
    return-object p0
.end method

.method public whitelist setSubCardText(Landroid/app/smartspace/uitemplatedata/Text;)Landroid/app/smartspace/uitemplatedata/SubCardTemplateData$Builder;
    .registers 2
    .param p1, "subCardText"    # Landroid/app/smartspace/uitemplatedata/Text;

    .line 177
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/SubCardTemplateData$Builder;->mSubCardText:Landroid/app/smartspace/uitemplatedata/Text;

    .line 178
    return-object p0
.end method
