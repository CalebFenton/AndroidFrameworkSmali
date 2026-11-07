.class public Landroid/util/PluralsMessageFormatter;
.super Ljava/lang/Object;
.source "PluralsMessageFormatter.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;
    .registers 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p2, "messageId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 42
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/icu/text/MessageFormat;

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
