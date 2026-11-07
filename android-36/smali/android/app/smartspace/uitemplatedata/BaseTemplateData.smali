.class public Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
.super Ljava/lang/Object;
.source "BaseTemplateData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;,
        Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;,
        Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/smartspace/uitemplatedata/BaseTemplateData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mLayoutWeight:I

.field private final blacklist mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

.field private final blacklist mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

.field private final blacklist mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

.field private final blacklist mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

.field private final blacklist mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

.field private final blacklist mTemplateType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 177
    new-instance v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$1;

    invoke-direct {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$1;-><init>()V

    sput-object v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;I)V
    .registers 8
    .param p1, "templateType"    # I
    .param p2, "primaryItem"    # Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .param p3, "subtitleItem"    # Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .param p4, "subtitleSupplementalItem"    # Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .param p5, "supplementalLineItem"    # Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .param p6, "supplementalAlarmItem"    # Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .param p7, "layoutWeight"    # I

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mTemplateType:I

    .line 124
    iput-object p2, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 125
    iput-object p3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 126
    iput-object p4, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 127
    iput-object p5, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 128
    iput-object p6, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 129
    iput p7, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mLayoutWeight:I

    .line 130
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mTemplateType:I

    .line 104
    sget-object v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 105
    sget-object v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 106
    sget-object v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 107
    sget-object v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 108
    sget-object v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mLayoutWeight:I

    .line 110
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 208
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 209
    :cond_4
    instance-of v1, p1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 210
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 211
    .local v1, "that":Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
    iget v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mTemplateType:I

    iget v4, v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mTemplateType:I

    if-ne v3, v4, :cond_4c

    iget v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mLayoutWeight:I

    iget v4, v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mLayoutWeight:I

    if-ne v3, v4, :cond_4c

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 212
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 213
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 214
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 215
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    .line 216
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v2

    .line 211
    :goto_4d
    return v0
.end method

.method public whitelist getLayoutWeight()I
    .registers 2

    .line 170
    iget v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mLayoutWeight:I

    return v0
.end method

.method public whitelist getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .registers 2

    .line 141
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object v0
.end method

.method public whitelist getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .registers 2

    .line 147
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object v0
.end method

.method public whitelist getSubtitleSupplementalItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .registers 2

    .line 153
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object v0
.end method

.method public whitelist getSupplementalAlarmItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object v0
.end method

.method public whitelist getSupplementalLineItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .registers 2

    .line 159
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object v0
.end method

.method public whitelist getTemplateType()I
    .registers 2

    .line 135
    iget v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mTemplateType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 221
    iget v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mTemplateType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v4, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v5, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v6, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mLayoutWeight:I

    .line 222
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 221
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseTemplateData{mTemplateType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mTemplateType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPrimaryItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSubtitleItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSubtitleSupplementalItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupplementalLineItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupplementalAlarmItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLayoutWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mLayoutWeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 197
    iget v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mTemplateType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 199
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 200
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 201
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 202
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 203
    iget v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mLayoutWeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    return-void
.end method
