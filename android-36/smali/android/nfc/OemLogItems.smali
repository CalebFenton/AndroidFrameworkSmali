.class public final Landroid/nfc/OemLogItems;
.super Ljava/lang/Object;
.source "OemLogItems.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/OemLogItems$Builder;,
        Landroid/nfc/OemLogItems$LogEvent;,
        Landroid/nfc/OemLogItems$LogAction;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/OemLogItems;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EVENT_DISABLE:I = 0x2

.field public static final whitelist EVENT_ENABLE:I = 0x1

.field public static final whitelist EVENT_UNSET:I = 0x0

.field public static final whitelist LOG_ACTION_HCE_DATA:I = 0x204

.field public static final whitelist LOG_ACTION_NFC_TOGGLE:I = 0x201

.field public static final whitelist LOG_ACTION_RF_FIELD_STATE_CHANGED:I = 0x1

.field public static final whitelist LOG_ACTION_SCREEN_STATE_CHANGED:I = 0x206

.field public static final whitelist LOG_ACTION_TAG_DETECTED:I = 0x3


# instance fields
.field private blacklist mAction:I

.field private blacklist mCallingPid:I

.field private blacklist mCommandApdus:[B

.field private blacklist mEvent:I

.field private blacklist mResponseApdus:[B

.field private blacklist mRfFieldOnTime:Ljava/time/Instant;

.field private blacklist mTag:Landroid/nfc/Tag;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmAction(Landroid/nfc/OemLogItems;I)V
    .registers 2

    iput p1, p0, Landroid/nfc/OemLogItems;->mAction:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallingPid(Landroid/nfc/OemLogItems;I)V
    .registers 2

    iput p1, p0, Landroid/nfc/OemLogItems;->mCallingPid:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCommandApdus(Landroid/nfc/OemLogItems;[B)V
    .registers 2

    iput-object p1, p0, Landroid/nfc/OemLogItems;->mCommandApdus:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEvent(Landroid/nfc/OemLogItems;I)V
    .registers 2

    iput p1, p0, Landroid/nfc/OemLogItems;->mEvent:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResponseApdus(Landroid/nfc/OemLogItems;[B)V
    .registers 2

    iput-object p1, p0, Landroid/nfc/OemLogItems;->mResponseApdus:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRfFieldOnTime(Landroid/nfc/OemLogItems;Ljava/time/Instant;)V
    .registers 2

    iput-object p1, p0, Landroid/nfc/OemLogItems;->mRfFieldOnTime:Ljava/time/Instant;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTag(Landroid/nfc/OemLogItems;Landroid/nfc/Tag;)V
    .registers 2

    iput-object p1, p0, Landroid/nfc/OemLogItems;->mTag:Landroid/nfc/Tag;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 320
    new-instance v0, Landroid/nfc/OemLogItems$1;

    invoke-direct {v0}, Landroid/nfc/OemLogItems$1;-><init>()V

    sput-object v0, Landroid/nfc/OemLogItems;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(III[B[BLjava/time/Instant;Landroid/nfc/Tag;)V
    .registers 8
    .param p1, "action"    # I
    .param p2, "event"    # I
    .param p3, "callingPid"    # I
    .param p4, "commandApdus"    # [B
    .param p5, "responseApdus"    # [B
    .param p6, "rfFieldOnTime"    # Ljava/time/Instant;
    .param p7, "tag"    # Landroid/nfc/Tag;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Landroid/nfc/OemLogItems;->mAction:I

    .line 106
    iput p2, p0, Landroid/nfc/OemLogItems;->mEvent:I

    .line 107
    iput-object p7, p0, Landroid/nfc/OemLogItems;->mTag:Landroid/nfc/Tag;

    .line 108
    iput p3, p0, Landroid/nfc/OemLogItems;->mCallingPid:I

    .line 109
    iput-object p4, p0, Landroid/nfc/OemLogItems;->mCommandApdus:[B

    .line 110
    iput-object p5, p0, Landroid/nfc/OemLogItems;->mResponseApdus:[B

    .line 111
    iput-object p6, p0, Landroid/nfc/OemLogItems;->mRfFieldOnTime:Ljava/time/Instant;

    .line 112
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/nfc/OemLogItems;->mAction:I

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/nfc/OemLogItems;->mEvent:I

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/nfc/OemLogItems;->mCallingPid:I

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/OemLogItems;->mCommandApdus:[B

    .line 308
    iget-object v0, p0, Landroid/nfc/OemLogItems;->mCommandApdus:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/OemLogItems;->mResponseApdus:[B

    .line 310
    iget-object v0, p0, Landroid/nfc/OemLogItems;->mResponseApdus:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 312
    .local v0, "isRfFieldOnTimeSet":Z
    if-eqz v0, :cond_45

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v1

    iput-object v1, p0, Landroid/nfc/OemLogItems;->mRfFieldOnTime:Ljava/time/Instant;

    goto :goto_48

    .line 315
    :cond_45
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/nfc/OemLogItems;->mRfFieldOnTime:Ljava/time/Instant;

    .line 317
    :goto_48
    const-class v1, Landroid/nfc/Tag;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/nfc/Tag;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/Tag;

    iput-object v1, p0, Landroid/nfc/OemLogItems;->mTag:Landroid/nfc/Tag;

    .line 318
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/nfc/OemLogItems-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/nfc/OemLogItems;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist byteToHex([B)Ljava/lang/String;
    .registers 8
    .param p1, "bytes"    # [B

    .line 282
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 283
    .local v0, "HexArray":[C
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 284
    .local v1, "hexChars":[C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_c
    array-length v3, p1

    if-ge v2, v3, :cond_28

    .line 285
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 286
    .local v3, "v":I
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 287
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v3, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 284
    .end local v3    # "v":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 289
    .end local v2    # "j":I
    :cond_28
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAction()I
    .registers 2

    .line 215
    iget v0, p0, Landroid/nfc/OemLogItems;->mAction:I

    return v0
.end method

.method public whitelist getCallingPid()I
    .registers 2

    .line 235
    iget v0, p0, Landroid/nfc/OemLogItems;->mCallingPid:I

    return v0
.end method

.method public whitelist getCommandApdu()[B
    .registers 2

    .line 246
    iget-object v0, p0, Landroid/nfc/OemLogItems;->mCommandApdus:[B

    return-object v0
.end method

.method public whitelist getEvent()I
    .registers 2

    .line 226
    iget v0, p0, Landroid/nfc/OemLogItems;->mEvent:I

    return v0
.end method

.method public whitelist getResponseApdu()[B
    .registers 2

    .line 257
    iget-object v0, p0, Landroid/nfc/OemLogItems;->mResponseApdus:[B

    return-object v0
.end method

.method public whitelist getRfFieldEventTimeMillis()Ljava/time/Instant;
    .registers 2

    .line 267
    iget-object v0, p0, Landroid/nfc/OemLogItems;->mRfFieldOnTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist getTag()Landroid/nfc/Tag;
    .registers 2

    .line 278
    iget-object v0, p0, Landroid/nfc/OemLogItems;->mTag:Landroid/nfc/Tag;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[mCommandApdus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 295
    iget-object v1, p0, Landroid/nfc/OemLogItems;->mCommandApdus:[B

    const-string v2, "null"

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/nfc/OemLogItems;->mCommandApdus:[B

    invoke-direct {p0, v1}, Landroid/nfc/OemLogItems;->byteToHex([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_18
    move-object v1, v2

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[mResponseApdus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 297
    iget-object v1, p0, Landroid/nfc/OemLogItems;->mResponseApdus:[B

    if-eqz v1, :cond_2d

    iget-object v1, p0, Landroid/nfc/OemLogItems;->mResponseApdus:[B

    invoke-direct {p0, v1}, Landroid/nfc/OemLogItems;->byteToHex([B)Ljava/lang/String;

    move-result-object v2

    :cond_2d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallingApi= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/nfc/OemLogItems;->mEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAction= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/nfc/OemLogItems;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallingPId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/nfc/OemLogItems;->mCallingPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRfFieldOnTime= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/OemLogItems;->mRfFieldOnTime:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 138
    iget v0, p0, Landroid/nfc/OemLogItems;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget v0, p0, Landroid/nfc/OemLogItems;->mEvent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v0, p0, Landroid/nfc/OemLogItems;->mCallingPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v0, p0, Landroid/nfc/OemLogItems;->mCommandApdus:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object v0, p0, Landroid/nfc/OemLogItems;->mCommandApdus:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 143
    iget-object v0, p0, Landroid/nfc/OemLogItems;->mResponseApdus:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Landroid/nfc/OemLogItems;->mResponseApdus:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 145
    iget-object v0, p0, Landroid/nfc/OemLogItems;->mRfFieldOnTime:Ljava/time/Instant;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    move v0, v1

    :goto_2d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 146
    iget-object v0, p0, Landroid/nfc/OemLogItems;->mRfFieldOnTime:Ljava/time/Instant;

    if-eqz v0, :cond_46

    .line 147
    iget-object v0, p0, Landroid/nfc/OemLogItems;->mRfFieldOnTime:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 148
    iget-object v0, p0, Landroid/nfc/OemLogItems;->mRfFieldOnTime:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->getNano()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    :cond_46
    iget-object v0, p0, Landroid/nfc/OemLogItems;->mTag:Landroid/nfc/Tag;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 151
    return-void
.end method
