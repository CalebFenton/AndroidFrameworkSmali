.class public final Landroid/hardware/radio/V1_0/CdmaRedirectingReason;
.super Ljava/lang/Object;
.source "CdmaRedirectingReason.java"


# static fields
.field public static final blacklist CALLED_DTE_OUT_OF_ORDER:I = 0x9

.field public static final blacklist CALL_FORWARDING_BUSY:I = 0x1

.field public static final blacklist CALL_FORWARDING_BY_THE_CALLED_DTE:I = 0xa

.field public static final blacklist CALL_FORWARDING_NO_REPLY:I = 0x2

.field public static final blacklist CALL_FORWARDING_UNCONDITIONAL:I = 0xf

.field public static final blacklist RESERVED:I = 0x10

.field public static final blacklist UNKNOWN:I


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

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 40
    .local v1, "flipped":I
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 42
    const-string v2, "CALL_FORWARDING_BUSY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    or-int/lit8 v1, v1, 0x1

    .line 45
    :cond_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 46
    const-string v2, "CALL_FORWARDING_NO_REPLY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    or-int/lit8 v1, v1, 0x2

    .line 49
    :cond_23
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_30

    .line 50
    const-string v2, "CALLED_DTE_OUT_OF_ORDER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    or-int/lit8 v1, v1, 0x9

    .line 53
    :cond_30
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3d

    .line 54
    const-string v2, "CALL_FORWARDING_BY_THE_CALLED_DTE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    or-int/lit8 v1, v1, 0xa

    .line 57
    :cond_3d
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_4a

    .line 58
    const-string v2, "CALL_FORWARDING_UNCONDITIONAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    or-int/lit8 v1, v1, 0xf

    .line 61
    :cond_4a
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_57

    .line 62
    const-string v2, "RESERVED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    or-int/lit8 v1, v1, 0x10

    .line 65
    :cond_57
    if-eq p0, v1, :cond_75

    .line 66
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

    .line 68
    :cond_75
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 13
    if-nez p0, :cond_5

    .line 14
    const-string v0, "UNKNOWN"

    return-object v0

    .line 16
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 17
    const-string v0, "CALL_FORWARDING_BUSY"

    return-object v0

    .line 19
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 20
    const-string v0, "CALL_FORWARDING_NO_REPLY"

    return-object v0

    .line 22
    :cond_11
    const/16 v0, 0x9

    if-ne p0, v0, :cond_18

    .line 23
    const-string v0, "CALLED_DTE_OUT_OF_ORDER"

    return-object v0

    .line 25
    :cond_18
    const/16 v0, 0xa

    if-ne p0, v0, :cond_1f

    .line 26
    const-string v0, "CALL_FORWARDING_BY_THE_CALLED_DTE"

    return-object v0

    .line 28
    :cond_1f
    const/16 v0, 0xf

    if-ne p0, v0, :cond_26

    .line 29
    const-string v0, "CALL_FORWARDING_UNCONDITIONAL"

    return-object v0

    .line 31
    :cond_26
    const/16 v0, 0x10

    if-ne p0, v0, :cond_2d

    .line 32
    const-string v0, "RESERVED"

    return-object v0

    .line 34
    :cond_2d
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
