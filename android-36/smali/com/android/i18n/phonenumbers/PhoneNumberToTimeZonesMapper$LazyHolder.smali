.class Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper$LazyHolder;
.super Ljava/lang/Object;
.source "PhoneNumberToTimeZonesMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;
    .registers 1

    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper$LazyHolder;->INSTANCE:Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 97
    nop

    .line 98
    const-string v0, "/com/android/i18n/phonenumbers/timezones/data/map_data"

    invoke-static {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->-$$Nest$smloadPrefixTimeZonesMapFromFile(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    move-result-object v0

    .line 99
    .local v0, "map":Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;
    new-instance v1, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;-><init>(Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper-IA;)V

    sput-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper$LazyHolder;->INSTANCE:Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;

    .line 100
    .end local v0    # "map":Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
