.class Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;
.super Landroid/icu/impl/SoftCache;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeZoneFormatCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache",
        "<",
        "Landroid/icu/util/ULocale;",
        "Landroid/icu/text/TimeZoneFormat;",
        "Landroid/icu/util/ULocale;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3103
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createInstance(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;
    .locals 1
    .param p1, "key"    # Landroid/icu/util/ULocale;
    .param p2, "data"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 3110
    new-instance v0, Landroid/icu/text/TimeZoneFormat;

    #@2
    invoke-direct {v0, p2}, Landroid/icu/text/TimeZoneFormat;-><init>(Landroid/icu/util/ULocale;)V

    #@5
    .line 3111
    .local v0, "fmt":Landroid/icu/text/TimeZoneFormat;
    invoke-virtual {v0}, Landroid/icu/text/TimeZoneFormat;->freeze()Landroid/icu/text/TimeZoneFormat;

    #@8
    .line 3112
    return-object v0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "data"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3109
    check-cast p1, Landroid/icu/util/ULocale;

    #@2
    .end local p1    # "key":Ljava/lang/Object;
    check-cast p2, Landroid/icu/util/ULocale;

    #@4
    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;->createInstance(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
