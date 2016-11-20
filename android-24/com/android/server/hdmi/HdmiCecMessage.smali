.class public final Lcom/android/server/hdmi/HdmiCecMessage;
.super Ljava/lang/Object;
.source "HdmiCecMessage.java"


# static fields
.field public static final EMPTY_PARAM:[B


# instance fields
.field private final mDestination:I

.field private final mOpcode:I

.field private final mParams:[B

.field private final mSource:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 29
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    #@2
    sput-object v0, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    #@4
    .line 28
    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 1
    .param p1, "source"    # I
    .param p2, "destination"    # I
    .param p3, "opcode"    # I
    .param p4, "params"    # [B

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    #@5
    .line 42
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    #@7
    .line 43
    and-int/lit16 v0, p3, 0xff

    #@9
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    #@b
    .line 44
    array-length v0, p4

    #@c
    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    #@12
    .line 40
    return-void
.end method

.method private static opcodeToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "opcode"    # I

    #@0
    .prologue
    .line 103
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 247
    const-string/jumbo v0, "Opcode: %02X"

    #@6
    const/4 v1, 0x1

    #@7
    new-array v1, v1, [Ljava/lang/Object;

    #@9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c
    move-result-object v2

    #@d
    const/4 v3, 0x0

    #@e
    aput-object v2, v1, v3

    #@10
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0

    #@15
    .line 105
    :sswitch_0
    const-string/jumbo v0, "Feature Abort"

    #@18
    return-object v0

    #@19
    .line 107
    :sswitch_1
    const-string/jumbo v0, "Image View On"

    #@1c
    return-object v0

    #@1d
    .line 109
    :sswitch_2
    const-string/jumbo v0, "Tuner Step Increment"

    #@20
    return-object v0

    #@21
    .line 111
    :sswitch_3
    const-string/jumbo v0, "Tuner Step Decrement"

    #@24
    return-object v0

    #@25
    .line 113
    :sswitch_4
    const-string/jumbo v0, "Tuner Device Staus"

    #@28
    return-object v0

    #@29
    .line 115
    :sswitch_5
    const-string/jumbo v0, "Give Tuner Device Status"

    #@2c
    return-object v0

    #@2d
    .line 117
    :sswitch_6
    const-string/jumbo v0, "Record On"

    #@30
    return-object v0

    #@31
    .line 119
    :sswitch_7
    const-string/jumbo v0, "Record Status"

    #@34
    return-object v0

    #@35
    .line 121
    :sswitch_8
    const-string/jumbo v0, "Record Off"

    #@38
    return-object v0

    #@39
    .line 123
    :sswitch_9
    const-string/jumbo v0, "Text View On"

    #@3c
    return-object v0

    #@3d
    .line 125
    :sswitch_a
    const-string/jumbo v0, "Record Tv Screen"

    #@40
    return-object v0

    #@41
    .line 127
    :sswitch_b
    const-string/jumbo v0, "Give Deck Status"

    #@44
    return-object v0

    #@45
    .line 129
    :sswitch_c
    const-string/jumbo v0, "Deck Status"

    #@48
    return-object v0

    #@49
    .line 131
    :sswitch_d
    const-string/jumbo v0, "Set Menu Language"

    #@4c
    return-object v0

    #@4d
    .line 133
    :sswitch_e
    const-string/jumbo v0, "Clear Analog Timer"

    #@50
    return-object v0

    #@51
    .line 135
    :sswitch_f
    const-string/jumbo v0, "Set Analog Timer"

    #@54
    return-object v0

    #@55
    .line 137
    :sswitch_10
    const-string/jumbo v0, "Timer Status"

    #@58
    return-object v0

    #@59
    .line 139
    :sswitch_11
    const-string/jumbo v0, "Standby"

    #@5c
    return-object v0

    #@5d
    .line 141
    :sswitch_12
    const-string/jumbo v0, "Play"

    #@60
    return-object v0

    #@61
    .line 143
    :sswitch_13
    const-string/jumbo v0, "Deck Control"

    #@64
    return-object v0

    #@65
    .line 145
    :sswitch_14
    const-string/jumbo v0, "Timer Cleared Status"

    #@68
    return-object v0

    #@69
    .line 147
    :sswitch_15
    const-string/jumbo v0, "User Control Pressed"

    #@6c
    return-object v0

    #@6d
    .line 149
    :sswitch_16
    const-string/jumbo v0, "User Control Release"

    #@70
    return-object v0

    #@71
    .line 151
    :sswitch_17
    const-string/jumbo v0, "Give Osd Name"

    #@74
    return-object v0

    #@75
    .line 153
    :sswitch_18
    const-string/jumbo v0, "Set Osd Name"

    #@78
    return-object v0

    #@79
    .line 155
    :sswitch_19
    const-string/jumbo v0, "Set Osd String"

    #@7c
    return-object v0

    #@7d
    .line 157
    :sswitch_1a
    const-string/jumbo v0, "Set Timer Program Title"

    #@80
    return-object v0

    #@81
    .line 159
    :sswitch_1b
    const-string/jumbo v0, "System Audio Mode Request"

    #@84
    return-object v0

    #@85
    .line 161
    :sswitch_1c
    const-string/jumbo v0, "Give Audio Status"

    #@88
    return-object v0

    #@89
    .line 163
    :sswitch_1d
    const-string/jumbo v0, "Set System Audio Mode"

    #@8c
    return-object v0

    #@8d
    .line 165
    :sswitch_1e
    const-string/jumbo v0, "Report Audio Status"

    #@90
    return-object v0

    #@91
    .line 167
    :sswitch_1f
    const-string/jumbo v0, "Give System Audio Mode Status"

    #@94
    return-object v0

    #@95
    .line 169
    :sswitch_20
    const-string/jumbo v0, "System Audio Mode Status"

    #@98
    return-object v0

    #@99
    .line 171
    :sswitch_21
    const-string/jumbo v0, "Routing Change"

    #@9c
    return-object v0

    #@9d
    .line 173
    :sswitch_22
    const-string/jumbo v0, "Routing Information"

    #@a0
    return-object v0

    #@a1
    .line 175
    :sswitch_23
    const-string/jumbo v0, "Active Source"

    #@a4
    return-object v0

    #@a5
    .line 177
    :sswitch_24
    const-string/jumbo v0, "Give Physical Address"

    #@a8
    return-object v0

    #@a9
    .line 179
    :sswitch_25
    const-string/jumbo v0, "Report Physical Address"

    #@ac
    return-object v0

    #@ad
    .line 181
    :sswitch_26
    const-string/jumbo v0, "Request Active Source"

    #@b0
    return-object v0

    #@b1
    .line 183
    :sswitch_27
    const-string/jumbo v0, "Set Stream Path"

    #@b4
    return-object v0

    #@b5
    .line 185
    :sswitch_28
    const-string/jumbo v0, "Device Vendor Id"

    #@b8
    return-object v0

    #@b9
    .line 187
    :sswitch_29
    const-string/jumbo v0, "Vendor Commandn"

    #@bc
    return-object v0

    #@bd
    .line 189
    :sswitch_2a
    const-string/jumbo v0, "Vendor Remote Button Down"

    #@c0
    return-object v0

    #@c1
    .line 191
    :sswitch_2b
    const-string/jumbo v0, "Vendor Remote Button Up"

    #@c4
    return-object v0

    #@c5
    .line 193
    :sswitch_2c
    const-string/jumbo v0, "Give Device Vendor Id"

    #@c8
    return-object v0

    #@c9
    .line 195
    :sswitch_2d
    const-string/jumbo v0, "Menu REquest"

    #@cc
    return-object v0

    #@cd
    .line 197
    :sswitch_2e
    const-string/jumbo v0, "Menu Status"

    #@d0
    return-object v0

    #@d1
    .line 199
    :sswitch_2f
    const-string/jumbo v0, "Give Device Power Status"

    #@d4
    return-object v0

    #@d5
    .line 201
    :sswitch_30
    const-string/jumbo v0, "Report Power Status"

    #@d8
    return-object v0

    #@d9
    .line 203
    :sswitch_31
    const-string/jumbo v0, "Get Menu Language"

    #@dc
    return-object v0

    #@dd
    .line 205
    :sswitch_32
    const-string/jumbo v0, "Select Analog Service"

    #@e0
    return-object v0

    #@e1
    .line 207
    :sswitch_33
    const-string/jumbo v0, "Select Digital Service"

    #@e4
    return-object v0

    #@e5
    .line 209
    :sswitch_34
    const-string/jumbo v0, "Set Digital Timer"

    #@e8
    return-object v0

    #@e9
    .line 211
    :sswitch_35
    const-string/jumbo v0, "Clear Digital Timer"

    #@ec
    return-object v0

    #@ed
    .line 213
    :sswitch_36
    const-string/jumbo v0, "Set Audio Rate"

    #@f0
    return-object v0

    #@f1
    .line 215
    :sswitch_37
    const-string/jumbo v0, "InActive Source"

    #@f4
    return-object v0

    #@f5
    .line 217
    :sswitch_38
    const-string/jumbo v0, "Cec Version"

    #@f8
    return-object v0

    #@f9
    .line 219
    :sswitch_39
    const-string/jumbo v0, "Get Cec Version"

    #@fc
    return-object v0

    #@fd
    .line 221
    :sswitch_3a
    const-string/jumbo v0, "Vendor Command With Id"

    #@100
    return-object v0

    #@101
    .line 223
    :sswitch_3b
    const-string/jumbo v0, "Clear External Timer"

    #@104
    return-object v0

    #@105
    .line 225
    :sswitch_3c
    const-string/jumbo v0, "Set External Timer"

    #@108
    return-object v0

    #@109
    .line 227
    :sswitch_3d
    const-string/jumbo v0, "Repot Short Audio Descriptor"

    #@10c
    return-object v0

    #@10d
    .line 229
    :sswitch_3e
    const-string/jumbo v0, "Request Short Audio Descriptor"

    #@110
    return-object v0

    #@111
    .line 231
    :sswitch_3f
    const-string/jumbo v0, "Initiate ARC"

    #@114
    return-object v0

    #@115
    .line 233
    :sswitch_40
    const-string/jumbo v0, "Report ARC Initiated"

    #@118
    return-object v0

    #@119
    .line 235
    :sswitch_41
    const-string/jumbo v0, "Report ARC Terminated"

    #@11c
    return-object v0

    #@11d
    .line 237
    :sswitch_42
    const-string/jumbo v0, "Request ARC Initiation"

    #@120
    return-object v0

    #@121
    .line 239
    :sswitch_43
    const-string/jumbo v0, "Request ARC Termination"

    #@124
    return-object v0

    #@125
    .line 241
    :sswitch_44
    const-string/jumbo v0, "Terminate ARC"

    #@128
    return-object v0

    #@129
    .line 243
    :sswitch_45
    const-string/jumbo v0, "Cdc Message"

    #@12c
    return-object v0

    #@12d
    .line 245
    :sswitch_46
    const-string/jumbo v0, "Abort"

    #@130
    return-object v0

    #@131
    .line 103
    nop

    #@132
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_8
        0xd -> :sswitch_9
        0xf -> :sswitch_a
        0x1a -> :sswitch_b
        0x1b -> :sswitch_c
        0x32 -> :sswitch_d
        0x33 -> :sswitch_e
        0x34 -> :sswitch_f
        0x35 -> :sswitch_10
        0x36 -> :sswitch_11
        0x41 -> :sswitch_12
        0x42 -> :sswitch_13
        0x43 -> :sswitch_14
        0x44 -> :sswitch_15
        0x45 -> :sswitch_16
        0x46 -> :sswitch_17
        0x47 -> :sswitch_18
        0x64 -> :sswitch_19
        0x67 -> :sswitch_1a
        0x70 -> :sswitch_1b
        0x71 -> :sswitch_1c
        0x72 -> :sswitch_1d
        0x7a -> :sswitch_1e
        0x7d -> :sswitch_1f
        0x7e -> :sswitch_20
        0x80 -> :sswitch_21
        0x81 -> :sswitch_22
        0x82 -> :sswitch_23
        0x83 -> :sswitch_24
        0x84 -> :sswitch_25
        0x85 -> :sswitch_26
        0x86 -> :sswitch_27
        0x87 -> :sswitch_28
        0x89 -> :sswitch_29
        0x8a -> :sswitch_2a
        0x8b -> :sswitch_2b
        0x8c -> :sswitch_2c
        0x8d -> :sswitch_2d
        0x8e -> :sswitch_2e
        0x8f -> :sswitch_2f
        0x90 -> :sswitch_30
        0x91 -> :sswitch_31
        0x92 -> :sswitch_32
        0x93 -> :sswitch_33
        0x97 -> :sswitch_34
        0x99 -> :sswitch_35
        0x9a -> :sswitch_36
        0x9d -> :sswitch_37
        0x9e -> :sswitch_38
        0x9f -> :sswitch_39
        0xa0 -> :sswitch_3a
        0xa1 -> :sswitch_3b
        0xa2 -> :sswitch_3c
        0xa3 -> :sswitch_3d
        0xa4 -> :sswitch_3e
        0xc0 -> :sswitch_3f
        0xc1 -> :sswitch_40
        0xc2 -> :sswitch_41
        0xc3 -> :sswitch_42
        0xc4 -> :sswitch_43
        0xc5 -> :sswitch_44
        0xf8 -> :sswitch_45
        0xff -> :sswitch_46
    .end sparse-switch
.end method


# virtual methods
.method public getDestination()I
    .locals 1

    #@0
    .prologue
    .line 64
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    #@2
    return v0
.end method

.method public getOpcode()I
    .locals 1

    #@0
    .prologue
    .line 74
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    #@2
    return v0
.end method

.method public getParams()[B
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    #@2
    return-object v0
.end method

.method public getSource()I
    .locals 1

    #@0
    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 90
    new-instance v1, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@7
    .line 91
    .local v1, "s":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "<%s> src: %d, dst: %d"

    #@a
    const/4 v4, 0x3

    #@b
    new-array v4, v4, [Ljava/lang/Object;

    #@d
    .line 92
    iget v5, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    #@f
    invoke-static {v5}, Lcom/android/server/hdmi/HdmiCecMessage;->opcodeToString(I)Ljava/lang/String;

    #@12
    move-result-object v5

    #@13
    aput-object v5, v4, v3

    #@15
    iget v5, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    #@17
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v5

    #@1b
    aput-object v5, v4, v9

    #@1d
    iget v5, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    #@1f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v5

    #@23
    const/4 v6, 0x2

    #@24
    aput-object v5, v4, v6

    #@26
    .line 91
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2d
    .line 93
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    #@2f
    array-length v2, v2

    #@30
    if-lez v2, :cond_0

    #@32
    .line 94
    const-string/jumbo v2, ", params:"

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@38
    .line 95
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    #@3a
    array-length v5, v4

    #@3b
    move v2, v3

    #@3c
    :goto_0
    if-ge v2, v5, :cond_0

    #@3e
    aget-byte v0, v4, v2

    #@40
    .line 96
    .local v0, "data":B
    const-string/jumbo v6, " %02X"

    #@43
    new-array v7, v9, [Ljava/lang/Object;

    #@45
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@48
    move-result-object v8

    #@49
    aput-object v8, v7, v3

    #@4b
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4e
    move-result-object v6

    #@4f
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@52
    .line 95
    add-int/lit8 v2, v2, 0x1

    #@54
    goto :goto_0

    #@55
    .line 99
    .end local v0    # "data":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    return-object v2
.end method
