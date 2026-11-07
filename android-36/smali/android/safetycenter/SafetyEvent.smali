.class public final Landroid/safetycenter/SafetyEvent;
.super Ljava/lang/Object;
.source "SafetyEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safetycenter/SafetyEvent$Builder;,
        Landroid/safetycenter/SafetyEvent$Type;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/safetycenter/SafetyEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SAFETY_EVENT_TYPE_DEVICE_LOCALE_CHANGED:I = 0x1f4

.field public static final whitelist SAFETY_EVENT_TYPE_DEVICE_REBOOTED:I = 0x258

.field public static final whitelist SAFETY_EVENT_TYPE_REFRESH_REQUESTED:I = 0xc8

.field public static final whitelist SAFETY_EVENT_TYPE_RESOLVING_ACTION_FAILED:I = 0x190

.field public static final whitelist SAFETY_EVENT_TYPE_RESOLVING_ACTION_SUCCEEDED:I = 0x12c

.field public static final whitelist SAFETY_EVENT_TYPE_SOURCE_STATE_CHANGED:I = 0x64


# instance fields
.field private final blacklist mRefreshBroadcastId:Ljava/lang/String;

.field private final blacklist mSafetySourceIssueActionId:Ljava/lang/String;

.field private final blacklist mSafetySourceIssueId:Ljava/lang/String;

.field private final blacklist mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRefreshBroadcastId(Landroid/safetycenter/SafetyEvent;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyEvent;->mRefreshBroadcastId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSafetySourceIssueActionId(Landroid/safetycenter/SafetyEvent;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyEvent;->mSafetySourceIssueActionId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSafetySourceIssueId(Landroid/safetycenter/SafetyEvent;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyEvent;->mSafetySourceIssueId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/safetycenter/SafetyEvent;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/SafetyEvent;->mType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateType(I)I
    .registers 1

    invoke-static {p0}, Landroid/safetycenter/SafetyEvent;->validateType(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 97
    new-instance v0, Landroid/safetycenter/SafetyEvent$1;

    invoke-direct {v0}, Landroid/safetycenter/SafetyEvent$1;-><init>()V

    sput-object v0, Landroid/safetycenter/SafetyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "refreshBroadcastId"    # Ljava/lang/String;
    .param p3, "safetySourceIssueId"    # Ljava/lang/String;
    .param p4, "safetySourceIssueActionId"    # Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p1, p0, Landroid/safetycenter/SafetyEvent;->mType:I

    .line 126
    iput-object p2, p0, Landroid/safetycenter/SafetyEvent;->mRefreshBroadcastId:Ljava/lang/String;

    .line 127
    iput-object p3, p0, Landroid/safetycenter/SafetyEvent;->mSafetySourceIssueId:Ljava/lang/String;

    .line 128
    iput-object p4, p0, Landroid/safetycenter/SafetyEvent;->mSafetySourceIssueActionId:Ljava/lang/String;

    .line 129
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/safetycenter/SafetyEvent-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/safetycenter/SafetyEvent;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist validateType(I)I
    .registers 4
    .param p0, "value"    # I

    .line 335
    sparse-switch p0, :sswitch_data_1e

    .line 345
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Type for SafetyEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :sswitch_1c
    return p0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x64 -> :sswitch_1c
        0xc8 -> :sswitch_1c
        0x12c -> :sswitch_1c
        0x190 -> :sswitch_1c
        0x1f4 -> :sswitch_1c
        0x258 -> :sswitch_1c
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 197
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 198
    :cond_4
    instance-of v1, p1, Landroid/safetycenter/SafetyEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 199
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/safetycenter/SafetyEvent;

    .line 200
    .local v1, "that":Landroid/safetycenter/SafetyEvent;
    iget v3, p0, Landroid/safetycenter/SafetyEvent;->mType:I

    iget v4, v1, Landroid/safetycenter/SafetyEvent;->mType:I

    if-ne v3, v4, :cond_32

    iget-object v3, p0, Landroid/safetycenter/SafetyEvent;->mRefreshBroadcastId:Ljava/lang/String;

    iget-object v4, v1, Landroid/safetycenter/SafetyEvent;->mRefreshBroadcastId:Ljava/lang/String;

    .line 201
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Landroid/safetycenter/SafetyEvent;->mSafetySourceIssueId:Ljava/lang/String;

    iget-object v4, v1, Landroid/safetycenter/SafetyEvent;->mSafetySourceIssueId:Ljava/lang/String;

    .line 202
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Landroid/safetycenter/SafetyEvent;->mSafetySourceIssueActionId:Ljava/lang/String;

    iget-object v4, v1, Landroid/safetycenter/SafetyEvent;->mSafetySourceIssueActionId:Ljava/lang/String;

    .line 203
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_33

    :cond_32
    move v0, v2

    .line 200
    :goto_33
    return v0
.end method

.method public whitelist getRefreshBroadcastId()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Landroid/safetycenter/SafetyEvent;->mRefreshBroadcastId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSafetySourceIssueActionId()Ljava/lang/String;
    .registers 2

    .line 179
    iget-object v0, p0, Landroid/safetycenter/SafetyEvent;->mSafetySourceIssueActionId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSafetySourceIssueId()Ljava/lang/String;
    .registers 2

    .line 163
    iget-object v0, p0, Landroid/safetycenter/SafetyEvent;->mSafetySourceIssueId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 134
    iget v0, p0, Landroid/safetycenter/SafetyEvent;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 208
    iget v0, p0, Landroid/safetycenter/SafetyEvent;->mType:I

    .line 209
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyEvent;->mRefreshBroadcastId:Ljava/lang/String;

    iget-object v2, p0, Landroid/safetycenter/SafetyEvent;->mSafetySourceIssueId:Ljava/lang/String;

    iget-object v3, p0, Landroid/safetycenter/SafetyEvent;->mSafetySourceIssueActionId:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 208
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SafetyEvent{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/SafetyEvent;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRefreshBroadcastId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyEvent;->mRefreshBroadcastId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSafetySourceIssueId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyEvent;->mSafetySourceIssueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSafetySourceIssueActionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyEvent;->mSafetySourceIssueActionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 189
    iget v0, p0, Landroid/safetycenter/SafetyEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-object v0, p0, Landroid/safetycenter/SafetyEvent;->mRefreshBroadcastId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Landroid/safetycenter/SafetyEvent;->mSafetySourceIssueId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Landroid/safetycenter/SafetyEvent;->mSafetySourceIssueActionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    return-void
.end method
