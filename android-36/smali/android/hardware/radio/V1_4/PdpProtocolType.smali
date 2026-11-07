.class public final Landroid/hardware/radio/V1_4/PdpProtocolType;
.super Ljava/lang/Object;
.source "PdpProtocolType.java"


# static fields
.field public static final blacklist IP:I = 0x0

.field public static final blacklist IPV4V6:I = 0x2

.field public static final blacklist IPV6:I = 0x1

.field public static final blacklist NON_IP:I = 0x4

.field public static final blacklist PPP:I = 0x3

.field public static final blacklist UNKNOWN:I = -0x1

.field public static final blacklist UNSTRUCTURED:I = 0x5


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

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 61
    .local v1, "flipped":I
    and-int/lit8 v2, p0, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    .line 62
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    or-int/lit8 v1, v1, -0x1

    .line 65
    :cond_12
    const-string v2, "IP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    .line 67
    const-string v2, "IPV6"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    or-int/lit8 v1, v1, 0x1

    .line 70
    :cond_23
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2f

    .line 71
    const-string v2, "IPV4V6"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    or-int/lit8 v1, v1, 0x2

    .line 74
    :cond_2f
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3b

    .line 75
    const-string v2, "PPP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    or-int/lit8 v1, v1, 0x3

    .line 78
    :cond_3b
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_47

    .line 79
    const-string v2, "NON_IP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    or-int/lit8 v1, v1, 0x4

    .line 82
    :cond_47
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_53

    .line 83
    const-string v2, "UNSTRUCTURED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    or-int/lit8 v1, v1, 0x5

    .line 86
    :cond_53
    if-eq p0, v1, :cond_71

    .line 87
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

    .line 89
    :cond_71
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 34
    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    .line 35
    const-string v0, "UNKNOWN"

    return-object v0

    .line 37
    :cond_6
    if-nez p0, :cond_b

    .line 38
    const-string v0, "IP"

    return-object v0

    .line 40
    :cond_b
    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    .line 41
    const-string v0, "IPV6"

    return-object v0

    .line 43
    :cond_11
    const/4 v0, 0x2

    if-ne p0, v0, :cond_17

    .line 44
    const-string v0, "IPV4V6"

    return-object v0

    .line 46
    :cond_17
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1d

    .line 47
    const-string v0, "PPP"

    return-object v0

    .line 49
    :cond_1d
    const/4 v0, 0x4

    if-ne p0, v0, :cond_23

    .line 50
    const-string v0, "NON_IP"

    return-object v0

    .line 52
    :cond_23
    const/4 v0, 0x5

    if-ne p0, v0, :cond_29

    .line 53
    const-string v0, "UNSTRUCTURED"

    return-object v0

    .line 55
    :cond_29
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
