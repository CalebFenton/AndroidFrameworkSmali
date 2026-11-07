.class public Lcom/android/internal/telephony/cdma/SignalToneUtil;
.super Ljava/lang/Object;
.source "SignalToneUtil.java"


# static fields
.field public static final blacklist CDMA_INVALID_TONE:I = -0x1

.field public static final blacklist IS95_CONST_IR_ALERT_HIGH:I = 0x1

.field public static final blacklist IS95_CONST_IR_ALERT_LOW:I = 0x2

.field public static final blacklist IS95_CONST_IR_ALERT_MED:I = 0x0

.field public static final blacklist IS95_CONST_IR_SIGNAL_IS54B:I = 0x2

.field public static final blacklist IS95_CONST_IR_SIGNAL_ISDN:I = 0x1

.field public static final blacklist IS95_CONST_IR_SIGNAL_TONE:I = 0x0

.field public static final blacklist IS95_CONST_IR_SIGNAL_USR_DEFD_ALERT:I = 0x4

.field public static final blacklist IS95_CONST_IR_SIG_IS54B_L:I = 0x1

.field public static final blacklist IS95_CONST_IR_SIG_IS54B_NO_TONE:I = 0x0

.field public static final blacklist IS95_CONST_IR_SIG_IS54B_PBX_L:I = 0x7

.field public static final blacklist IS95_CONST_IR_SIG_IS54B_PBX_SLS:I = 0xa

.field public static final blacklist IS95_CONST_IR_SIG_IS54B_PBX_SS:I = 0x8

.field public static final blacklist IS95_CONST_IR_SIG_IS54B_PBX_SSL:I = 0x9

.field public static final blacklist IS95_CONST_IR_SIG_IS54B_PBX_S_X4:I = 0xb

.field public static final blacklist IS95_CONST_IR_SIG_IS54B_SLS:I = 0x5

.field public static final blacklist IS95_CONST_IR_SIG_IS54B_SS:I = 0x2

.field public static final blacklist IS95_CONST_IR_SIG_IS54B_SSL:I = 0x3

.field public static final blacklist IS95_CONST_IR_SIG_IS54B_SS_2:I = 0x4

.field public static final blacklist IS95_CONST_IR_SIG_IS54B_S_X4:I = 0x6

.field public static final blacklist IS95_CONST_IR_SIG_ISDN_INTGRP:I = 0x1

.field public static final blacklist IS95_CONST_IR_SIG_ISDN_NORMAL:I = 0x0

.field public static final blacklist IS95_CONST_IR_SIG_ISDN_OFF:I = 0xf

.field public static final blacklist IS95_CONST_IR_SIG_ISDN_PAT_3:I = 0x3

.field public static final blacklist IS95_CONST_IR_SIG_ISDN_PAT_5:I = 0x5

.field public static final blacklist IS95_CONST_IR_SIG_ISDN_PAT_6:I = 0x6

.field public static final blacklist IS95_CONST_IR_SIG_ISDN_PAT_7:I = 0x7

.field public static final blacklist IS95_CONST_IR_SIG_ISDN_PING:I = 0x4

.field public static final blacklist IS95_CONST_IR_SIG_ISDN_SP_PRI:I = 0x2

.field public static final blacklist IS95_CONST_IR_SIG_TONE_ABBR_ALRT:I = 0x0

.field public static final blacklist IS95_CONST_IR_SIG_TONE_ABB_INT:I = 0x3

.field public static final blacklist IS95_CONST_IR_SIG_TONE_ABB_RE:I = 0x5

.field public static final blacklist IS95_CONST_IR_SIG_TONE_ANSWER:I = 0x8

.field public static final blacklist IS95_CONST_IR_SIG_TONE_BUSY:I = 0x6

.field public static final blacklist IS95_CONST_IR_SIG_TONE_CALL_W:I = 0x9

.field public static final blacklist IS95_CONST_IR_SIG_TONE_CONFIRM:I = 0x7

.field public static final blacklist IS95_CONST_IR_SIG_TONE_DIAL:I = 0x0

.field public static final blacklist IS95_CONST_IR_SIG_TONE_INT:I = 0x2

.field public static final blacklist IS95_CONST_IR_SIG_TONE_NO_TONE:I = 0x3f

.field public static final blacklist IS95_CONST_IR_SIG_TONE_PIP:I = 0xa

.field public static final blacklist IS95_CONST_IR_SIG_TONE_REORDER:I = 0x4

.field public static final blacklist IS95_CONST_IR_SIG_TONE_RING:I = 0x1

.field public static final blacklist TAPIAMSSCDMA_SIGNAL_PITCH_UNKNOWN:I

