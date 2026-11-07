.class public final Landroid/hardware/radio/V1_6/DataThrottlingAction;
.super Ljava/lang/Object;
.source "DataThrottlingAction.java"


# static fields
.field public static final blacklist HOLD:B = 0x3t

.field public static final blacklist NO_DATA_THROTTLING:B = 0x0t

.field public static final blacklist THROTTLE_ANCHOR_CARRIER:B = 0x2t

.field public static final blacklist THROTTLE_SECONDARY_CARRIER:B = 0x1t


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

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 42
    .local v1, "flipped":B
    const-string v2, "NO_DATA_THROTTLING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 44
    const-string v2, "THROTTLE_SECONDARY_CARRIER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    or-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    .line 47
    :cond_18
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_25

    .line 48
    const-string v2, "THROTTLE_ANCHOR_CARRIER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    or-int/lit8 v2, v1, 0x2

    int-to-byte v1, v2

    .line 51
    :cond_25
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_32

    .line 52
    const-string v2, "HOLD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    or-int/lit8 v2, v1, 0x3

    int-to-byte v1, v2

    .line 55
    :cond_32
    if-eq p0, v1, :cond_55

    .line 56
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

    .line 58
    :cond_55
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(B)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # B

    .line 24
    if-nez p0, :cond_5

    .line 25
    const-string v0, "NO_DATA_THROTTLING"

    return-object v0

    .line 27
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 28
    const-string v0, "THROTTLE_SECONDARY_CARRIER"

    return-object v0

    .line 30
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 31
    const-string v0, "THROTTLE_ANCHOR_CARRIER"

    return-object v0

    .line 33
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 34
    const-string v0, "HOLD"

    return-object v0

    .line 36
    :cond_17
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
