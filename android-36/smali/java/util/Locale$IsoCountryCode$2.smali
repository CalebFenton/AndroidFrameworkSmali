.class final enum Ljava/util/Locale$IsoCountryCode$2;
.super Ljava/util/Locale$IsoCountryCode;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Locale$IsoCountryCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 4
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

    .line 747
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Locale$IsoCountryCode;-><init>(Ljava/lang/String;ILjava/util/Locale-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILjava/util/Locale-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/util/Locale$IsoCountryCode$2;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method blacklist createCountryCodeSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 750
    invoke-static {}, Ljava/util/LocaleISOData;->computeISO3166_1Alpha3Countries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
