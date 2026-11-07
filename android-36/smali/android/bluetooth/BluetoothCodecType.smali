.class public final Landroid/bluetooth/BluetoothCodecType;
.super Ljava/lang/Object;
.source "BluetoothCodecType.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CODEC_ID_AAC:J = 0x2L

.field public static final whitelist CODEC_ID_APTX:J = 0x1004fffL

.field public static final whitelist CODEC_ID_APTX_HD:J = 0x2400d7ffL

.field public static final whitelist CODEC_ID_LDAC:J = -0x55fed201L

.field public static final blacklist CODEC_ID_LHDCV5:J = 0x4c35053affL

.field public static final whitelist CODEC_ID_OPUS:J = 0x100e0ffL

.field public static final whitelist CODEC_ID_SBC:J

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothCodecType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCodecId:J

.field private final blacklist mCodecName:Ljava/lang/String;

.field private final blacklist mNativeCodecType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 203
    new-instance v0, Landroid/bluetooth/BluetoothCodecType$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothCodecType$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothCodecType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IJ)V
    .registers 6
    .param p1, "codecType"    # I
    .param p2, "codecId"    # J

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Landroid/bluetooth/BluetoothCodecType;->mNativeCodecType:I

    .line 74
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p2

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecType;->mCodecId:J

    .line 75
    invoke-static {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothCodecType;->mCodecName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor whitelist <init>(IJLjava/lang/String;)V
    .registers 7
    .param p1, "codecType"    # I
    .param p2, "codecId"    # J
    .param p4, "codecName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Landroid/bluetooth/BluetoothCodecType;->mNativeCodecType:I

    .line 89
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p2

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecType;->mCodecId:J

    .line 90
    iput-object p4, p0, Landroid/bluetooth/BluetoothCodecType;->mCodecName:Ljava/lang/String;

    .line 91
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothCodecType;->mNativeCodecType:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecType;->mCodecId:J

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothCodecType;->mCodecName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothCodecType-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothCodecType;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothCodecType;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 154
    new-instance v0, Landroid/bluetooth/BluetoothCodecType;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothCodecType;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static whitelist createFromType(I)Landroid/bluetooth/BluetoothCodecType;
    .registers 5
    .param p0, "codecType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 175
    const-wide/16 v0, -0x1

    sparse-switch p0, :sswitch_data_2c

    .line 186
    move-wide v2, v0

    goto :goto_1e

    .line 182
    :sswitch_7
    const-wide/32 v2, 0x100e0ff

    goto :goto_1e

    .line 185
    :sswitch_b
    move-wide v2, v0

    goto :goto_1e

    .line 181
    :sswitch_d
    const-wide/32 v2, -0x55fed201

    goto :goto_1e

    .line 180
    :sswitch_11
    const-wide/32 v2, 0x2400d7ff

    goto :goto_1e

    .line 179
    :sswitch_15
    const-wide/32 v2, 0x1004fff

    goto :goto_1e

    .line 178
    :sswitch_19
    const-wide/16 v2, 0x2

    goto :goto_1e

    .line 177
    :sswitch_1c
    const-wide/16 v2, 0x0

    .line 186
    :goto_1e
    nop

    .line 188
    .local v2, "codecId":J
    cmp-long v0, v2, v0

    if-nez v0, :cond_25

    .line 189
    const/4 v0, 0x0

    return-object v0

    .line 191
    :cond_25
    new-instance v0, Landroid/bluetooth/BluetoothCodecType;

    invoke-direct {v0, p0, v2, v3}, Landroid/bluetooth/BluetoothCodecType;-><init>(IJ)V

    return-object v0

    nop

    :sswitch_data_2c
    .sparse-switch
        0x0 -> :sswitch_1c
        0x1 -> :sswitch_19
        0x2 -> :sswitch_15
        0x3 -> :sswitch_11
        0x4 -> :sswitch_d
        0x5 -> :sswitch_b
        0x6 -> :sswitch_7
        0xf4240 -> :sswitch_b
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 145
    instance-of v0, p1, Landroid/bluetooth/BluetoothCodecType;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 146
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothCodecType;

    .line 147
    .local v0, "other":Landroid/bluetooth/BluetoothCodecType;
    iget-wide v2, v0, Landroid/bluetooth/BluetoothCodecType;->mCodecId:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecType;->mCodecId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1

    .line 149
    .end local v0    # "other":Landroid/bluetooth/BluetoothCodecType;
    :cond_12
    return v1
.end method

.method public whitelist getCodecId()J
    .registers 3

    .line 115
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecType;->mCodecId:J

    return-wide v0
.end method

.method public whitelist getCodecName()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecType;->mCodecName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNativeCodecType()I
    .registers 2

    .line 130
    iget v0, p0, Landroid/bluetooth/BluetoothCodecType;->mNativeCodecType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 140
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecType;->mCodecId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public whitelist isMandatoryCodec()Z
    .registers 2

    .line 95
    iget v0, p0, Landroid/bluetooth/BluetoothCodecType;->mNativeCodecType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecType;->mCodecName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 160
    iget v0, p0, Landroid/bluetooth/BluetoothCodecType;->mNativeCodecType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecType;->mCodecId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 162
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecType;->mCodecName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 163
    return-void
.end method
