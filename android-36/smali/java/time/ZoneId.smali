.class public abstract Ljava/time/ZoneId;
.super Ljava/lang/Object;
.source "ZoneId.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final whitelist test-api SHORT_IDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = 0x798cab446e6L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 219
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/util/Map$Entry;

    .line 220
    const-string v1, "ACT"

    const-string v2, "Australia/Darwin"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 221
    const-string v1, "AET"

    const-string v2, "Australia/Sydney"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 222
    const-string v1, "AGT"

    const-string v2, "America/Argentina/Buenos_Aires"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 223
    const-string v1, "ART"

    const-string v2, "Africa/Cairo"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 224
    const-string v1, "AST"

    const-string v2, "America/Anchorage"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 225
    const-string v1, "BET"

    const-string v2, "America/Sao_Paulo"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 226
    const-string v1, "BST"

    const-string v2, "Asia/Dhaka"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 227
    const-string v1, "CAT"

    const-string v2, "Africa/Harare"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 228
    const-string v1, "CNT"

    const-string v2, "America/St_Johns"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 229
    const-string v1, "CST"

    const-string v2, "America/Chicago"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 230
    const-string v1, "CTT"

    const-string v2, "Asia/Shanghai"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 231
    const-string v1, "EAT"

    const-string v2, "Africa/Addis_Ababa"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 232
    const-string v1, "ECT"

    const-string v2, "Europe/Paris"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 233
    const-string v1, "IET"

    const-string v2, "America/Indiana/Indianapolis"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 234
    const-string v1, "IST"

    const-string v2, "Asia/Kolkata"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 235
    const-string v1, "JST"

    const-string v2, "Asia/Tokyo"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 236
    const-string v1, "MIT"

    const-string v2, "Pacific/Apia"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 237
    const-string v1, "NET"

    const-string v2, "Asia/Yerevan"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 238
    const-string v1, "NST"

    const-string v2, "Pacific/Auckland"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 239
    const-string v1, "PLT"

    const-string v2, "Asia/Karachi"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 240
    const-string v1, "PNT"

    const-string v2, "America/Phoenix"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 241
    const-string v1, "PRT"

    const-string v2, "America/Puerto_Rico"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 242
    const-string v1, "PST"

    const-string v2, "America/Los_Angeles"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 243
    const-string v1, "SST"

    const-string v2, "Pacific/Guadalcanal"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 244
    const-string v1, "VST"

    const-string v2, "Asia/Ho_Chi_Minh"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 245
    const-string v1, "EST"

    const-string v2, "-05:00"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 246
    const-string v1, "MST"

    const-string v2, "-07:00"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 247
    const-string v1, "HST"

    const-string v2, "-10:00"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 219
    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ljava/time/ZoneId;->SHORT_IDS:Ljava/util/Map;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 3

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/time/ZoneOffset;

    if-eq v0, v1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/time/ZoneRegion;

    if-ne v0, v1, :cond_14

    goto :goto_1c

    .line 470
    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid subclass"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 472
    :cond_1c
    :goto_1c
    return-void
.end method

.method public static whitelist test-api from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneId;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 456
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    .line 457
    .local v0, "obj":Ljava/time/ZoneId;
    if-eqz v0, :cond_d

    .line 461
    return-object v0

    .line 458
    :cond_d
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain ZoneId from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 459
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

.method public static whitelist test-api getAvailableZoneIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Ljava/time/zone/ZoneRulesProvider;->getAvailableZoneIds()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/String;)Ljava/time/ZoneId;
    .registers 2
    .param p0, "zoneId"    # Ljava/lang/String;

    .line 352
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/time/ZoneId;->of(Ljava/lang/String;Z)Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/String;Ljava/util/Map;)Ljava/time/ZoneId;
    .registers 4
    .param p0, "zoneId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/time/ZoneId;"
        }
    .end annotation

    .line 305
    .local p1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "zoneId"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 306
    const-string v0, "aliasMap"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 307
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 308
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v1

    return-object v1
.end method

