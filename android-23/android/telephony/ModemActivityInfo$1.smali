.class final Landroid/telephony/ModemActivityInfo$1;
.super Ljava/lang/Object;
.source "ModemActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ModemActivityInfo;
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
        "Landroid/telephony/ModemActivityInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ModemActivityInfo;
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v9, 0x5

    #@1
    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@4
    move-result-wide v2

    #@5
    .line 75
    .local v2, "timestamp":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v4

    #@9
    .line 76
    .local v4, "sleepTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v5

    #@d
    .line 77
    .local v5, "idleTimeMs":I
    new-array v6, v9, [I

    #@f
    .line 78
    .local v6, "txTimeMs":[I
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v9, :cond_0

    #@12
    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v1

    #@16
    aput v1, v6, v0

    #@18
    .line 78
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v7

    #@1f
    .line 82
    .local v7, "rxTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v8

    #@23
    .line 83
    .local v8, "energyUsed":I
    new-instance v1, Landroid/telephony/ModemActivityInfo;

    #@25
    invoke-direct/range {v1 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V

    #@28
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 73
    invoke-virtual {p0, p1}, Landroid/telephony/ModemActivityInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ModemActivityInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/ModemActivityInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 88
    new-array v0, p1, [Landroid/telephony/ModemActivityInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/telephony/ModemActivityInfo$1;->newArray(I)[Landroid/telephony/ModemActivityInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
