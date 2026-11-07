.class public final Landroid/net/wifi/CoexUnsafeChannel;
.super Ljava/lang/Object;
.source "CoexUnsafeChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/CoexUnsafeChannel;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist POWER_CAP_NONE:I = 0x7fffffff


# instance fields
.field private blacklist mBand:I

.field private blacklist mChannel:I

.field private blacklist mPowerCapDbm:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 149
    new-instance v0, Landroid/net/wifi/CoexUnsafeChannel$1;

    invoke-direct {v0}, Landroid/net/wifi/CoexUnsafeChannel$1;-><init>()V

    sput-object v0, Landroid/net/wifi/CoexUnsafeChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 4
    .param p1, "band"    # I
    .param p2, "channel"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 60
    iput p1, p0, Landroid/net/wifi/CoexUnsafeChannel;->mBand:I

    .line 61
    iput p2, p0, Landroid/net/wifi/CoexUnsafeChannel;->mChannel:I

    .line 62
    const v0, 0x7fffffff

    iput v0, p0, Landroid/net/wifi/CoexUnsafeChannel;->mPowerCapDbm:I

    .line 63
    return-void

    .line 58
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public constructor whitelist <init>(III)V
    .registers 5
    .param p1, "band"    # I
    .param p2, "channel"    # I
    .param p3, "powerCapDbm"    # I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 76
    iput p1, p0, Landroid/net/wifi/CoexUnsafeChannel;->mBand:I

    .line 77
    iput p2, p0, Landroid/net/wifi/CoexUnsafeChannel;->mChannel:I

    .line 78
    iput p3, p0, Landroid/net/wifi/CoexUnsafeChannel;->mPowerCapDbm:I

    .line 79
    return-void

    .line 74
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 101
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 102
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2a

    .line 103
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/net/wifi/CoexUnsafeChannel;

    .line 104
    .local v2, "that":Landroid/net/wifi/CoexUnsafeChannel;
    iget v3, p0, Landroid/net/wifi/CoexUnsafeChannel;->mBand:I

    iget v4, v2, Landroid/net/wifi/CoexUnsafeChannel;->mBand:I

    if-ne v3, v4, :cond_28

    iget v3, p0, Landroid/net/wifi/CoexUnsafeChannel;->mChannel:I

    iget v4, v2, Landroid/net/wifi/CoexUnsafeChannel;->mChannel:I

    if-ne v3, v4, :cond_28

    iget v3, p0, Landroid/net/wifi/CoexUnsafeChannel;->mPowerCapDbm:I

    iget v4, v2, Landroid/net/wifi/CoexUnsafeChannel;->mPowerCapDbm:I

    if-ne v3, v4, :cond_28

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    return v0

    .line 102
    .end local v2    # "that":Landroid/net/wifi/CoexUnsafeChannel;
    :cond_2a
    :goto_2a
    return v1
.end method

.method public whitelist getBand()I
    .registers 2

    .line 83
    iget v0, p0, Landroid/net/wifi/CoexUnsafeChannel;->mBand:I

    return v0
.end method

.method public whitelist getChannel()I
    .registers 2

    .line 88
    iget v0, p0, Landroid/net/wifi/CoexUnsafeChannel;->mChannel:I

    return v0
.end method

.method public whitelist getPowerCapDbm()I
    .registers 2

    .line 96
    iget v0, p0, Landroid/net/wifi/CoexUnsafeChannel;->mPowerCapDbm:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 111
    iget v0, p0, Landroid/net/wifi/CoexUnsafeChannel;->mBand:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/CoexUnsafeChannel;->mChannel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/CoexUnsafeChannel;->mPowerCapDbm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CoexUnsafeChannel{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "sj":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/net/wifi/CoexUnsafeChannel;->mBand:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 118
    const-string v1, "2.4GHz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 119
    :cond_12
    iget v1, p0, Landroid/net/wifi/CoexUnsafeChannel;->mBand:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1d

    .line 120
    const-string v1, "5GHz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 121
    :cond_1d
    iget v1, p0, Landroid/net/wifi/CoexUnsafeChannel;->mBand:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_29

    .line 122
    const-string v1, "6GHz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 124
    :cond_29
    const-string v1, "UNKNOWN BAND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :goto_2e
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/CoexUnsafeChannel;->mChannel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    iget v2, p0, Landroid/net/wifi/CoexUnsafeChannel;->mPowerCapDbm:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_4f

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/CoexUnsafeChannel;->mPowerCapDbm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dBm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_4f
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 143
    iget v0, p0, Landroid/net/wifi/CoexUnsafeChannel;->mBand:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget v0, p0, Landroid/net/wifi/CoexUnsafeChannel;->mChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Landroid/net/wifi/CoexUnsafeChannel;->mPowerCapDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    return-void
.end method
