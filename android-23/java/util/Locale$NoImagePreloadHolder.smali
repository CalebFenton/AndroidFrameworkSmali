.class Ljava/util/Locale$NoImagePreloadHolder;
.super Ljava/lang/Object;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoImagePreloadHolder"
.end annotation


# static fields
.field private static defaultLocale:Ljava/util/Locale;


# direct methods
.method static synthetic -get0()Ljava/util/Locale;
    .locals 1

    #@0
    sget-object v0, Ljava/util/Locale$NoImagePreloadHolder;->defaultLocale:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0

    #@0
    sput-object p0, Ljava/util/Locale$NoImagePreloadHolder;->defaultLocale:Ljava/util/Locale;

    #@2
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 328
    invoke-static {}, Ljava/util/Locale;->getDefaultLocaleFromSystemProperties()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Ljava/util/Locale$NoImagePreloadHolder;->defaultLocale:Ljava/util/Locale;

    #@6
    .line 323
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
