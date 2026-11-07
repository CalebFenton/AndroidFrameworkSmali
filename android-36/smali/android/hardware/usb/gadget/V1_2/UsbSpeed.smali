.class public final Landroid/hardware/usb/gadget/V1_2/UsbSpeed;
.super Ljava/lang/Object;
.source "UsbSpeed.java"


# static fields
.field public static final blacklist FULLSPEED:I = 0x1

.field public static final blacklist HIGHSPEED:I = 0x2

.field public static final blacklist LOWSPEED:I = 0x0

.field public static final blacklist RESERVED_SPEED:I = 0x40

.field public static final blacklist SUPERSPEED:I = 0x3

.field public static final blacklist SUPERSPEED_10Gb:I = 0x4

.field public static final blacklist SUPERSPEED_20Gb:I = 0x5

.field public static final blacklist UNKNOWN:I = -0x1

.field public static final blacklist USB4_GEN2_10Gb:I = 0x6

.field public static final blacklist USB4_GEN2_20Gb:I = 0x7

.field public static final blacklist USB4_GEN3_20Gb:I = 0x8

.field public static final blacklist USB4_GEN3_40Gb:I = 0x9


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

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 100
    .local v1, "flipped":I
    and-int/lit8 v2, p0, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    .line 101
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit8 v1, v1, -0x1

    .line 104
    :cond_12
    const-string v2, "LOWSPEED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    .line 106
    const-string v2, "FULLSPEED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    or-int/lit8 v1, v1, 0x1

    .line 109
    :cond_23
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2f

    .line 110
    const-string v2, "HIGHSPEED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    or-int/lit8 v1, v1, 0x2

    .line 113
    :cond_2f
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3b

    .line 114
    const-string v2, "SUPERSPEED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    or-int/lit8 v1, v1, 0x3

    .line 117
    :cond_3b
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_47

    .line 118
    const-string v2, "SUPERSPEED_10Gb"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    or-int/lit8 v1, v1, 0x4

    .line 121
    :cond_47
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_53

    .line 122
    const-string v2, "SUPERSPEED_20Gb"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    or-int/lit8 v1, v1, 0x5

    .line 125
    :cond_53
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5f

    .line 126
    const-string v2, "USB4_GEN2_10Gb"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    or-int/lit8 v1, v1, 0x6

    .line 129
    :cond_5f
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6b

    .line 130
    const-string v2, "USB4_GEN2_20Gb"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    or-int/lit8 v1, v1, 0x7

    .line 133
    :cond_6b
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_78

    .line 134
    const-string v2, "USB4_GEN3_20Gb"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    or-int/lit8 v1, v1, 0x8

    .line 137
    :cond_78
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_85

    .line 138
    const-string v2, "USB4_GEN3_40Gb"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    or-int/lit8 v1, v1, 0x9

    .line 141
    :cond_85
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_92

    .line 142
    const-string v2, "RESERVED_SPEED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    or-int/lit8 v1, v1, 0x40

    .line 145
    :cond_92
    if-eq p0, v1, :cond_b0

    .line 146
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

    .line 148
    :cond_b0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 58
    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    .line 59
    const-string v0, "UNKNOWN"

    return-object v0

    .line 61
    :cond_6
    if-nez p0, :cond_b

    .line 62
    const-string v0, "LOWSPEED"

    return-object v0

    .line 64
    :cond_b
    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    .line 65
    const-string v0, "FULLSPEED"

    return-object v0

    .line 67
    :cond_11
    const/4 v0, 0x2

    if-ne p0, v0, :cond_17

    .line 68
    const-string v0, "HIGHSPEED"

    return-object v0

    .line 70
    :cond_17
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1d

    .line 71
    const-string v0, "SUPERSPEED"

    return-object v0

    .line 73
    :cond_1d
    const/4 v0, 0x4

    if-ne p0, v0, :cond_23

    .line 74
    const-string v0, "SUPERSPEED_10Gb"

    return-object v0

    .line 76
    :cond_23
    const/4 v0, 0x5

    if-ne p0, v0, :cond_29

    .line 77
    const-string v0, "SUPERSPEED_20Gb"

    return-object v0

    .line 79
    :cond_29
    const/4 v0, 0x6

    if-ne p0, v0, :cond_2f

    .line 80
    const-string v0, "USB4_GEN2_10Gb"

    return-object v0

    .line 82
    :cond_2f
    const/4 v0, 0x7

    if-ne p0, v0, :cond_35

    .line 83
    const-string v0, "USB4_GEN2_20Gb"

    return-object v0

    .line 85
    :cond_35
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3c

    .line 86
    const-string v0, "USB4_GEN3_20Gb"

    return-object v0

    .line 88
    :cond_3c
    const/16 v0, 0x9

    if-ne p0, v0, :cond_43

    .line 89
    const-string v0, "USB4_GEN3_40Gb"

    return-object v0

    .line 91
    :cond_43
    const/16 v0, 0x40

    if-ne p0, v0, :cond_4a

    .line 92
    const-string v0, "RESERVED_SPEED"

    return-object v0

    .line 94
    :cond_4a
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
