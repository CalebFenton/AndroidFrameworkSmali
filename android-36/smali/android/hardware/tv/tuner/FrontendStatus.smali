.class public final Landroid/hardware/tv/tuner/FrontendStatus;
.super Ljava/lang/Object;
.source "FrontendStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/FrontendStatus$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist agc:I = 0xe

.field public static final blacklist allPlpInfo:I = 0x29

.field public static final blacklist bandwidth:I = 0x19

.field public static final blacklist ber:I = 0x2

.field public static final blacklist bers:I = 0x17

.field public static final blacklist codeRates:I = 0x18

.field public static final blacklist dvbtCellIds:I = 0x28

.field public static final blacklist freqOffset:I = 0x12

.field public static final blacklist hierarchy:I = 0x13

.field public static final blacklist innerFec:I = 0x8

.field public static final blacklist interleaving:I = 0x1e

.field public static final blacklist interval:I = 0x1a

.field public static final blacklist inversion:I = 0xa

.field public static final blacklist iptvAverageJitterMs:I = 0x2e

.field public static final blacklist iptvContentUrl:I = 0x2a

.field public static final blacklist iptvPacketsLost:I = 0x2c

.field public static final blacklist iptvPacketsReceived:I = 0x2b

.field public static final blacklist iptvWorstJitterMs:I = 0x2d

.field public static final blacklist isDemodLocked:I = 0x0

.field public static final blacklist isEWBS:I = 0xd

.field public static final blacklist isLayerError:I = 0x10

.field public static final blacklist isLinear:I = 0x23

.field public static final blacklist isLnaOn:I = 0xf

.field public static final blacklist isMiso:I = 0x22

.field public static final blacklist isRfLocked:I = 0x14

.field public static final blacklist isShortFrames:I = 0x24

.field public static final blacklist isdbtMode:I = 0x25

.field public static final blacklist isdbtSegment:I = 0x1f

.field public static final blacklist lnbVoltage:I = 0xb

.field public static final blacklist mer:I = 0x11

.field public static final blacklist modulationStatus:I = 0x9

.field public static final blacklist modulations:I = 0x16

.field public static final blacklist partialReceptionFlag:I = 0x26

.field public static final blacklist per:I = 0x3

.field public static final blacklist plpId:I = 0xc

.field public static final blacklist plpInfo:I = 0x15

.field public static final blacklist preBer:I = 0x4

.field public static final blacklist rollOff:I = 0x21

.field public static final blacklist signalQuality:I = 0x5

.field public static final blacklist signalStrength:I = 0x6

.field public static final blacklist snr:I = 0x1

.field public static final blacklist standardExt:I = 0x2f

.field public static final blacklist streamIdList:I = 0x27

.field public static final blacklist symbolRate:I = 0x7

.field public static final blacklist systemId:I = 0x1d

.field public static final blacklist transmissionMode:I = 0x1b

.field public static final blacklist tsDataRate:I = 0x20

