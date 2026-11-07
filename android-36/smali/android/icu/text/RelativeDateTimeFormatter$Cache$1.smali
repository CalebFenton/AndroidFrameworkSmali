.class Landroid/icu/text/RelativeDateTimeFormatter$Cache$1;
.super Landroid/icu/impl/SoftCache;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter$Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;",
        "Landroid/icu/util/ULocale;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/icu/text/RelativeDateTimeFormatter$Cache;)V
    .registers 2
    .param p1, "this$0"    # Landroid/icu/text/RelativeDateTimeFormatter$Cache;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1117
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 1120
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Loader;

    invoke-direct {v0, p2}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;-><init>(Landroid/icu/util/ULocale;)V

    invoke-virtual {v0}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->load()Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic blacklist createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1117
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/icu/util/ULocale;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/RelativeDateTimeFormatter$Cache$1;->createInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;

    move-result-object p1

    return-object p1
.end method
