.class Landroid/icu/text/CompactDecimalDataCache$Data;
.super Ljava/lang/Object;
.source "CompactDecimalDataCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CompactDecimalDataCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Data"
.end annotation


# instance fields
.field divisors:[J

.field units:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/icu/text/DecimalFormat$Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([JLjava/util/Map;)V
    .locals 0
    .param p1, "divisors"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/icu/text/DecimalFormat$Unit;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 68
    .local p2, "units":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Lcom/ibm/icu/text/DecimalFormat$Unit;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    iput-object p1, p0, Landroid/icu/text/CompactDecimalDataCache$Data;->divisors:[J

    #@5
    .line 70
    iput-object p2, p0, Landroid/icu/text/CompactDecimalDataCache$Data;->units:Ljava/util/Map;

    #@7
    .line 68
    return-void
.end method
