.class public final Landroid/nfc/cardemulation/PollingFrame;
.super Ljava/lang/Object;
.source "PollingFrame.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/PollingFrame$PollingFrameType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/cardemulation/PollingFrame;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist KEY_POLLING_LOOP_DATA:Ljava/lang/String; = "android.nfc.cardemulation.DATA"

.field private static final blacklist KEY_POLLING_LOOP_GAIN:Ljava/lang/String; = "android.nfc.cardemulation.GAIN"

.field private static final blacklist KEY_POLLING_LOOP_TIMESTAMP:Ljava/lang/String; = "android.nfc.cardemulation.TIMESTAMP"

.field private static final blacklist KEY_POLLING_LOOP_TRIGGERED_AUTOTRANSACT:Ljava/lang/String; = "android.nfc.cardemulation.TRIGGERED_AUTOTRANSACT"

.field private static final blacklist KEY_POLLING_LOOP_TYPE:Ljava/lang/String; = "android.nfc.cardemulation.TYPE"

.field public static final whitelist POLLING_LOOP_TYPE_A:I = 0x41

.field public static final whitelist POLLING_LOOP_TYPE_B:I = 0x42

.field public static final whitelist POLLING_LOOP_TYPE_F:I = 0x46

.field public static final whitelist POLLING_LOOP_TYPE_OFF:I = 0x58

.field public static final whitelist POLLING_LOOP_TYPE_ON:I = 0x4f

.field public static final whitelist POLLING_LOOP_TYPE_UNKNOWN:I = 0x55


# instance fields
.field private final blacklist mData:[B

.field private final blacklist mGain:I

.field private final blacklist mTimestamp:J

.field private blacklist mTriggeredAutoTransact:Z

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 138
    new-instance v0, Landroid/nfc/cardemulation/PollingFrame$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/PollingFrame$1;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/PollingFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I[BIJZ)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "data"    # [B
    .param p3, "gain"    # I
    .param p4, "timestampMicros"    # J
    .param p6, "triggeredAutoTransact"    # Z

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput p1, p0, Landroid/nfc/cardemulation/PollingFrame;->mType:I

    .line 176
    if-nez p2, :cond_b

    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_c

    :cond_b
    move-object v0, p2

    :goto_c
    iput-object v0, p0, Landroid/nfc/cardemulation/PollingFrame;->mData:[B

    .line 177
    iput p3, p0, Landroid/nfc/cardemulation/PollingFrame;->mGain:I

    .line 178
    iput-wide p4, p0, Landroid/nfc/cardemulation/PollingFrame;->mTimestamp:J

    .line 179
    iput-boolean p6, p0, Landroid/nfc/cardemulation/PollingFrame;->mTriggeredAutoTransact:Z

    .line 180
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "frame"    # Landroid/os/Bundle;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const-string v0, "android.nfc.cardemulation.TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/nfc/cardemulation/PollingFrame;->mType:I

    .line 153
    const-string v0, "android.nfc.cardemulation.DATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 154
    .local v0, "data":[B
    const/4 v1, 0x0

    if-nez v0, :cond_17

    new-array v2, v1, [B

    goto :goto_18

    :cond_17
    move-object v2, v0

    :goto_18
    iput-object v2, p0, Landroid/nfc/cardemulation/PollingFrame;->mData:[B

    .line 155
    const-string v2, "android.nfc.cardemulation.GAIN"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/nfc/cardemulation/PollingFrame;->mGain:I

    .line 156
    const-string v2, "android.nfc.cardemulation.TIMESTAMP"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/nfc/cardemulation/PollingFrame;->mTimestamp:J

    .line 157
    const-string v2, "android.nfc.cardemulation.TRIGGERED_AUTOTRANSACT"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 158
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const/4 v1, 0x1

    goto :goto_3c

    :cond_3b
    nop

    :goto_3c
    iput-boolean v1, p0, Landroid/nfc/cardemulation/PollingFrame;->mTriggeredAutoTransact:Z

    .line 159
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Bundle;Landroid/nfc/cardemulation/PollingFrame-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/nfc/cardemulation/PollingFrame;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method private blacklist toBundle()Landroid/os/Bundle;
    .registers 5

    .line 252
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 253
    .local v0, "frame":Landroid/os/Bundle;
    const-string v1, "android.nfc.cardemulation.TYPE"

    invoke-virtual {p0}, Landroid/nfc/cardemulation/PollingFrame;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    invoke-virtual {p0}, Landroid/nfc/cardemulation/PollingFrame;->getVendorSpecificGain()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1f

    .line 255
    invoke-virtual {p0}, Landroid/nfc/cardemulation/PollingFrame;->getVendorSpecificGain()I

    move-result v1

    int-to-byte v1, v1

    const-string v2, "android.nfc.cardemulation.GAIN"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    :cond_1f
    const-string v1, "android.nfc.cardemulation.DATA"

    invoke-virtual {p0}, Landroid/nfc/cardemulation/PollingFrame;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 258
    const-string v1, "android.nfc.cardemulation.TIMESTAMP"

    invoke-virtual {p0}, Landroid/nfc/cardemulation/PollingFrame;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 259
    const-string v1, "android.nfc.cardemulation.TRIGGERED_AUTOTRANSACT"

    invoke-virtual {p0}, Landroid/nfc/cardemulation/PollingFrame;->getTriggeredAutoTransact()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 260
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getData()[B
    .registers 2

    .line 201
    iget-object v0, p0, Landroid/nfc/cardemulation/PollingFrame;->mData:[B

    return-object v0
.end method

.method public whitelist getTimestamp()J
    .registers 3

    .line 220
    iget-wide v0, p0, Landroid/nfc/cardemulation/PollingFrame;->mTimestamp:J

    return-wide v0
.end method

.method public whitelist getTriggeredAutoTransact()Z
    .registers 2

    .line 235
    iget-boolean v0, p0, Landroid/nfc/cardemulation/PollingFrame;->mTriggeredAutoTransact:Z

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 194
    iget v0, p0, Landroid/nfc/cardemulation/PollingFrame;->mType:I

    return v0
.end method

.method public whitelist getVendorSpecificGain()I
    .registers 2

    .line 210
    iget v0, p0, Landroid/nfc/cardemulation/PollingFrame;->mGain:I

    return v0
.end method

.method public blacklist setTriggeredAutoTransact(Z)V
    .registers 2
    .param p1, "triggeredAutoTransact"    # Z

    .line 227
    iput-boolean p1, p0, Landroid/nfc/cardemulation/PollingFrame;->mTriggeredAutoTransact:Z

    .line 228
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PollingFrame { Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/PollingFrame;->getType()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 266
    invoke-virtual {p0}, Landroid/nfc/cardemulation/PollingFrame;->getVendorSpecificGain()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 267
    invoke-virtual {p0}, Landroid/nfc/cardemulation/PollingFrame;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 268
    const-string v1, " "

    invoke-static {v1}, Ljava/util/HexFormat;->ofDelimiter(Ljava/lang/String;)Ljava/util/HexFormat;

    move-result-object v1

    invoke-virtual {p0}, Landroid/nfc/cardemulation/PollingFrame;->getData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 245
    invoke-direct {p0}, Landroid/nfc/cardemulation/PollingFrame;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 246
    return-void
.end method
