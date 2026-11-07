.class public final Landroid/hardware/gnss/V1_0/IGnss$GnssAidingData;
.super Ljava/lang/Object;
.source "IGnss.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssAidingData"
.end annotation


# static fields
.field public static final blacklist DELETE_ALL:S = -0x1s

.field public static final blacklist DELETE_ALMANAC:S = 0x2s

.field public static final blacklist DELETE_CELLDB_INFO:S = -0x8000s

.field public static final blacklist DELETE_EPHEMERIS:S = 0x1s

.field public static final blacklist DELETE_HEALTH:S = 0x40s

.field public static final blacklist DELETE_IONO:S = 0x10s

.field public static final blacklist DELETE_POSITION:S = 0x4s

.field public static final blacklist DELETE_RTI:S = 0x400s

.field public static final blacklist DELETE_SADATA:S = 0x200s

.field public static final blacklist DELETE_SVDIR:S = 0x80s

.field public static final blacklist DELETE_SVSTEER:S = 0x100s

.field public static final blacklist DELETE_TIME:S = 0x8s

.field public static final blacklist DELETE_UTC:S = 0x20s


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(S)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # S

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 242
    .local v1, "flipped":S
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 243
    const-string v2, "DELETE_EPHEMERIS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    or-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    .line 246
    :cond_13
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    .line 247
    const-string v2, "DELETE_ALMANAC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    or-int/lit8 v2, v1, 0x2

    int-to-short v1, v2

    .line 250
    :cond_20
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2d

    .line 251
    const-string v2, "DELETE_POSITION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    or-int/lit8 v2, v1, 0x4

    int-to-short v1, v2

    .line 254
    :cond_2d
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3b

    .line 255
    const-string v2, "DELETE_TIME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    or-int/lit8 v2, v1, 0x8

    int-to-short v1, v2

    .line 258
    :cond_3b
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_49

    .line 259
    const-string v2, "DELETE_IONO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    or-int/lit8 v2, v1, 0x10

    int-to-short v1, v2

    .line 262
    :cond_49
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_57

    .line 263
    const-string v2, "DELETE_UTC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    or-int/lit8 v2, v1, 0x20

    int-to-short v1, v2

    .line 266
    :cond_57
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_65

    .line 267
    const-string v2, "DELETE_HEALTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    or-int/lit8 v2, v1, 0x40

    int-to-short v1, v2

    .line 270
    :cond_65
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_73

    .line 271
    const-string v2, "DELETE_SVDIR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    or-int/lit16 v2, v1, 0x80

    int-to-short v1, v2

    .line 274
    :cond_73
    and-int/lit16 v2, p0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_81

    .line 275
    const-string v2, "DELETE_SVSTEER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    or-int/lit16 v2, v1, 0x100

    int-to-short v1, v2

    .line 278
    :cond_81
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_8f

    .line 279
    const-string v2, "DELETE_SADATA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    or-int/lit16 v2, v1, 0x200

    int-to-short v1, v2

    .line 282
    :cond_8f
    and-int/lit16 v2, p0, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_9d

    .line 283
    const-string v2, "DELETE_RTI"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    or-int/lit16 v2, v1, 0x400

    int-to-short v1, v2

    .line 286
    :cond_9d
    and-int/lit16 v2, p0, -0x8000

    const/16 v3, -0x8000

    if-ne v2, v3, :cond_ab

    .line 287
    const-string v2, "DELETE_CELLDB_INFO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    or-int/lit16 v2, v1, -0x8000

    int-to-short v1, v2

    .line 290
    :cond_ab
    and-int/lit8 v2, p0, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b6

    .line 291
    const-string v2, "DELETE_ALL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    int-to-short v1, v3

    .line 294
    :cond_b6
    if-eq p0, v1, :cond_d9

    .line 295
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

    .line 297
    :cond_d9
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(S)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # S

    .line 197
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 198
    const-string v0, "DELETE_EPHEMERIS"

    return-object v0

    .line 200
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 201
    const-string v0, "DELETE_ALMANAC"

    return-object v0

    .line 203
    :cond_c
    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    .line 204
    const-string v0, "DELETE_POSITION"

    return-object v0

    .line 206
    :cond_12
    const/16 v0, 0x8

    if-ne p0, v0, :cond_19

    .line 207
    const-string v0, "DELETE_TIME"

    return-object v0

    .line 209
    :cond_19
    const/16 v0, 0x10

    if-ne p0, v0, :cond_20

    .line 210
    const-string v0, "DELETE_IONO"

    return-object v0

    .line 212
    :cond_20
    const/16 v0, 0x20

    if-ne p0, v0, :cond_27

    .line 213
    const-string v0, "DELETE_UTC"

    return-object v0

    .line 215
    :cond_27
    const/16 v0, 0x40

    if-ne p0, v0, :cond_2e

    .line 216
    const-string v0, "DELETE_HEALTH"

    return-object v0

    .line 218
    :cond_2e
    const/16 v0, 0x80

    if-ne p0, v0, :cond_35

    .line 219
    const-string v0, "DELETE_SVDIR"

    return-object v0

    .line 221
    :cond_35
    const/16 v0, 0x100

    if-ne p0, v0, :cond_3c

    .line 222
    const-string v0, "DELETE_SVSTEER"

    return-object v0

    .line 224
    :cond_3c
    const/16 v0, 0x200

    if-ne p0, v0, :cond_43

    .line 225
    const-string v0, "DELETE_SADATA"

    return-object v0

    .line 227
    :cond_43
    const/16 v0, 0x400

    if-ne p0, v0, :cond_4a

    .line 228
    const-string v0, "DELETE_RTI"

    return-object v0

    .line 230
    :cond_4a
    const/16 v0, -0x8000

    if-ne p0, v0, :cond_51

    .line 231
    const-string v0, "DELETE_CELLDB_INFO"

    return-object v0

    .line 233
    :cond_51
    const/4 v0, -0x1

    if-ne p0, v0, :cond_57

    .line 234
    const-string v0, "DELETE_ALL"

    return-object v0

    .line 236
    :cond_57
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
