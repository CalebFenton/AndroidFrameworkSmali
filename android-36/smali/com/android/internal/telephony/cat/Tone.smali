.class public final enum Lcom/android/internal/telephony/cat/Tone;
.super Ljava/lang/Enum;
.source "Tone.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/cat/Tone;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist BUSY:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist CALL_WAITING:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist CONGESTION:Lcom/android/internal/telephony/cat/Tone;

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/cat/Tone;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum blacklist CRITICAL_ALERT:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist DIAL:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist ERROR_SPECIAL_INFO:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist GENERAL_BEEP:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist HAPPY:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist INCOMING_SMS:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist INCOMING_SPEECH_CALL:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist MELODY_1:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist MELODY_2:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist MELODY_3:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist MELODY_4:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist MELODY_5:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist MELODY_6:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist MELODY_7:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist MELODY_8:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist MESSAGE_RECEIVED:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist NEGATIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist POSITIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist QUESTION:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist RADIO_PATH_ACK:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist RADIO_PATH_NOT_AVAILABLE:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist RINGING:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist SAD:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist URGENT:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum blacklist VIBRATE_ONLY:Lcom/android/internal/telephony/cat/Tone;


# instance fields
.field private blacklist mValue:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/cat/Tone;
    .registers 29

    .line 28
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->DIAL:Lcom/android/internal/telephony/cat/Tone;

    sget-object v2, Lcom/android/internal/telephony/cat/Tone;->BUSY:Lcom/android/internal/telephony/cat/Tone;

    sget-object v3, Lcom/android/internal/telephony/cat/Tone;->CONGESTION:Lcom/android/internal/telephony/cat/Tone;

    sget-object v4, Lcom/android/internal/telephony/cat/Tone;->RADIO_PATH_ACK:Lcom/android/internal/telephony/cat/Tone;

    sget-object v5, Lcom/android/internal/telephony/cat/Tone;->RADIO_PATH_NOT_AVAILABLE:Lcom/android/internal/telephony/cat/Tone;

    sget-object v6, Lcom/android/internal/telephony/cat/Tone;->ERROR_SPECIAL_INFO:Lcom/android/internal/telephony/cat/Tone;

    sget-object v7, Lcom/android/internal/telephony/cat/Tone;->CALL_WAITING:Lcom/android/internal/telephony/cat/Tone;

    sget-object v8, Lcom/android/internal/telephony/cat/Tone;->RINGING:Lcom/android/internal/telephony/cat/Tone;

    sget-object v9, Lcom/android/internal/telephony/cat/Tone;->GENERAL_BEEP:Lcom/android/internal/telephony/cat/Tone;

    sget-object v10, Lcom/android/internal/telephony/cat/Tone;->POSITIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

    sget-object v11, Lcom/android/internal/telephony/cat/Tone;->NEGATIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

    sget-object v12, Lcom/android/internal/telephony/cat/Tone;->INCOMING_SPEECH_CALL:Lcom/android/internal/telephony/cat/Tone;

    sget-object v13, Lcom/android/internal/telephony/cat/Tone;->INCOMING_SMS:Lcom/android/internal/telephony/cat/Tone;

    sget-object v14, Lcom/android/internal/telephony/cat/Tone;->CRITICAL_ALERT:Lcom/android/internal/telephony/cat/Tone;

    sget-object v15, Lcom/android/internal/telephony/cat/Tone;->VIBRATE_ONLY:Lcom/android/internal/telephony/cat/Tone;

    sget-object v16, Lcom/android/internal/telephony/cat/Tone;->HAPPY:Lcom/android/internal/telephony/cat/Tone;

    sget-object v17, Lcom/android/internal/telephony/cat/Tone;->SAD:Lcom/android/internal/telephony/cat/Tone;

    sget-object v18, Lcom/android/internal/telephony/cat/Tone;->URGENT:Lcom/android/internal/telephony/cat/Tone;

    sget-object v19, Lcom/android/internal/telephony/cat/Tone;->QUESTION:Lcom/android/internal/telephony/cat/Tone;

    sget-object v20, Lcom/android/internal/telephony/cat/Tone;->MESSAGE_RECEIVED:Lcom/android/internal/telephony/cat/Tone;

    sget-object v21, Lcom/android/internal/telephony/cat/Tone;->MELODY_1:Lcom/android/internal/telephony/cat/Tone;

    sget-object v22, Lcom/android/internal/telephony/cat/Tone;->MELODY_2:Lcom/android/internal/telephony/cat/Tone;

    sget-object v23, Lcom/android/internal/telephony/cat/Tone;->MELODY_3:Lcom/android/internal/telephony/cat/Tone;

    sget-object v24, Lcom/android/internal/telephony/cat/Tone;->MELODY_4:Lcom/android/internal/telephony/cat/Tone;

    sget-object v25, Lcom/android/internal/telephony/cat/Tone;->MELODY_5:Lcom/android/internal/telephony/cat/Tone;

    sget-object v26, Lcom/android/internal/telephony/cat/Tone;->MELODY_6:Lcom/android/internal/telephony/cat/Tone;

    sget-object v27, Lcom/android/internal/telephony/cat/Tone;->MELODY_7:Lcom/android/internal/telephony/cat/Tone;

    sget-object v28, Lcom/android/internal/telephony/cat/Tone;->MELODY_8:Lcom/android/internal/telephony/cat/Tone;

    filled-new-array/range {v1 .. v28}, [Lcom/android/internal/telephony/cat/Tone;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 10

    .line 34
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v1, "DIAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->DIAL:Lcom/android/internal/telephony/cat/Tone;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v1, "BUSY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->BUSY:Lcom/android/internal/telephony/cat/Tone;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v1, "CONGESTION"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->CONGESTION:Lcom/android/internal/telephony/cat/Tone;

    .line 49
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v1, "RADIO_PATH_ACK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->RADIO_PATH_ACK:Lcom/android/internal/telephony/cat/Tone;

    .line 54
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v1, "RADIO_PATH_NOT_AVAILABLE"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->RADIO_PATH_NOT_AVAILABLE:Lcom/android/internal/telephony/cat/Tone;

    .line 59
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v1, "ERROR_SPECIAL_INFO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->ERROR_SPECIAL_INFO:Lcom/android/internal/telephony/cat/Tone;

    .line 64
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v1, "CALL_WAITING"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->CALL_WAITING:Lcom/android/internal/telephony/cat/Tone;

    .line 69
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v1, "RINGING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->RINGING:Lcom/android/internal/telephony/cat/Tone;

    .line 76
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v1, "GENERAL_BEEP"

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->GENERAL_BEEP:Lcom/android/internal/telephony/cat/Tone;

    .line 81
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v1, "POSITIVE_ACK"

    const/16 v2, 0x9

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->POSITIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

    .line 86
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v1, "NEGATIVE_ACK"

    const/16 v2, 0xa

    const/16 v5, 0x12

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->NEGATIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v1, "INCOMING_SPEECH_CALL"

    const/16 v2, 0xb

    const/16 v6, 0x13

    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->INCOMING_SPEECH_CALL:Lcom/android/internal/telephony/cat/Tone;

    .line 96
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v1, "INCOMING_SMS"

    const/16 v2, 0xc

    const/16 v7, 0x14

    invoke-direct {v0, v1, v2, v7}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->INCOMING_SMS:Lcom/android/internal/telephony/cat/Tone;

    .line 104
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v1, "CRITICAL_ALERT"

    const/16 v2, 0xd

    const/16 v8, 0x15

    invoke-direct {v0, v1, v2, v8}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->CRITICAL_ALERT:Lcom/android/internal/telephony/cat/Tone;

    .line 109
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const/16 v1, 0xe

    const/16 v2, 0x20

    const-string v9, "VIBRATE_ONLY"

    invoke-direct {v0, v9, v1, v2}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->VIBRATE_ONLY:Lcom/android/internal/telephony/cat/Tone;

    .line 116
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const/16 v1, 0xf

    const/16 v2, 0x30

    const-string v9, "HAPPY"

    invoke-direct {v0, v9, v1, v2}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->HAPPY:Lcom/android/internal/telephony/cat/Tone;

    .line 121
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v1, "SAD"

    const/16 v2, 0x31

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->SAD:Lcom/android/internal/telephony/cat/Tone;

    .line 126
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v1, "URGENT"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->URGENT:Lcom/android/internal/telephony/cat/Tone;

    .line 131
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v1, "QUESTION"

    const/16 v2, 0x33

    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->QUESTION:Lcom/android/internal/telephony/cat/Tone;

    .line 136
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v1, "MESSAGE_RECEIVED"

    const/16 v2, 0x34

    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MESSAGE_RECEIVED:Lcom/android/internal/telephony/cat/Tone;

    .line 139
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v1, "MELODY_1"

    const/16 v2, 0x40

    invoke-direct {v0, v1, v7, v2}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_1:Lcom/android/internal/telephony/cat/Tone;

    .line 140
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v1, "MELODY_2"

    const/16 v2, 0x41

    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_2:Lcom/android/internal/telephony/cat/Tone;

    .line 141
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const/16 v1, 0x16

    const/16 v2, 0x42

    const-string v3, "MELODY_3"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_3:Lcom/android/internal/telephony/cat/Tone;

    .line 142
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const/16 v1, 0x17

    const/16 v2, 0x43

    const-string v3, "MELODY_4"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_4:Lcom/android/internal/telephony/cat/Tone;

    .line 143
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const/16 v1, 0x18

    const/16 v2, 0x44

    const-string v3, "MELODY_5"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_5:Lcom/android/internal/telephony/cat/Tone;

    .line 144
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const/16 v1, 0x19

    const/16 v2, 0x45

    const-string v3, "MELODY_6"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_6:Lcom/android/internal/telephony/cat/Tone;

    .line 145
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const/16 v1, 0x1a

    const/16 v2, 0x46

    const-string v3, "MELODY_7"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_7:Lcom/android/internal/telephony/cat/Tone;

    .line 146
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const/16 v1, 0x1b

    const/16 v2, 0x47

    const-string v3, "MELODY_8"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_8:Lcom/android/internal/telephony/cat/Tone;

    .line 28
    invoke-static {}, Lcom/android/internal/telephony/cat/Tone;->$values()[Lcom/android/internal/telephony/cat/Tone;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->$VALUES:[Lcom/android/internal/telephony/cat/Tone;

    .line 183
    new-instance v0, Lcom/android/internal/telephony/cat/Tone$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Tone$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 151
    iput p3, p0, Lcom/android/internal/telephony/cat/Tone;->mValue:I

    return-void
.end method

.method public static blacklist fromInt(I)Lcom/android/internal/telephony/cat/Tone;
    .registers 6

    .line 161
    invoke-static {}, Lcom/android/internal/telephony/cat/Tone;->values()[Lcom/android/internal/telephony/cat/Tone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 162
    iget v4, v3, Lcom/android/internal/telephony/cat/Tone;->mValue:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/Tone;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 28
    const-class v0, Lcom/android/internal/telephony/cat/Tone;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cat/Tone;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/cat/Tone;
    .registers 1

    .line 28
    sget-object v0, Lcom/android/internal/telephony/cat/Tone;->$VALUES:[Lcom/android/internal/telephony/cat/Tone;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/Tone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/Tone;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 175
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
