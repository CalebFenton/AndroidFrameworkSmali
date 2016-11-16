.class final Landroid/telecom/ConferenceParticipant$1;
.super Ljava/lang/Object;
.source "ConferenceParticipant.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConferenceParticipant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/telecom/ConferenceParticipant;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ConferenceParticipant;
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 75
    const-class v5, Landroid/telecom/ParcelableCall;

    #@2
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v0

    #@6
    .line 76
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@9
    move-result-object v3

    #@a
    check-cast v3, Landroid/net/Uri;

    #@c
    .line 77
    .local v3, "handle":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 78
    .local v1, "displayName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroid/net/Uri;

    #@16
    .line 79
    .local v2, "endpoint":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v4

    #@1a
    .line 80
    .local v4, "state":I
    new-instance v5, Landroid/telecom/ConferenceParticipant;

    #@1c
    invoke-direct {v5, v3, v1, v2, v4}, Landroid/telecom/ConferenceParticipant;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;I)V

    #@1f
    return-object v5
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 74
    invoke-virtual {p0, p1}, Landroid/telecom/ConferenceParticipant$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ConferenceParticipant;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/telecom/ConferenceParticipant;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 85
    new-array v0, p1, [Landroid/telecom/ConferenceParticipant;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/telecom/ConferenceParticipant$1;->newArray(I)[Landroid/telecom/ConferenceParticipant;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
