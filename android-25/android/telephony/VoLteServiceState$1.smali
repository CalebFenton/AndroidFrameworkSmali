.class final Landroid/telephony/VoLteServiceState$1;
.super Ljava/lang/Object;
.source "VoLteServiceState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/VoLteServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/VoLteServiceState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 145
    new-instance v0, Landroid/telephony/VoLteServiceState;

    #@2
    invoke-direct {v0, p1}, Landroid/telephony/VoLteServiceState;-><init>(Landroid/os/Parcel;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 144
    invoke-virtual {p0, p1}, Landroid/telephony/VoLteServiceState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/VoLteServiceState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/VoLteServiceState;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 149
    new-array v0, p1, [Landroid/telephony/VoLteServiceState;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 148
    invoke-virtual {p0, p1}, Landroid/telephony/VoLteServiceState$1;->newArray(I)[Landroid/telephony/VoLteServiceState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
