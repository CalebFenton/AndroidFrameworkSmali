.class Ljava/util/Locale$Cache;
.super Lsun/util/locale/LocaleObjectCache;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/util/locale/LocaleObjectCache",
        "<",
        "Ljava/util/Locale$LocaleKey;",
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 755
    invoke-direct {p0}, Lsun/util/locale/LocaleObjectCache;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Locale$Cache;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/util/Locale$Cache;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected bridge synthetic createObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 759
    check-cast p1, Ljava/util/Locale$LocaleKey;

    #@2
    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Locale$Cache;->createObject(Ljava/util/Locale$LocaleKey;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected createObject(Ljava/util/Locale$LocaleKey;)Ljava/util/Locale;
    .locals 4
    .param p1, "key"    # Ljava/util/Locale$LocaleKey;

    #@0
    .prologue
    .line 760
    new-instance v0, Ljava/util/Locale;

    #@2
    invoke-static {p1}, Ljava/util/Locale$LocaleKey;->-get0(Ljava/util/Locale$LocaleKey;)Lsun/util/locale/BaseLocale;

    #@5
    move-result-object v1

    #@6
    invoke-static {p1}, Ljava/util/Locale$LocaleKey;->-get1(Ljava/util/Locale$LocaleKey;)Lsun/util/locale/LocaleExtensions;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;Ljava/util/Locale;)V

    #@e
    return-object v0
.end method
