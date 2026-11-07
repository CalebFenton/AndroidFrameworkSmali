.class public final Landroid/hardware/radio/V1_0/CdmaOtaProvisionStatus;
.super Ljava/lang/Object;
.source "CdmaOtaProvisionStatus.java"


# static fields
.field public static final blacklist A_KEY_EXCHANGED:I = 0x2

.field public static final blacklist COMMITTED:I = 0x8

.field public static final blacklist IMSI_DOWNLOADED:I = 0x6

.field public static final blacklist MDN_DOWNLOADED:I = 0x5

.field public static final blacklist NAM_DOWNLOADED:I = 0x4

.field public static final blacklist OTAPA_ABORTED:I = 0xb

.field public static final blacklist OTAPA_STARTED:I = 0x9

.field public static final blacklist OTAPA_STOPPED:I = 0xa

.field public static final blacklist PRL_DOWNLOADED:I = 0x7

.field public static final blacklist SPC_RETRIES_EXCEEDED:I = 0x1

.field public static final blacklist SPL_UNLOCKED:I = 0x0

.field public static final blacklist SSD_UPDATED:I = 0x3


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

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 60
    .local v1, "flipped":I
    const-string v2, "SPL_UNLOCKED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 62
    const-string v2, "SPC_RETRIES_EXCEEDED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    or-int/lit8 v1, v1, 0x1

    .line 65
    :cond_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 66
    const-string v2, "A_KEY_EXCHANGED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    or-int/lit8 v1, v1, 0x2

    .line 69
    :cond_23
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2f

    .line 70
    const-string v2, "SSD_UPDATED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    or-int/lit8 v1, v1, 0x3

    .line 73
    :cond_2f
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 74
    const-string v2, "NAM_DOWNLOADED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    or-int/lit8 v1, v1, 0x4

    .line 77
    :cond_3b
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_47

    .line 78
    const-string v2, "MDN_DOWNLOADED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    or-int/lit8 v1, v1, 0x5

    .line 81
    :cond_47
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_53

    .line 82
    const-string v2, "IMSI_DOWNLOADED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-int/lit8 v1, v1, 0x6

    .line 85
    :cond_53
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5f

    .line 86
    const-string v2, "PRL_DOWNLOADED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit8 v1, v1, 0x7

    .line 89
    :cond_5f
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6c

    .line 90
    const-string v2, "COMMITTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit8 v1, v1, 0x8

    .line 93
    :cond_6c
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_79

    .line 94
    const-string v2, "OTAPA_STARTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit8 v1, v1, 0x9

    .line 97
    :cond_79
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_86

    .line 98
    const-string v2, "OTAPA_STOPPED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    or-int/lit8 v1, v1, 0xa

    .line 101
    :cond_86
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_93

    .line 102
    const-string v2, "OTAPA_ABORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    or-int/lit8 v1, v1, 0xb

    .line 105
    :cond_93
    if-eq p0, v1, :cond_b1

    .line 106
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

    .line 108
    :cond_b1
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 18
    if-nez p0, :cond_5

    .line 19
    const-string v0, "SPL_UNLOCKED"

    return-object v0

    .line 21
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 22
    const-string v0, "SPC_RETRIES_EXCEEDED"

    return-object v0

    .line 24
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 25
    const-string v0, "A_KEY_EXCHANGED"

    return-object v0

    .line 27
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 28
    const-string v0, "SSD_UPDATED"

    return-object v0

    .line 30
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 31
    const-string v0, "NAM_DOWNLOADED"

    return-object v0

    .line 33
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 34
    const-string v0, "MDN_DOWNLOADED"

    return-object v0

    .line 36
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 37
    const-string v0, "IMSI_DOWNLOADED"

    return-object v0

    .line 39
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 40
    const-string v0, "PRL_DOWNLOADED"

    return-object v0

    .line 42
    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    .line 43
    const-string v0, "COMMITTED"

    return-object v0

    .line 45
    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    .line 46
    const-string v0, "OTAPA_STARTED"

    return-object v0

    .line 48
    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    .line 49
    const-string v0, "OTAPA_STOPPED"

    return-object v0

    .line 51
    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    .line 52
    const-string v0, "OTAPA_ABORTED"

    return-object v0

    .line 54
    :cond_4b
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
