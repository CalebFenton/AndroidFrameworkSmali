.class public abstract enum Ljava/util/Locale$IsoCountryCode;
.super Ljava/lang/Enum;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "IsoCountryCode"
.end annotation

.annotation system Ldalvik/annotation/PermittedSubclasses;
    value = {
        Ljava/util/Locale$IsoCountryCode$1;,
        Ljava/util/Locale$IsoCountryCode$2;,
        Ljava/util/Locale$IsoCountryCode$3;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/util/Locale$IsoCountryCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/util/Locale$IsoCountryCode;

.field public static final enum whitelist test-api PART1_ALPHA2:Ljava/util/Locale$IsoCountryCode;

.field public static final enum whitelist test-api PART1_ALPHA3:Ljava/util/Locale$IsoCountryCode;

.field public static final enum whitelist test-api PART3:Ljava/util/Locale$IsoCountryCode;

.field private static final blacklist iso3166CodesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale$IsoCountryCode;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic blacklist $values()[Ljava/util/Locale$IsoCountryCode;
    .registers 3

    .line 730
    sget-object v0, Ljava/util/Locale$IsoCountryCode;->PART1_ALPHA2:Ljava/util/Locale$IsoCountryCode;

    sget-object v1, Ljava/util/Locale$IsoCountryCode;->PART1_ALPHA3:Ljava/util/Locale$IsoCountryCode;

    sget-object v2, Ljava/util/Locale$IsoCountryCode;->PART3:Ljava/util/Locale$IsoCountryCode;

    filled-new-array {v0, v1, v2}, [Ljava/util/Locale$IsoCountryCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 735
    new-instance v0, Ljava/util/Locale$IsoCountryCode$1;

    const-string v1, "PART1_ALPHA2"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale$IsoCountryCode$1;-><init>(Ljava/lang/String;ILjava/util/Locale-IA;)V

    sput-object v0, Ljava/util/Locale$IsoCountryCode;->PART1_ALPHA2:Ljava/util/Locale$IsoCountryCode;

    .line 747
    new-instance v0, Ljava/util/Locale$IsoCountryCode$2;

    const-string v1, "PART1_ALPHA3"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale$IsoCountryCode$2;-><init>(Ljava/lang/String;ILjava/util/Locale-IA;)V

    sput-object v0, Ljava/util/Locale$IsoCountryCode;->PART1_ALPHA3:Ljava/util/Locale$IsoCountryCode;

    .line 757
    new-instance v0, Ljava/util/Locale$IsoCountryCode$3;

    const-string v1, "PART3"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale$IsoCountryCode$3;-><init>(Ljava/lang/String;ILjava/util/Locale-IA;)V

    sput-object v0, Ljava/util/Locale$IsoCountryCode;->PART3:Ljava/util/Locale$IsoCountryCode;

    .line 730
    invoke-static {}, Ljava/util/Locale$IsoCountryCode;->$values()[Ljava/util/Locale$IsoCountryCode;

    move-result-object v0

    sput-object v0, Ljava/util/Locale$IsoCountryCode;->$VALUES:[Ljava/util/Locale$IsoCountryCode;

    .line 773
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ljava/util/Locale$IsoCountryCode;->iso3166CodesMap:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 730
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILjava/util/Locale-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/util/Locale$IsoCountryCode;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static blacklist retrieveISOCountryCodes(Ljava/util/Locale$IsoCountryCode;)Ljava/util/Set;
    .registers 3
    .param p0, "type"    # Ljava/util/Locale$IsoCountryCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale$IsoCountryCode;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 780
    sget-object v0, Ljava/util/Locale$IsoCountryCode;->iso3166CodesMap:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale$IsoCountryCode$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/util/Locale$IsoCountryCode$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/util/Locale$IsoCountryCode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 730
    const-class v0, Ljava/util/Locale$IsoCountryCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/Locale$IsoCountryCode;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/util/Locale$IsoCountryCode;
    .registers 1

    .line 730
    sget-object v0, Ljava/util/Locale$IsoCountryCode;->$VALUES:[Ljava/util/Locale$IsoCountryCode;

    invoke-virtual {v0}, [Ljava/util/Locale$IsoCountryCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale$IsoCountryCode;

    return-object v0
.end method


# virtual methods
.method abstract blacklist createCountryCodeSet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
