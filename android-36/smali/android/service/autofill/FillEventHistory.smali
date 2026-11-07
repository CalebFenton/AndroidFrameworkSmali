.class public final Landroid/service/autofill/FillEventHistory;
.super Ljava/lang/Object;
.source "FillEventHistory.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/FillEventHistory$Event;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/FillEventHistory;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "FillEventHistory"


# instance fields
.field private final greylist-max-o mClientState:Landroid/os/Bundle;

.field greylist-max-o mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/autofill/FillEventHistory$Event;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSessionId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 827
    new-instance v0, Landroid/service/autofill/FillEventHistory$1;

    invoke-direct {v0}, Landroid/service/autofill/FillEventHistory$1;-><init>()V

    sput-object v0, Landroid/service/autofill/FillEventHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "clientState"    # Landroid/os/Bundle;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p2, p0, Landroid/service/autofill/FillEventHistory;->mClientState:Landroid/os/Bundle;

    .line 126
    iput p1, p0, Landroid/service/autofill/FillEventHistory;->mSessionId:I

    .line 127
    return-void
.end method


# virtual methods
.method public greylist-max-o addEvent(Landroid/service/autofill/FillEventHistory$Event;)V
    .registers 4
    .param p1, "event"    # Landroid/service/autofill/FillEventHistory$Event;

    .line 115
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    if-nez v0, :cond_c

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    .line 118
    :cond_c
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getClientState()Landroid/os/Bundle;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mClientState:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getEvents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/autofill/FillEventHistory$Event;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSessionId()I
    .registers 2

    .line 84
    iget v0, p0, Landroid/service/autofill/FillEventHistory;->mSessionId:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    if-nez v0, :cond_8

    const-string/jumbo v0, "no events"

    goto :goto_e

    :cond_8
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 10
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 141
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mClientState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 142
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 143
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b1

    .line 145
    :cond_f
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 148
    .local v0, "numEvents":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    if-ge v2, v0, :cond_b1

    .line 149
    iget-object v3, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/FillEventHistory$Event;

    .line 150
    .local v3, "event":Landroid/service/autofill/FillEventHistory$Event;
    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmEventType(Landroid/service/autofill/FillEventHistory$Event;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmDatasetId(Landroid/service/autofill/FillEventHistory$Event;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmClientState(Landroid/service/autofill/FillEventHistory$Event;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 153
    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmSelectedDatasetIds(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 154
    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmIgnoredDatasetIds(Landroid/service/autofill/FillEventHistory$Event;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 155
    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmChangedFieldIds(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 156
    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmChangedDatasetIds(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 158
    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmManuallyFilledFieldIds(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 159
    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmManuallyFilledFieldIds(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_82

    .line 160
    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmManuallyFilledFieldIds(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 161
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_70
    if-ge v5, v4, :cond_82

    .line 162
    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmManuallyFilledDatasetIds(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 161
    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    .line 165
    .end local v4    # "size":I
    .end local v5    # "j":I
    :cond_82
    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmDetectedFieldIds(Landroid/service/autofill/FillEventHistory$Event;)[Landroid/view/autofill/AutofillId;

    move-result-object v4

    .line 166
    .local v4, "detectedFields":[Landroid/view/autofill/AutofillId;
    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 167
    if-eqz v4, :cond_92

    .line 168
    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmDetectedFieldClassifications(Landroid/service/autofill/FillEventHistory$Event;)[Landroid/service/autofill/FieldClassification;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/service/autofill/FieldClassification;->writeArrayToParcel(Landroid/os/Parcel;[Landroid/service/autofill/FieldClassification;)V

    .line 171
    :cond_92
    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmSaveDialogNotShowReason(Landroid/service/autofill/FillEventHistory$Event;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmUiType(Landroid/service/autofill/FillEventHistory$Event;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    invoke-static {}, Landroid/service/autofill/Flags;->addLastFocusedIdToFillEventHistory()Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 174
    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmFocusedId(Landroid/service/autofill/FillEventHistory$Event;)Landroid/view/autofill/AutofillId;

    move-result-object v5

    invoke-virtual {p1, v5, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 148
    .end local v3    # "event":Landroid/service/autofill/FillEventHistory$Event;
    .end local v4    # "detectedFields":[Landroid/view/autofill/AutofillId;
    :cond_ad
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1f

    .line 178
    .end local v0    # "numEvents":I
    .end local v2    # "i":I
    :cond_b1
    :goto_b1
    return-void
.end method
