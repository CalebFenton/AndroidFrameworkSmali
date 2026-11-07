.class Landroid/icu/text/TimeZoneNames$Cache;
.super Landroid/icu/impl/SoftCache;
.source "TimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Landroid/icu/text/TimeZoneNames;",
        "Landroid/icu/util/ULocale;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 487
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/TimeZoneNames-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/TimeZoneNames$Cache;-><init>()V

    return-void
.end method


# virtual methods
.method protected greylist-max-o createInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/icu/util/ULocale;

    .line 496
    invoke-static {}, Landroid/icu/text/TimeZoneNames;->-$$Nest$sfgetTZNAMES_FACTORY()Landroid/icu/text/TimeZoneNames$Factory;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/icu/text/TimeZoneNames$Factory;->getTimeZoneNames(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v0

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

    .line 487
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/icu/util/ULocale;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/TimeZoneNames$Cache;->createInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    move-result-object p1

    return-object p1
.end method