.field public static final blacklist uec:I = 0x1c


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 809
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendStatus$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "_value":Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_tag:I

    .line 68
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    .line 69
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_tag:I

    .line 77
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    .line 78
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->readFromParcel(Landroid/os/Parcel;)V

    .line 73
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/FrontendStatus-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 1272
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 1275
    return-void

    .line 1273
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 1332
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_tag:I

    .line 1333
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    .line 1334
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 1278
    packed-switch p1, :pswitch_data_ac

    .line 1328
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1326
    :pswitch_1c
    const-string v0, "standardExt"

    return-object v0

    .line 1325
    :pswitch_1f
    const-string v0, "iptvAverageJitterMs"

    return-object v0

    .line 1324
    :pswitch_22
    const-string v0, "iptvWorstJitterMs"

    return-object v0

    .line 1323
    :pswitch_25
    const-string v0, "iptvPacketsLost"

    return-object v0

    .line 1322
    :pswitch_28
    const-string v0, "iptvPacketsReceived"

    return-object v0

    .line 1321
    :pswitch_2b
    const-string v0, "iptvContentUrl"

    return-object v0

    .line 1320
    :pswitch_2e
    const-string v0, "allPlpInfo"

    return-object v0

    .line 1319
    :pswitch_31
    const-string v0, "dvbtCellIds"

    return-object v0

    .line 1318
    :pswitch_34
    const-string v0, "streamIdList"

    return-object v0

    .line 1317
    :pswitch_37
    const-string v0, "partialReceptionFlag"

    return-object v0

    .line 1316
    :pswitch_3a
    const-string v0, "isdbtMode"

    return-object v0

    .line 1315
    :pswitch_3d
    const-string v0, "isShortFrames"

    return-object v0

    .line 1314
    :pswitch_40
    const-string v0, "isLinear"

    return-object v0

    .line 1313
    :pswitch_43
    const-string v0, "isMiso"

    return-object v0

    .line 1312
    :pswitch_46
    const-string v0, "rollOff"

    return-object v0

    .line 1311
    :pswitch_49
    const-string v0, "tsDataRate"

    return-object v0

    .line 1310
    :pswitch_4c
    const-string v0, "isdbtSegment"

    return-object v0

    .line 1309
    :pswitch_4f
    const-string v0, "interleaving"

    return-object v0

    .line 1308
    :pswitch_52
    const-string v0, "systemId"

    return-object v0

    .line 1307
    :pswitch_55
    const-string v0, "uec"

    return-object v0

    .line 1306
    :pswitch_58
    const-string v0, "transmissionMode"

    return-object v0

    .line 1305
    :pswitch_5b
    const-string v0, "interval"

    return-object v0

    .line 1304
    :pswitch_5e
    const-string v0, "bandwidth"

    return-object v0

    .line 1303
    :pswitch_61
    const-string v0, "codeRates"

    return-object v0

    .line 1302
    :pswitch_64
    const-string v0, "bers"

    return-object v0

    .line 1301
    :pswitch_67
    const-string v0, "modulations"

    return-object v0

    .line 1300
    :pswitch_6a
    const-string v0, "plpInfo"

    return-object v0

    .line 1299
    :pswitch_6d
    const-string v0, "isRfLocked"

    return-object v0

    .line 1298
    :pswitch_70
    const-string v0, "hierarchy"

    return-object v0

    .line 1297
    :pswitch_73
    const-string v0, "freqOffset"

    return-object v0

    .line 1296
    :pswitch_76
    const-string v0, "mer"

    return-object v0

    .line 1295
    :pswitch_79
    const-string v0, "isLayerError"

    return-object v0

    .line 1294
    :pswitch_7c
    const-string v0, "isLnaOn"

    return-object v0

    .line 1293
    :pswitch_7f
    const-string v0, "agc"

    return-object v0

    .line 1292
    :pswitch_82
    const-string v0, "isEWBS"

    return-object v0

    .line 1291
    :pswitch_85
    const-string v0, "plpId"

    return-object v0

    .line 1290
    :pswitch_88
    const-string v0, "lnbVoltage"

    return-object v0

    .line 1289
    :pswitch_8b
    const-string v0, "inversion"

    return-object v0

    .line 1288
    :pswitch_8e
    const-string v0, "modulationStatus"

    return-object v0

    .line 1287
    :pswitch_91
    const-string v0, "innerFec"

    return-object v0

    .line 1286
    :pswitch_94
    const-string v0, "symbolRate"

    return-object v0

    .line 1285
    :pswitch_97
    const-string v0, "signalStrength"

    return-object v0

    .line 1284
    :pswitch_9a
    const-string v0, "signalQuality"

    return-object v0

    .line 1283
    :pswitch_9d
    const-string v0, "preBer"

    return-object v0

    .line 1282
    :pswitch_a0
    const-string v0, "per"

    return-object v0

    .line 1281
    :pswitch_a3
    const-string v0, "ber"

    return-object v0

    .line 1280
    :pswitch_a6
    const-string v0, "snr"

    return-object v0

    .line 1279
    :pswitch_a9
    const-string v0, "isDemodLocked"

    return-object v0

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_a9
        :pswitch_a6
        :pswitch_a3
        :pswitch_a0
        :pswitch_9d
        :pswitch_9a
        :pswitch_97
        :pswitch_94
        :pswitch_91
        :pswitch_8e
        :pswitch_8b
        :pswitch_88
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist agc(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # I

    .line 297
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0xe

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist allPlpInfo([Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3
    .param p0, "_value"    # [Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    .line 702
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x29

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist bandwidth(Landroid/hardware/tv/tuner/FrontendBandwidth;)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendBandwidth;

    .line 462
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x19

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist ber(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # I

    .line 117
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/4 v1, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist bers([I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3
    .param p0, "_value"    # [I

    .line 432
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist codeRates([J)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3
    .param p0, "_value"    # [J

    .line 447
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 1257
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1258
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 1259
    const/4 v1, 0x0

    .line 1260
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 1261
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 1260
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1263
    :cond_19
    return v1

    .line 1265
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 1266
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 1268
    :cond_26
    return v0
.end method

.method public static blacklist dvbtCellIds([I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3
    .param p0, "_value"    # [I

    .line 687
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x28

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist freqOffset(J)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 5
    .param p0, "_value"    # J

    .line 357
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x12

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist hierarchy(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # I

    .line 372
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x13

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist innerFec(J)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 5
    .param p0, "_value"    # J

    .line 207
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x8

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist interleaving([Landroid/hardware/tv/tuner/FrontendInterleaveMode;)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3
    .param p0, "_value"    # [Landroid/hardware/tv/tuner/FrontendInterleaveMode;

    .line 537
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x1e

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist interval(Landroid/hardware/tv/tuner/FrontendGuardInterval;)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendGuardInterval;

    .line 477
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist inversion(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # I

    .line 237
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0xa

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist iptvAverageJitterMs(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # I

    .line 777
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x2e

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist iptvContentUrl(Ljava/lang/String;)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3
    .param p0, "_value"    # Ljava/lang/String;

    .line 717
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x2a

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist iptvPacketsLost(J)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 5
    .param p0, "_value"    # J

    .line 747
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x2c

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist iptvPacketsReceived(J)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 5
    .param p0, "_value"    # J

    .line 732
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x2b

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist iptvWorstJitterMs(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # I

    .line 762
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x2d

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isDemodLocked(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # Z

    .line 87
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isEWBS(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # Z

    .line 282
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0xd

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isLayerError([Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3
    .param p0, "_value"    # [Z

    .line 327
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isLinear(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # Z

    .line 612
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x23

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isLnaOn(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # Z

    .line 312
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0xf

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isMiso(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # Z

    .line 597
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x22

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isRfLocked(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # Z

    .line 387
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x14

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isShortFrames(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # Z

    .line 627
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x24

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbtMode(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # I

    .line 642
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x25

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbtSegment([I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3
    .param p0, "_value"    # [I

    .line 552
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x1f

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist lnbVoltage(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # I

    .line 252
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0xb

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist mer(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # I

    .line 342
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x11

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist modulationStatus(Landroid/hardware/tv/tuner/FrontendModulationStatus;)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendModulationStatus;

    .line 222
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist modulations([Landroid/hardware/tv/tuner/FrontendModulation;)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3
    .param p0, "_value"    # [Landroid/hardware/tv/tuner/FrontendModulation;

    .line 417
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist partialReceptionFlag(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # I

    .line 657
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x26

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist per(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # I

    .line 132
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/4 v1, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist plpId(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # I

    .line 267
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0xc

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist plpInfo([Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3
    .param p0, "_value"    # [Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;

    .line 402
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x15

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist preBer(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # I

    .line 147
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/4 v1, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist rollOff(Landroid/hardware/tv/tuner/FrontendRollOff;)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendRollOff;

    .line 582
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x21

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist signalQuality(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # I

    .line 162
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/4 v1, 0x5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist signalStrength(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # I

    .line 177
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/4 v1, 0x6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist snr(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # I

    .line 102
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist standardExt(Landroid/hardware/tv/tuner/FrontendStandardExt;)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendStandardExt;

    .line 792
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x2f

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist streamIdList([I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3
    .param p0, "_value"    # [I

    .line 672
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x27

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist symbolRate(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # I

    .line 192
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/4 v1, 0x7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist systemId(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # I

    .line 522
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x1d

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist transmissionMode(Landroid/hardware/tv/tuner/FrontendTransmissionMode;)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendTransmissionMode;

    .line 492
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x1b

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist tsDataRate([I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3
    .param p0, "_value"    # [I

    .line 567
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x20

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist uec(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4
    .param p0, "_value"    # I

    .line 507
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x1c

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 1221
    const/4 v0, 0x0

    .line 1222
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getTag()I

    move-result v1

    sparse-switch v1, :sswitch_data_6e

    goto :goto_6d

    .line 1251
    :sswitch_9
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getStandardExt()Landroid/hardware/tv/tuner/FrontendStandardExt;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_6d

    .line 1248
    :sswitch_13
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getAllPlpInfo()[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1249
    goto :goto_6d

    .line 1245
    :sswitch_1d
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getRollOff()Landroid/hardware/tv/tuner/FrontendRollOff;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1246
    goto :goto_6d

    .line 1242
    :sswitch_27
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getInterleaving()[Landroid/hardware/tv/tuner/FrontendInterleaveMode;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1243
    goto :goto_6d

    .line 1239
    :sswitch_31
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getTransmissionMode()Landroid/hardware/tv/tuner/FrontendTransmissionMode;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1240
    goto :goto_6d

    .line 1236
    :sswitch_3b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getInterval()Landroid/hardware/tv/tuner/FrontendGuardInterval;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1237
    goto :goto_6d

    .line 1233
    :sswitch_45
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getBandwidth()Landroid/hardware/tv/tuner/FrontendBandwidth;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1234
    goto :goto_6d

    .line 1230
    :sswitch_4f
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getModulations()[Landroid/hardware/tv/tuner/FrontendModulation;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1231
    goto :goto_6d

    .line 1227
    :sswitch_59
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getPlpInfo()[Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1228
    goto :goto_6d

    .line 1224
    :sswitch_63
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getModulationStatus()Landroid/hardware/tv/tuner/FrontendModulationStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1225
    nop

    .line 1254
    :goto_6d
    return v0

    :sswitch_data_6e
    .sparse-switch
        0x9 -> :sswitch_63
        0x15 -> :sswitch_59
        0x16 -> :sswitch_4f
        0x19 -> :sswitch_45
        0x1a -> :sswitch_3b
        0x1b -> :sswitch_31
        0x1e -> :sswitch_27
        0x21 -> :sswitch_1d
        0x29 -> :sswitch_13
        0x2f -> :sswitch_9
    .end sparse-switch
.end method

.method public blacklist getAgc()I
    .registers 2

    .line 301
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 302
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getAllPlpInfo()[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;
    .registers 2

    .line 706
    const/16 v0, 0x29

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 707
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    return-object v0
.end method

.method public blacklist getBandwidth()Landroid/hardware/tv/tuner/FrontendBandwidth;
    .registers 2

    .line 466
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 467
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendBandwidth;

    return-object v0
.end method

.method public blacklist getBer()I
    .registers 2

    .line 121
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 122
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getBers()[I
    .registers 2

    .line 436
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 437
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getCodeRates()[J
    .registers 2

    .line 451
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 452
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [J

    return-object v0
.end method

.method public blacklist getDvbtCellIds()[I
    .registers 2

    .line 691
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 692
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getFreqOffset()J
    .registers 3

    .line 361
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 362
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getHierarchy()I
    .registers 2

    .line 376
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 377
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getInnerFec()J
    .registers 3

    .line 211
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 212
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getInterleaving()[Landroid/hardware/tv/tuner/FrontendInterleaveMode;
    .registers 2

    .line 541
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 542
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/tv/tuner/FrontendInterleaveMode;

    return-object v0
.end method

.method public blacklist getInterval()Landroid/hardware/tv/tuner/FrontendGuardInterval;
    .registers 2

    .line 481
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 482
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendGuardInterval;

    return-object v0
.end method

.method public blacklist getInversion()I
    .registers 2

    .line 241
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 242
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getIptvAverageJitterMs()I
    .registers 2

    .line 781
    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 782
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getIptvContentUrl()Ljava/lang/String;
    .registers 2

    .line 721
    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 722
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIptvPacketsLost()J
    .registers 3

    .line 751
    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 752
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getIptvPacketsReceived()J
    .registers 3

    .line 736
    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 737
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getIptvWorstJitterMs()I
    .registers 2

    .line 766
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 767
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getIsDemodLocked()Z
    .registers 2

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 92
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getIsEWBS()Z
    .registers 2

    .line 286
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 287
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getIsLayerError()[Z
    .registers 2

    .line 331
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 332
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [Z

    return-object v0
.end method

.method public blacklist getIsLinear()Z
    .registers 2

    .line 616
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 617
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getIsLnaOn()Z
    .registers 2

    .line 316
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 317
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getIsMiso()Z
    .registers 2

    .line 601
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 602
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getIsRfLocked()Z
    .registers 2

    .line 391
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 392
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getIsShortFrames()Z
    .registers 2

    .line 631
    const/16 v0, 0x24

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 632
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getIsdbtMode()I
    .registers 2

    .line 646
    const/16 v0, 0x25

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 647
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getIsdbtSegment()[I
    .registers 2

    .line 556
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 557
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getLnbVoltage()I
    .registers 2

    .line 256
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 257
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getMer()I
    .registers 2

    .line 346
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 347
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getModulationStatus()Landroid/hardware/tv/tuner/FrontendModulationStatus;
    .registers 2

    .line 226
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 227
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendModulationStatus;

    return-object v0
.end method

.method public blacklist getModulations()[Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 2

    .line 421
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 422
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/tv/tuner/FrontendModulation;

    return-object v0
.end method

.method public blacklist getPartialReceptionFlag()I
    .registers 2

    .line 661
    const/16 v0, 0x26

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 662
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getPer()I
    .registers 2

    .line 136
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 137
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getPlpId()I
    .registers 2

    .line 271
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 272
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getPlpInfo()[Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;
    .registers 2

    .line 406
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 407
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;

    return-object v0
.end method

.method public blacklist getPreBer()I
    .registers 2

    .line 151
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 152
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getRollOff()Landroid/hardware/tv/tuner/FrontendRollOff;
    .registers 2

    .line 586
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 587
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendRollOff;

    return-object v0
.end method

.method public blacklist getSignalQuality()I
    .registers 2

    .line 166
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 167
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getSignalStrength()I
    .registers 2

    .line 181
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 182
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getSnr()I
    .registers 2

    .line 106
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 107
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 806
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getStandardExt()Landroid/hardware/tv/tuner/FrontendStandardExt;
    .registers 2

    .line 796
    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 797
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendStandardExt;

    return-object v0
.end method

.method public blacklist getStreamIdList()[I
    .registers 2

    .line 676
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 677
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getSymbolRate()I
    .registers 2

    .line 196
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 197
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getSystemId()I
    .registers 2

    .line 526
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 527
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 81
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_tag:I

    return v0
.end method

.method public blacklist getTransmissionMode()Landroid/hardware/tv/tuner/FrontendTransmissionMode;
    .registers 2

    .line 496
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 497
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendTransmissionMode;

    return-object v0
.end method

.method public blacklist getTsDataRate()[I
    .registers 2

    .line 571
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 572
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getUec()I
    .registers 2

    .line 511
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 512
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 973
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 974
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_240

    .line 1216
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1212
    :pswitch_20
    sget-object v1, Landroid/hardware/tv/tuner/FrontendStandardExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendStandardExt;

    .line 1213
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendStandardExt;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1214
    return-void

    .line 1207
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendStandardExt;
    :pswitch_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1208
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1209
    return-void

    .line 1202
    .end local v1    # "_aidl_value":I
    :pswitch_38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1203
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1204
    return-void

    .line 1197
    .end local v1    # "_aidl_value":I
    :pswitch_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1198
    .local v1, "_aidl_value":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1199
    return-void

    .line 1192
    .end local v1    # "_aidl_value":J
    :pswitch_50
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1193
    .restart local v1    # "_aidl_value":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1194
    return-void

    .line 1187
    .end local v1    # "_aidl_value":J
    :pswitch_5c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1188
    .local v1, "_aidl_value":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1189
    return-void

    .line 1182
    .end local v1    # "_aidl_value":Ljava/lang/String;
    :pswitch_64
    sget-object v1, Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    .line 1183
    .local v1, "_aidl_value":[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1184
    return-void

    .line 1177
    .end local v1    # "_aidl_value":[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;
    :pswitch_70
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1178
    .local v1, "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1179
    return-void

    .line 1172
    .end local v1    # "_aidl_value":[I
    :pswitch_78
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1173
    .restart local v1    # "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1174
    return-void

    .line 1167
    .end local v1    # "_aidl_value":[I
    :pswitch_80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1168
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1169
    return-void

    .line 1162
    .end local v1    # "_aidl_value":I
    :pswitch_8c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1163
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1164
    return-void

    .line 1157
    .end local v1    # "_aidl_value":I
    :pswitch_98
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1158
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1159
    return-void

    .line 1152
    .end local v1    # "_aidl_value":Z
    :pswitch_a4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1153
    .restart local v1    # "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1154
    return-void

    .line 1147
    .end local v1    # "_aidl_value":Z
    :pswitch_b0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1148
    .restart local v1    # "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1149
    return-void

    .line 1142
    .end local v1    # "_aidl_value":Z
    :pswitch_bc
    sget-object v1, Landroid/hardware/tv/tuner/FrontendRollOff;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendRollOff;

    .line 1143
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendRollOff;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1144
    return-void

    .line 1137
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendRollOff;
    :pswitch_c8
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1138
    .local v1, "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1139
    return-void

    .line 1132
    .end local v1    # "_aidl_value":[I
    :pswitch_d0
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1133
    .restart local v1    # "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1134
    return-void

    .line 1127
    .end local v1    # "_aidl_value":[I
    :pswitch_d8
    sget-object v1, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/tv/tuner/FrontendInterleaveMode;

    .line 1128
    .local v1, "_aidl_value":[Landroid/hardware/tv/tuner/FrontendInterleaveMode;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1129
    return-void

    .line 1122
    .end local v1    # "_aidl_value":[Landroid/hardware/tv/tuner/FrontendInterleaveMode;
    :pswitch_e4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1123
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1124
    return-void

    .line 1117
    .end local v1    # "_aidl_value":I
    :pswitch_f0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1118
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1119
    return-void

    .line 1112
    .end local v1    # "_aidl_value":I
    :pswitch_fc
    sget-object v1, Landroid/hardware/tv/tuner/FrontendTransmissionMode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendTransmissionMode;

    .line 1113
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendTransmissionMode;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1114
    return-void

    .line 1107
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendTransmissionMode;
    :pswitch_108
    sget-object v1, Landroid/hardware/tv/tuner/FrontendGuardInterval;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendGuardInterval;

    .line 1108
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendGuardInterval;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1109
    return-void

    .line 1102
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendGuardInterval;
    :pswitch_114
    sget-object v1, Landroid/hardware/tv/tuner/FrontendBandwidth;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendBandwidth;

    .line 1103
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendBandwidth;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1104
    return-void

    .line 1097
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendBandwidth;
    :pswitch_120
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    .line 1098
    .local v1, "_aidl_value":[J
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1099
    return-void

    .line 1092
    .end local v1    # "_aidl_value":[J
    :pswitch_128
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1093
    .local v1, "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1094
    return-void

    .line 1087
    .end local v1    # "_aidl_value":[I
    :pswitch_130
    sget-object v1, Landroid/hardware/tv/tuner/FrontendModulation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/tv/tuner/FrontendModulation;

    .line 1088
    .local v1, "_aidl_value":[Landroid/hardware/tv/tuner/FrontendModulation;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1089
    return-void

    .line 1082
    .end local v1    # "_aidl_value":[Landroid/hardware/tv/tuner/FrontendModulation;
    :pswitch_13c
    sget-object v1, Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;

    .line 1083
    .local v1, "_aidl_value":[Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1084
    return-void

    .line 1077
    .end local v1    # "_aidl_value":[Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;
    :pswitch_148
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1078
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1079
    return-void

    .line 1072
    .end local v1    # "_aidl_value":Z
    :pswitch_154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1073
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1074
    return-void

    .line 1067
    .end local v1    # "_aidl_value":I
    :pswitch_160
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1068
    .local v1, "_aidl_value":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1069
    return-void

    .line 1062
    .end local v1    # "_aidl_value":J
    :pswitch_16c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1063
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1064
    return-void

    .line 1057
    .end local v1    # "_aidl_value":I
    :pswitch_178
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v1

    .line 1058
    .local v1, "_aidl_value":[Z
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1059
    return-void

    .line 1052
    .end local v1    # "_aidl_value":[Z
    :pswitch_180
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1053
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1054
    return-void

    .line 1047
    .end local v1    # "_aidl_value":Z
    :pswitch_18c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1048
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1049
    return-void

    .line 1042
    .end local v1    # "_aidl_value":I
    :pswitch_198
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1043
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1044
    return-void

    .line 1037
    .end local v1    # "_aidl_value":Z
    :pswitch_1a4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1038
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1039
    return-void

    .line 1032
    .end local v1    # "_aidl_value":I
    :pswitch_1b0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1033
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1034
    return-void

    .line 1027
    .end local v1    # "_aidl_value":I
    :pswitch_1bc
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1028
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1029
    return-void

    .line 1022
    .end local v1    # "_aidl_value":I
    :pswitch_1c8
    sget-object v1, Landroid/hardware/tv/tuner/FrontendModulationStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendModulationStatus;

    .line 1023
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendModulationStatus;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1024
    return-void

    .line 1017
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendModulationStatus;
    :pswitch_1d4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1018
    .local v1, "_aidl_value":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1019
    return-void

    .line 1012
    .end local v1    # "_aidl_value":J
    :pswitch_1e0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1013
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1014
    return-void

    .line 1007
    .end local v1    # "_aidl_value":I
    :pswitch_1ec
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1008
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1009
    return-void

    .line 1002
    .end local v1    # "_aidl_value":I
    :pswitch_1f8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1003
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1004
    return-void

    .line 997
    .end local v1    # "_aidl_value":I
    :pswitch_204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 998
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 999
    return-void

    .line 992
    .end local v1    # "_aidl_value":I
    :pswitch_210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 993
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 994
    return-void

    .line 987
    .end local v1    # "_aidl_value":I
    :pswitch_21c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 988
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 989
    return-void

    .line 982
    .end local v1    # "_aidl_value":I
    :pswitch_228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 983
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 984
    return-void

    .line 977
    .end local v1    # "_aidl_value":I
    :pswitch_234
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 978
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 979
    return-void

    :pswitch_data_240
    .packed-switch 0x0
        :pswitch_234
        :pswitch_228
        :pswitch_21c
        :pswitch_210
        :pswitch_204
        :pswitch_1f8
        :pswitch_1ec
        :pswitch_1e0
        :pswitch_1d4
        :pswitch_1c8
        :pswitch_1bc
        :pswitch_1b0
        :pswitch_1a4
        :pswitch_198
        :pswitch_18c
        :pswitch_180
        :pswitch_178
        :pswitch_16c
        :pswitch_160
        :pswitch_154
        :pswitch_148
        :pswitch_13c
        :pswitch_130
        :pswitch_128
        :pswitch_120
        :pswitch_114
        :pswitch_108
        :pswitch_fc
        :pswitch_f0
        :pswitch_e4
        :pswitch_d8
        :pswitch_d0
        :pswitch_c8
        :pswitch_bc
        :pswitch_b0
        :pswitch_a4
        :pswitch_98
        :pswitch_8c
        :pswitch_80
        :pswitch_78
        :pswitch_70
        :pswitch_64
        :pswitch_5c
        :pswitch_50
        :pswitch_44
        :pswitch_38
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setAgc(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 306
    const/16 v0, 0xe

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 307
    return-void
.end method

.method public blacklist setAllPlpInfo([Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;)V
    .registers 3
    .param p1, "_value"    # [Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    .line 711
    const/16 v0, 0x29

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 712
    return-void
.end method

.method public blacklist setBandwidth(Landroid/hardware/tv/tuner/FrontendBandwidth;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendBandwidth;

    .line 471
    const/16 v0, 0x19

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 472
    return-void
.end method

.method public blacklist setBer(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 126
    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 127
    return-void
.end method

.method public blacklist setBers([I)V
    .registers 3
    .param p1, "_value"    # [I

    .line 441
    const/16 v0, 0x17

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 442
    return-void
.end method

.method public blacklist setCodeRates([J)V
    .registers 3
    .param p1, "_value"    # [J

    .line 456
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 457
    return-void
.end method

.method public blacklist setDvbtCellIds([I)V
    .registers 3
    .param p1, "_value"    # [I

    .line 696
    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 697
    return-void
.end method

.method public blacklist setFreqOffset(J)V
    .registers 5
    .param p1, "_value"    # J

    .line 366
    const/16 v0, 0x12

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 367
    return-void
.end method

.method public blacklist setHierarchy(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 381
    const/16 v0, 0x13

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 382
    return-void
.end method

.method public blacklist setInnerFec(J)V
    .registers 5
    .param p1, "_value"    # J

    .line 216
    const/16 v0, 0x8

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 217
    return-void
.end method

.method public blacklist setInterleaving([Landroid/hardware/tv/tuner/FrontendInterleaveMode;)V
    .registers 3
    .param p1, "_value"    # [Landroid/hardware/tv/tuner/FrontendInterleaveMode;

    .line 546
    const/16 v0, 0x1e

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 547
    return-void
.end method

.method public blacklist setInterval(Landroid/hardware/tv/tuner/FrontendGuardInterval;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendGuardInterval;

    .line 486
    const/16 v0, 0x1a

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 487
    return-void
.end method

.method public blacklist setInversion(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 246
    const/16 v0, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 247
    return-void
.end method

.method public blacklist setIptvAverageJitterMs(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 786
    const/16 v0, 0x2e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 787
    return-void
.end method

.method public blacklist setIptvContentUrl(Ljava/lang/String;)V
    .registers 3
    .param p1, "_value"    # Ljava/lang/String;

    .line 726
    const/16 v0, 0x2a

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 727
    return-void
.end method

.method public blacklist setIptvPacketsLost(J)V
    .registers 5
    .param p1, "_value"    # J

    .line 756
    const/16 v0, 0x2c

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 757
    return-void
.end method

.method public blacklist setIptvPacketsReceived(J)V
    .registers 5
    .param p1, "_value"    # J

    .line 741
    const/16 v0, 0x2b

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 742
    return-void
.end method

.method public blacklist setIptvWorstJitterMs(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 771
    const/16 v0, 0x2d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 772
    return-void
.end method

.method public blacklist setIsDemodLocked(Z)V
    .registers 4
    .param p1, "_value"    # Z

    .line 96
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 97
    return-void
.end method

.method public blacklist setIsEWBS(Z)V
    .registers 4
    .param p1, "_value"    # Z

    .line 291
    const/16 v0, 0xd

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 292
    return-void
.end method

.method public blacklist setIsLayerError([Z)V
    .registers 3
    .param p1, "_value"    # [Z

    .line 336
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 337
    return-void
.end method

.method public blacklist setIsLinear(Z)V
    .registers 4
    .param p1, "_value"    # Z

    .line 621
    const/16 v0, 0x23

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 622
    return-void
.end method

.method public blacklist setIsLnaOn(Z)V
    .registers 4
    .param p1, "_value"    # Z

    .line 321
    const/16 v0, 0xf

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 322
    return-void
.end method

.method public blacklist setIsMiso(Z)V
    .registers 4
    .param p1, "_value"    # Z

    .line 606
    const/16 v0, 0x22

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 607
    return-void
.end method

.method public blacklist setIsRfLocked(Z)V
    .registers 4
    .param p1, "_value"    # Z

    .line 396
    const/16 v0, 0x14

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 397
    return-void
.end method

.method public blacklist setIsShortFrames(Z)V
    .registers 4
    .param p1, "_value"    # Z

    .line 636
    const/16 v0, 0x24

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 637
    return-void
.end method

.method public blacklist setIsdbtMode(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 651
    const/16 v0, 0x25

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 652
    return-void
.end method

.method public blacklist setIsdbtSegment([I)V
    .registers 3
    .param p1, "_value"    # [I

    .line 561
    const/16 v0, 0x1f

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 562
    return-void
.end method

.method public blacklist setLnbVoltage(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 261
    const/16 v0, 0xb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 262
    return-void
.end method

.method public blacklist setMer(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 351
    const/16 v0, 0x11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 352
    return-void
.end method

.method public blacklist setModulationStatus(Landroid/hardware/tv/tuner/FrontendModulationStatus;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendModulationStatus;

    .line 231
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 232
    return-void
.end method

.method public blacklist setModulations([Landroid/hardware/tv/tuner/FrontendModulation;)V
    .registers 3
    .param p1, "_value"    # [Landroid/hardware/tv/tuner/FrontendModulation;

    .line 426
    const/16 v0, 0x16

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 427
    return-void
.end method

.method public blacklist setPartialReceptionFlag(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 666
    const/16 v0, 0x26

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 667
    return-void
.end method

.method public blacklist setPer(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 141
    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 142
    return-void
.end method

.method public blacklist setPlpId(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 276
    const/16 v0, 0xc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 277
    return-void
.end method

.method public blacklist setPlpInfo([Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;)V
    .registers 3
    .param p1, "_value"    # [Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;

    .line 411
    const/16 v0, 0x15

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 412
    return-void
.end method

.method public blacklist setPreBer(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 156
    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 157
    return-void
.end method

.method public blacklist setRollOff(Landroid/hardware/tv/tuner/FrontendRollOff;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendRollOff;

    .line 591
    const/16 v0, 0x21

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 592
    return-void
.end method

.method public blacklist setSignalQuality(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 171
    const/4 v0, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 172
    return-void
.end method

.method public blacklist setSignalStrength(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 186
    const/4 v0, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 187
    return-void
.end method

.method public blacklist setSnr(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 111
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 112
    return-void
.end method

.method public blacklist setStandardExt(Landroid/hardware/tv/tuner/FrontendStandardExt;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendStandardExt;

    .line 801
    const/16 v0, 0x2f

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 802
    return-void
.end method

.method public blacklist setStreamIdList([I)V
    .registers 3
    .param p1, "_value"    # [I

    .line 681
    const/16 v0, 0x27

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 682
    return-void
.end method

.method public blacklist setSymbolRate(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 201
    const/4 v0, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 202
    return-void
.end method

.method public blacklist setSystemId(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 531
    const/16 v0, 0x1d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 532
    return-void
.end method

.method public blacklist setTransmissionMode(Landroid/hardware/tv/tuner/FrontendTransmissionMode;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendTransmissionMode;

    .line 501
    const/16 v0, 0x1b

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 502
    return-void
.end method

.method public blacklist setTsDataRate([I)V
    .registers 3
    .param p1, "_value"    # [I

    .line 576
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 577
    return-void
.end method

.method public blacklist setUec(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 516
    const/16 v0, 0x1c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 517
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 822
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_tag:I

    packed-switch v0, :pswitch_data_1b0

    goto/16 :goto_1af

    .line 966
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getStandardExt()Landroid/hardware/tv/tuner/FrontendStandardExt;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1af

    .line 963
    :pswitch_15
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIptvAverageJitterMs()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 964
    goto/16 :goto_1af

    .line 960
    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIptvWorstJitterMs()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 961
    goto/16 :goto_1af

    .line 957
    :pswitch_27
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIptvPacketsLost()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 958
    goto/16 :goto_1af

    .line 954
    :pswitch_30
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIptvPacketsReceived()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 955
    goto/16 :goto_1af

    .line 951
    :pswitch_39
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIptvContentUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 952
    goto/16 :goto_1af

    .line 948
    :pswitch_42
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getAllPlpInfo()[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 949
    goto/16 :goto_1af

    .line 945
    :pswitch_4b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getDvbtCellIds()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 946
    goto/16 :goto_1af

    .line 942
    :pswitch_54
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getStreamIdList()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 943
    goto/16 :goto_1af

    .line 939
    :pswitch_5d
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getPartialReceptionFlag()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 940
    goto/16 :goto_1af

    .line 936
    :pswitch_66
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsdbtMode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    goto/16 :goto_1af

    .line 933
    :pswitch_6f
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsShortFrames()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 934
    goto/16 :goto_1af

    .line 930
    :pswitch_78
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsLinear()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 931
    goto/16 :goto_1af

    .line 927
    :pswitch_81
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsMiso()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 928
    goto/16 :goto_1af

    .line 924
    :pswitch_8a
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getRollOff()Landroid/hardware/tv/tuner/FrontendRollOff;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 925
    goto/16 :goto_1af

    .line 921
    :pswitch_93
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getTsDataRate()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 922
    goto/16 :goto_1af

    .line 918
    :pswitch_9c
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsdbtSegment()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 919
    goto/16 :goto_1af

    .line 915
    :pswitch_a5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getInterleaving()[Landroid/hardware/tv/tuner/FrontendInterleaveMode;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 916
    goto/16 :goto_1af

    .line 912
    :pswitch_ae
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getSystemId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 913
    goto/16 :goto_1af

    .line 909
    :pswitch_b7
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getUec()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 910
    goto/16 :goto_1af

    .line 906
    :pswitch_c0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getTransmissionMode()Landroid/hardware/tv/tuner/FrontendTransmissionMode;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 907
    goto/16 :goto_1af

    .line 903
    :pswitch_c9
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getInterval()Landroid/hardware/tv/tuner/FrontendGuardInterval;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 904
    goto/16 :goto_1af

    .line 900
    :pswitch_d2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getBandwidth()Landroid/hardware/tv/tuner/FrontendBandwidth;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 901
    goto/16 :goto_1af

    .line 897
    :pswitch_db
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getCodeRates()[J

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 898
    goto/16 :goto_1af

    .line 894
    :pswitch_e4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getBers()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 895
    goto/16 :goto_1af

    .line 891
    :pswitch_ed
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getModulations()[Landroid/hardware/tv/tuner/FrontendModulation;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 892
    goto/16 :goto_1af

    .line 888
    :pswitch_f6
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getPlpInfo()[Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 889
    goto/16 :goto_1af

    .line 885
    :pswitch_ff
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsRfLocked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 886
    goto/16 :goto_1af

    .line 882
    :pswitch_108
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getHierarchy()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 883
    goto/16 :goto_1af

    .line 879
    :pswitch_111
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getFreqOffset()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 880
    goto/16 :goto_1af

    .line 876
    :pswitch_11a
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getMer()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 877
    goto/16 :goto_1af

    .line 873
    :pswitch_123
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsLayerError()[Z

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 874
    goto/16 :goto_1af

    .line 870
    :pswitch_12c
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsLnaOn()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 871
    goto/16 :goto_1af

    .line 867
    :pswitch_135
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getAgc()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 868
    goto/16 :goto_1af

    .line 864
    :pswitch_13e
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsEWBS()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 865
    goto/16 :goto_1af

    .line 861
    :pswitch_147
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getPlpId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    goto :goto_1af

    .line 858
    :pswitch_14f
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getLnbVoltage()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    goto :goto_1af

    .line 855
    :pswitch_157
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getInversion()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    goto :goto_1af

    .line 852
    :pswitch_15f
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getModulationStatus()Landroid/hardware/tv/tuner/FrontendModulationStatus;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 853
    goto :goto_1af

    .line 849
    :pswitch_167
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getInnerFec()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 850
    goto :goto_1af

    .line 846
    :pswitch_16f
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getSymbolRate()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 847
    goto :goto_1af

    .line 843
    :pswitch_177
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getSignalStrength()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 844
    goto :goto_1af

    .line 840
    :pswitch_17f
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getSignalQuality()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    goto :goto_1af

    .line 837
    :pswitch_187
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getPreBer()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 838
    goto :goto_1af

    .line 834
    :pswitch_18f
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getPer()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    goto :goto_1af

    .line 831
    :pswitch_197
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getBer()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    goto :goto_1af

    .line 828
    :pswitch_19f
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getSnr()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    goto :goto_1af

    .line 825
    :pswitch_1a7
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsDemodLocked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 826
    nop

    .line 969
    :goto_1af
    return-void

    :pswitch_data_1b0
    .packed-switch 0x0
        :pswitch_1a7
        :pswitch_19f
        :pswitch_197
        :pswitch_18f
        :pswitch_187
        :pswitch_17f
        :pswitch_177
        :pswitch_16f
        :pswitch_167
        :pswitch_15f
        :pswitch_157
        :pswitch_14f
        :pswitch_147
        :pswitch_13e
        :pswitch_135
        :pswitch_12c
        :pswitch_123
        :pswitch_11a
        :pswitch_111
        :pswitch_108
        :pswitch_ff
        :pswitch_f6
        :pswitch_ed
        :pswitch_e4
        :pswitch_db
        :pswitch_d2
        :pswitch_c9
        :pswitch_c0
        :pswitch_b7
        :pswitch_ae
        :pswitch_a5
        :pswitch_9c
        :pswitch_93
        :pswitch_8a
        :pswitch_81
        :pswitch_78
        :pswitch_6f
        :pswitch_66
        :pswitch_5d
        :pswitch_54
        :pswitch_4b
        :pswitch_42
        :pswitch_39
        :pswitch_30
        :pswitch_27
        :pswitch_1e
        :pswitch_15
        :pswitch_c
    .end packed-switch
.end method
