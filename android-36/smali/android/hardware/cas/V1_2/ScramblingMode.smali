.class public final Landroid/hardware/cas/V1_2/ScramblingMode;
.super Ljava/lang/Object;
.source "ScramblingMode.java"


# static fields
.field public static final blacklist AES128:I = 0x9

.field public static final blacklist AES_ECB:I = 0xa

.field public static final blacklist AES_SCTE52:I = 0xb

.field public static final blacklist DVB_CISSA_V1:I = 0x6

.field public static final blacklist DVB_CSA1:I = 0x1

.field public static final blacklist DVB_CSA2:I = 0x2

.field public static final blacklist DVB_CSA3_ENHANCE:I = 0x5

.field public static final blacklist DVB_CSA3_MINIMAL:I = 0x4

.field public static final blacklist DVB_CSA3_STANDARD:I = 0x3

.field public static final blacklist DVB_IDSA:I = 0x7

.field public static final blacklist MULTI2:I = 0x8

.field public static final blacklist RESERVED:I = 0x0

.field public static final blacklist TDES_ECB:I = 0xc

.field public static final blacklist TDES_SCTE52:I = 0xd


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # I

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 109
    .local v1, "flipped":I
    const-string v2, "RESERVED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 111
    const-string v2, "DVB_CSA1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    or-int/lit8 v1, v1, 0x1

    .line 114
    :cond_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 115
    const-string v2, "DVB_CSA2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    or-int/lit8 v1, v1, 0x2

    .line 118
    :cond_23
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2f

    .line 119
    const-string v2, "DVB_CSA3_STANDARD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    or-int/lit8 v1, v1, 0x3

    .line 122
    :cond_2f
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 123
    const-string v2, "DVB_CSA3_MINIMAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    or-int/lit8 v1, v1, 0x4

    .line 126
    :cond_3b
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_47

    .line 127
    const-string v2, "DVB_CSA3_ENHANCE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    or-int/lit8 v1, v1, 0x5

    .line 130
    :cond_47
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_53

    .line 131
    const-string v2, "DVB_CISSA_V1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    or-int/lit8 v1, v1, 0x6

    .line 134
    :cond_53
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5f

    .line 135
    const-string v2, "DVB_IDSA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    or-int/lit8 v1, v1, 0x7

    .line 138
    :cond_5f
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6c

    .line 139
    const-string v2, "MULTI2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    or-int/lit8 v1, v1, 0x8

    .line 142
    :cond_6c
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_79

    .line 143
    const-string v2, "AES128"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    or-int/lit8 v1, v1, 0x9

    .line 146
    :cond_79
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_86

    .line 147
    const-string v2, "AES_ECB"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    or-int/lit8 v1, v1, 0xa

    .line 150
    :cond_86
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_93

    .line 151
    const-string v2, "AES_SCTE52"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    or-int/lit8 v1, v1, 0xb

    .line 154
    :cond_93
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_a0

    .line 155
    const-string v2, "TDES_ECB"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    or-int/lit8 v1, v1, 0xc

    .line 158
    :cond_a0
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_ad

    .line 159
    const-string v2, "TDES_SCTE52"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    or-int/lit8 v1, v1, 0xd

    .line 162
    :cond_ad
    if-eq p0, v1, :cond_cb

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_cb
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 61
    if-nez p0, :cond_5

    .line 62
    const-string v0, "RESERVED"

    return-object v0

    .line 64
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 65
    const-string v0, "DVB_CSA1"

    return-object v0

    .line 67
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 68
    const-string v0, "DVB_CSA2"

    return-object v0

    .line 70
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 71
    const-string v0, "DVB_CSA3_STANDARD"

    return-object v0

    .line 73
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 74
    const-string v0, "DVB_CSA3_MINIMAL"

    return-object v0

    .line 76
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 77
    const-string v0, "DVB_CSA3_ENHANCE"

    return-object v0

    .line 79
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 80
    const-string v0, "DVB_CISSA_V1"

    return-object v0

    .line 82
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 83
    const-string v0, "DVB_IDSA"

    return-object v0

    .line 85
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    .line 86
    const-string v0, "MULTI2"

    return-object v0

    .line 88
    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    .line 89
    const-string v0, "AES128"

    return-object v0

    .line 91
    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    .line 92
    const-string v0, "AES_ECB"

    return-object v0

    .line 94
    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    .line 95
    const-string v0, "AES_SCTE52"

    return-object v0

    .line 97
    :cond_4b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_52

    .line 98
    const-string v0, "TDES_ECB"

    return-object v0

    .line 100
    :cond_52
    const/16 v0, 0xd

    if-ne p0, v0, :cond_59

    .line 101
    const-string v0, "TDES_SCTE52"

    return-object v0

    .line 103
    :cond_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