.field private static blacklist mHm:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-static {v1, v2, v2}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x2d

    .line 111
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 110
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v1, v2, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x2e

    .line 115
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 113
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x2f

    .line 118
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 117
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-static {v1, v2, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x30

    .line 121
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 120
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-static {v1, v2, v5}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x31

    .line 124
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 123
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/4 v6, 0x5

    invoke-static {v1, v2, v6}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x32

    .line 127
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 126
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/4 v7, 0x6

    invoke-static {v1, v2, v7}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x33

    .line 130
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 129
    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/4 v8, 0x7

    invoke-static {v1, v2, v8}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x34

    .line 133
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 132
    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/16 v9, 0xf

    invoke-static {v1, v2, v9}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x62

    .line 136
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 135
    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v2, v2, v2}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v9

    const/16 v11, 0x22

    .line 141
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 140
    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v2, v2, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v9

    const/16 v11, 0x23

    .line 144
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 143
    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v2, v2, v3}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v9

    const/16 v11, 0x1d

    .line 147
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 146
    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v2, v2, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v9

    const/16 v11, 0x1e

    .line 150
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 149
    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v2, v2, v5}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v9

    const/16 v11, 0x26

    .line 153
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 152
    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v2, v2, v6}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v9

    const/16 v11, 0x27

    .line 156
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 155
    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v2, v2, v7}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v9

    const/16 v11, 0x28

    .line 159
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 158
    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v2, v2, v8}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v9

    const/16 v11, 0x20

    .line 162
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 161
    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/16 v9, 0x8

    invoke-static {v2, v2, v9}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0x2a

    .line 165
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 164
    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/16 v11, 0x9

    invoke-static {v2, v2, v11}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0x2b

    .line 168
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 167
    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/16 v12, 0xa

    invoke-static {v2, v2, v12}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v13

    const/16 v14, 0x2c

    .line 171
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 170
    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/16 v13, 0x3f

    invoke-static {v2, v2, v13}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v1, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x35

    .line 178
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 177
    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v2, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x36

    .line 181
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 180
    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v3, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x37

    .line 184
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 183
    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v1, v3}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x38

    .line 187
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 186
    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v2, v3}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x39

    .line 190
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 189
    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v3, v3}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x3a

    .line 193
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 192
    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v1, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x3b

    .line 196
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 195
    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v2, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x3c

    .line 199
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 198
    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v3, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    const/16 v14, 0x3d

    .line 202
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 201
    invoke-virtual {v0, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v1, v5}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    const/16 v14, 0x3e

    .line 205
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 204
    invoke-virtual {v0, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v2, v5}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    .line 208
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 207
    invoke-virtual {v0, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v3, v5}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    const/16 v14, 0x40

    .line 211
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 210
    invoke-virtual {v0, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v1, v6}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    const/16 v14, 0x41

    .line 214
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 213
    invoke-virtual {v0, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v2, v6}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    const/16 v14, 0x42

    .line 217
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 216
    invoke-virtual {v0, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v3, v6}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x43

    .line 220
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 219
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v1, v7}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x44

    .line 223
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 222
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v2, v7}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x45

    .line 226
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 225
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v3, v7}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x46

    .line 229
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 228
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v1, v8}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x47

    .line 232
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 231
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v2, v8}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x48

    .line 235
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 234
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v3, v8}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x49

    .line 238
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 237
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v1, v9}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x4a

    .line 241
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 240
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v2, v9}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x4b

    .line 244
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 243
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v3, v9}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x4c

    .line 247
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 246
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v1, v11}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x4d

    .line 250
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 249
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v2, v11}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x4e

    .line 253
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 252
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v3, v11}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x4f

    .line 256
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 255
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v1, v12}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x50

    .line 259
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 258
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v2, v12}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x51

    .line 262
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 261
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v3, v12}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x52

    .line 265
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 264
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/16 v4, 0xb

    invoke-static {v3, v1, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v6, 0x53

    .line 268
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 267
    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v2, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v6, 0x54

    .line 271
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 270
    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v3, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x55

    .line 274
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 273
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v2, v2}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v5, v2, v2}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x61

    .line 281
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 279
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v5, v2, v13}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getAudioToneFromSignalInfo(III)I
    .registers 4

    .line 100
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_10

    const/4 p0, -0x1

    return p0

    .line 104
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static blacklist signalParamHash(III)Ljava/lang/Integer;
    .registers 6

    if-ltz p0, :cond_1f

    const/16 v0, 0x100

    if-gt p0, v0, :cond_1f

    if-gt p1, v0, :cond_1f

    if-ltz p1, :cond_1f

    if-gt p2, v0, :cond_1f

    if-gez p2, :cond_f

    goto :goto_1f

    :cond_f
    const/4 v1, 0x2

    if-eq p0, v1, :cond_13

    const/4 p1, 0x0

    .line 96
    :cond_13
    new-instance v1, Ljava/lang/Integer;

    const/high16 v2, 0x10000

    mul-int/2addr p0, v2

    mul-int/2addr p1, v0

    add-int/2addr p0, p1

    add-int/2addr p0, p2

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object v1

    .line 85
    :cond_1f
    :goto_1f
    new-instance p0, Ljava/lang/Integer;

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p0
.end method
