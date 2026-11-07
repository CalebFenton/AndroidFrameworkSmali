.class public final Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssAccumulatedDeltaRangeState;
.super Ljava/lang/Object;
.source "IGnssMeasurementCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssAccumulatedDeltaRangeState"
.end annotation


# static fields
.field public static final blacklist ADR_STATE_CYCLE_SLIP:S = 0x4s

.field public static final blacklist ADR_STATE_HALF_CYCLE_RESOLVED:S = 0x8s

.field public static final blacklist ADR_STATE_RESET:S = 0x2s

.field public static final blacklist ADR_STATE_UNKNOWN:S = 0x0s

.field public static final blacklist ADR_STATE_VALID:S = 0x1s


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(S)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # S

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 156
    .local v1, "flipped":S
    const-string v2, "ADR_STATE_UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 158
    const-string v2, "ADR_STATE_VALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    or-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    .line 161
    :cond_18
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_25

    .line 162
    const-string v2, "ADR_STATE_RESET"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    or-int/lit8 v2, v1, 0x2

    int-to-short v1, v2

    .line 165
    :cond_25
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_32

    .line 166
    const-string v2, "ADR_STATE_CYCLE_SLIP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    or-int/lit8 v2, v1, 0x4

    int-to-short v1, v2

    .line 169
    :cond_32
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_40

    .line 170
    const-string v2, "ADR_STATE_HALF_CYCLE_RESOLVED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    or-int/lit8 v2, v1, 0x8

    int-to-short v1, v2

    .line 173
    :cond_40
    if-eq p0, v1, :cond_63

    .line 174
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

    .line 176
    :cond_63
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(S)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # S

    .line 135
    if-nez p0, :cond_5

    .line 136
    const-string v0, "ADR_STATE_UNKNOWN"

    return-object v0

    .line 138
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 139
    const-string v0, "ADR_STATE_VALID"

    return-object v0

    .line 141
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 142
    const-string v0, "ADR_STATE_RESET"

    return-object v0

    .line 144
    :cond_11
    const/4 v0, 0x4

    if-ne p0, v0, :cond_17

    .line 145
    const-string v0, "ADR_STATE_CYCLE_SLIP"

    return-object v0

    .line 147
    :cond_17
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1e

    .line 148
    const-string v0, "ADR_STATE_HALF_CYCLE_RESOLVED"

    return-object v0

    .line 150
    :cond_1e
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
