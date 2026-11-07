.class public final Landroid/hardware/radio/V1_0/CdmaSmsNumberType;
.super Ljava/lang/Object;
.source "CdmaSmsNumberType.java"


# static fields
.field public static final blacklist ABBREVIATED:I = 0x6

.field public static final blacklist ALPHANUMERIC:I = 0x5

.field public static final blacklist INTERNATIONAL_OR_DATA_IP:I = 0x1

.field public static final blacklist NATIONAL_OR_INTERNET_MAIL:I = 0x2

.field public static final blacklist NETWORK:I = 0x3

.field public static final blacklist RESERVED_7:I = 0x7

.field public static final blacklist SUBSCRIBER:I = 0x4

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

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 44
    .local v1, "flipped":I
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 46
    const-string v2, "INTERNATIONAL_OR_DATA_IP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    or-int/lit8 v1, v1, 0x1

    .line 49
    :cond_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 50
    const-string v2, "NATIONAL_OR_INTERNET_MAIL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    or-int/lit8 v1, v1, 0x2

    .line 53
    :cond_23
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2f

    .line 54
    const-string v2, "NETWORK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    or-int/lit8 v1, v1, 0x3

    .line 57
    :cond_2f
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 58
    const-string v2, "SUBSCRIBER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    or-int/lit8 v1, v1, 0x4

    .line 61
    :cond_3b
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_47

    .line 62
    const-string v2, "ALPHANUMERIC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    or-int/lit8 v1, v1, 0x5

    .line 65
    :cond_47
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_53

    .line 66
    const-string v2, "ABBREVIATED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    or-int/lit8 v1, v1, 0x6

    .line 69
    :cond_53
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5f

    .line 70
    const-string v2, "RESERVED_7"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    or-int/lit8 v1, v1, 0x7

    .line 73
    :cond_5f
    if-eq p0, v1, :cond_7d

    .line 74
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

    .line 76
    :cond_7d
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 14
    if-nez p0, :cond_5

    .line 15
    const-string v0, "UNKNOWN"

    return-object v0

    .line 17
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 18
    const-string v0, "INTERNATIONAL_OR_DATA_IP"

    return-object v0

    .line 20
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 21
    const-string v0, "NATIONAL_OR_INTERNET_MAIL"

    return-object v0

    .line 23
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 24
    const-string v0, "NETWORK"

    return-object v0

    .line 26
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 27
    const-string v0, "SUBSCRIBER"

    return-object v0

    .line 29
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 30
    const-string v0, "ALPHANUMERIC"

    return-object v0

    .line 32
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 33
    const-string v0, "ABBREVIATED"

    return-object v0

    .line 35
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    .line 36
    const-string v0, "RESERVED_7"

    return-object v0

    .line 38
    :cond_2f
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
