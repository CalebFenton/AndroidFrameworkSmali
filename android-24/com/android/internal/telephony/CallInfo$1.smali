.class final Lcom/android/internal/telephony/CallInfo$1;
.super Ljava/lang/Object;
.source "CallInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallInfo;
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
        "Lcom/android/internal/telephony/CallInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/CallInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 53
    new-instance v0, Lcom/android/internal/telephony/CallInfo;

    #@2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallInfo;-><init>(Ljava/lang/String;)V

    #@9
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/CallInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/CallInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 58
    new-array v0, p1, [Lcom/android/internal/telephony/CallInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallInfo$1;->newArray(I)[Lcom/android/internal/telephony/CallInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
