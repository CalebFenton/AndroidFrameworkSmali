.class public Lcom/android/internal/telephony/cdma/SignalToneUtil;
.super Ljava/lang/Object;
.source "SignalToneUtil.java"


# static fields
.field public static final CDMA_INVALID_TONE:I = -0x1

.field public static final IS95_CONST_IR_ALERT_HIGH:I = 0x1

.field public static final IS95_CONST_IR_ALERT_LOW:I = 0x2

.field public static final IS95_CONST_IR_ALERT_MED:I = 0x0

.field public static final IS95_CONST_IR_SIGNAL_IS54B:I = 0x2

.field public static final IS95_CONST_IR_SIGNAL_ISDN:I = 0x1

.field public static final IS95_CONST_IR_SIGNAL_TONE:I = 0x0

.field public static final IS95_CONST_IR_SIGNAL_USR_DEFD_ALERT:I = 0x4

.field public static final IS95_CONST_IR_SIG_IS54B_L:I = 0x1

.field public static final IS95_CONST_IR_SIG_IS54B_NO_TONE:I = 0x0

.field public static final IS95_CONST_IR_SIG_IS54B_PBX_L:I = 0x7

.field public static final IS95_CONST_IR_SIG_IS54B_PBX_SLS:I = 0xa

.field public static final IS95_CONST_IR_SIG_IS54B_PBX_SS:I = 0x8

.field public static final IS95_CONST_IR_SIG_IS54B_PBX_SSL:I = 0x9

.field public static final IS95_CONST_IR_SIG_IS54B_PBX_S_X4:I = 0xb

.field public static final IS95_CONST_IR_SIG_IS54B_SLS:I = 0x5

.field public static final IS95_CONST_IR_SIG_IS54B_SS:I = 0x2

.field public static final IS95_CONST_IR_SIG_IS54B_SSL:I = 0x3

.field public static final IS95_CONST_IR_SIG_IS54B_SS_2:I = 0x4

.field public static final IS95_CONST_IR_SIG_IS54B_S_X4:I = 0x6

.field public static final IS95_CONST_IR_SIG_ISDN_INTGRP:I = 0x1

.field public static final IS95_CONST_IR_SIG_ISDN_NORMAL:I = 0x0

.field public static final IS95_CONST_IR_SIG_ISDN_OFF:I = 0xf

.field public static final IS95_CONST_IR_SIG_ISDN_PAT_3:I = 0x3

.field public static final IS95_CONST_IR_SIG_ISDN_PAT_5:I = 0x5

.field public static final IS95_CONST_IR_SIG_ISDN_PAT_6:I = 0x6

.field public static final IS95_CONST_IR_SIG_ISDN_PAT_7:I = 0x7

.field public static final IS95_CONST_IR_SIG_ISDN_PING:I = 0x4

.field public static final IS95_CONST_IR_SIG_ISDN_SP_PRI:I = 0x2

.field public static final IS95_CONST_IR_SIG_TONE_ABBR_ALRT:I = 0x0

.field public static final IS95_CONST_IR_SIG_TONE_ABB_INT:I = 0x3

.field public static final IS95_CONST_IR_SIG_TONE_ABB_RE:I = 0x5

.field public static final IS95_CONST_IR_SIG_TONE_ANSWER:I = 0x8

.field public static final IS95_CONST_IR_SIG_TONE_BUSY:I = 0x6

.field public static final IS95_CONST_IR_SIG_TONE_CALL_W:I = 0x9

.field public static final IS95_CONST_IR_SIG_TONE_CONFIRM:I = 0x7

.field public static final IS95_CONST_IR_SIG_TONE_DIAL:I = 0x0

.field public static final IS95_CONST_IR_SIG_TONE_INT:I = 0x2

.field public static final IS95_CONST_IR_SIG_TONE_NO_TONE:I = 0x3f

.field public static final IS95_CONST_IR_SIG_TONE_PIP:I = 0xa

.field public static final IS95_CONST_IR_SIG_TONE_REORDER:I = 0x4

.field public static final IS95_CONST_IR_SIG_TONE_RING:I = 0x1

.field public static final TAPIAMSSCDMA_SIGNAL_PITCH_UNKNOWN:I

