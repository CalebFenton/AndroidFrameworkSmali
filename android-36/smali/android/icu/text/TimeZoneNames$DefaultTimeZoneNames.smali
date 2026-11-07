.class Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames;
.super Landroid/icu/text/TimeZoneNames;
.source "TimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultTimeZoneNames"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames$FactoryImpl;
    }
.end annotation


# static fields
.field public static final greylist-max-o INSTANCE:Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames;

.field private static final whitelist serialVersionUID:J = -0xdd1567981cd7b0fL


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 510
    new-instance v0, Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames;

    invoke-direct {v0}, Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames;-><init>()V

    sput-object v0, Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames;->INSTANCE:Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 506
    invoke-direct {p0}, Landroid/icu/text/TimeZoneNames;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation

    .line 571
    .local p3, "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAvailableMetaZoneIDs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 517
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .param p1, "tzID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 525
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .registers 4
    .param p1, "mzID"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/icu/text/TimeZoneNames$NameType;

    .line 554
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;
    .registers 5
    .param p1, "tzID"    # Ljava/lang/String;
    .param p2, "date"    # J

    .line 535
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "mzID"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;

    .line 545
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getTimeZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .registers 4
    .param p1, "tzID"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/icu/text/TimeZoneNames$NameType;

    .line 563
    const/4 v0, 0x0

    return-object v0
.end method
