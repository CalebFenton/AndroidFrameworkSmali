.class Landroid/icu/message2/IdentityFormatterFactory$IdentityFormatterImpl;
.super Ljava/lang/Object;
.source "IdentityFormatterFactory.java"

# interfaces
.implements Landroid/icu/message2/Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/message2/IdentityFormatterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdentityFormatterImpl"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/message2/IdentityFormatterFactory-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/message2/IdentityFormatterFactory$IdentityFormatterImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist format(Ljava/lang/Object;Ljava/util/Map;)Landroid/icu/message2/FormattedPlaceholder;
    .registers 6
    .param p1, "toFormat"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/icu/message2/FormattedPlaceholder;"
        }
    .end annotation

    .line 29
    .local p2, "variableOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/icu/message2/FormattedPlaceholder;

    new-instance v1, Landroid/icu/message2/PlainStringFormattedValue;

    .line 30
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/message2/PlainStringFormattedValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Landroid/icu/message2/FormattedPlaceholder;-><init>(Ljava/lang/Object;Landroid/icu/text/FormattedValue;)V

    .line 29
    return-object v0
.end method

.method public blacklist formatToString(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .param p1, "toFormat"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 38
    .local p2, "variableOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Landroid/icu/message2/IdentityFormatterFactory$IdentityFormatterImpl;->format(Ljava/lang/Object;Ljava/util/Map;)Landroid/icu/message2/FormattedPlaceholder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/message2/FormattedPlaceholder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
