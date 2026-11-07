.class public final Landroid/hardware/radio/V1_6/SliceStatus;
.super Ljava/lang/Object;
.source "SliceStatus.java"


# static fields
.field public static final blacklist ALLOWED:B = 0x2t

.field public static final blacklist CONFIGURED:B = 0x1t

.field public static final blacklist DEFAULT_CONFIGURED:B = 0x5t

.field public static final blacklist REJECTED_NOT_AVAILABLE_IN_PLMN:B = 0x3t

.field public static final blacklist REJECTED_NOT_AVAILABLE_IN_REG_AREA:B = 0x4t

.field public static final blacklist UNKNOWN:B


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(B)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # B

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 36
    .local v1, "flipped":B
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 38
    const-string v2, "CONFIGURED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    or-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    .line 41
    :cond_18
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_25

    .line 42
    const-string v2, "ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    or-int/lit8 v2, v1, 0x2

    int-to-byte v1, v2

    .line 45
    :cond_25
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_32

    .line 46
    const-string v2, "REJECTED_NOT_AVAILABLE_IN_PLMN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    or-int/lit8 v2, v1, 0x3

    int-to-byte v1, v2

    .line 49
    :cond_32
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3f

    .line 50
    const-string v2, "REJECTED_NOT_AVAILABLE_IN_REG_AREA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    or-int/lit8 v2, v1, 0x4

    int-to-byte v1, v2

    .line 53
    :cond_3f
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4c

    .line 54
    const-string v2, "DEFAULT_CONFIGURED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    or-int/lit8 v2, v1, 0x5

    int-to-byte v1, v2

    .line 57
    :cond_4c
    if-eq p0, v1, :cond_6f

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_6f
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(B)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # B

    .line 12
    if-nez p0, :cond_5

    .line 13
    const-string v0, "UNKNOWN"

    return-object v0

    .line 15
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 16
    const-string v0, "CONFIGURED"

    return-object v0

    .line 18
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 19
    const-string v0, "ALLOWED"

    return-object v0

    .line 21
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 22
    const-string v0, "REJECTED_NOT_AVAILABLE_IN_PLMN"

    return-object v0

    .line 24
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 25
    const-string v0, "REJECTED_NOT_AVAILABLE_IN_REG_AREA"

    return-object v0

    .line 27
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 28
    const-string v0, "DEFAULT_CONFIGURED"

    return-object v0

    .line 30
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
