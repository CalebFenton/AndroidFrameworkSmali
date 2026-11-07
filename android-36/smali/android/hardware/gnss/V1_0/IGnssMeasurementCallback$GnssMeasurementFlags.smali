.class public final Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurementFlags;
.super Ljava/lang/Object;
.source "IGnssMeasurementCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback;
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

.field public static final blacklist HAS_SNR:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # I

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 239
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 240
    const-string v2, "HAS_SNR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    or-int/lit8 v1, v1, 0x1

    .line 243
    :cond_12
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_1f

    .line 244
    const-string v2, "HAS_CARRIER_FREQUENCY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    or-int/lit16 v1, v1, 0x200

    .line 247
    :cond_1f
    and-int/lit16 v2, p0, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_2c

    .line 248
    const-string v2, "HAS_CARRIER_CYCLES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    or-int/lit16 v1, v1, 0x400

    .line 251
    :cond_2c
    and-int/lit16 v2, p0, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_39

    .line 252
    const-string v2, "HAS_CARRIER_PHASE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    or-int/lit16 v1, v1, 0x800

    .line 255
    :cond_39
    and-int/lit16 v2, p0, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_46

    .line 256
    const-string v2, "HAS_CARRIER_PHASE_UNCERTAINTY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    or-int/lit16 v1, v1, 0x1000

    .line 259
    :cond_46
    and-int/lit16 v2, p0, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_53

    .line 260
    const-string v2, "HAS_AUTOMATIC_GAIN_CONTROL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    or-int/lit16 v1, v1, 0x2000

    .line 263
    :cond_53
    if-eq p0, v1, :cond_71

    .line 264
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

    .line 266
    :cond_71
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 215
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 216
    const-string v0, "HAS_SNR"

    return-object v0

    .line 218
    :cond_6
    const/16 v0, 0x200

    if-ne p0, v0, :cond_d

    .line 219
    const-string v0, "HAS_CARRIER_FREQUENCY"

    return-object v0

    .line 221
    :cond_d
    const/16 v0, 0x400

    if-ne p0, v0, :cond_14

    .line 222
    const-string v0, "HAS_CARRIER_CYCLES"

    return-object v0

    .line 224
    :cond_14
    const/16 v0, 0x800

    if-ne p0, v0, :cond_1b

    .line 225
    const-string v0, "HAS_CARRIER_PHASE"

    return-object v0

    .line 227
    :cond_1b
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_22

    .line 228
    const-string v0, "HAS_CARRIER_PHASE_UNCERTAINTY"

    return-object v0

    .line 230
    :cond_22
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_29

    .line 231
    const-string v0, "HAS_AUTOMATIC_GAIN_CONTROL"

    return-object v0

    .line 233
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
