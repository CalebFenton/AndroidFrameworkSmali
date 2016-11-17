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
.field private static final INSTANCE:Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;


# direct methods
.method static synthetic -get0()Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;
    .locals 1

    #@0
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper$LazyHolder;->INSTANCE:Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 96
    const-string/jumbo v1, "/com/android/i18n/phonenumbers/timezones/data/map_data"

    #@3
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->-wrap0(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    #@6
    move-result-object v0

    #@7
    .line 97
    .local v0, "map":Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;
    new-instance v1, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;

    #@9
    const/4 v2, 0x0

    #@a
    invoke-direct {v1, v0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;-><init>(Lcom/android/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;)V

    #@d
    sput-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper$LazyHolder;->INSTANCE:Lcom/android/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;

    #@f
    .line 92
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
