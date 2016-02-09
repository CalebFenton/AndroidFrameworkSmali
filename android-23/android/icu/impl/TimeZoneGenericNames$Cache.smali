.class Landroid/icu/impl/TimeZoneGenericNames$Cache;
.super Landroid/icu/impl/SoftCache;
.source "TimeZoneGenericNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneGenericNames;
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
        "Landroid/icu/impl/TimeZoneGenericNames;",
        "Landroid/icu/util/ULocale;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 887
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/TimeZoneGenericNames$Cache;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames$Cache;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/impl/TimeZoneGenericNames;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 894
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p2, v1}, Landroid/icu/impl/TimeZoneGenericNames;-><init>(Landroid/icu/util/ULocale;Landroid/icu/impl/TimeZoneGenericNames;)V

    #@6
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneGenericNames;->freeze()Landroid/icu/impl/TimeZoneGenericNames;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "data"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 893
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "key":Ljava/lang/Object;
    check-cast p2, Landroid/icu/util/ULocale;

    #@4
    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/TimeZoneGenericNames$Cache;->createInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/impl/TimeZoneGenericNames;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
