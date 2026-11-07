.class public final Landroid/hardware/radio/V1_5/RadioAccessNetworks;
.super Ljava/lang/Object;
.source "RadioAccessNetworks.java"


# static fields
.field public static final blacklist CDMA2000:I = 0x5

.field public static final blacklist EUTRAN:I = 0x3

.field public static final blacklist GERAN:I = 0x1

.field public static final blacklist NGRAN:I = 0x4

.field public static final blacklist UNKNOWN:I = 0x0

.field public static final blacklist UTRAN:I = 0x2


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

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 42
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 43
    const-string v2, "GERAN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    or-int/lit8 v1, v1, 0x1

    .line 46
    :cond_12
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    .line 47
    const-string v2, "UTRAN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    or-int/lit8 v1, v1, 0x2

    .line 50
    :cond_1e
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2a

    .line 51
    const-string v2, "EUTRAN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    or-int/lit8 v1, v1, 0x3

    .line 54
    :cond_2a
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 56
    const-string v2, "NGRAN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    or-int/lit8 v1, v1, 0x4

    .line 59
    :cond_3b
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_47

    .line 60
    const-string v2, "CDMA2000"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    or-int/lit8 v1, v1, 0x5

    .line 63
    :cond_47
    if-eq p0, v1, :cond_65

    .line 64
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

    .line 66
    :cond_65
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 18
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 19
    const-string v0, "GERAN"

    return-object v0

    .line 21
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 22
    const-string v0, "UTRAN"

    return-object v0

    .line 24
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 25
    const-string v0, "EUTRAN"

    return-object v0

    .line 27
    :cond_12
    if-nez p0, :cond_17

    .line 28
    const-string v0, "UNKNOWN"

    return-object v0

    .line 30
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 31
    const-string v0, "NGRAN"

    return-object v0

    .line 33
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 34
    const-string v0, "CDMA2000"

    return-object v0

    .line 36
    :cond_23
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
