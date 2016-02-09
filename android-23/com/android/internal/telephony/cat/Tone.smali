.class public final enum Lcom/android/internal/telephony/cat/Tone;
.super Ljava/lang/Enum;
.source "Tone.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/Tone$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/Tone;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/Tone;

.field public static final enum BUSY:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum CALL_WAITING:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum CONGESTION:Lcom/android/internal/telephony/cat/Tone;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/Tone;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CRITICAL_ALERT:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum DIAL:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum ERROR_SPECIAL_INFO:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum GENERAL_BEEP:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum HAPPY:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum INCOMING_SMS:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum INCOMING_SPEECH_CALL:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MELODY_1:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MELODY_2:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MELODY_3:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MELODY_4:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MELODY_5:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MELODY_6:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MELODY_7:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MELODY_8:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MESSAGE_RECEIVED:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum NEGATIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum POSITIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum QUESTION:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum RADIO_PATH_ACK:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum RADIO_PATH_NOT_AVAILABLE:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum RINGING:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum SAD:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum URGENT:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum VIBRATE_ONLY:Lcom/android/internal/telephony/cat/Tone;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x5

    #@1
    const/4 v7, 0x4

    #@2
    const/4 v6, 0x3

    #@3
    const/4 v5, 0x2

    #@4
    const/4 v4, 0x1

    #@5
    .line 29
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@7
    const-string/jumbo v1, "DIAL"

    #@a
    const/4 v2, 0x0

    #@b
    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@e
    .line 34
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->DIAL:Lcom/android/internal/telephony/cat/Tone;

    #@10
    .line 36
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@12
    const-string/jumbo v1, "BUSY"

    #@15
    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@18
    .line 39
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->BUSY:Lcom/android/internal/telephony/cat/Tone;

    #@1a
    .line 41
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@1c
    const-string/jumbo v1, "CONGESTION"

    #@1f
    invoke-direct {v0, v1, v5, v6}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@22
    .line 44
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->CONGESTION:Lcom/android/internal/telephony/cat/Tone;

    #@24
    .line 46
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@26
    const-string/jumbo v1, "RADIO_PATH_ACK"

    #@29
    invoke-direct {v0, v1, v6, v7}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@2c
    .line 49
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->RADIO_PATH_ACK:Lcom/android/internal/telephony/cat/Tone;

    #@2e
    .line 51
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@30
    const-string/jumbo v1, "RADIO_PATH_NOT_AVAILABLE"

    #@33
    invoke-direct {v0, v1, v7, v8}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@36
    .line 54
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->RADIO_PATH_NOT_AVAILABLE:Lcom/android/internal/telephony/cat/Tone;

    #@38
    .line 56
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@3a
    const-string/jumbo v1, "ERROR_SPECIAL_INFO"

    #@3d
    .line 59
    const/4 v2, 0x6

    #@3e
    .line 56
    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@41
    .line 59
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->ERROR_SPECIAL_INFO:Lcom/android/internal/telephony/cat/Tone;

    #@43
    .line 61
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@45
    const-string/jumbo v1, "CALL_WAITING"

    #@48
    const/4 v2, 0x6

    #@49
    .line 64
    const/4 v3, 0x7

    #@4a
    .line 61
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@4d
    .line 64
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->CALL_WAITING:Lcom/android/internal/telephony/cat/Tone;

    #@4f
    .line 66
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@51
    const-string/jumbo v1, "RINGING"

    #@54
    const/4 v2, 0x7

    #@55
    .line 69
    const/16 v3, 0x8

    #@57
    .line 66
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@5a
    .line 69
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->RINGING:Lcom/android/internal/telephony/cat/Tone;

    #@5c
    .line 71
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@5e
    const-string/jumbo v1, "GENERAL_BEEP"

    #@61
    const/16 v2, 0x8

    #@63
    .line 76
    const/16 v3, 0x10

    #@65
    .line 71
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@68
    .line 76
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->GENERAL_BEEP:Lcom/android/internal/telephony/cat/Tone;

    #@6a
    .line 78
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@6c
    const-string/jumbo v1, "POSITIVE_ACK"

    #@6f
    const/16 v2, 0x9

    #@71
    .line 81
    const/16 v3, 0x11

    #@73
    .line 78
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@76
    .line 81
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->POSITIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

    #@78
    .line 83
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@7a
    const-string/jumbo v1, "NEGATIVE_ACK"

    #@7d
    const/16 v2, 0xa

    #@7f
    .line 86
    const/16 v3, 0x12

    #@81
    .line 83
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@84
    .line 86
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->NEGATIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

    #@86
    .line 88
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@88
    const-string/jumbo v1, "INCOMING_SPEECH_CALL"

    #@8b
    const/16 v2, 0xb

    #@8d
    .line 91
    const/16 v3, 0x13

    #@8f
    .line 88
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@92
    .line 91
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->INCOMING_SPEECH_CALL:Lcom/android/internal/telephony/cat/Tone;

    #@94
    .line 93
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@96
    const-string/jumbo v1, "INCOMING_SMS"

    #@99
    const/16 v2, 0xc

    #@9b
    .line 96
    const/16 v3, 0x14

    #@9d
    .line 93
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@a0
    .line 96
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->INCOMING_SMS:Lcom/android/internal/telephony/cat/Tone;

    #@a2
    .line 98
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@a4
    const-string/jumbo v1, "CRITICAL_ALERT"

    #@a7
    const/16 v2, 0xd

    #@a9
    .line 104
    const/16 v3, 0x15

    #@ab
    .line 98
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@ae
    .line 104
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->CRITICAL_ALERT:Lcom/android/internal/telephony/cat/Tone;

    #@b0
    .line 106
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@b2
    const-string/jumbo v1, "VIBRATE_ONLY"

    #@b5
    const/16 v2, 0xe

    #@b7
    .line 109
    const/16 v3, 0x20

    #@b9
    .line 106
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@bc
    .line 109
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->VIBRATE_ONLY:Lcom/android/internal/telephony/cat/Tone;

    #@be
    .line 111
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@c0
    const-string/jumbo v1, "HAPPY"

    #@c3
    const/16 v2, 0xf

    #@c5
    .line 116
    const/16 v3, 0x30

    #@c7
    .line 111
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@ca
    .line 116
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->HAPPY:Lcom/android/internal/telephony/cat/Tone;

    #@cc
    .line 118
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@ce
    const-string/jumbo v1, "SAD"

    #@d1
    const/16 v2, 0x10

    #@d3
    .line 121
    const/16 v3, 0x31

    #@d5
    .line 118
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@d8
    .line 121
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->SAD:Lcom/android/internal/telephony/cat/Tone;

    #@da
    .line 123
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@dc
    const-string/jumbo v1, "URGENT"

    #@df
    const/16 v2, 0x11

    #@e1
    .line 126
    const/16 v3, 0x32

    #@e3
    .line 123
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@e6
    .line 126
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->URGENT:Lcom/android/internal/telephony/cat/Tone;

    #@e8
    .line 128
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@ea
    const-string/jumbo v1, "QUESTION"

    #@ed
    const/16 v2, 0x12

    #@ef
    .line 131
    const/16 v3, 0x33

    #@f1
    .line 128
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@f4
    .line 131
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->QUESTION:Lcom/android/internal/telephony/cat/Tone;

    #@f6
    .line 133
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@f8
    const-string/jumbo v1, "MESSAGE_RECEIVED"

    #@fb
    const/16 v2, 0x13

    #@fd
    .line 136
    const/16 v3, 0x34

    #@ff
    .line 133
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@102
    .line 136
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MESSAGE_RECEIVED:Lcom/android/internal/telephony/cat/Tone;

    #@104
    .line 138
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@106
    const-string/jumbo v1, "MELODY_1"

    #@109
    const/16 v2, 0x14

    #@10b
    .line 139
    const/16 v3, 0x40

    #@10d
    .line 138
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@110
    .line 139
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_1:Lcom/android/internal/telephony/cat/Tone;

    #@112
    .line 140
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@114
    const-string/jumbo v1, "MELODY_2"

    #@117
    const/16 v2, 0x15

    #@119
    const/16 v3, 0x41

    #@11b
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@11e
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_2:Lcom/android/internal/telephony/cat/Tone;

    #@120
    .line 141
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@122
    const-string/jumbo v1, "MELODY_3"

    #@125
    const/16 v2, 0x16

    #@127
    const/16 v3, 0x42

    #@129
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@12c
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_3:Lcom/android/internal/telephony/cat/Tone;

    #@12e
    .line 142
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@130
    const-string/jumbo v1, "MELODY_4"

    #@133
    const/16 v2, 0x17

    #@135
    const/16 v3, 0x43

    #@137
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@13a
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_4:Lcom/android/internal/telephony/cat/Tone;

    #@13c
    .line 143
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@13e
    const-string/jumbo v1, "MELODY_5"

    #@141
    const/16 v2, 0x18

    #@143
    const/16 v3, 0x44

    #@145
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@148
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_5:Lcom/android/internal/telephony/cat/Tone;

    #@14a
    .line 144
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@14c
    const-string/jumbo v1, "MELODY_6"

    #@14f
    const/16 v2, 0x19

    #@151
    const/16 v3, 0x45

    #@153
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@156
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_6:Lcom/android/internal/telephony/cat/Tone;

    #@158
    .line 145
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@15a
    const-string/jumbo v1, "MELODY_7"

    #@15d
    const/16 v2, 0x1a

    #@15f
    const/16 v3, 0x46

    #@161
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@164
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_7:Lcom/android/internal/telephony/cat/Tone;

    #@166
    .line 146
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    #@168
    const-string/jumbo v1, "MELODY_8"

    #@16b
    const/16 v2, 0x1b

    #@16d
    const/16 v3, 0x47

    #@16f
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    #@172
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_8:Lcom/android/internal/telephony/cat/Tone;

    #@174
    .line 28
    const/16 v0, 0x1c

    #@176
    new-array v0, v0, [Lcom/android/internal/telephony/cat/Tone;

    #@178
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->DIAL:Lcom/android/internal/telephony/cat/Tone;

    #@17a
    const/4 v2, 0x0

    #@17b
    aput-object v1, v0, v2

    #@17d
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->BUSY:Lcom/android/internal/telephony/cat/Tone;

    #@17f
    aput-object v1, v0, v4

    #@181
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->CONGESTION:Lcom/android/internal/telephony/cat/Tone;

    #@183
    aput-object v1, v0, v5

    #@185
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->RADIO_PATH_ACK:Lcom/android/internal/telephony/cat/Tone;

    #@187
    aput-object v1, v0, v6

    #@189
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->RADIO_PATH_NOT_AVAILABLE:Lcom/android/internal/telephony/cat/Tone;

    #@18b
    aput-object v1, v0, v7

    #@18d
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->ERROR_SPECIAL_INFO:Lcom/android/internal/telephony/cat/Tone;

    #@18f
    aput-object v1, v0, v8

    #@191
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->CALL_WAITING:Lcom/android/internal/telephony/cat/Tone;

    #@193
    const/4 v2, 0x6

    #@194
    aput-object v1, v0, v2

    #@196
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->RINGING:Lcom/android/internal/telephony/cat/Tone;

    #@198
    const/4 v2, 0x7

    #@199
    aput-object v1, v0, v2

    #@19b
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->GENERAL_BEEP:Lcom/android/internal/telephony/cat/Tone;

    #@19d
    const/16 v2, 0x8

    #@19f
    aput-object v1, v0, v2

    #@1a1
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->POSITIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

    #@1a3
    const/16 v2, 0x9

    #@1a5
    aput-object v1, v0, v2

    #@1a7
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->NEGATIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

    #@1a9
    const/16 v2, 0xa

    #@1ab
    aput-object v1, v0, v2

    #@1ad
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->INCOMING_SPEECH_CALL:Lcom/android/internal/telephony/cat/Tone;

    #@1af
    const/16 v2, 0xb

    #@1b1
    aput-object v1, v0, v2

    #@1b3
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->INCOMING_SMS:Lcom/android/internal/telephony/cat/Tone;

    #@1b5
    const/16 v2, 0xc

    #@1b7
    aput-object v1, v0, v2

    #@1b9
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->CRITICAL_ALERT:Lcom/android/internal/telephony/cat/Tone;

    #@1bb
    const/16 v2, 0xd

    #@1bd
    aput-object v1, v0, v2

    #@1bf
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->VIBRATE_ONLY:Lcom/android/internal/telephony/cat/Tone;

    #@1c1
    const/16 v2, 0xe

    #@1c3
    aput-object v1, v0, v2

    #@1c5
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->HAPPY:Lcom/android/internal/telephony/cat/Tone;

    #@1c7
    const/16 v2, 0xf

    #@1c9
    aput-object v1, v0, v2

    #@1cb
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->SAD:Lcom/android/internal/telephony/cat/Tone;

    #@1cd
    const/16 v2, 0x10

    #@1cf
    aput-object v1, v0, v2

    #@1d1
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->URGENT:Lcom/android/internal/telephony/cat/Tone;

    #@1d3
    const/16 v2, 0x11

    #@1d5
    aput-object v1, v0, v2

    #@1d7
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->QUESTION:Lcom/android/internal/telephony/cat/Tone;

    #@1d9
    const/16 v2, 0x12

    #@1db
    aput-object v1, v0, v2

    #@1dd
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MESSAGE_RECEIVED:Lcom/android/internal/telephony/cat/Tone;

    #@1df
    const/16 v2, 0x13

    #@1e1
    aput-object v1, v0, v2

    #@1e3
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MELODY_1:Lcom/android/internal/telephony/cat/Tone;

    #@1e5
    const/16 v2, 0x14

    #@1e7
    aput-object v1, v0, v2

    #@1e9
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MELODY_2:Lcom/android/internal/telephony/cat/Tone;

    #@1eb
    const/16 v2, 0x15

    #@1ed
    aput-object v1, v0, v2

    #@1ef
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MELODY_3:Lcom/android/internal/telephony/cat/Tone;

    #@1f1
    const/16 v2, 0x16

    #@1f3
    aput-object v1, v0, v2

    #@1f5
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MELODY_4:Lcom/android/internal/telephony/cat/Tone;

    #@1f7
    const/16 v2, 0x17

    #@1f9
    aput-object v1, v0, v2

    #@1fb
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MELODY_5:Lcom/android/internal/telephony/cat/Tone;

    #@1fd
    const/16 v2, 0x18

    #@1ff
    aput-object v1, v0, v2

    #@201
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MELODY_6:Lcom/android/internal/telephony/cat/Tone;

    #@203
    const/16 v2, 0x19

    #@205
    aput-object v1, v0, v2

    #@207
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MELODY_7:Lcom/android/internal/telephony/cat/Tone;

    #@209
    const/16 v2, 0x1a

    #@20b
    aput-object v1, v0, v2

    #@20d
    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MELODY_8:Lcom/android/internal/telephony/cat/Tone;

    #@20f
    const/16 v2, 0x1b

    #@211
    aput-object v1, v0, v2

    #@213
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->$VALUES:[Lcom/android/internal/telephony/cat/Tone;

    #@215
    .line 183
    new-instance v0, Lcom/android/internal/telephony/cat/Tone$1;

    #@217
    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Tone$1;-><init>()V

    #@21a
    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21c
    .line 28
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    #@0
    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 151
    iput p3, p0, Lcom/android/internal/telephony/cat/Tone;->mValue:I

    #@5
    .line 150
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/os/Parcel;)V
    .locals 1
    .param p3, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Lcom/android/internal/telephony/cat/Tone;->mValue:I

    #@9
    .line 169
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/Tone;
    .locals 5
    .param p0, "value"    # I

    #@0
    .prologue
    .line 161
    invoke-static {}, Lcom/android/internal/telephony/cat/Tone;->values()[Lcom/android/internal/telephony/cat/Tone;

    #@3
    move-result-object v2

    #@4
    const/4 v1, 0x0

    #@5
    array-length v3, v2

    #@6
    :goto_0
    if-ge v1, v3, :cond_1

    #@8
    aget-object v0, v2, v1

    #@a
    .line 162
    .local v0, "e":Lcom/android/internal/telephony/cat/Tone;
    iget v4, v0, Lcom/android/internal/telephony/cat/Tone;->mValue:I

    #@c
    if-ne v4, p0, :cond_0

    #@e
    .line 163
    return-object v0

    #@f
    .line 161
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 166
    .end local v0    # "e":Lcom/android/internal/telephony/cat/Tone;
    :cond_1
    const/4 v1, 0x0

    #@13
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/Tone;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 28
    const-class v0, Lcom/android/internal/telephony/cat/Tone;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/cat/Tone;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/Tone;
    .locals 1

    #@0
    .prologue
    .line 28
    sget-object v0, Lcom/android/internal/telephony/cat/Tone;->$VALUES:[Lcom/android/internal/telephony/cat/Tone;

    #@2
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 180
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/Tone;->ordinal()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 174
    return-void
.end method
