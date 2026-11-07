.class Ljava/util/Locale$Cache;
.super Lsun/util/locale/LocaleObjectCache;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/util/locale/LocaleObjectCache<",
        "Ljava/lang/Object;",
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist LOCALECACHE:Ljava/util/Locale$Cache;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetLOCALECACHE()Ljava/util/Locale$Cache;
    .registers 1

    sget-object v0, Ljava/util/Locale$Cache;->LOCALECACHE:Ljava/util/Locale$Cache;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1029
    new-instance v0, Ljava/util/Locale$Cache;

    invoke-direct {v0}, Ljava/util/Locale$Cache;-><init>()V

    sput-object v0, Ljava/util/Locale$Cache;->LOCALECACHE:Ljava/util/Locale$Cache;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1031
    invoke-direct {p0}, Lsun/util/locale/LocaleObjectCache;-><init>()V

    .line 1032
    return-void
.end method


# virtual methods
.method protected bridge synthetic blacklist createObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1027
    invoke-virtual {p0, p1}, Ljava/util/Locale$Cache;->createObject(Ljava/lang/Object;)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist createObject(Ljava/lang/Object;)Ljava/util/Locale;
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;

    .line 1036
    instance-of v0, p1, Lsun/util/locale/BaseLocale;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 1037
    new-instance v0, Ljava/util/Locale;

    move-object v2, p1

    check-cast v2, Lsun/util/locale/BaseLocale;

    invoke-direct {v0, v2, v1, v1}, Ljava/util/Locale;-><init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;Ljava/util/Locale-IA;)V

    return-object v0

    .line 1039
    :cond_e
    move-object v0, p1

    check-cast v0, Ljava/util/Locale$LocaleKey;

    .line 1040
    .local v0, "lk":Ljava/util/Locale$LocaleKey;
    new-instance v2, Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Locale$LocaleKey;->-$$Nest$fgetbase(Ljava/util/Locale$LocaleKey;)Lsun/util/locale/BaseLocale;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Locale$LocaleKey;->-$$Nest$fgetexts(Ljava/util/Locale$LocaleKey;)Lsun/util/locale/LocaleExtensions;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Ljava/util/Locale;-><init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;Ljava/util/Locale-IA;)V

    return-object v2
.end method
