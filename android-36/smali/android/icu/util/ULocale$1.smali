.class Landroid/icu/util/ULocale$1;
.super Landroid/icu/impl/SoftCache;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 109
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/ULocale$1;->createInstance(Ljava/lang/String;Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist createInstance(Ljava/lang/String;Ljava/lang/Void;)Ljava/lang/String;
    .registers 4
    .param p1, "tmpLocaleID"    # Ljava/lang/String;
    .param p2, "unused"    # Ljava/lang/Void;

    .line 112
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p1}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
