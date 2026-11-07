.class public final Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurementState;
.super Ljava/lang/Object;
.source "IGnssMeasurementCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssMeasurementState"
.end annotation


# static fields
.field public static final blacklist STATE_BDS_D2_BIT_SYNC:I = 0x100

.field public static final blacklist STATE_BDS_D2_SUBFRAME_SYNC:I = 0x200

.field public static final blacklist STATE_BIT_SYNC:I = 0x2

.field public static final blacklist STATE_CODE_LOCK:I = 0x1

.field public static final blacklist STATE_GAL_E1BC_CODE_LOCK:I = 0x400

.field public static final blacklist STATE_GAL_E1B_PAGE_SYNC:I = 0x1000

.field public static final blacklist STATE_GAL_E1C_2ND_CODE_LOCK:I = 0x800

.field public static final blacklist STATE_GLO_STRING_SYNC:I = 0x40

.field public static final blacklist STATE_GLO_TOD_DECODED:I = 0x80

.field public static final blacklist STATE_GLO_TOD_KNOWN:I = 0x8000

.field public static final blacklist STATE_MSEC_AMBIGUOUS:I = 0x10

.field public static final blacklist STATE_SBAS_SYNC:I = 0x2000

.field public static final blacklist STATE_SUBFRAME_SYNC:I = 0x4

.field public static final blacklist STATE_SYMBOL_SYNC:I = 0x20

.field public static final blacklist STATE_TOW_DECODED:I = 0x8

.field public static final blacklist STATE_TOW_KNOWN:I = 0x4000

