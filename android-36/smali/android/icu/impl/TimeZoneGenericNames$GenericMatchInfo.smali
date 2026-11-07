.class public Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
.super Ljava/lang/Object;
.source "TimeZoneGenericNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneGenericNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenericMatchInfo"
.end annotation


# instance fields
.field final greylist-max-o matchLength:I

.field final greylist-max-o nameType:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

.field final greylist-max-o timeType:Landroid/icu/text/TimeZoneFormat$TimeType;

.field final greylist-max-o tzID:Ljava/lang/String;


# direct methods
.method private constructor greylist-max-o <init>(Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;I)V
    .registers 5
    .param p1, "nameType"    # Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    .param p2, "tzID"    # Ljava/lang/String;
    .param p3, "matchLength"    # I

    .line 612
    sget-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;-><init>(Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;ILandroid/icu/text/TimeZoneFormat$TimeType;)V

    .line 613
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;ILandroid/icu/impl/TimeZoneGenericNames-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;-><init>(Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;ILandroid/icu/text/TimeZoneFormat$TimeType;)V
    .registers 5
    .param p1, "nameType"    # Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    .param p2, "tzID"    # Ljava/lang/String;
    .param p3, "matchLength"    # I
    .param p4, "timeType"    # Landroid/icu/text/TimeZoneFormat$TimeType;

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    iput-object p1, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->nameType:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 617
    iput-object p2, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->tzID:Ljava/lang/String;

    .line 618
    iput p3, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength:I

    .line 619
    iput-object p4, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType:Landroid/icu/text/TimeZoneFormat$TimeType;

    .line 620
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;ILandroid/icu/text/TimeZoneFormat$TimeType;Landroid/icu/impl/TimeZoneGenericNames-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;-><init>(Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;ILandroid/icu/text/TimeZoneFormat$TimeType;)V

    return-void
.end method


# virtual methods
.method public blacklist matchLength()I
    .registers 2

    .line 635
    iget v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength:I

    return v0
.end method

.method public blacklist nameType()Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    .registers 2

    .line 623
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->nameType:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    return-object v0
.end method

.method public blacklist timeType()Landroid/icu/text/TimeZoneFormat$TimeType;
    .registers 2

    .line 631
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType:Landroid/icu/text/TimeZoneFormat$TimeType;

    return-object v0
.end method

.method public blacklist tzID()Ljava/lang/String;
    .registers 2

    .line 627
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->tzID:Ljava/lang/String;

    return-object v0
.end method
