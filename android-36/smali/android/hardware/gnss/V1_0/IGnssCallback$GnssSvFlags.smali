.class public final Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvFlags;
.super Ljava/lang/Object;
.source "IGnssCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssSvFlags"
.end annotation


# static fields
.field public static final blacklist HAS_ALMANAC_DATA:B = 0x2t

.field public static final blacklist HAS_CARRIER_FREQUENCY:B = 0x8t

.field public static final blacklist HAS_EPHEMERIS_DATA:B = 0x1t

.field public static final blacklist NONE:B = 0x0t

.field public static final blacklist USED_IN_FIX:B = 0x4t


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(B)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # B

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 307
    .local v1, "flipped":B
    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 309
    const-string v2, "HAS_EPHEMERIS_DATA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    or-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    .line 312
    :cond_18
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_25

    .line 313
    const-string v2, "HAS_ALMANAC_DATA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    or-int/lit8 v2, v1, 0x2

    int-to-byte v1, v2

    .line 316
    :cond_25
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_32

    .line 317
    const-string v2, "USED_IN_FIX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    or-int/lit8 v2, v1, 0x4

    int-to-byte v1, v2

    .line 320
    :cond_32
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_40

    .line 321
    const-string v2, "HAS_CARRIER_FREQUENCY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    or-int/lit8 v2, v1, 0x8

    int-to-byte v1, v2

    .line 324
    :cond_40
    if-eq p0, v1, :cond_63

    .line 325
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

    .line 327
    :cond_63
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(B)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # B

    .line 286
    if-nez p0, :cond_5

    .line 287
    const-string v0, "NONE"

    return-object v0

    .line 289
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 290
    const-string v0, "HAS_EPHEMERIS_DATA"

    return-object v0

    .line 292
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 293
    const-string v0, "HAS_ALMANAC_DATA"

    return-object v0

    .line 295
    :cond_11
    const/4 v0, 0x4

    if-ne p0, v0, :cond_17

    .line 296
    const-string v0, "USED_IN_FIX"

    return-object v0

    .line 298
    :cond_17
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1e

    .line 299
    const-string v0, "HAS_CARRIER_FREQUENCY"

    return-object v0

    .line 301
    :cond_1e
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