.method static greylist-max-r of(Ljava/lang/String;Z)Ljava/time/ZoneId;
    .registers 4
    .param p0, "zoneId"    # Ljava/lang/String;
    .param p1, "checkAvailable"    # Z

    .line 396
    const-string v0, "zoneId"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 397
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_47

    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_47

    .line 399
    :cond_1d
    const-string v0, "UTC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "GMT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_41

    .line 401
    :cond_2e
    const-string v0, "UT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 402
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Ljava/time/ZoneId;->ofWithPrefix(Ljava/lang/String;IZ)Ljava/time/ZoneId;

    move-result-object v0

    return-object v0

    .line 404
    :cond_3c
    invoke-static {p0, p1}, Ljava/time/ZoneRegion;->ofId(Ljava/lang/String;Z)Ljava/time/ZoneRegion;

    move-result-object v0

    return-object v0

    .line 400
    :cond_41
    :goto_41
    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Ljava/time/ZoneId;->ofWithPrefix(Ljava/lang/String;IZ)Ljava/time/ZoneId;

    move-result-object v0

    return-object v0

    .line 398
    :cond_47
    :goto_47
    invoke-static {p0}, Ljava/time/ZoneOffset;->of(Ljava/lang/String;)Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api ofOffset(Ljava/lang/String;Ljava/time/ZoneOffset;)Ljava/time/ZoneId;
    .registers 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .line 369
    const-string v0, "prefix"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 370
    const-string v0, "offset"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 371
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 372
    return-object p1

    .line 375
    :cond_11
    const-string v0, "GMT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "UTC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "UT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_43

    .line 376
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prefix should be GMT, UTC or UT, is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_43
    :goto_43
    invoke-virtual {p1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    if-eqz v0, :cond_51

    .line 380
    invoke-virtual {p1}, Ljava/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 382
    :cond_51
    new-instance v0, Ljava/time/ZoneRegion;

    invoke-virtual {p1}, Ljava/time/ZoneOffset;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/time/ZoneRegion;-><init>(Ljava/lang/String;Ljava/time/zone/ZoneRules;)V

    return-object v0
.end method

.method private static greylist-max-o ofWithPrefix(Ljava/lang/String;IZ)Ljava/time/ZoneId;
    .registers 8
    .param p0, "zoneId"    # Ljava/lang/String;
    .param p1, "prefixLength"    # I
    .param p2, "checkAvailable"    # Z

    .line 416
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, p1, :cond_12

    .line 418
    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v0, v1}, Ljava/time/ZoneId;->ofOffset(Ljava/lang/String;Ljava/time/ZoneOffset;)Ljava/time/ZoneId;

    move-result-object v1

    return-object v1

    .line 420
    :cond_12
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_27

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_27

    .line 421
    invoke-static {p0, p2}, Ljava/time/ZoneRegion;->ofId(Ljava/lang/String;Z)Ljava/time/ZoneRegion;

    move-result-object v1

    return-object v1

    .line 424
    :cond_27
    :try_start_27
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/time/ZoneOffset;->of(Ljava/lang/String;)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 425
    .local v1, "offset":Ljava/time/ZoneOffset;
    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    if-ne v1, v2, :cond_38

    .line 426
    invoke-static {v0, v1}, Ljava/time/ZoneId;->ofOffset(Ljava/lang/String;Ljava/time/ZoneOffset;)Ljava/time/ZoneId;

    move-result-object v2

    return-object v2

    .line 428
    :cond_38
    invoke-static {v0, v1}, Ljava/time/ZoneId;->ofOffset(Ljava/lang/String;Ljava/time/ZoneOffset;)Ljava/time/ZoneId;

    move-result-object v2
    :try_end_3c
    .catch Ljava/time/DateTimeException; {:try_start_27 .. :try_end_3c} :catch_3d

    return-object v2

    .line 429
    .end local v1    # "offset":Ljava/time/ZoneOffset;
    :catch_3d
    move-exception v1

    .line 430
    .local v1, "ex":Ljava/time/DateTimeException;
    new-instance v2, Ljava/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid ID for offset-based ZoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 618
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api systemDefault()Ljava/time/ZoneId;
    .registers 1

    .line 268
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o toTemporal()Ljava/time/temporal/TemporalAccessor;
    .registers 2

    .line 517
    new-instance v0, Ljava/time/ZoneId$1;

    invoke-direct {v0, p0}, Ljava/time/ZoneId$1;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 650
    new-instance v0, Ljava/time/Ser;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 592
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 593
    return v0

    .line 596
    :cond_4
    instance-of v1, p1, Ljava/time/ZoneId;

    if-eqz v1, :cond_1a

    .line 595
    move-object v1, p1

    check-cast v1, Ljava/time/ZoneId;

    .line 596
    .local v1, "other":Ljava/time/ZoneId;
    invoke-virtual {p0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_1b

    .end local v1    # "other":Ljava/time/ZoneId;
    :cond_1a
    const/4 v0, 0x0

    .line 595
    :goto_1b
    return v0
.end method

.method public whitelist test-api getDisplayName(Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "style"    # Ljava/time/format/TextStyle;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 501
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-direct {p0}, Ljava/time/ZoneId;->toTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api getId()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getRules()Ljava/time/zone/ZoneRules;
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 606
    invoke-virtual {p0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api normalized()Ljava/time/ZoneId;
    .registers 3

    .line 571
    :try_start_0
    invoke-virtual {p0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    .line 572
    .local v0, "rules":Ljava/time/zone/ZoneRules;
    invoke-virtual {v0}, Ljava/time/zone/ZoneRules;->isFixedOffset()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 573
    sget-object v1, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v1
    :try_end_10
    .catch Ljava/time/zone/ZoneRulesException; {:try_start_0 .. :try_end_10} :catch_12

    return-object v1

    .line 577
    .end local v0    # "rules":Ljava/time/zone/ZoneRules;
    :cond_11
    goto :goto_13

    .line 575
    :catch_12
    move-exception v0

    .line 578
    :goto_13
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 628
    invoke-virtual {p0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract greylist-max-o write(Ljava/io/DataOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
