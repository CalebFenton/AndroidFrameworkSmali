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
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getRules(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "localeID"    # Ljava/lang/String;
    .param p2, "collationType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 32
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    invoke-direct {v0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@5
    invoke-static {v0, p2}, Landroid/icu/impl/coll/CollationLoader;->loadRules(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method
