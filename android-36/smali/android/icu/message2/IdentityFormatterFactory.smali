.class Landroid/icu/message2/IdentityFormatterFactory;
.super Ljava/lang/Object;
.source "IdentityFormatterFactory.java"

# interfaces
.implements Landroid/icu/message2/FormatterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/message2/IdentityFormatterFactory$IdentityFormatterImpl;
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFormatter(Ljava/util/Locale;Ljava/util/Map;)Landroid/icu/message2/Formatter;
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/icu/message2/Formatter;"
        }
    .end annotation

    .line 20
    .local p2, "fixedOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/icu/message2/IdentityFormatterFactory$IdentityFormatterImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/message2/IdentityFormatterFactory$IdentityFormatterImpl;-><init>(Landroid/icu/message2/IdentityFormatterFactory-IA;)V

    return-object v0
.end method
