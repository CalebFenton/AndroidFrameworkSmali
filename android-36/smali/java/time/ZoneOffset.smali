.class public final Ljava/time/ZoneOffset;
.super Ljava/time/ZoneId;
.source "ZoneOffset.java"

# interfaces
.implements Ljava/time/temporal/TemporalAccessor;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/time/ZoneId;",
        "Ljava/time/temporal/TemporalAccessor;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable<",
        "Ljava/time/ZoneOffset;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o ID_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/time/ZoneOffset;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api MAX:Ljava/time/ZoneOffset;

.field private static final greylist-max-o MAX_SECONDS:I = 0xfd20

.field public static final whitelist test-api MIN:Ljava/time/ZoneOffset;

.field private static final greylist-max-o SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Ljava/time/ZoneOffset;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api UTC:Ljava/time/ZoneOffset;

.field private static final whitelist serialVersionUID:J = 0x20b8141d7a029c21L


# instance fields
.field private final transient greylist-max-o id:Ljava/lang/String;

.field private final greylist-max-o totalSeconds:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 129
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljava/time/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 131
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljava/time/ZoneOffset;->ID_CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 146
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v0

    sput-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    .line 150
    const v0, -0xfd20

    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v0

    sput-object v0, Ljava/time/ZoneOffset;->MIN:Ljava/time/ZoneOffset;

    .line 154
    const v0, 0xfd20

    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v0

    sput-object v0, Ljava/time/ZoneOffset;->MAX:Ljava/time/ZoneOffset;

    return-void
.end method

.method private constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "totalSeconds"    # I

    .line 434
    invoke-direct {p0}, Ljava/time/ZoneId;-><init>()V

    .line 435
    iput p1, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    .line 436
    invoke-static {p1}, Ljava/time/ZoneOffset;->buildId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/time/ZoneOffset;->id:Ljava/lang/String;

    .line 437
    return-void
.end method