.field public static final blacklist STATE_UNKNOWN:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # I

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 410
    .local v1, "flipped":I
    const-string v2, "STATE_UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 412
    const-string v2, "STATE_CODE_LOCK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    or-int/lit8 v1, v1, 0x1

    .line 415
    :cond_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 416
    const-string v2, "STATE_BIT_SYNC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    or-int/lit8 v1, v1, 0x2

    .line 419
    :cond_23
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2f

    .line 420
    const-string v2, "STATE_SUBFRAME_SYNC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    or-int/lit8 v1, v1, 0x4

    .line 423
    :cond_2f
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3c

    .line 424
    const-string v2, "STATE_TOW_DECODED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    or-int/lit8 v1, v1, 0x8

    .line 427
    :cond_3c
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_49

    .line 428
    const-string v2, "STATE_MSEC_AMBIGUOUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    or-int/lit8 v1, v1, 0x10

    .line 431
    :cond_49
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_56

    .line 432
    const-string v2, "STATE_SYMBOL_SYNC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    or-int/lit8 v1, v1, 0x20

    .line 435
    :cond_56
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_63

    .line 436
    const-string v2, "STATE_GLO_STRING_SYNC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    or-int/lit8 v1, v1, 0x40

    .line 439
    :cond_63
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_70

    .line 440
    const-string v2, "STATE_GLO_TOD_DECODED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    or-int/lit16 v1, v1, 0x80

    .line 443
    :cond_70
    and-int/lit16 v2, p0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_7d

    .line 444
    const-string v2, "STATE_BDS_D2_BIT_SYNC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    or-int/lit16 v1, v1, 0x100

    .line 447
    :cond_7d
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_8a

    .line 448
    const-string v2, "STATE_BDS_D2_SUBFRAME_SYNC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    or-int/lit16 v1, v1, 0x200

    .line 451
    :cond_8a
    and-int/lit16 v2, p0, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_97

    .line 452
    const-string v2, "STATE_GAL_E1BC_CODE_LOCK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    or-int/lit16 v1, v1, 0x400

    .line 455
    :cond_97
    and-int/lit16 v2, p0, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_a4

    .line 456
    const-string v2, "STATE_GAL_E1C_2ND_CODE_LOCK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    or-int/lit16 v1, v1, 0x800

    .line 459
    :cond_a4
    and-int/lit16 v2, p0, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_b1

    .line 460
    const-string v2, "STATE_GAL_E1B_PAGE_SYNC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    or-int/lit16 v1, v1, 0x1000

    .line 463
    :cond_b1
    and-int/lit16 v2, p0, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_be

    .line 464
    const-string v2, "STATE_SBAS_SYNC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    or-int/lit16 v1, v1, 0x2000

    .line 467
    :cond_be
    and-int/lit16 v2, p0, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_cb

    .line 468
    const-string v2, "STATE_TOW_KNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    or-int/lit16 v1, v1, 0x4000

    .line 471
    :cond_cb
    const v2, 0x8000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_d8

    .line 472
    const-string v3, "STATE_GLO_TOD_KNOWN"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    or-int/2addr v1, v2

    .line 475
    :cond_d8
    if-eq p0, v1, :cond_f6

    .line 476
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

    .line 478
    :cond_f6
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 353
    if-nez p0, :cond_5

    .line 354
    const-string v0, "STATE_UNKNOWN"

    return-object v0

    .line 356
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 357
    const-string v0, "STATE_CODE_LOCK"

    return-object v0

    .line 359
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 360
    const-string v0, "STATE_BIT_SYNC"

    return-object v0

    .line 362
    :cond_11
    const/4 v0, 0x4

    if-ne p0, v0, :cond_17

    .line 363
    const-string v0, "STATE_SUBFRAME_SYNC"

    return-object v0

    .line 365
    :cond_17
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1e

    .line 366
    const-string v0, "STATE_TOW_DECODED"

    return-object v0

    .line 368
    :cond_1e
    const/16 v0, 0x10

    if-ne p0, v0, :cond_25

    .line 369
    const-string v0, "STATE_MSEC_AMBIGUOUS"

    return-object v0

    .line 371
    :cond_25
    const/16 v0, 0x20

    if-ne p0, v0, :cond_2c

    .line 372
    const-string v0, "STATE_SYMBOL_SYNC"

    return-object v0

    .line 374
    :cond_2c
    const/16 v0, 0x40

    if-ne p0, v0, :cond_33

    .line 375
    const-string v0, "STATE_GLO_STRING_SYNC"

    return-object v0

    .line 377
    :cond_33
    const/16 v0, 0x80

    if-ne p0, v0, :cond_3a

    .line 378
    const-string v0, "STATE_GLO_TOD_DECODED"

    return-object v0

    .line 380
    :cond_3a
    const/16 v0, 0x100

    if-ne p0, v0, :cond_41

    .line 381
    const-string v0, "STATE_BDS_D2_BIT_SYNC"

    return-object v0

    .line 383
    :cond_41
    const/16 v0, 0x200

    if-ne p0, v0, :cond_48

    .line 384
    const-string v0, "STATE_BDS_D2_SUBFRAME_SYNC"

    return-object v0

    .line 386
    :cond_48
    const/16 v0, 0x400

    if-ne p0, v0, :cond_4f

    .line 387
    const-string v0, "STATE_GAL_E1BC_CODE_LOCK"

    return-object v0

    .line 389
    :cond_4f
    const/16 v0, 0x800

    if-ne p0, v0, :cond_56

    .line 390
    const-string v0, "STATE_GAL_E1C_2ND_CODE_LOCK"

    return-object v0

    .line 392
    :cond_56
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_5d

    .line 393
    const-string v0, "STATE_GAL_E1B_PAGE_SYNC"

    return-object v0

    .line 395
    :cond_5d
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_64

    .line 396
    const-string v0, "STATE_SBAS_SYNC"

    return-object v0

    .line 398
    :cond_64
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_6b

    .line 399
    const-string v0, "STATE_TOW_KNOWN"

    return-object v0

    .line 401
    :cond_6b
    const v0, 0x8000

    if-ne p0, v0, :cond_73

    .line 402
    const-string v0, "STATE_GLO_TOD_KNOWN"

    return-object v0

    .line 404
    :cond_73
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
