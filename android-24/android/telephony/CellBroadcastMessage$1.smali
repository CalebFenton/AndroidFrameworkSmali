.class final Landroid/telephony/CellBroadcastMessage$1;
.super Ljava/lang/Object;
.source "CellBroadcastMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellBroadcastMessage;
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
        "Landroid/telephony/CellBroadcastMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellBroadcastMessage;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 114
    new-instance v0, Landroid/telephony/CellBroadcastMessage;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/telephony/CellBroadcastMessage;-><init>(Landroid/os/Parcel;Landroid/telephony/CellBroadcastMessage;)V

    #@6
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 113
    invoke-virtual {p0, p1}, Landroid/telephony/CellBroadcastMessage$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellBroadcastMessage;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/CellBroadcastMessage;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 119
    new-array v0, p1, [Landroid/telephony/CellBroadcastMessage;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 118
    invoke-virtual {p0, p1}, Landroid/telephony/CellBroadcastMessage$1;->newArray(I)[Landroid/telephony/CellBroadcastMessage;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
