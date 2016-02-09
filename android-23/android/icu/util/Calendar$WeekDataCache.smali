.class Landroid/icu/util/Calendar$WeekDataCache;
.super Landroid/icu/impl/SoftCache;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeekDataCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/icu/util/Calendar$WeekData;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 4859
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/Calendar$WeekDataCache;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/util/Calendar$WeekDataCache;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4866
    invoke-static {p1}, Landroid/icu/util/Calendar;->-wrap0(Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "data"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4865
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "key":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    #@4
    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/Calendar$WeekDataCache;->createInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
