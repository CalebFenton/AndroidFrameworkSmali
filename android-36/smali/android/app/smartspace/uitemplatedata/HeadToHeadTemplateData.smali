.class public final Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;
.super Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
.source "HeadToHeadTemplateData.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

.field private final blacklist mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

.field private final blacklist mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

.field private final blacklist mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

.field private final blacklist mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

.field private final blacklist mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 132
    new-instance v0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$1;

    invoke-direct {v0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$1;-><init>()V

    sput-object v0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;ILandroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/TapAction;)V
    .registers 15
    .param p1, "templateType"    # I
    .param p2, "primaryItem"    # Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .param p3, "subtitleItem"    # Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .param p4, "subtitleSupplementalItem"    # Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .param p5, "supplementalLineItem"    # Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .param p6, "supplementalAlarmItem"    # Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .param p7, "layoutWeight"    # I
    .param p8, "headToHeadTitle"    # Landroid/app/smartspace/uitemplatedata/Text;
    .param p9, "headToHeadFirstCompetitorIcon"    # Landroid/app/smartspace/uitemplatedata/Icon;
    .param p10, "headToHeadSecondCompetitorIcon"    # Landroid/app/smartspace/uitemplatedata/Icon;
    .param p11, "headToHeadFirstCompetitorText"    # Landroid/app/smartspace/uitemplatedata/Text;
    .param p12, "headToHeadSecondCompetitorText"    # Landroid/app/smartspace/uitemplatedata/Text;
    .param p13, "headToHeadAction"    # Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 81
    invoke-direct/range {p0 .. p7}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;-><init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;I)V

    .line 84
    move v0, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "templateType":I
    .local v0, "layoutWeight":I
    .local p2, "templateType":I
    .local p3, "primaryItem":Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .local p4, "subtitleItem":Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .local p5, "subtitleSupplementalItem":Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .local p6, "supplementalLineItem":Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .local p7, "supplementalAlarmItem":Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    iput-object p8, p1, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;

    .line 85
    iput-object p9, p1, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    .line 86
    iput-object p10, p1, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    .line 87
    iput-object p11, p1, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    .line 88
    iput-object p12, p1, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    .line 89
    iput-object p13, p1, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 90
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;ILandroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/TapAction;Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData-IA;)V
    .registers 15

    invoke-direct/range {p0 .. p13}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;-><init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;ILandroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/TapAction;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0, p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;-><init>(Landroid/os/Parcel;)V

    .line 60
    sget-object v0, Landroid/app/smartspace/uitemplatedata/Text;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/Text;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;

    .line 61
    sget-object v0, Landroid/app/smartspace/uitemplatedata/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/Icon;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    .line 62
    sget-object v0, Landroid/app/smartspace/uitemplatedata/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/Icon;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    .line 63
    sget-object v0, Landroid/app/smartspace/uitemplatedata/Text;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/Text;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    .line 64
    sget-object v0, Landroid/app/smartspace/uitemplatedata/Text;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/Text;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    .line 65
    sget-object v0, Landroid/app/smartspace/uitemplatedata/TapAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/TapAction;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 163
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 164
    :cond_4
    instance-of v1, p1, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 165
    :cond_a
    invoke-super {p0, p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 166
    :cond_11
    move-object v1, p1

    check-cast v1, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;

    .line 167
    .local v1, "that":Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;
    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-static {v3, v4}, Landroid/app/smartspace/SmartspaceUtils;->isEqual(Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Text;)Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    .line 169
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    .line 171
    invoke-static {v3, v4}, Landroid/app/smartspace/SmartspaceUtils;->isEqual(Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Text;)Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    .line 173
    invoke-static {v3, v4}, Landroid/app/smartspace/SmartspaceUtils;->isEqual(Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Text;)Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 175
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    goto :goto_52

    :cond_51
    move v0, v2

    .line 167
    :goto_52
    return v0
.end method

.method public whitelist getHeadToHeadAction()Landroid/app/smartspace/uitemplatedata/TapAction;
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    return-object v0
.end method

.method public whitelist getHeadToHeadFirstCompetitorIcon()Landroid/app/smartspace/uitemplatedata/Icon;
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    return-object v0
.end method

.method public whitelist getHeadToHeadFirstCompetitorText()Landroid/app/smartspace/uitemplatedata/Text;
    .registers 2

    .line 113
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    return-object v0
.end method

.method public whitelist getHeadToHeadSecondCompetitorIcon()Landroid/app/smartspace/uitemplatedata/Icon;
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    return-object v0
.end method

.method public whitelist getHeadToHeadSecondCompetitorText()Landroid/app/smartspace/uitemplatedata/Text;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    return-object v0
.end method

.method public whitelist getHeadToHeadTitle()Landroid/app/smartspace/uitemplatedata/Text;
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 181
    invoke-super {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    iget-object v4, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    iget-object v5, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v6, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v7, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " + SmartspaceHeadToHeadUiTemplateData{mH2HTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mH2HFirstCompetitorIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mH2HSecondCompetitorIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mH2HFirstCompetitorText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mH2HSecondCompetitorText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mH2HAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 152
    invoke-super {p0, p1, p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 153
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 154
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 155
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 156
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 157
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 158
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 159
    return-void
.end method
