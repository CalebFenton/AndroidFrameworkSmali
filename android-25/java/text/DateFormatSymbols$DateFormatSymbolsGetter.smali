.class Ljava/text/DateFormatSymbols$DateFormatSymbolsGetter;
.super Ljava/lang/Object;
.source "DateFormatSymbols.java"

# interfaces
.implements Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/DateFormatSymbols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateFormatSymbolsGetter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter",
        "<",
        "Ljava/text/spi/DateFormatSymbolsProvider;",
        "Ljava/text/DateFormatSymbols;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final INSTANCE:Ljava/text/DateFormatSymbols$DateFormatSymbolsGetter;


# direct methods
.method static synthetic -get0()Ljava/text/DateFormatSymbols$DateFormatSymbolsGetter;
    .locals 1

    #@0
    sget-object v0, Ljava/text/DateFormatSymbols$DateFormatSymbolsGetter;->INSTANCE:Ljava/text/DateFormatSymbols$DateFormatSymbolsGetter;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/text/DateFormatSymbols$DateFormatSymbolsGetter;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/text/DateFormatSymbols$DateFormatSymbolsGetter;->-assertionsDisabled:Z

    #@b
    .line 972
    new-instance v0, Ljava/text/DateFormatSymbols$DateFormatSymbolsGetter;

    #@d
    invoke-direct {v0}, Ljava/text/DateFormatSymbols$DateFormatSymbolsGetter;-><init>()V

    #@10
    .line 971
    sput-object v0, Ljava/text/DateFormatSymbols$DateFormatSymbolsGetter;->INSTANCE:Ljava/text/DateFormatSymbols$DateFormatSymbolsGetter;

    #@12
    .line 968
    return-void

    #@13
    :cond_0
    const/4 v0, 0x1

    #@14
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic getObject(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "dateFormatSymbolsProvider"    # Ljava/lang/Object;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 974
    check-cast p1, Ljava/text/spi/DateFormatSymbolsProvider;

    #@2
    .end local p1    # "dateFormatSymbolsProvider":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/text/DateFormatSymbols$DateFormatSymbolsGetter;->getObject(Ljava/text/spi/DateFormatSymbolsProvider;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/text/DateFormatSymbols;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public varargs getObject(Ljava/text/spi/DateFormatSymbolsProvider;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/text/DateFormatSymbols;
    .locals 2
    .param p1, "dateFormatSymbolsProvider"    # Ljava/text/spi/DateFormatSymbolsProvider;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 978
    sget-boolean v1, Ljava/text/DateFormatSymbols$DateFormatSymbolsGetter;->-assertionsDisabled:Z

    #@3
    if-nez v1, :cond_1

    #@5
    array-length v1, p4

    #@6
    if-nez v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    if-nez v0, :cond_1

    #@b
    new-instance v0, Ljava/lang/AssertionError;

    #@d
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@10
    throw v0

    #@11
    .line 979
    :cond_1
    invoke-virtual {p1, p2}, Ljava/text/spi/DateFormatSymbolsProvider;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method