.method private static greylist-max-o buildId(I)Ljava/lang/String;
    .registers 10
    .param p0, "totalSeconds"    # I

    .line 440
    if-nez p0, :cond_5

    .line 441
    const-string v0, "Z"

    return-object v0

    .line 443
    :cond_5
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 444
    .local v0, "absTotalSeconds":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .local v1, "buf":Ljava/lang/StringBuilder;
    div-int/lit16 v2, v0, 0xe10

    .line 446
    .local v2, "absHours":I
    div-int/lit8 v3, v0, 0x3c

    rem-int/lit8 v3, v3, 0x3c

    .line 447
    .local v3, "absMinutes":I
    if-gez p0, :cond_19

    const-string v4, "-"

    goto :goto_1b

    :cond_19
    const-string v4, "+"

    :goto_1b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 448
    const/16 v5, 0xa

    if-ge v2, v5, :cond_26

    const-string v6, "0"

    goto :goto_28

    :cond_26
    const-string v6, ""

    :goto_28
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 449
    const-string v6, ":0"

    const-string v7, ":"

    if-ge v3, v5, :cond_38

    move-object v8, v6

    goto :goto_39

    :cond_38
    move-object v8, v7

    :goto_39
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 450
    rem-int/lit8 v4, v0, 0x3c

    .line 451
    .local v4, "absSeconds":I
    if-eqz v4, :cond_4f

    .line 452
    if-ge v4, v5, :cond_47

    goto :goto_48

    :cond_47
    move-object v6, v7

    :goto_48
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 454
    :cond_4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static whitelist test-api from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneOffset;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 339
    const-string v0, "temporal"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 340
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneOffset;

    .line 341
    .local v0, "offset":Ljava/time/ZoneOffset;
    if-eqz v0, :cond_12

    .line 345
    return-object v0

    .line 342
    :cond_12
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain ZoneOffset from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 343
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api of(Ljava/lang/String;)Ljava/time/ZoneOffset;
    .registers 9
    .param p0, "offsetId"    # Ljava/lang/String;

    .line 198
    const-string v0, "offsetId"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 200
    sget-object v0, Ljava/time/ZoneOffset;->ID_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneOffset;

    .line 201
    .local v0, "offset":Ljava/time/ZoneOffset;
    if-eqz v0, :cond_10

    .line 202
    return-object v0

    .line 207
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_c0

    .line 236
    :pswitch_1b
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ID for ZoneOffset, invalid format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :pswitch_34
    invoke-static {p0, v4, v5}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 232
    .local v1, "hours":I
    invoke-static {p0, v2, v4}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v2

    .line 233
    .local v2, "minutes":I
    const/4 v3, 0x7

    invoke-static {p0, v3, v4}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v3

    .line 234
    .local v3, "seconds":I
    goto :goto_8a

    .line 226
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    .end local v3    # "seconds":I
    :pswitch_42
    invoke-static {p0, v4, v5}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 227
    .restart local v1    # "hours":I
    invoke-static {p0, v3, v5}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v2

    .line 228
    .restart local v2    # "minutes":I
    const/4 v3, 0x5

    invoke-static {p0, v3, v5}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v3

    .line 229
    .restart local v3    # "seconds":I
    goto :goto_8a

    .line 221
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    .end local v3    # "seconds":I
    :pswitch_50
    invoke-static {p0, v4, v5}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 222
    .restart local v1    # "hours":I
    invoke-static {p0, v2, v4}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v2

    .line 223
    .restart local v2    # "minutes":I
    const/4 v3, 0x0

    .line 224
    .restart local v3    # "seconds":I
    goto :goto_8a

    .line 216
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    .end local v3    # "seconds":I
    :pswitch_5a
    invoke-static {p0, v4, v5}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 217
    .restart local v1    # "hours":I
    invoke-static {p0, v3, v5}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v2

    .line 218
    .restart local v2    # "minutes":I
    const/4 v3, 0x0

    .line 219
    .restart local v3    # "seconds":I
    goto :goto_8a

    .line 209
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    .end local v3    # "seconds":I
    :pswitch_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 211
    :pswitch_83
    invoke-static {p0, v4, v5}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 212
    .restart local v1    # "hours":I
    const/4 v2, 0x0

    .line 213
    .restart local v2    # "minutes":I
    const/4 v3, 0x0

    .line 214
    .restart local v3    # "seconds":I
    nop

    .line 238
    :goto_8a
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 239
    .local v4, "first":C
    const/16 v5, 0x2b

    const/16 v6, 0x2d

    if-eq v4, v5, :cond_b0

    if-ne v4, v6, :cond_97

    goto :goto_b0

    .line 240
    :cond_97
    new-instance v5, Ljava/time/DateTimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid ID for ZoneOffset, plus/minus not found when expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 242
    :cond_b0
    :goto_b0
    if-ne v4, v6, :cond_ba

    .line 243
    neg-int v5, v1

    neg-int v6, v2

    neg-int v7, v3

    invoke-static {v5, v6, v7}, Ljava/time/ZoneOffset;->ofHoursMinutesSeconds(III)Ljava/time/ZoneOffset;

    move-result-object v5

    return-object v5

    .line 245
    :cond_ba
    invoke-static {v1, v2, v3}, Ljava/time/ZoneOffset;->ofHoursMinutesSeconds(III)Ljava/time/ZoneOffset;

    move-result-object v5

    return-object v5

    nop

    :pswitch_data_c0
    .packed-switch 0x2
        :pswitch_64
        :pswitch_83
        :pswitch_1b
        :pswitch_5a
        :pswitch_50
        :pswitch_42
        :pswitch_1b
        :pswitch_34
    .end packed-switch
.end method

