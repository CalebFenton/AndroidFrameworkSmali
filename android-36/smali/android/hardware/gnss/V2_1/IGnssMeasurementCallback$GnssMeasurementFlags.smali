.class public final Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurementFlags;
.super Ljava/lang/Object;
.source "IGnssMeasurementCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssMeasurementFlags"
.end annotation


# static fields
.field public static final blacklist HAS_AUTOMATIC_GAIN_CONTROL:I = 0x2000

.field public static final blacklist HAS_CARRIER_CYCLES:I = 0x400

.field public static final blacklist HAS_CARRIER_FREQUENCY:I = 0x200

.field public static final blacklist HAS_CARRIER_PHASE:I = 0x800

.field public static final blacklist HAS_CARRIER_PHASE_UNCERTAINTY:I = 0x1000

.field public static final blacklist HAS_FULL_ISB:I = 0x10000

.field public static final blacklist HAS_FULL_ISB_UNCERTAINTY:I = 0x20000

.field public static final blacklist HAS_SATELLITE_ISB:I = 0x40000

.field public static final blacklist HAS_SATELLITE_ISB_UNCERTAINTY:I = 0x80000

.field public static final blacklist HAS_SNR:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # I

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 171
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 172
    const-string v2, "HAS_SNR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    or-int/lit8 v1, v1, 0x1

    .line 175
    :cond_12
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_1f

    .line 176
    const-string v2, "HAS_CARRIER_FREQUENCY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    or-int/lit16 v1, v1, 0x200

    .line 179
    :cond_1f
    and-int/lit16 v2, p0, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_2c

    .line 180
    const-string v2, "HAS_CARRIER_CYCLES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    or-int/lit16 v1, v1, 0x400

    .line 183
    :cond_2c
    and-int/lit16 v2, p0, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_39

    .line 184
    const-string v2, "HAS_CARRIER_PHASE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    or-int/lit16 v1, v1, 0x800

    .line 187
    :cond_39
    and-int/lit16 v2, p0, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_46

    .line 188
    const-string v2, "HAS_CARRIER_PHASE_UNCERTAINTY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    or-int/lit16 v1, v1, 0x1000

    .line 191
    :cond_46
    and-int/lit16 v2, p0, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_53

    .line 192
    const-string v2, "HAS_AUTOMATIC_GAIN_CONTROL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    or-int/lit16 v1, v1, 0x2000

    .line 195
    :cond_53
    const/high16 v2, 0x10000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_5f

    .line 196
    const-string v3, "HAS_FULL_ISB"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    or-int/2addr v1, v2

    .line 199
    :cond_5f
    const/high16 v2, 0x20000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_6b

    .line 200
    const-string v3, "HAS_FULL_ISB_UNCERTAINTY"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    or-int/2addr v1, v2

    .line 203
    :cond_6b
    const/high16 v2, 0x40000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_77

    .line 204
    const-string v3, "HAS_SATELLITE_ISB"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    or-int/2addr v1, v2

    .line 207
    :cond_77
    const/high16 v2, 0x80000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_83

    .line 208
    const-string v3, "HAS_SATELLITE_ISB_UNCERTAINTY"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    or-int/2addr v1, v2

    .line 211
    :cond_83
    if-eq p0, v1, :cond_a1

    .line 212
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

    .line 214
    :cond_a1
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 135
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 136
    const-string v0, "HAS_SNR"

    return-object v0

    .line 138
    :cond_6
    const/16 v0, 0x200

    if-ne p0, v0, :cond_d

    .line 139
    const-string v0, "HAS_CARRIER_FREQUENCY"

    return-object v0

    .line 141
    :cond_d
    const/16 v0, 0x400

    if-ne p0, v0, :cond_14

    .line 142
    const-string v0, "HAS_CARRIER_CYCLES"

    return-object v0

    .line 144
    :cond_14
    const/16 v0, 0x800

    if-ne p0, v0, :cond_1b

    .line 145
    const-string v0, "HAS_CARRIER_PHASE"

    return-object v0

    .line 147
    :cond_1b
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_22

    .line 148
    const-string v0, "HAS_CARRIER_PHASE_UNCERTAINTY"

    return-object v0

    .line 150
    :cond_22
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_29

    .line 151
    const-string v0, "HAS_AUTOMATIC_GAIN_CONTROL"

    return-object v0

    .line 153
    :cond_29
    const/high16 v0, 0x10000

    if-ne p0, v0, :cond_30

    .line 154
    const-string v0, "HAS_FULL_ISB"

    return-object v0

    .line 156
    :cond_30
    const/high16 v0, 0x20000

    if-ne p0, v0, :cond_37

    .line 157
    const-string v0, "HAS_FULL_ISB_UNCERTAINTY"

    return-object v0

    .line 159
    :cond_37
    const/high16 v0, 0x40000

    if-ne p0, v0, :cond_3e

    .line 160
    const-string v0, "HAS_SATELLITE_ISB"

    return-object v0

    .line 162
    :cond_3e
    const/high16 v0, 0x80000

    if-ne p0, v0, :cond_45

    .line 163
    const-string v0, "HAS_SATELLITE_ISB_UNCERTAINTY"

    return-object v0

    .line 165
    :cond_45
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
