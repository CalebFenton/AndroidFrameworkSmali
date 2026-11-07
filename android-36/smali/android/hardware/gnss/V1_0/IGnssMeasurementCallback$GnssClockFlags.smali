.class public final Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssClockFlags;
.super Ljava/lang/Object;
.source "IGnssMeasurementCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssClockFlags"
.end annotation


# static fields
.field public static final blacklist HAS_BIAS:S = 0x8s

.field public static final blacklist HAS_BIAS_UNCERTAINTY:S = 0x10s

.field public static final blacklist HAS_DRIFT:S = 0x20s

.field public static final blacklist HAS_DRIFT_UNCERTAINTY:S = 0x40s

.field public static final blacklist HAS_FULL_BIAS:S = 0x4s

.field public static final blacklist HAS_LEAP_SECOND:S = 0x1s

.field public static final blacklist HAS_TIME_UNCERTAINTY:S = 0x2s


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(S)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # S

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 150
    .local v1, "flipped":S
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 151
    const-string v2, "HAS_LEAP_SECOND"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    or-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    .line 154
    :cond_13
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    .line 155
    const-string v2, "HAS_TIME_UNCERTAINTY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    or-int/lit8 v2, v1, 0x2

    int-to-short v1, v2

    .line 158
    :cond_20
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2d

    .line 159
    const-string v2, "HAS_FULL_BIAS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    or-int/lit8 v2, v1, 0x4

    int-to-short v1, v2

    .line 162
    :cond_2d
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3b

    .line 163
    const-string v2, "HAS_BIAS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    or-int/lit8 v2, v1, 0x8

    int-to-short v1, v2

    .line 166
    :cond_3b
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_49

    .line 167
    const-string v2, "HAS_BIAS_UNCERTAINTY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    or-int/lit8 v2, v1, 0x10

    int-to-short v1, v2

    .line 170
    :cond_49
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_57

    .line 171
    const-string v2, "HAS_DRIFT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    or-int/lit8 v2, v1, 0x20

    int-to-short v1, v2

    .line 174
    :cond_57
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_65

    .line 175
    const-string v2, "HAS_DRIFT_UNCERTAINTY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    or-int/lit8 v2, v1, 0x40

    int-to-short v1, v2

    .line 178
    :cond_65
    if-eq p0, v1, :cond_88

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    int-to-short v3, v3

    invoke-static {v3}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_88
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(S)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # S

    .line 123
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 124
    const-string v0, "HAS_LEAP_SECOND"

    return-object v0

    .line 126
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 127
    const-string v0, "HAS_TIME_UNCERTAINTY"

    return-object v0

    .line 129
    :cond_c
    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    .line 130
    const-string v0, "HAS_FULL_BIAS"

    return-object v0

    .line 132
    :cond_12
    const/16 v0, 0x8

    if-ne p0, v0, :cond_19

    .line 133
    const-string v0, "HAS_BIAS"

    return-object v0

    .line 135
    :cond_19
    const/16 v0, 0x10

    if-ne p0, v0, :cond_20

    .line 136
    const-string v0, "HAS_BIAS_UNCERTAINTY"

    return-object v0

    .line 138
    :cond_20
    const/16 v0, 0x20

    if-ne p0, v0, :cond_27

    .line 139
    const-string v0, "HAS_DRIFT"

    return-object v0

    .line 141
    :cond_27
    const/16 v0, 0x40

    if-ne p0, v0, :cond_2e

    .line 142
    const-string v0, "HAS_DRIFT_UNCERTAINTY"

    return-object v0

    .line 144
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