.method public static whitelist test-api ofHours(I)Ljava/time/ZoneOffset;
    .registers 2
    .param p0, "hours"    # I

    .line 278
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Ljava/time/ZoneOffset;->ofHoursMinutesSeconds(III)Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api ofHoursMinutes(II)Ljava/time/ZoneOffset;
    .registers 3
    .param p0, "hours"    # I
    .param p1, "minutes"    # I

    .line 295
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/time/ZoneOffset;->ofHoursMinutesSeconds(III)Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api ofHoursMinutesSeconds(III)Ljava/time/ZoneOffset;
    .registers 5
    .param p0, "hours"    # I
    .param p1, "minutes"    # I
    .param p2, "seconds"    # I

    .line 312
    invoke-static {p0, p1, p2}, Ljava/time/ZoneOffset;->validate(III)V

    .line 313
    invoke-static {p0, p1, p2}, Ljava/time/ZoneOffset;->totalSeconds(III)I

    move-result v0

    .line 314
    .local v0, "totalSeconds":I
    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api ofTotalSeconds(I)Ljava/time/ZoneOffset;
    .registers 5
    .param p0, "totalSeconds"    # I

    .line 409
    const v0, -0xfd20

    if-lt p0, v0, :cond_3e

    const v0, 0xfd20

    if-gt p0, v0, :cond_3e

    .line 412
    rem-int/lit16 v0, p0, 0x384

    if-nez v0, :cond_38

    .line 413
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 414
    .local v0, "totalSecs":Ljava/lang/Integer;
    sget-object v1, Ljava/time/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/ZoneOffset;

    .line 415
    .local v1, "result":Ljava/time/ZoneOffset;
    if-nez v1, :cond_37

    .line 416
    new-instance v2, Ljava/time/ZoneOffset;

    invoke-direct {v2, p0}, Ljava/time/ZoneOffset;-><init>(I)V

    .line 417
    .end local v1    # "result":Ljava/time/ZoneOffset;
    .local v2, "result":Ljava/time/ZoneOffset;
    sget-object v1, Ljava/time/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v1, Ljava/time/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/ZoneOffset;

    .line 419
    .end local v2    # "result":Ljava/time/ZoneOffset;
    .restart local v1    # "result":Ljava/time/ZoneOffset;
    sget-object v2, Ljava/time/ZoneOffset;->ID_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    :cond_37
    return-object v1

    .line 423
    .end local v0    # "totalSecs":Ljava/lang/Integer;
    .end local v1    # "result":Ljava/time/ZoneOffset;
    :cond_38
    new-instance v0, Ljava/time/ZoneOffset;

    invoke-direct {v0, p0}, Ljava/time/ZoneOffset;-><init>(I)V

    return-object v0

    .line 410
    :cond_3e
    new-instance v0, Ljava/time/DateTimeException;

    const-string v1, "Zone offset not in valid range: -18:00 to +18:00"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o parseNumber(Ljava/lang/CharSequence;IZ)I
    .registers 8
    .param p0, "offsetId"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I
    .param p2, "precededByColon"    # Z

    .line 258
    if-eqz p2, :cond_26

    add-int/lit8 v0, p1, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_d

    goto :goto_26

    .line 259
    :cond_d
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ID for ZoneOffset, colon not found when expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_26
    :goto_26
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 262
    .local v0, "ch1":C
    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 263
    .local v1, "ch2":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_44

    const/16 v3, 0x39

    if-gt v0, v3, :cond_44

    if-lt v1, v2, :cond_44

    if-gt v1, v3, :cond_44

    .line 266
    add-int/lit8 v2, v0, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v1, -0x30

    add-int/2addr v2, v3

    return v2

    .line 264
    :cond_44
    new-instance v2, Ljava/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid ID for ZoneOffset, non numeric characters found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static greylist-max-o readExternal(Ljava/io/DataInput;)Ljava/time/ZoneOffset;
    .registers 3
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 793
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 794
    .local v0, "offsetByte":I
    const/16 v1, 0x7f

    if-ne v0, v1, :cond_d

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    goto :goto_f

    :cond_d
    mul-int/lit16 v1, v0, 0x384

    :goto_f
    invoke-static {v1}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v1

    return-object v1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 774
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o totalSeconds(III)I
    .registers 5
    .param p0, "hours"    # I
    .param p1, "minutes"    # I
    .param p2, "seconds"    # I

    .line 395
    mul-int/lit16 v0, p0, 0xe10

    mul-int/lit8 v1, p1, 0x3c

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    return v0
.end method

