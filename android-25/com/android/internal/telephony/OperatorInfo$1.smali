.class final Lcom/android/internal/telephony/OperatorInfo$1;
.super Ljava/lang/Object;
.source "OperatorInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OperatorInfo;
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
        "Lcom/android/internal/telephony/OperatorInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/OperatorInfo;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 147
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    #@2
    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/internal/telephony/OperatorInfo$State;

    #@14
    .line 147
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;)V

    #@17
    .line 152
    .local v0, "opInfo":Lcom/android/internal/telephony/OperatorInfo;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/OperatorInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/OperatorInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/OperatorInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 157
    new-array v0, p1, [Lcom/android/internal/telephony/OperatorInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/OperatorInfo$1;->newArray(I)[Lcom/android/internal/telephony/OperatorInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
