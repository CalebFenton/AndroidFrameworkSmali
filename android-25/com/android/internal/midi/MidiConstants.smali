.class public final Lcom/android/internal/midi/MidiConstants;
.super Ljava/lang/Object;
.source "MidiConstants.java"


# static fields
.field public static final CHANNEL_BYTE_LENGTHS:[I

.field public static final STATUS_ACTIVE_SENSING:B = -0x2t

.field public static final STATUS_CHANNEL_MASK:B = 0xft

.field public static final STATUS_CHANNEL_PRESSURE:B = -0x30t

.field public static final STATUS_COMMAND_MASK:B = -0x10t

.field public static final STATUS_CONTINUE:B = -0x5t

.field public static final STATUS_CONTROL_CHANGE:B = -0x50t

.field public static final STATUS_END_SYSEX:B = -0x9t

.field public static final STATUS_MIDI_TIME_CODE:B = -0xft

.field public static final STATUS_NOTE_OFF:B = -0x80t

.field public static final STATUS_NOTE_ON:B = -0x70t

.field public static final STATUS_PITCH_BEND:B = -0x20t

.field public static final STATUS_POLYPHONIC_AFTERTOUCH:B = -0x60t

.field public static final STATUS_PROGRAM_CHANGE:B = -0x40t

.field public static final STATUS_RESET:B = -0x1t

.field public static final STATUS_SONG_POSITION:B = -0xet

.field public static final STATUS_SONG_SELECT:B = -0xdt

.field public static final STATUS_START:B = -0x6t

.field public static final STATUS_STOP:B = -0x4t

.field public static final STATUS_SYSTEM_EXCLUSIVE:B = -0x10t

.field public static final STATUS_TIMING_CLOCK:B = -0x8t

.field public static final STATUS_TUNE_REQUEST:B = -0xat

.field public static final SYSTEM_BYTE_LENGTHS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 52
    const/4 v0, 0x7

    #@1
    new-array v0, v0, [I

    #@3
    fill-array-data v0, :array_0

    #@6
    sput-object v0, Lcom/android/internal/midi/MidiConstants;->CHANNEL_BYTE_LENGTHS:[I

    #@8
    .line 55
    const/16 v0, 0x10

    #@a
    new-array v0, v0, [I

    #@c
    fill-array-data v0, :array_1

    #@f
    sput-object v0, Lcom/android/internal/midi/MidiConstants;->SYSTEM_BYTE_LENGTHS:[I

    #@11
    .line 22
    return-void

    #@12
    .line 52
    :array_0
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
        0x3
    .end array-data

    #@24
    .line 55
    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static allowRunningStatus(B)Z
    .locals 2
    .param p0, "command"    # B

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 104
    const/16 v1, -0x80

    #@3
    if-lt p0, v1, :cond_0

    #@5
    const/16 v1, -0x10

    #@7
    if-ge p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public static cancelsRunningStatus(B)Z
    .locals 2
    .param p0, "command"    # B

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 110
    const/16 v1, -0x10

    #@3
    if-lt p0, v1, :cond_0

    #@5
    const/16 v1, -0x9

    #@7
    if-gt p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public static getBytesPerMessage(B)I
    .locals 3
    .param p0, "statusByte"    # B

    #@0
    .prologue
    .line 69
    and-int/lit16 v0, p0, 0xff

    #@2
    .line 70
    .local v0, "statusInt":I
    const/16 v1, 0xf0

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 72
    sget-object v1, Lcom/android/internal/midi/MidiConstants;->SYSTEM_BYTE_LENGTHS:[I

    #@8
    and-int/lit8 v2, v0, 0xf

    #@a
    aget v1, v1, v2

    #@c
    return v1

    #@d
    .line 73
    :cond_0
    const/16 v1, 0x80

    #@f
    if-lt v0, v1, :cond_1

    #@11
    .line 75
    sget-object v1, Lcom/android/internal/midi/MidiConstants;->CHANNEL_BYTE_LENGTHS:[I

    #@13
    shr-int/lit8 v2, v0, 0x4

    #@15
    add-int/lit8 v2, v2, -0x8

    #@17
    aget v1, v1, v2

    #@19
    return v1

    #@1a
    .line 77
    :cond_1
    const/4 v1, 0x0

    #@1b
    return v1
.end method

.method public static isAllActiveSensing([BII)Z
    .locals 5
    .param p0, "msg"    # [B
    .param p1, "offset"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 91
    const/4 v1, 0x0

    #@2
    .line 92
    .local v1, "goodBytes":I
    const/4 v2, 0x0

    #@3
    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    #@5
    .line 93
    add-int v4, p1, v2

    #@7
    aget-byte v0, p0, v4

    #@9
    .line 94
    .local v0, "b":B
    const/4 v4, -0x2

    #@a
    if-eq v0, v4, :cond_0

    #@c
    .line 95
    add-int/lit8 v1, v1, 0x1

    #@e
    .line 92
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@10
    goto :goto_0

    #@11
    .line 98
    .end local v0    # "b":B
    :cond_1
    if-nez v1, :cond_2

    #@13
    const/4 v3, 0x1

    #@14
    :cond_2
    return v3
.end method