.method private static greylist-max-o validate(III)V
    .registers 7
    .param p0, "hours"    # I
    .param p1, "minutes"    # I
    .param p2, "seconds"    # I

    .line 358
    const/16 v0, -0x12

    if-lt p0, v0, :cond_93

    const/16 v0, 0x12

    if-gt p0, v0, :cond_93

    .line 362
    if-lez p0, :cond_17

    .line 363
    if-ltz p1, :cond_f

    if-ltz p2, :cond_f

    goto :goto_37

    .line 364
    :cond_f
    new-instance v0, Ljava/time/DateTimeException;

    const-string v1, "Zone offset minutes and seconds must be positive because hours is positive"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_17
    if-gez p0, :cond_26

    .line 367
    if-gtz p1, :cond_1e

    if-gtz p2, :cond_1e

    goto :goto_37

    .line 368
    :cond_1e
    new-instance v0, Ljava/time/DateTimeException;

    const-string v1, "Zone offset minutes and seconds must be negative because hours is negative"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_26
    if-lez p1, :cond_2a

    if-ltz p2, :cond_2f

    :cond_2a
    if-gez p1, :cond_37

    if-gtz p2, :cond_2f

    goto :goto_37

    .line 371
    :cond_2f
    new-instance v0, Ljava/time/DateTimeException;

    const-string v1, "Zone offset minutes and seconds must have the same sign"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_37
    :goto_37
    const-string v1, " is not in the range -59 to 59"

    const/16 v2, -0x3b

    if-lt p1, v2, :cond_76

    const/16 v3, 0x3b

    if-gt p1, v3, :cond_76

    .line 377
    if-lt p2, v2, :cond_59

    if-gt p2, v3, :cond_59

    .line 381
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ne v1, v0, :cond_58

    or-int v0, p1, p2

    if-nez v0, :cond_50

    goto :goto_58

    .line 382
    :cond_50
    new-instance v0, Ljava/time/DateTimeException;

    const-string v1, "Zone offset not in valid range: -18:00 to +18:00"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_58
    :goto_58
    return-void

    .line 378
    :cond_59
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Zone offset seconds not in valid range: value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_76
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Zone offset minutes not in valid range: value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_93
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zone offset hours not in valid range: value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in the range -18 to 18"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 763
    new-instance v0, Ljava/time/Ser;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 5
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 680
    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    iget v1, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 124
    check-cast p1, Ljava/time/ZoneOffset;

    invoke-virtual {p0, p1}, Ljava/time/ZoneOffset;->compareTo(Ljava/time/ZoneOffset;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/time/ZoneOffset;)I
    .registers 4
    .param p1, "other"    # Ljava/time/ZoneOffset;

    .line 700
    iget v0, p1, Ljava/time/ZoneOffset;->totalSeconds:I

    iget v1, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 715
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 716
    return v0

    .line 718
    :cond_4
    instance-of v1, p1, Ljava/time/ZoneOffset;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 719
    iget v1, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    move-object v3, p1

    check-cast v3, Ljava/time/ZoneOffset;

    iget v3, v3, Ljava/time/ZoneOffset;->totalSeconds:I

    if-ne v1, v3, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0

    .line 721
    :cond_15
    return v2
.end method

.method public whitelist test-api get(Ljava/time/temporal/TemporalField;)I
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 586
    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_7

    .line 587
    iget v0, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    return v0

    .line 588
    :cond_7
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-nez v0, :cond_18

    .line 591
    invoke-virtual {p0, p1}, Ljava/time/ZoneOffset;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/time/ZoneOffset;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    return v0

    .line 589
    :cond_18
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getId()Ljava/lang/String;
    .registers 2

    .line 487
    iget-object v0, p0, Ljava/time/ZoneOffset;->id:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getLong(Ljava/time/temporal/TemporalField;)J
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 618
    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_8

    .line 619
    iget v0, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    int-to-long v0, v0

    return-wide v0

    .line 620
    :cond_8
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-nez v0, :cond_11

    .line 623
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    .line 621
    :cond_11
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getRules()Ljava/time/zone/ZoneRules;
    .registers 2

    .line 500
    invoke-static {p0}, Ljava/time/zone/ZoneRules;->of(Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneRules;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getTotalSeconds()I
    .registers 2

    .line 469
    iget v0, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 731
    iget v0, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    return v0
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 525
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 526
    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_b

    goto :goto_c

    :cond_b
    move v1, v2

    :goto_c
    return v1

    .line 528
    :cond_d
    if-eqz p1, :cond_16

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    return v1
.end method

.method public whitelist test-api query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 648
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_12

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_d

    goto :goto_12

    .line 651
    :cond_d
    invoke-super {p0, p1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 649
    :cond_12
    :goto_12
    return-object p0
.end method

.method public whitelist test-api range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 556
    invoke-super {p0, p1}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 742
    iget-object v0, p0, Ljava/time/ZoneOffset;->id:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o write(Ljava/io/DataOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 779
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 780
    invoke-virtual {p0, p1}, Ljava/time/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    .line 781
    return-void
.end method

.method greylist-max-o writeExternal(Ljava/io/DataOutput;)V
    .registers 5
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 784
    iget v0, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    .line 785
    .local v0, "offsetSecs":I
    rem-int/lit16 v1, v0, 0x384

    const/16 v2, 0x7f

    if-nez v1, :cond_b

    div-int/lit16 v1, v0, 0x384

    goto :goto_c

    :cond_b
    move v1, v2

    .line 786
    .local v1, "offsetByte":I
    :goto_c
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 787
    if-ne v1, v2, :cond_14

    .line 788
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 790
    :cond_14
    return-void
.end method
