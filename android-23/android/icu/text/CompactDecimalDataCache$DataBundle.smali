.class Landroid/icu/text/CompactDecimalDataCache$DataBundle;
.super Ljava/lang/Object;
.source "CompactDecimalDataCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CompactDecimalDataCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DataBundle"
.end annotation


# instance fields
.field longData:Landroid/icu/text/CompactDecimalDataCache$Data;

.field shortData:Landroid/icu/text/CompactDecimalDataCache$Data;


# direct methods
.method constructor <init>(Landroid/icu/text/CompactDecimalDataCache$Data;Landroid/icu/text/CompactDecimalDataCache$Data;)V
    .locals 0
    .param p1, "shortData"    # Landroid/icu/text/CompactDecimalDataCache$Data;
    .param p2, "longData"    # Landroid/icu/text/CompactDecimalDataCache$Data;

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 85
    iput-object p1, p0, Landroid/icu/text/CompactDecimalDataCache$DataBundle;->shortData:Landroid/icu/text/CompactDecimalDataCache$Data;

    #@5
    .line 86
    iput-object p2, p0, Landroid/icu/text/CompactDecimalDataCache$DataBundle;->longData:Landroid/icu/text/CompactDecimalDataCache$Data;

    #@7
    .line 84
    return-void
.end method
