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
.field public static final INSTANCE:Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames;

.field private static final serialVersionUID:J = -0xdd1567981cd7b0fL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 508
    new-instance v0, Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames;

    #@2
    invoke-direct {v0}, Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames;-><init>()V

    #@5
    sput-object v0, Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames;->INSTANCE:Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames;

    #@7
    .line 504
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 504
    invoke-direct {p0}, Landroid/icu/text/TimeZoneNames;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Landroid/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 569
    .local p3, "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/text/TimeZoneNames$NameType;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAvailableMetaZoneIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 515
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "tzID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 523
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 1
    .param p1, "mzID"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/icu/text/TimeZoneNames$NameType;

    #@0
    .prologue
    .line 552
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;
    .locals 1
    .param p1, "tzID"    # Ljava/lang/String;
    .param p2, "date"    # J

    #@0
    .prologue
    .line 533
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "mzID"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;

    #@0
    .prologue
    .line 543
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getTimeZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 1
    .param p1, "tzID"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/icu/text/TimeZoneNames$NameType;

    #@0
    .prologue
    .line 561
    const/4 v0, 0x0

    #@1
    return-object v0
.end method
