.class Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;
.super Landroid/icu/impl/SoftCache;
.source "ZoneMeta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ZoneMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomTimeZoneCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/Integer;",
        "Landroid/icu/util/SimpleTimeZone;",
        "[I>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 614
    const-class v0, Landroid/icu/impl/ZoneMeta;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 614
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/ZoneMeta-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createInstance(Ljava/lang/Integer;[I)Landroid/icu/util/SimpleTimeZone;
    .registers 11
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "data"    # [I

    .line 621
    nop

    .line 622
    nop

    .line 623
    nop

    .line 624
    nop

    .line 625
    nop

    .line 626
    const/4 v0, 0x1

    aget v1, p2, v0

    const/4 v2, 0x2

    aget v3, p2, v2

    const/4 v4, 0x3

    aget v5, p2, v4

    const/4 v6, 0x0

    aget v7, p2, v6

    if-gez v7, :cond_15

    move v7, v0

    goto :goto_16

    :cond_15
    move v7, v6

    :goto_16
    invoke-static {v1, v3, v5, v7}, Landroid/icu/impl/ZoneMeta;->formatCustomID(IIIZ)Ljava/lang/String;

    move-result-object v1

    .line 627
    .local v1, "id":Ljava/lang/String;
    aget v3, p2, v6

    aget v0, p2, v0

    mul-int/lit8 v0, v0, 0x3c

    aget v2, p2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3c

    aget v2, p2, v4

    add-int/2addr v0, v2

    mul-int/2addr v3, v0

    mul-int/lit16 v3, v3, 0x3e8

    .line 628
    .local v3, "offset":I
    new-instance v0, Landroid/icu/util/SimpleTimeZone;

    invoke-direct {v0, v3, v1}, Landroid/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 629
    .local v0, "tz":Landroid/icu/util/SimpleTimeZone;
    invoke-virtual {v0}, Landroid/icu/util/SimpleTimeZone;->freeze()Landroid/icu/util/TimeZone;

    .line 630
    return-object v0
.end method

.method protected bridge synthetic blacklist createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 614
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;->createInstance(Ljava/lang/Integer;[I)Landroid/icu/util/SimpleTimeZone;

    move-result-object p1

    return-object p1
.end method
