.class public final Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;
.super Ljava/lang/Object;
.source "CurrencyData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CurrencyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrencySpacingInfo"
.end annotation


# static fields
.field public static final DEFAULT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

.field private static final DEFAULT_CTX_MATCH:Ljava/lang/String; = "[:digit:]"

.field private static final DEFAULT_CUR_MATCH:Ljava/lang/String; = "[:letter:]"

.field private static final DEFAULT_INSERT:Ljava/lang/String; = " "


# instance fields
.field public final afterContextMatch:Ljava/lang/String;

.field public final afterCurrencyMatch:Ljava/lang/String;

.field public final afterInsert:Ljava/lang/String;

.field public final beforeContextMatch:Ljava/lang/String;

.field public final beforeCurrencyMatch:Ljava/lang/String;

.field public final beforeInsert:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    .line 66
    new-instance v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    #@2
    .line 67
    const-string/jumbo v1, "[:letter:]"

    #@5
    const-string/jumbo v2, "[:digit:]"

    #@8
    const-string/jumbo v3, " "

    #@b
    .line 68
    const-string/jumbo v4, "[:letter:]"

    #@e
    const-string/jumbo v5, "[:digit:]"

    #@11
    const-string/jumbo v6, " "

    #@14
    .line 66
    invoke-direct/range {v0 .. v6}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@17
    sput-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->DEFAULT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    #@19
    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "beforeCurrencyMatch"    # Ljava/lang/String;
    .param p2, "beforeContextMatch"    # Ljava/lang/String;
    .param p3, "beforeInsert"    # Ljava/lang/String;
    .param p4, "afterCurrencyMatch"    # Ljava/lang/String;
    .param p5, "afterContextMatch"    # Ljava/lang/String;
    .param p6, "afterInsert"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    iput-object p1, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->beforeCurrencyMatch:Ljava/lang/String;

    #@5
    .line 54
    iput-object p2, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->beforeContextMatch:Ljava/lang/String;

    #@7
    .line 55
    iput-object p3, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->beforeInsert:Ljava/lang/String;

    #@9
    .line 56
    iput-object p4, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->afterCurrencyMatch:Ljava/lang/String;

    #@b
    .line 57
    iput-object p5, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->afterContextMatch:Ljava/lang/String;

    #@d
    .line 58
    iput-object p6, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->afterInsert:Ljava/lang/String;

    #@f
    .line 52
    return-void
.end method
