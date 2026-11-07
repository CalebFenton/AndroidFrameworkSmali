.class public final Landroid/hardware/radio/V1_0/SsServiceType;
.super Ljava/lang/Object;
.source "SsServiceType.java"


# static fields
.field public static final blacklist ALL_BARRING:I = 0x10

.field public static final blacklist BAIC:I = 0xe

.field public static final blacklist BAIC_ROAMING:I = 0xf

.field public static final blacklist BAOC:I = 0xb

.field public static final blacklist BAOIC:I = 0xc

.field public static final blacklist BAOIC_EXC_HOME:I = 0xd

.field public static final blacklist CFU:I = 0x0

.field public static final blacklist CF_ALL:I = 0x4

.field public static final blacklist CF_ALL_CONDITIONAL:I = 0x5

.field public static final blacklist CF_BUSY:I = 0x1

.field public static final blacklist CF_NOT_REACHABLE:I = 0x3

.field public static final blacklist CF_NO_REPLY:I = 0x2

.field public static final blacklist CLIP:I = 0x6

.field public static final blacklist CLIR:I = 0x7

.field public static final blacklist COLP:I = 0x8

.field public static final blacklist COLR:I = 0x9

.field public static final blacklist INCOMING_BARRING:I = 0x12

.field public static final blacklist OUTGOING_BARRING:I = 0x11

.field public static final blacklist WAIT:I = 0xa


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

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 88
    .local v1, "flipped":I
    const-string v2, "CFU"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 90
    const-string v2, "CF_BUSY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit8 v1, v1, 0x1

    .line 93
    :cond_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 94
    const-string v2, "CF_NO_REPLY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit8 v1, v1, 0x2

    .line 97
    :cond_23
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2f

    .line 98
    const-string v2, "CF_NOT_REACHABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    or-int/lit8 v1, v1, 0x3

    .line 101
    :cond_2f
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 102
    const-string v2, "CF_ALL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    or-int/lit8 v1, v1, 0x4

    .line 105
    :cond_3b
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_47

    .line 106
    const-string v2, "CF_ALL_CONDITIONAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    or-int/lit8 v1, v1, 0x5

    .line 109
    :cond_47
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_53

    .line 110
    const-string v2, "CLIP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    or-int/lit8 v1, v1, 0x6

    .line 113
    :cond_53
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5f

    .line 114
    const-string v2, "CLIR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    or-int/lit8 v1, v1, 0x7

    .line 117
    :cond_5f
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6c

    .line 118
    const-string v2, "COLP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    or-int/lit8 v1, v1, 0x8

    .line 121
    :cond_6c
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_79

    .line 122
    const-string v2, "COLR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    or-int/lit8 v1, v1, 0x9

    .line 125
    :cond_79
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_86

    .line 126
    const-string v2, "WAIT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    or-int/lit8 v1, v1, 0xa

    .line 129
    :cond_86
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_93

    .line 130
    const-string v2, "BAOC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    or-int/lit8 v1, v1, 0xb

    .line 133
    :cond_93
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_a0

    .line 134
    const-string v2, "BAOIC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    or-int/lit8 v1, v1, 0xc

    .line 137
    :cond_a0
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_ad

    .line 138
    const-string v2, "BAOIC_EXC_HOME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    or-int/lit8 v1, v1, 0xd

    .line 141
    :cond_ad
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_ba

    .line 142
    const-string v2, "BAIC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    or-int/lit8 v1, v1, 0xe

    .line 145
    :cond_ba
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_c7

    .line 146
    const-string v2, "BAIC_ROAMING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    or-int/lit8 v1, v1, 0xf

    .line 149
    :cond_c7
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_d4

    .line 150
    const-string v2, "ALL_BARRING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    or-int/lit8 v1, v1, 0x10

    .line 153
    :cond_d4
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_e1

    .line 154
    const-string v2, "OUTGOING_BARRING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    or-int/lit8 v1, v1, 0x11

    .line 157
    :cond_e1
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_ee

    .line 158
    const-string v2, "INCOMING_BARRING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    or-int/lit8 v1, v1, 0x12

    .line 161
    :cond_ee
    if-eq p0, v1, :cond_10c

    .line 162
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

    .line 164
    :cond_10c
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 25
    if-nez p0, :cond_5

    .line 26
    const-string v0, "CFU"

    return-object v0

    .line 28
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 29
    const-string v0, "CF_BUSY"

    return-object v0

    .line 31
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 32
    const-string v0, "CF_NO_REPLY"

    return-object v0

    .line 34
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 35
    const-string v0, "CF_NOT_REACHABLE"

    return-object v0

    .line 37
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 38
    const-string v0, "CF_ALL"

    return-object v0

    .line 40
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 41
    const-string v0, "CF_ALL_CONDITIONAL"

    return-object v0

    .line 43
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 44
    const-string v0, "CLIP"

    return-object v0

    .line 46
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 47
    const-string v0, "CLIR"

    return-object v0

    .line 49
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    .line 50
    const-string v0, "COLP"

    return-object v0

    .line 52
    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    .line 53
    const-string v0, "COLR"

    return-object v0

    .line 55
    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    .line 56
    const-string v0, "WAIT"

    return-object v0

    .line 58
    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    .line 59
    const-string v0, "BAOC"

    return-object v0

    .line 61
    :cond_4b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_52

    .line 62
    const-string v0, "BAOIC"

    return-object v0

    .line 64
    :cond_52
    const/16 v0, 0xd

    if-ne p0, v0, :cond_59

    .line 65
    const-string v0, "BAOIC_EXC_HOME"

    return-object v0

    .line 67
    :cond_59
    const/16 v0, 0xe

    if-ne p0, v0, :cond_60

    .line 68
    const-string v0, "BAIC"

    return-object v0

    .line 70
    :cond_60
    const/16 v0, 0xf

    if-ne p0, v0, :cond_67

    .line 71
    const-string v0, "BAIC_ROAMING"

    return-object v0

    .line 73
    :cond_67
    const/16 v0, 0x10

    if-ne p0, v0, :cond_6e

    .line 74
    const-string v0, "ALL_BARRING"

    return-object v0

    .line 76
    :cond_6e
    const/16 v0, 0x11

    if-ne p0, v0, :cond_75

    .line 77
    const-string v0, "OUTGOING_BARRING"

    return-object v0

    .line 79
    :cond_75
    const/16 v0, 0x12

    if-ne p0, v0, :cond_7c

    .line 80
    const-string v0, "INCOMING_BARRING"

    return-object v0

    .line 82
    :cond_7c
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
