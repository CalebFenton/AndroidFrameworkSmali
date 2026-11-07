.class final enum Ljava/util/Locale$IsoCountryCode$3;
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

    .line 757
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Locale$IsoCountryCode;-><init>(Ljava/lang/String;ILjava/util/Locale-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILjava/util/Locale-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/util/Locale$IsoCountryCode$3;-><init>(Ljava/lang/String;I)V

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

    .line 760
    sget-object v0, Ljava/util/LocaleISOData;->ISO3166_3:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
