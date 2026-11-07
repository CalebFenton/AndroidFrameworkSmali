.class public final Landroid/hardware/radio/V1_0/RadioCdmaSmsConst;
.super Ljava/lang/Object;
.source "RadioCdmaSmsConst.java"


# static fields
.field public static final blacklist ADDRESS_MAX:I = 0x24

.field public static final blacklist BEARER_DATA_MAX:I = 0xff

.field public static final blacklist IP_ADDRESS_SIZE:I = 0x4

.field public static final blacklist MAX_UD_HEADERS:I = 0x7

.field public static final blacklist SUBADDRESS_MAX:I = 0x24

.field public static final blacklist UDH_ANIM_NUM_BITMAPS:I = 0x4

.field public static final blacklist UDH_EO_DATA_SEGMENT_MAX:I = 0x83

.field public static final blacklist UDH_LARGE_BITMAP_SIZE:I = 0x20

.field public static final blacklist UDH_LARGE_PIC_SIZE:I = 0x80

.field public static final blacklist UDH_MAX_SND_SIZE:I = 0x80

.field public static final blacklist UDH_OTHER_SIZE:I = 0xe2

.field public static final blacklist UDH_SMALL_BITMAP_SIZE:I = 0x8

.field public static final blacklist UDH_SMALL_PIC_SIZE:I = 0x20

.field public static final blacklist UDH_VAR_PIC_SIZE:I = 0x86

