.class public final Landroid/hardware/radio/V1_0/CdmaCallWaitingNumberPlan;
.super Ljava/lang/Object;
.source "CdmaCallWaitingNumberPlan.java"


# static fields
.field public static final blacklist DATA:I = 0x3

.field public static final blacklist ISDN:I = 0x1

.field public static final blacklist NATIONAL:I = 0x8

.field public static final blacklist PRIVATE:I = 0x9

.field public static final blacklist TELEX:I = 0x4

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

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 36
    .local v1, "flipped":I
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 38
    const-string v2, "ISDN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    or-int/lit8 v1, v1, 0x1

    .line 41
    :cond_17
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_23

    .line 42
    const-string v2, "DATA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    or-int/lit8 v1, v1, 0x3

    .line 45
    :cond_23
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2f

    .line 46
    const-string v2, "TELEX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    or-int/lit8 v1, v1, 0x4

    .line 49
    :cond_2f
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3c

    .line 50
    const-string v2, "NATIONAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    or-int/lit8 v1, v1, 0x8

    .line 53
    :cond_3c
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_49

    .line 54
    const-string v2, "PRIVATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    or-int/lit8 v1, v1, 0x9

    .line 57
    :cond_49
    if-eq p0, v1, :cond_67

    .line 58
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

    .line 60
    :cond_67
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

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
    const-string v0, "ISDN"

    return-object v0

    .line 18
    :cond_b
    const/4 v0, 0x3

    if-ne p0, v0, :cond_11

    .line 19
    const-string v0, "DATA"

    return-object v0

    .line 21
    :cond_11
    const/4 v0, 0x4

    if-ne p0, v0, :cond_17

    .line 22
    const-string v0, "TELEX"

    return-object v0

    .line 24
    :cond_17
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1e

    .line 25
    const-string v0, "NATIONAL"

    return-object v0

    .line 27
    :cond_1e
    const/16 v0, 0x9

    if-ne p0, v0, :cond_25

    .line 28
    const-string v0, "PRIVATE"

    return-object v0

    .line 30
    :cond_25
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
