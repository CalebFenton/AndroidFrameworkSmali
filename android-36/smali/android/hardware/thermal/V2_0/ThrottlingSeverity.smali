.class public final Landroid/hardware/thermal/V2_0/ThrottlingSeverity;
.super Ljava/lang/Object;
.source "ThrottlingSeverity.java"


# static fields
.field public static final blacklist CRITICAL:I = 0x4

.field public static final blacklist EMERGENCY:I = 0x5

.field public static final blacklist LIGHT:I = 0x1

.field public static final blacklist MODERATE:I = 0x2

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist SEVERE:I = 0x3

.field public static final blacklist SHUTDOWN:I = 0x6


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

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 63
    .local v1, "flipped":I
    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 65
    const-string v2, "LIGHT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    or-int/lit8 v1, v1, 0x1

    .line 68
    :cond_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 69
    const-string v2, "MODERATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    or-int/lit8 v1, v1, 0x2

    .line 72
    :cond_23
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2f

    .line 73
    const-string v2, "SEVERE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    or-int/lit8 v1, v1, 0x3

    .line 76
    :cond_2f
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 77
    const-string v2, "CRITICAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    or-int/lit8 v1, v1, 0x4

    .line 80
    :cond_3b
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_47

    .line 81
    const-string v2, "EMERGENCY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    or-int/lit8 v1, v1, 0x5

    .line 84
    :cond_47
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_53

    .line 85
    const-string v2, "SHUTDOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-int/lit8 v1, v1, 0x6

    .line 88
    :cond_53
    if-eq p0, v1, :cond_71

    .line 89
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

    .line 91
    :cond_71
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 36
    if-nez p0, :cond_5

    .line 37
    const-string v0, "NONE"

    return-object v0

    .line 39
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 40
    const-string v0, "LIGHT"

    return-object v0

    .line 42
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 43
    const-string v0, "MODERATE"

    return-object v0

    .line 45
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 46
    const-string v0, "SEVERE"

    return-object v0

    .line 48
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 49
    const-string v0, "CRITICAL"

    return-object v0

    .line 51
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 52
    const-string v0, "EMERGENCY"

    return-object v0

    .line 54
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 55
    const-string v0, "SHUTDOWN"

    return-object v0

    .line 57
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
