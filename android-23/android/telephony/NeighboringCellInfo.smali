.class public Landroid/telephony/NeighboringCellInfo;
.super Ljava/lang/Object;
.source "NeighboringCellInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/NeighboringCellInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_CID:I = -0x1

.field public static final UNKNOWN_RSSI:I = 0x63


# instance fields
.field private mCid:I

.field private mLac:I

.field private mNetworkType:I

.field private mPsc:I

.field private mRssi:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 290
    new-instance v0, Landroid/telephony/NeighboringCellInfo$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/NeighboringCellInfo$1;-><init>()V

    #@5
    .line 289
    sput-object v0, Landroid/telephony/NeighboringCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 81
    const/16 v0, 0x63

    #@6
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    #@8
    .line 82
    iput v1, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    #@a
    .line 83
    iput v1, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    #@c
    .line 84
    iput v1, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    #@e
    .line 85
    const/4 v0, 0x0

    #@f
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    #@11
    .line 80
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "rssi"    # I
    .param p2, "cid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 99
    iput p1, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    #@5
    .line 100
    iput p2, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    #@7
    .line 98
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 7
    .param p1, "rssi"    # I
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "radioType"    # I

    #@0
    .prologue
    const/16 v3, 0x8

    #@2
    const/4 v6, 0x0

    #@3
    const/4 v5, -0x1

    #@4
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 115
    iput p1, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    #@9
    .line 116
    iput v6, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    #@b
    .line 117
    iput v5, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    #@d
    .line 118
    iput v5, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    #@f
    .line 119
    iput v5, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    #@11
    .line 123
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@14
    move-result v2

    #@15
    .line 124
    .local v2, "l":I
    if-le v2, v3, :cond_0

    #@17
    return-void

    #@18
    .line 125
    :cond_0
    if-ge v2, v3, :cond_1

    #@1a
    .line 126
    const/4 v1, 0x0

    #@1b
    .local v1, "i":I
    :goto_0
    rsub-int/lit8 v3, v2, 0x8

    #@1d
    if-ge v1, v3, :cond_1

    #@1f
    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v4, "0"

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object p2

    #@33
    .line 126
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0

    #@36
    .line 132
    .end local v1    # "i":I
    :cond_1
    packed-switch p3, :pswitch_data_0

    #@39
    .line 113
    :cond_2
    :goto_1
    :pswitch_0
    return-void

    #@3a
    .line 135
    :pswitch_1
    :try_start_0
    iput p3, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    #@3c
    .line 137
    const-string/jumbo v3, "FFFFFFFF"

    #@3f
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@42
    move-result v3

    #@43
    if-nez v3, :cond_2

    #@45
    .line 138
    const/4 v3, 0x4

    #@46
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    const/16 v4, 0x10

    #@4c
    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@53
    move-result v3

    #@54
    iput v3, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    #@56
    .line 139
    const/4 v3, 0x0

    #@57
    const/4 v4, 0x4

    #@58
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    const/16 v4, 0x10

    #@5e
    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@65
    move-result v3

    #@66
    iput v3, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@68
    goto :goto_1

    #@69
    .line 150
    :catch_0
    move-exception v0

    #@6a
    .line 152
    .local v0, "e":Ljava/lang/NumberFormatException;
    iput v5, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    #@6c
    .line 153
    iput v5, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    #@6e
    .line 154
    iput v5, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    #@70
    .line 155
    iput v6, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    #@72
    goto :goto_1

    #@73
    .line 146
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :pswitch_2
    :try_start_1
    iput p3, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    #@75
    .line 147
    const/16 v3, 0x10

    #@77
    invoke-static {p2, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    #@7a
    move-result-object v3

    #@7b
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@7e
    move-result v3

    #@7f
    iput v3, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@81
    goto :goto_1

    #@82
    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    #@9
    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    #@f
    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    #@15
    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    #@1b
    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    #@21
    .line 162
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 278
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCid()I
    .locals 1

    #@0
    .prologue
    .line 194
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    #@2
    return v0
.end method

.method public getLac()I
    .locals 1

    #@0
    .prologue
    .line 186
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    #@2
    return v0
.end method

.method public getNetworkType()I
    .locals 1

    #@0
    .prologue
    .line 227
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    #@2
    return v0
.end method

.method public getPsc()I
    .locals 1

    #@0
    .prologue
    .line 202
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    #@2
    return v0
.end method

.method public getRssi()I
    .locals 1

    #@0
    .prologue
    .line 178
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    #@2
    return v0
.end method

.method public setCid(I)V
    .locals 0
    .param p1, "cid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 241
    iput p1, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    #@2
    .line 240
    return-void
.end method

.method public setRssi(I)V
    .locals 0
    .param p1, "rssi"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 256
    iput p1, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    #@2
    .line 255
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x63

    #@2
    const/4 v2, -0x1

    #@3
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    .line 263
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "["

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 264
    iget v1, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 265
    iget v1, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    #@14
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 266
    const-string/jumbo v2, "@"

    #@1f
    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 266
    iget v1, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    #@25
    if-ne v1, v3, :cond_1

    #@27
    const-string/jumbo v1, "-"

    #@2a
    .line 265
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    .line 272
    :cond_0
    :goto_1
    const-string/jumbo v1, "]"

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    return-object v1

    #@38
    .line 266
    :cond_1
    iget v1, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    #@3a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3d
    move-result-object v1

    #@3e
    goto :goto_0

    #@3f
    .line 267
    :cond_2
    iget v1, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    #@41
    if-eq v1, v2, :cond_0

    #@43
    iget v1, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    #@45
    if-eq v1, v2, :cond_0

    #@47
    .line 268
    iget v1, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    #@49
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    .line 269
    iget v2, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    #@53
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    .line 270
    const-string/jumbo v2, "@"

    #@5e
    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    .line 270
    iget v1, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    #@64
    if-ne v1, v3, :cond_3

    #@66
    const-string/jumbo v1, "-"

    #@69
    .line 268
    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6c
    goto :goto_1

    #@6d
    .line 270
    :cond_3
    iget v1, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    #@6f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@72
    move-result-object v1

    #@73
    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 282
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 283
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 284
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 285
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 286
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 281
    return-void
.end method
