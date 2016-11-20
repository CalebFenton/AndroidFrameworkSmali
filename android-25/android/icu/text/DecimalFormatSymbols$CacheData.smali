.class Landroid/icu/text/DecimalFormatSymbols$CacheData;
.super Ljava/lang/Object;
.source "DecimalFormatSymbols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DecimalFormatSymbols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheData"
.end annotation


# instance fields
.field public final digits:[C

.field public final symbolsArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>([C[Ljava/lang/String;)V
    .locals 0
    .param p1, "digits"    # [C
    .param p2, "symbolsArray"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1342
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols$CacheData;->digits:[C

    #@5
    .line 1343
    iput-object p2, p0, Landroid/icu/text/DecimalFormatSymbols$CacheData;->symbolsArray:[Ljava/lang/String;

    #@7
    .line 1341
    return-void
.end method