.field public static final blacklist USER_DATA_MAX:I = 0xe5


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 6
    .param p0, "o"    # I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 72
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x24

    const/16 v3, 0x24

    if-ne v2, v3, :cond_13

    .line 73
    const-string v2, "ADDRESS_MAX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    or-int/lit8 v1, v1, 0x24

    .line 76
    :cond_13
    and-int/lit8 v2, p0, 0x24

    if-ne v2, v3, :cond_1e

    .line 77
    const-string v2, "SUBADDRESS_MAX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    or-int/lit8 v1, v1, 0x24

    .line 80
    :cond_1e
    and-int/lit16 v2, p0, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_2b

    .line 81
    const-string v2, "BEARER_DATA_MAX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    or-int/lit16 v1, v1, 0xff

    .line 84
    :cond_2b
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_38

    .line 85
    const-string v2, "UDH_MAX_SND_SIZE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-int/lit16 v1, v1, 0x80

    .line 88
    :cond_38
    and-int/lit16 v2, p0, 0x83

    const/16 v4, 0x83

    if-ne v2, v4, :cond_45

    .line 89
    const-string v2, "UDH_EO_DATA_SEGMENT_MAX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    or-int/lit16 v1, v1, 0x83

    .line 92
    :cond_45
    and-int/lit8 v2, p0, 0x7

    const/4 v4, 0x7

    if-ne v2, v4, :cond_51

    .line 93
    const-string v2, "MAX_UD_HEADERS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    or-int/lit8 v1, v1, 0x7

    .line 96
    :cond_51
    and-int/lit16 v2, p0, 0xe5

    const/16 v4, 0xe5

    if-ne v2, v4, :cond_5e

    .line 97
    const-string v2, "USER_DATA_MAX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit16 v1, v1, 0xe5

    .line 100
    :cond_5e
    and-int/lit16 v2, p0, 0x80

    if-ne v2, v3, :cond_69

    .line 101
    const-string v2, "UDH_LARGE_PIC_SIZE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit16 v1, v1, 0x80

    .line 104
    :cond_69
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_76

    .line 105
    const-string v2, "UDH_SMALL_PIC_SIZE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit8 v1, v1, 0x20

    .line 108
    :cond_76
    and-int/lit16 v2, p0, 0x86

    const/16 v4, 0x86

    if-ne v2, v4, :cond_83

    .line 109
    const-string v2, "UDH_VAR_PIC_SIZE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    or-int/lit16 v1, v1, 0x86

    .line 112
    :cond_83
    and-int/lit8 v2, p0, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_8f

    .line 113
    const-string v2, "UDH_ANIM_NUM_BITMAPS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    or-int/lit8 v1, v1, 0x4

    .line 116
    :cond_8f
    and-int/lit8 v2, p0, 0x20

    if-ne v2, v3, :cond_9a

    .line 117
    const-string v2, "UDH_LARGE_BITMAP_SIZE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    or-int/lit8 v1, v1, 0x20

    .line 120
    :cond_9a
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_a7

    .line 121
    const-string v2, "UDH_SMALL_BITMAP_SIZE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    or-int/lit8 v1, v1, 0x8

    .line 124
    :cond_a7
    and-int/lit16 v2, p0, 0xe2

    const/16 v3, 0xe2

    if-ne v2, v3, :cond_b4

    .line 125
    const-string v2, "UDH_OTHER_SIZE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    or-int/lit16 v1, v1, 0xe2

    .line 128
    :cond_b4
    and-int/lit8 v2, p0, 0x4

    if-ne v2, v4, :cond_bf

    .line 129
    const-string v2, "IP_ADDRESS_SIZE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    or-int/lit8 v1, v1, 0x4

    .line 132
    :cond_bf
    if-eq p0, v1, :cond_dd

    .line 133
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

    .line 135
    :cond_dd
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 21
    const/16 v0, 0x24

    if-ne p0, v0, :cond_7

    .line 22
    const-string v0, "ADDRESS_MAX"

    return-object v0

    .line 24
    :cond_7
    if-ne p0, v0, :cond_c

    .line 25
    const-string v0, "SUBADDRESS_MAX"

    return-object v0

    .line 27
    :cond_c
    const/16 v0, 0xff

    if-ne p0, v0, :cond_13

    .line 28
    const-string v0, "BEARER_DATA_MAX"

    return-object v0

    .line 30
    :cond_13
    const/16 v0, 0x80

    if-ne p0, v0, :cond_1a

    .line 31
    const-string v0, "UDH_MAX_SND_SIZE"

    return-object v0

    .line 33
    :cond_1a
    const/16 v1, 0x83

    if-ne p0, v1, :cond_21

    .line 34
    const-string v0, "UDH_EO_DATA_SEGMENT_MAX"

    return-object v0

    .line 36
    :cond_21
    const/4 v1, 0x7

    if-ne p0, v1, :cond_27

    .line 37
    const-string v0, "MAX_UD_HEADERS"

    return-object v0

    .line 39
    :cond_27
    const/16 v1, 0xe5

    if-ne p0, v1, :cond_2e

    .line 40
    const-string v0, "USER_DATA_MAX"

    return-object v0

    .line 42
    :cond_2e
    if-ne p0, v0, :cond_33

    .line 43
    const-string v0, "UDH_LARGE_PIC_SIZE"

    return-object v0

    .line 45
    :cond_33
    const/16 v0, 0x20

    if-ne p0, v0, :cond_3a

    .line 46
    const-string v0, "UDH_SMALL_PIC_SIZE"

    return-object v0

    .line 48
    :cond_3a
    const/16 v1, 0x86

    if-ne p0, v1, :cond_41

    .line 49
    const-string v0, "UDH_VAR_PIC_SIZE"

    return-object v0

    .line 51
    :cond_41
    const/4 v1, 0x4

    if-ne p0, v1, :cond_47

    .line 52
    const-string v0, "UDH_ANIM_NUM_BITMAPS"

    return-object v0

    .line 54
    :cond_47
    if-ne p0, v0, :cond_4c

    .line 55
    const-string v0, "UDH_LARGE_BITMAP_SIZE"

    return-object v0

    .line 57
    :cond_4c
    const/16 v0, 0x8

    if-ne p0, v0, :cond_53

    .line 58
    const-string v0, "UDH_SMALL_BITMAP_SIZE"

    return-object v0

    .line 60
    :cond_53
    const/16 v0, 0xe2

    if-ne p0, v0, :cond_5a

    .line 61
    const-string v0, "UDH_OTHER_SIZE"

    return-object v0

    .line 63
    :cond_5a
    if-ne p0, v1, :cond_5f

    .line 64
    const-string v0, "IP_ADDRESS_SIZE"

    return-object v0

    .line 66
    :cond_5f
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
