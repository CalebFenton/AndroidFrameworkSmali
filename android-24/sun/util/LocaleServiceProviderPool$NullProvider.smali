.class Lsun/util/LocaleServiceProviderPool$NullProvider;
.super Ljava/util/spi/LocaleServiceProvider;
.source "LocaleServiceProviderPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/LocaleServiceProviderPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullProvider"
.end annotation


# static fields
.field private static final INSTANCE:Lsun/util/LocaleServiceProviderPool$NullProvider;


# direct methods
.method static synthetic -get0()Lsun/util/LocaleServiceProviderPool$NullProvider;
    .locals 1

    #@0
    sget-object v0, Lsun/util/LocaleServiceProviderPool$NullProvider;->INSTANCE:Lsun/util/LocaleServiceProviderPool$NullProvider;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 520
    new-instance v0, Lsun/util/LocaleServiceProviderPool$NullProvider;

    #@2
    invoke-direct {v0}, Lsun/util/LocaleServiceProviderPool$NullProvider;-><init>()V

    #@5
    sput-object v0, Lsun/util/LocaleServiceProviderPool$NullProvider;->INSTANCE:Lsun/util/LocaleServiceProviderPool$NullProvider;

    #@7
    .line 519
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 519
    invoke-direct {p0}, Ljava/util/spi/LocaleServiceProvider;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    #@0
    .prologue
    .line 523
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Should not get called."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
