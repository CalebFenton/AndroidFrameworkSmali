.class public final Landroid/hardware/radio/V1_6/QosProtocol;
.super Ljava/lang/Object;
.source "QosProtocol.java"


# static fields
.field public static final blacklist AH:B = 0x33t

.field public static final blacklist ESP:B = 0x32t

.field public static final blacklist TCP:B = 0x6t

.field public static final blacklist UDP:B = 0x11t

.field public static final blacklist UNSPECIFIED:B = -0x1t


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

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 47
    .local v1, "flipped":B
    and-int/lit8 v2, p0, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_11

    .line 48
    const-string v2, "UNSPECIFIED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    int-to-byte v1, v3

    .line 51
    :cond_11
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1e

    .line 52
    const-string v2, "TCP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    or-int/lit8 v2, v1, 0x6

    int-to-byte v1, v2

    .line 55
    :cond_1e
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_2c

    .line 56
    const-string v2, "UDP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    or-int/lit8 v2, v1, 0x11

    int-to-byte v1, v2

    .line 59
    :cond_2c
    and-int/lit8 v2, p0, 0x32

    const/16 v3, 0x32

    if-ne v2, v3, :cond_3a

    .line 60
    const-string v2, "ESP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    or-int/lit8 v2, v1, 0x32

    int-to-byte v1, v2

    .line 63
    :cond_3a
    and-int/lit8 v2, p0, 0x33

    const/16 v3, 0x33

    if-ne v2, v3, :cond_48

    .line 64
    const-string v2, "AH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    or-int/lit8 v2, v1, 0x33

    int-to-byte v1, v2

    .line 67
    :cond_48
    if-eq p0, v1, :cond_6b

    .line 68
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

    .line 70
    :cond_6b
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(B)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # B

    .line 26
    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    .line 27
    const-string v0, "UNSPECIFIED"

    return-object v0

    .line 29
    :cond_6
    const/4 v0, 0x6

    if-ne p0, v0, :cond_c

    .line 30
    const-string v0, "TCP"

    return-object v0

    .line 32
    :cond_c
    const/16 v0, 0x11

    if-ne p0, v0, :cond_13

    .line 33
    const-string v0, "UDP"

    return-object v0

    .line 35
    :cond_13
    const/16 v0, 0x32

    if-ne p0, v0, :cond_1a

    .line 36
    const-string v0, "ESP"

    return-object v0

    .line 38
    :cond_1a
    const/16 v0, 0x33

    if-ne p0, v0, :cond_21

    .line 39
    const-string v0, "AH"

    return-object v0

    .line 41
    :cond_21
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
