.class Landroid/icu/impl/TimeZoneGenericNames$Cache;
.super Landroid/icu/impl/SoftCache;
.source "TimeZoneGenericNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneGenericNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Landroid/icu/impl/TimeZoneGenericNames;",
        "Landroid/icu/util/ULocale;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 900
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/TimeZoneGenericNames-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames$Cache;-><init>()V

    return-void
.end method


# virtual methods
.method protected greylist-max-o createInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/impl/TimeZoneGenericNames;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/icu/util/ULocale;

    .line 907
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/icu/impl/TimeZoneGenericNames;-><init>(Landroid/icu/util/ULocale;Landroid/icu/impl/TimeZoneGenericNames-IA;)V

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneGenericNames;->freeze()Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic greylist-max-o createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 900
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/icu/util/ULocale;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/TimeZoneGenericNames$Cache;->createInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object p1

    return-object p1
.end method
