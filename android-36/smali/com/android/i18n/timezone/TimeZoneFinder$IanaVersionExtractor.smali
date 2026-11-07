.class Lcom/android/i18n/timezone/TimeZoneFinder$IanaVersionExtractor;
.super Ljava/lang/Object;
.source "TimeZoneFinder.java"

# interfaces
.implements Lcom/android/i18n/timezone/TimeZoneFinder$TimeZonesProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/timezone/TimeZoneFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IanaVersionExtractor"
.end annotation


# instance fields
.field private blacklist ianaVersion:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/i18n/timezone/TimeZoneFinder-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/i18n/timezone/TimeZoneFinder$IanaVersionExtractor;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getIanaVersion()Ljava/lang/String;
    .registers 2

    .line 487
    iget-object v0, p0, Lcom/android/i18n/timezone/TimeZoneFinder$IanaVersionExtractor;->ianaVersion:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist processHeader(Ljava/lang/String;)Z
    .registers 3
    .param p1, "ianaVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 482
    iput-object p1, p0, Lcom/android/i18n/timezone/TimeZoneFinder$IanaVersionExtractor;->ianaVersion:Ljava/lang/String;

    .line 483
    const/4 v0, 0x0

    return v0
.end method
