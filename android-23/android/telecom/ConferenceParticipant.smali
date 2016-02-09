.class public Landroid/telecom/ConferenceParticipant;
.super Ljava/lang/Object;
.source "ConferenceParticipant.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ConferenceParticipant$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDisplayName:Ljava/lang/String;

.field private final mEndpoint:Landroid/net/Uri;

.field private final mHandle:Landroid/net/Uri;

.field private final mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 71
    new-instance v0, Landroid/telecom/ConferenceParticipant$1;

    #@2
    invoke-direct {v0}, Landroid/telecom/ConferenceParticipant$1;-><init>()V

    #@5
    .line 70
    sput-object v0, Landroid/telecom/ConferenceParticipant;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "handle"    # Landroid/net/Uri;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "endpoint"    # Landroid/net/Uri;
    .param p4, "state"    # I

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    iput-object p1, p0, Landroid/telecom/ConferenceParticipant;->mHandle:Landroid/net/Uri;

    #@5
    .line 62
    iput-object p2, p0, Landroid/telecom/ConferenceParticipant;->mDisplayName:Ljava/lang/String;

    #@7
    .line 63
    iput-object p3, p0, Landroid/telecom/ConferenceParticipant;->mEndpoint:Landroid/net/Uri;

    #@9
    .line 64
    iput p4, p0, Landroid/telecom/ConferenceParticipant;->mState:I

    #@b
    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 91
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Landroid/telecom/ConferenceParticipant;->mDisplayName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEndpoint()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Landroid/telecom/ConferenceParticipant;->mEndpoint:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getHandle()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Landroid/telecom/ConferenceParticipant;->mHandle:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 156
    iget v0, p0, Landroid/telecom/ConferenceParticipant;->mState:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 116
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[ConferenceParticipant Handle: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 117
    iget-object v1, p0, Landroid/telecom/ConferenceParticipant;->mHandle:Landroid/net/Uri;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    .line 118
    const-string/jumbo v1, " DisplayName: "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 119
    iget-object v1, p0, Landroid/telecom/ConferenceParticipant;->mDisplayName:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 120
    const-string/jumbo v1, " Endpoint: "

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 121
    iget-object v1, p0, Landroid/telecom/ConferenceParticipant;->mEndpoint:Landroid/net/Uri;

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    .line 122
    const-string/jumbo v1, " State: "

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 123
    iget v1, p0, Landroid/telecom/ConferenceParticipant;->mState:I

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    .line 124
    const-string/jumbo v1, "]"

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 102
    iget-object v0, p0, Landroid/telecom/ConferenceParticipant;->mHandle:Landroid/net/Uri;

    #@3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@6
    .line 103
    iget-object v0, p0, Landroid/telecom/ConferenceParticipant;->mDisplayName:Ljava/lang/String;

    #@8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b
    .line 104
    iget-object v0, p0, Landroid/telecom/ConferenceParticipant;->mEndpoint:Landroid/net/Uri;

    #@d
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@10
    .line 105
    iget v0, p0, Landroid/telecom/ConferenceParticipant;->mState:I

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 101
    return-void
.end method
