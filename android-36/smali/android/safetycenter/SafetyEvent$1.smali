.class Landroid/safetycenter/SafetyEvent$1;
.super Ljava/lang/Object;
.source "SafetyEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/safetycenter/SafetyEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetyEvent;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .local v0, "type":I
    new-instance v1, Landroid/safetycenter/SafetyEvent$Builder;

    invoke-direct {v1, v0}, Landroid/safetycenter/SafetyEvent$Builder;-><init>(I)V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/safetycenter/SafetyEvent$Builder;->setRefreshBroadcastId(Ljava/lang/String;)Landroid/safetycenter/SafetyEvent$Builder;

    move-result-object v1

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/safetycenter/SafetyEvent$Builder;->setSafetySourceIssueId(Ljava/lang/String;)Landroid/safetycenter/SafetyEvent$Builder;

    move-result-object v1

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/safetycenter/SafetyEvent$Builder;->setSafetySourceIssueActionId(Ljava/lang/String;)Landroid/safetycenter/SafetyEvent$Builder;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Landroid/safetycenter/SafetyEvent$Builder;->build()Landroid/safetycenter/SafetyEvent;

    move-result-object v1

    .line 102
    return-object v1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetyEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/safetycenter/SafetyEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/safetycenter/SafetyEvent;
    .registers 3
    .param p1, "size"    # I

    .line 111
    new-array v0, p1, [Landroid/safetycenter/SafetyEvent;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetyEvent$1;->newArray(I)[Landroid/safetycenter/SafetyEvent;

    move-result-object p1

    return-object p1
.end method
