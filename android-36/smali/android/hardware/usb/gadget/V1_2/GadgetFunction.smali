.class public final Landroid/hardware/usb/gadget/V1_2/GadgetFunction;
.super Ljava/lang/Object;
.source "GadgetFunction.java"


# static fields
.field public static final blacklist ACCESSORY:J = 0x2L

.field public static final blacklist ADB:J = 0x1L

.field public static final blacklist AUDIO_SOURCE:J = 0x40L

.field public static final blacklist MIDI:J = 0x8L

.field public static final blacklist MTP:J = 0x4L

.field public static final blacklist NCM:J = 0x400L

.field public static final blacklist NONE:J = 0x0L

.field public static final blacklist PTP:J = 0x10L

.field public static final blacklist RNDIS:J = 0x20L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(J)Ljava/lang/String;
    .registers 9
    .param p0, "o"    # J

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v1, 0x0

    .line 75
    .local v1, "flipped":J
    const-string v3, "NONE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    const-wide/16 v3, 0x1

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_1a

    .line 77
    const-string v5, "ADB"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    or-long/2addr v1, v3

    .line 80
    :cond_1a
    const-wide/16 v3, 0x2

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_28

    .line 81
    const-string v5, "ACCESSORY"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    or-long/2addr v1, v3

    .line 84
    :cond_28
    const-wide/16 v3, 0x4

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_36

    .line 85
    const-string v5, "MTP"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-long/2addr v1, v3

    .line 88
    :cond_36
    const-wide/16 v3, 0x8

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_44

    .line 89
    const-string v5, "MIDI"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    or-long/2addr v1, v3

    .line 92
    :cond_44
    const-wide/16 v3, 0x10

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_52

    .line 93
    const-string v5, "PTP"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    or-long/2addr v1, v3

    .line 96
    :cond_52
    const-wide/16 v3, 0x20

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_60

    .line 97
    const-string v5, "RNDIS"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-long/2addr v1, v3

    .line 100
    :cond_60
    const-wide/16 v3, 0x40

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_6e

    .line 101
    const-string v5, "AUDIO_SOURCE"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-long/2addr v1, v3

    .line 104
    :cond_6e
    const-wide/16 v3, 0x400

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_7c

    .line 105
    const-string v5, "NCM"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-long/2addr v1, v3

    .line 108
    :cond_7c
    cmp-long v3, p0, v1

    if-eqz v3, :cond_9c

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    not-long v4, v1

    and-long/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_9c
    const-string v3, " | "

    invoke-static {v3, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final blacklist toString(J)Ljava/lang/String;
    .registers 4
    .param p0, "o"    # J

    .line 42
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_9

    .line 43
    const-string v0, "NONE"

    return-object v0

    .line 45
    :cond_9
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_12

    .line 46
    const-string v0, "ADB"

    return-object v0

    .line 48
    :cond_12
    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_1b

    .line 49
    const-string v0, "ACCESSORY"

    return-object v0

    .line 51
    :cond_1b
    const-wide/16 v0, 0x4

    cmp-long v0, p0, v0

    if-nez v0, :cond_24

    .line 52
    const-string v0, "MTP"

    return-object v0

    .line 54
    :cond_24
    const-wide/16 v0, 0x8

    cmp-long v0, p0, v0

    if-nez v0, :cond_2d

    .line 55
    const-string v0, "MIDI"

    return-object v0

    .line 57
    :cond_2d
    const-wide/16 v0, 0x10

    cmp-long v0, p0, v0

    if-nez v0, :cond_36

    .line 58
    const-string v0, "PTP"

    return-object v0

    .line 60
    :cond_36
    const-wide/16 v0, 0x20

    cmp-long v0, p0, v0

    if-nez v0, :cond_3f

    .line 61
    const-string v0, "RNDIS"

    return-object v0

    .line 63
    :cond_3f
    const-wide/16 v0, 0x40

    cmp-long v0, p0, v0

    if-nez v0, :cond_48

    .line 64
    const-string v0, "AUDIO_SOURCE"

    return-object v0

    .line 66
    :cond_48
    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-nez v0, :cond_51

    .line 67
    const-string v0, "NCM"

    return-object v0

    .line 69
    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
