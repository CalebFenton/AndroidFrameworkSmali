.class public final Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;
.super Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
.source "SubListTemplateData.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/SubListTemplateData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mSubListAction:Landroid/app/smartspace/uitemplatedata/TapAction;

.field private blacklist mSubListIcon:Landroid/app/smartspace/uitemplatedata/Icon;

.field private final blacklist mSubListTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/smartspace/uitemplatedata/Text;",
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
            "Landroid/app/smartspace/uitemplatedata/Text;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p1, "subListTexts":Ljava/util/List;, "Ljava/util/List<Landroid/app/smartspace/uitemplatedata/Text;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;-><init>(I)V

    .line 169
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->mSubListTexts:Ljava/util/List;

    .line 170
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist build()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
    .registers 2

    .line 157
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->build()Landroid/app/smartspace/uitemplatedata/SubListTemplateData;

    move-result-object v0

    return-object v0
.end method

.method public whitelist build()Landroid/app/smartspace/uitemplatedata/SubListTemplateData;
    .registers 13

    .line 195
    new-instance v0, Landroid/app/smartspace/uitemplatedata/SubListTemplateData;

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->getTemplateType()I

    move-result v1

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v2

    .line 196
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->getSubtitleSupplemtnalItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v4

    .line 197
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->getSupplementalLineItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->getSupplementalAlarmItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->getLayoutWeight()I

    move-result v7

    iget-object v8, p0, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->mSubListIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    iget-object v9, p0, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->mSubListTexts:Ljava/util/List;

    iget-object v10, p0, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->mSubListAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Landroid/app/smartspace/uitemplatedata/SubListTemplateData;-><init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;ILandroid/app/smartspace/uitemplatedata/Icon;Ljava/util/List;Landroid/app/smartspace/uitemplatedata/TapAction;Landroid/app/smartspace/uitemplatedata/SubListTemplateData-IA;)V

    .line 195
    return-object v0
.end method

.method public whitelist setSubListAction(Landroid/app/smartspace/uitemplatedata/TapAction;)Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;
    .registers 2
    .param p1, "subListAction"    # Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 186
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->mSubListAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 187
    return-object p0
.end method

.method public whitelist setSubListIcon(Landroid/app/smartspace/uitemplatedata/Icon;)Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;
    .registers 2
    .param p1, "subListIcon"    # Landroid/app/smartspace/uitemplatedata/Icon;

    .line 177
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/SubListTemplateData$Builder;->mSubListIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    .line 178
    return-object p0
.end method
