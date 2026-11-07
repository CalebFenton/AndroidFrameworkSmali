.class public final Landroid/hardware/radio/V1_0/RadioAccessFamily;
.super Ljava/lang/Object;
.source "RadioAccessFamily.java"


# static fields
.field public static final blacklist EDGE:I = 0x4

.field public static final blacklist EHRPD:I = 0x2000

.field public static final blacklist EVDO_0:I = 0x80

.field public static final blacklist EVDO_A:I = 0x100

.field public static final blacklist EVDO_B:I = 0x1000

.field public static final blacklist GPRS:I = 0x2

.field public static final blacklist GSM:I = 0x10000

.field public static final blacklist HSDPA:I = 0x200

.field public static final blacklist HSPA:I = 0x800

.field public static final blacklist HSPAP:I = 0x8000

.field public static final blacklist HSUPA:I = 0x400

.field public static final blacklist IS95A:I = 0x10

.field public static final blacklist IS95B:I = 0x20

.field public static final blacklist LTE:I = 0x4000

.field public static final blacklist LTE_CA:I = 0x80000

.field public static final blacklist ONE_X_RTT:I = 0x40

.field public static final blacklist TD_SCDMA:I = 0x20000

.field public static final blacklist UMTS:I = 0x8

.field public static final blacklist UNKNOWN:I = 0x1


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
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 89
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    or-int/lit8 v1, v1, 0x1

    .line 92
    :cond_12
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    .line 93
    const-string v2, "GPRS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    or-int/lit8 v1, v1, 0x2

    .line 96
    :cond_1e
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2a

    .line 97
    const-string v2, "EDGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit8 v1, v1, 0x4

    .line 100
    :cond_2a
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_37

    .line 101
    const-string v2, "UMTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit8 v1, v1, 0x8

    .line 104
    :cond_37
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_44

    .line 105
    const-string v2, "IS95A"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit8 v1, v1, 0x10

    .line 108
    :cond_44
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_51

    .line 109
    const-string v2, "IS95B"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    or-int/lit8 v1, v1, 0x20

    .line 112
    :cond_51
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_5e

    .line 113
    const-string v2, "ONE_X_RTT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    or-int/lit8 v1, v1, 0x40

    .line 116
    :cond_5e
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_6b

    .line 117
    const-string v2, "EVDO_0"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    or-int/lit16 v1, v1, 0x80

    .line 120
    :cond_6b
    and-int/lit16 v2, p0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_78

    .line 121
    const-string v2, "EVDO_A"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    or-int/lit16 v1, v1, 0x100

    .line 124
    :cond_78
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_85

    .line 125
    const-string v2, "HSDPA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    or-int/lit16 v1, v1, 0x200

    .line 128
    :cond_85
    and-int/lit16 v2, p0, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_92

    .line 129
    const-string v2, "HSUPA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    or-int/lit16 v1, v1, 0x400

    .line 132
    :cond_92
    and-int/lit16 v2, p0, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_9f

    .line 133
    const-string v2, "HSPA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    or-int/lit16 v1, v1, 0x800

    .line 136
    :cond_9f
    and-int/lit16 v2, p0, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_ac

    .line 137
    const-string v2, "EVDO_B"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    or-int/lit16 v1, v1, 0x1000

    .line 140
    :cond_ac
    and-int/lit16 v2, p0, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_b9

    .line 141
    const-string v2, "EHRPD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    or-int/lit16 v1, v1, 0x2000

    .line 144
    :cond_b9
    and-int/lit16 v2, p0, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_c6

    .line 145
    const-string v2, "LTE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    or-int/lit16 v1, v1, 0x4000

    .line 148
    :cond_c6
    const v2, 0x8000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_d3

    .line 149
    const-string v3, "HSPAP"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    or-int/2addr v1, v2

    .line 152
    :cond_d3
    const/high16 v2, 0x10000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_df

    .line 153
    const-string v3, "GSM"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    or-int/2addr v1, v2

    .line 156
    :cond_df
    const/high16 v2, 0x20000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_eb

    .line 157
    const-string v3, "TD_SCDMA"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    or-int/2addr v1, v2

    .line 160
    :cond_eb
    const/high16 v2, 0x80000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_f7

    .line 161
    const-string v3, "LTE_CA"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    or-int/2addr v1, v2

    .line 164
    :cond_f7
    if-eq p0, v1, :cond_115

    .line 165
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

    .line 167
    :cond_115
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 25
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 26
    const-string v0, "UNKNOWN"

    return-object v0

    .line 28
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 29
    const-string v0, "GPRS"

    return-object v0

    .line 31
    :cond_c
    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    .line 32
    const-string v0, "EDGE"

    return-object v0

    .line 34
    :cond_12
    const/16 v0, 0x8

    if-ne p0, v0, :cond_19

    .line 35
    const-string v0, "UMTS"

    return-object v0

    .line 37
    :cond_19
    const/16 v0, 0x10

    if-ne p0, v0, :cond_20

    .line 38
    const-string v0, "IS95A"

    return-object v0

    .line 40
    :cond_20
    const/16 v0, 0x20

    if-ne p0, v0, :cond_27

    .line 41
    const-string v0, "IS95B"

    return-object v0

    .line 43
    :cond_27
    const/16 v0, 0x40

    if-ne p0, v0, :cond_2e

    .line 44
    const-string v0, "ONE_X_RTT"

    return-object v0

    .line 46
    :cond_2e
    const/16 v0, 0x80

    if-ne p0, v0, :cond_35

    .line 47
    const-string v0, "EVDO_0"

    return-object v0

    .line 49
    :cond_35
    const/16 v0, 0x100

    if-ne p0, v0, :cond_3c

    .line 50
    const-string v0, "EVDO_A"

    return-object v0

    .line 52
    :cond_3c
    const/16 v0, 0x200

    if-ne p0, v0, :cond_43

    .line 53
    const-string v0, "HSDPA"

    return-object v0

    .line 55
    :cond_43
    const/16 v0, 0x400

    if-ne p0, v0, :cond_4a

    .line 56
    const-string v0, "HSUPA"

    return-object v0

    .line 58
    :cond_4a
    const/16 v0, 0x800

    if-ne p0, v0, :cond_51

    .line 59
    const-string v0, "HSPA"

    return-object v0

    .line 61
    :cond_51
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_58

    .line 62
    const-string v0, "EVDO_B"

    return-object v0

    .line 64
    :cond_58
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_5f

    .line 65
    const-string v0, "EHRPD"

    return-object v0

    .line 67
    :cond_5f
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_66

    .line 68
    const-string v0, "LTE"

    return-object v0

    .line 70
    :cond_66
    const v0, 0x8000

    if-ne p0, v0, :cond_6e

    .line 71
    const-string v0, "HSPAP"

    return-object v0

    .line 73
    :cond_6e
    const/high16 v0, 0x10000

    if-ne p0, v0, :cond_75

    .line 74
    const-string v0, "GSM"

    return-object v0

    .line 76
    :cond_75
    const/high16 v0, 0x20000

    if-ne p0, v0, :cond_7c

    .line 77
    const-string v0, "TD_SCDMA"

    return-object v0

    .line 79
    :cond_7c
    const/high16 v0, 0x80000

    if-ne p0, v0, :cond_83

    .line 80
    const-string v0, "LTE_CA"

    return-object v0

    .line 82
    :cond_83
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
