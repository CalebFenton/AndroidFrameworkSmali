.class Landroid/icu/text/TimeZoneNames$Cache;
.super Landroid/icu/impl/SoftCache;
.source "TimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/icu/text/TimeZoneNames;",
        "Landroid/icu/util/ULocale;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 485
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/TimeZoneNames$Cache;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/text/TimeZoneNames$Cache;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 494
    invoke-static {}, Landroid/icu/text/TimeZoneNames;->-get0()Landroid/icu/text/TimeZoneNames$Factory;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2}, Landroid/icu/text/TimeZoneNames$Factory;->getTimeZoneNames(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "data"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 493
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "key":Ljava/lang/Object;
    check-cast p2, Landroid/icu/util/ULocale;

    #@4
    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/TimeZoneNames$Cache;->createInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
