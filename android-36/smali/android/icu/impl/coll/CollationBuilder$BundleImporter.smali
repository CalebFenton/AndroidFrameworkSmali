.class final Landroid/icu/impl/coll/CollationBuilder$BundleImporter;
.super Ljava/lang/Object;
.source "CollationBuilder.java"

# interfaces
.implements Landroid/icu/impl/coll/CollationRuleParser$Importer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BundleImporter"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getRules(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "localeID"    # Ljava/lang/String;
    .param p2, "collationType"    # Ljava/lang/String;

    .line 40
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p2}, Landroid/icu/impl/coll/CollationLoader;->loadRules(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