.field private static mHm:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x4

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v4, 0x2

    #@4
    const/4 v3, 0x0

    #@5
    .line 80
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    sput-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@c
    .line 110
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@e
    invoke-static {v5, v3, v3}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    .line 111
    const/16 v2, 0x2d

    #@14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v2

    #@18
    .line 110
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 113
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@1d
    invoke-static {v5, v3, v5}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@20
    move-result-object v1

    #@21
    .line 115
    const/16 v2, 0x2e

    #@23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v2

    #@27
    .line 113
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    .line 117
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@2c
    invoke-static {v5, v3, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@2f
    move-result-object v1

    #@30
    .line 118
    const/16 v2, 0x2f

    #@32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v2

    #@36
    .line 117
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    .line 120
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@3b
    invoke-static {v5, v3, v7}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@3e
    move-result-object v1

    #@3f
    .line 121
    const/16 v2, 0x30

    #@41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@44
    move-result-object v2

    #@45
    .line 120
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    .line 123
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@4a
    invoke-static {v5, v3, v6}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@4d
    move-result-object v1

    #@4e
    .line 124
    const/16 v2, 0x31

    #@50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@53
    move-result-object v2

    #@54
    .line 123
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@57
    .line 126
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@59
    .line 127
    const/4 v1, 0x5

    #@5a
    .line 126
    invoke-static {v5, v3, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@5d
    move-result-object v1

    #@5e
    .line 127
    const/16 v2, 0x32

    #@60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@63
    move-result-object v2

    #@64
    .line 126
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@67
    .line 129
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@69
    .line 130
    const/4 v1, 0x6

    #@6a
    .line 129
    invoke-static {v5, v3, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@6d
    move-result-object v1

    #@6e
    .line 130
    const/16 v2, 0x33

    #@70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@73
    move-result-object v2

    #@74
    .line 129
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    .line 132
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@79
    .line 133
    const/4 v1, 0x7

    #@7a
    .line 132
    invoke-static {v5, v3, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@7d
    move-result-object v1

    #@7e
    .line 133
    const/16 v2, 0x34

    #@80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@83
    move-result-object v2

    #@84
    .line 132
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@87
    .line 135
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@89
    .line 136
    const/16 v1, 0xf

    #@8b
    .line 135
    invoke-static {v5, v3, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@8e
    move-result-object v1

    #@8f
    .line 136
    const/16 v2, 0x62

    #@91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@94
    move-result-object v2

    #@95
    .line 135
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@98
    .line 140
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@9a
    invoke-static {v3, v3, v3}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@9d
    move-result-object v1

    #@9e
    .line 141
    const/16 v2, 0x22

    #@a0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a3
    move-result-object v2

    #@a4
    .line 140
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a7
    .line 143
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@a9
    invoke-static {v3, v3, v5}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@ac
    move-result-object v1

    #@ad
    .line 144
    const/16 v2, 0x23

    #@af
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b2
    move-result-object v2

    #@b3
    .line 143
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b6
    .line 146
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@b8
    invoke-static {v3, v3, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@bb
    move-result-object v1

    #@bc
    .line 147
    const/16 v2, 0x1d

    #@be
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c1
    move-result-object v2

    #@c2
    .line 146
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c5
    .line 149
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@c7
    invoke-static {v3, v3, v7}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@ca
    move-result-object v1

    #@cb
    .line 150
    const/16 v2, 0x1e

    #@cd
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d0
    move-result-object v2

    #@d1
    .line 149
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d4
    .line 152
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@d6
    invoke-static {v3, v3, v6}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@d9
    move-result-object v1

    #@da
    .line 153
    const/16 v2, 0x26

    #@dc
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@df
    move-result-object v2

    #@e0
    .line 152
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e3
    .line 155
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@e5
    .line 156
    const/4 v1, 0x5

    #@e6
    .line 155
    invoke-static {v3, v3, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@e9
    move-result-object v1

    #@ea
    .line 156
    const/16 v2, 0x27

    #@ec
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ef
    move-result-object v2

    #@f0
    .line 155
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f3
    .line 158
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@f5
    .line 159
    const/4 v1, 0x6

    #@f6
    .line 158
    invoke-static {v3, v3, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@f9
    move-result-object v1

    #@fa
    .line 159
    const/16 v2, 0x28

    #@fc
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ff
    move-result-object v2

    #@100
    .line 158
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@103
    .line 161
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@105
    .line 162
    const/4 v1, 0x7

    #@106
    .line 161
    invoke-static {v3, v3, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@109
    move-result-object v1

    #@10a
    .line 162
    const/16 v2, 0x20

    #@10c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10f
    move-result-object v2

    #@110
    .line 161
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@113
    .line 164
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@115
    .line 165
    const/16 v1, 0x8

    #@117
    .line 164
    invoke-static {v3, v3, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@11a
    move-result-object v1

    #@11b
    .line 165
    const/16 v2, 0x2a

    #@11d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@120
    move-result-object v2

    #@121
    .line 164
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@124
    .line 167
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@126
    .line 168
    const/16 v1, 0x9

    #@128
    .line 167
    invoke-static {v3, v3, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@12b
    move-result-object v1

    #@12c
    .line 168
    const/16 v2, 0x2b

    #@12e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@131
    move-result-object v2

    #@132
    .line 167
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@135
    .line 170
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@137
    .line 171
    const/16 v1, 0xa

    #@139
    .line 170
    invoke-static {v3, v3, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@13c
    move-result-object v1

    #@13d
    .line 171
    const/16 v2, 0x2c

    #@13f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@142
    move-result-object v2

    #@143
    .line 170
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@146
    .line 173
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@148
    .line 174
    const/16 v1, 0x3f

    #@14a
    .line 173
    invoke-static {v3, v3, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@14d
    move-result-object v1

    #@14e
    .line 174
    const/16 v2, 0x62

    #@150
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@153
    move-result-object v2

    #@154
    .line 173
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@157
    .line 177
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@159
    invoke-static {v4, v5, v5}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@15c
    move-result-object v1

    #@15d
    .line 178
    const/16 v2, 0x35

    #@15f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@162
    move-result-object v2

    #@163
    .line 177
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@166
    .line 180
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@168
    invoke-static {v4, v3, v5}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@16b
    move-result-object v1

    #@16c
    .line 181
    const/16 v2, 0x36

    #@16e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@171
    move-result-object v2

    #@172
    .line 180
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@175
    .line 183
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@177
    invoke-static {v4, v4, v5}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@17a
    move-result-object v1

    #@17b
    .line 184
    const/16 v2, 0x37

    #@17d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@180
    move-result-object v2

    #@181
    .line 183
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@184
    .line 186
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@186
    invoke-static {v4, v5, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@189
    move-result-object v1

    #@18a
    .line 187
    const/16 v2, 0x38

    #@18c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18f
    move-result-object v2

    #@190
    .line 186
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@193
    .line 189
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@195
    invoke-static {v4, v3, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@198
    move-result-object v1

    #@199
    .line 190
    const/16 v2, 0x39

    #@19b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19e
    move-result-object v2

    #@19f
    .line 189
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a2
    .line 192
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@1a4
    invoke-static {v4, v4, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@1a7
    move-result-object v1

    #@1a8
    .line 193
    const/16 v2, 0x3a

    #@1aa
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1ad
    move-result-object v2

    #@1ae
    .line 192
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b1
    .line 195
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@1b3
    invoke-static {v4, v5, v7}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@1b6
    move-result-object v1

    #@1b7
    .line 196
    const/16 v2, 0x3b

    #@1b9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1bc
    move-result-object v2

    #@1bd
    .line 195
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c0
    .line 198
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@1c2
    invoke-static {v4, v3, v7}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@1c5
    move-result-object v1

    #@1c6
    .line 199
    const/16 v2, 0x3c

    #@1c8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1cb
    move-result-object v2

    #@1cc
    .line 198
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1cf
    .line 201
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@1d1
    invoke-static {v4, v4, v7}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@1d4
    move-result-object v1

    #@1d5
    .line 202
    const/16 v2, 0x3d

    #@1d7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1da
    move-result-object v2

    #@1db
    .line 201
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1de
    .line 204
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@1e0
    invoke-static {v4, v5, v6}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@1e3
    move-result-object v1

    #@1e4
    .line 205
    const/16 v2, 0x3e

    #@1e6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e9
    move-result-object v2

    #@1ea
    .line 204
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ed
    .line 207
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@1ef
    invoke-static {v4, v3, v6}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@1f2
    move-result-object v1

    #@1f3
    .line 208
    const/16 v2, 0x3f

    #@1f5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f8
    move-result-object v2

    #@1f9
    .line 207
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1fc
    .line 210
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@1fe
    invoke-static {v4, v4, v6}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@201
    move-result-object v1

    #@202
    .line 211
    const/16 v2, 0x40

    #@204
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@207
    move-result-object v2

    #@208
    .line 210
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20b
    .line 213
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@20d
    .line 214
    const/4 v1, 0x5

    #@20e
    .line 213
    invoke-static {v4, v5, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@211
    move-result-object v1

    #@212
    .line 214
    const/16 v2, 0x41

    #@214
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@217
    move-result-object v2

    #@218
    .line 213
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21b
    .line 216
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@21d
    .line 217
    const/4 v1, 0x5

    #@21e
    .line 216
    invoke-static {v4, v3, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@221
    move-result-object v1

    #@222
    .line 217
    const/16 v2, 0x42

    #@224
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@227
    move-result-object v2

    #@228
    .line 216
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22b
    .line 219
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@22d
    .line 220
    const/4 v1, 0x5

    #@22e
    .line 219
    invoke-static {v4, v4, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@231
    move-result-object v1

    #@232
    .line 220
    const/16 v2, 0x43

    #@234
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@237
    move-result-object v2

    #@238
    .line 219
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23b
    .line 222
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@23d
    .line 223
    const/4 v1, 0x6

    #@23e
    .line 222
    invoke-static {v4, v5, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@241
    move-result-object v1

    #@242
    .line 223
    const/16 v2, 0x44

    #@244
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@247
    move-result-object v2

    #@248
    .line 222
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24b
    .line 225
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@24d
    .line 226
    const/4 v1, 0x6

    #@24e
    .line 225
    invoke-static {v4, v3, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@251
    move-result-object v1

    #@252
    .line 226
    const/16 v2, 0x45

    #@254
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@257
    move-result-object v2

    #@258
    .line 225
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25b
    .line 228
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@25d
    .line 229
    const/4 v1, 0x6

    #@25e
    .line 228
    invoke-static {v4, v4, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@261
    move-result-object v1

    #@262
    .line 229
    const/16 v2, 0x46

    #@264
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@267
    move-result-object v2

    #@268
    .line 228
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26b
    .line 231
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@26d
    .line 232
    const/4 v1, 0x7

    #@26e
    .line 231
    invoke-static {v4, v5, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@271
    move-result-object v1

    #@272
    .line 232
    const/16 v2, 0x47

    #@274
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@277
    move-result-object v2

    #@278
    .line 231
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27b
    .line 234
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@27d
    .line 235
    const/4 v1, 0x7

    #@27e
    .line 234
    invoke-static {v4, v3, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@281
    move-result-object v1

    #@282
    .line 235
    const/16 v2, 0x48

    #@284
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@287
    move-result-object v2

    #@288
    .line 234
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28b
    .line 237
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@28d
    .line 238
    const/4 v1, 0x7

    #@28e
    .line 237
    invoke-static {v4, v4, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@291
    move-result-object v1

    #@292
    .line 238
    const/16 v2, 0x49

    #@294
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@297
    move-result-object v2

    #@298
    .line 237
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29b
    .line 240
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@29d
    .line 241
    const/16 v1, 0x8

    #@29f
    .line 240
    invoke-static {v4, v5, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@2a2
    move-result-object v1

    #@2a3
    .line 241
    const/16 v2, 0x4a

    #@2a5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a8
    move-result-object v2

    #@2a9
    .line 240
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2ac
    .line 243
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@2ae
    .line 244
    const/16 v1, 0x8

    #@2b0
    .line 243
    invoke-static {v4, v3, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@2b3
    move-result-object v1

    #@2b4
    .line 244
    const/16 v2, 0x4b

    #@2b6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b9
    move-result-object v2

    #@2ba
    .line 243
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2bd
    .line 246
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@2bf
    .line 247
    const/16 v1, 0x8

    #@2c1
    .line 246
    invoke-static {v4, v4, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@2c4
    move-result-object v1

    #@2c5
    .line 247
    const/16 v2, 0x4c

    #@2c7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2ca
    move-result-object v2

    #@2cb
    .line 246
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2ce
    .line 249
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@2d0
    .line 250
    const/16 v1, 0x9

    #@2d2
    .line 249
    invoke-static {v4, v5, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@2d5
    move-result-object v1

    #@2d6
    .line 250
    const/16 v2, 0x4d

    #@2d8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2db
    move-result-object v2

    #@2dc
    .line 249
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2df
    .line 252
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@2e1
    .line 253
    const/16 v1, 0x9

    #@2e3
    .line 252
    invoke-static {v4, v3, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@2e6
    move-result-object v1

    #@2e7
    .line 253
    const/16 v2, 0x4e

    #@2e9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2ec
    move-result-object v2

    #@2ed
    .line 252
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f0
    .line 255
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@2f2
    .line 256
    const/16 v1, 0x9

    #@2f4
    .line 255
    invoke-static {v4, v4, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@2f7
    move-result-object v1

    #@2f8
    .line 256
    const/16 v2, 0x4f

    #@2fa
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2fd
    move-result-object v2

    #@2fe
    .line 255
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@301
    .line 258
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@303
    .line 259
    const/16 v1, 0xa

    #@305
    .line 258
    invoke-static {v4, v5, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@308
    move-result-object v1

    #@309
    .line 259
    const/16 v2, 0x50

    #@30b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30e
    move-result-object v2

    #@30f
    .line 258
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@312
    .line 261
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@314
    .line 262
    const/16 v1, 0xa

    #@316
    .line 261
    invoke-static {v4, v3, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@319
    move-result-object v1

    #@31a
    .line 262
    const/16 v2, 0x51

    #@31c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@31f
    move-result-object v2

    #@320
    .line 261
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@323
    .line 264
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@325
    .line 265
    const/16 v1, 0xa

    #@327
    .line 264
    invoke-static {v4, v4, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@32a
    move-result-object v1

    #@32b
    .line 265
    const/16 v2, 0x52

    #@32d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@330
    move-result-object v2

    #@331
    .line 264
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@334
    .line 267
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@336
    .line 268
    const/16 v1, 0xb

    #@338
    .line 267
    invoke-static {v4, v5, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@33b
    move-result-object v1

    #@33c
    .line 268
    const/16 v2, 0x53

    #@33e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@341
    move-result-object v2

    #@342
    .line 267
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@345
    .line 270
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@347
    .line 271
    const/16 v1, 0xb

    #@349
    .line 270
    invoke-static {v4, v3, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@34c
    move-result-object v1

    #@34d
    .line 271
    const/16 v2, 0x54

    #@34f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@352
    move-result-object v2

    #@353
    .line 270
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@356
    .line 273
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@358
    .line 274
    const/16 v1, 0xb

    #@35a
    .line 273
    invoke-static {v4, v4, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@35d
    move-result-object v1

    #@35e
    .line 274
    const/16 v2, 0x55

    #@360
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@363
    move-result-object v2

    #@364
    .line 273
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@367
    .line 276
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@369
    invoke-static {v4, v3, v3}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@36c
    move-result-object v1

    #@36d
    .line 277
    const/16 v2, 0x62

    #@36f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@372
    move-result-object v2

    #@373
    .line 276
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@376
    .line 279
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@378
    invoke-static {v6, v3, v3}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@37b
    move-result-object v1

    #@37c
    .line 281
    const/16 v2, 0x61

    #@37e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@381
    move-result-object v2

    #@382
    .line 279
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@385
    .line 283
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@387
    .line 284
    const/16 v1, 0x3f

    #@389
    .line 283
    invoke-static {v6, v3, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@38c
    move-result-object v1

    #@38d
    .line 285
    const/16 v2, 0x61

    #@38f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@392
    move-result-object v2

    #@393
    .line 283
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@396
    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getAudioToneFromSignalInfo(III)I
    .locals 3
    .param p0, "signalType"    # I
    .param p1, "alertPitch"    # I
    .param p2, "signal"    # I

    #@0
    .prologue
    .line 100
    sget-object v1, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    #@2
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/Integer;

    #@c
    .line 101
    .local v0, "result":Ljava/lang/Integer;
    if-nez v0, :cond_0

    #@e
    .line 102
    const/4 v1, -0x1

    #@f
    return v1

    #@10
    .line 104
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@13
    move-result v1

    #@14
    return v1
.end method

.method private static signalParamHash(III)Ljava/lang/Integer;
    .locals 3
    .param p0, "signalType"    # I
    .param p1, "alertPitch"    # I
    .param p2, "signal"    # I

    #@0
    .prologue
    const/16 v0, 0x100

    #@2
    .line 83
    if-ltz p0, :cond_0

    #@4
    if-le p0, v0, :cond_1

    #@6
    .line 85
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    #@8
    const/4 v1, -0x1

    #@9
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    #@c
    return-object v0

    #@d
    .line 83
    :cond_1
    if-gt p1, v0, :cond_0

    #@f
    .line 84
    if-ltz p1, :cond_0

    #@11
    if-gt p2, v0, :cond_0

    #@13
    if-ltz p2, :cond_0

    #@15
    .line 93
    const/4 v0, 0x2

    #@16
    if-eq p0, v0, :cond_2

    #@18
    .line 94
    const/4 p1, 0x0

    #@19
    .line 96
    :cond_2
    new-instance v0, Ljava/lang/Integer;

    #@1b
    mul-int/lit16 v1, p0, 0x100

    #@1d
    mul-int/lit16 v1, v1, 0x100

    #@1f
    mul-int/lit16 v2, p1, 0x100

    #@21
    add-int/2addr v1, v2

    #@22
    add-int/2addr v1, p2

    #@23
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    #@26
    return-object v0
.end method
