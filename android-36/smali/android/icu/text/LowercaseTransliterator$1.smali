.class Landroid/icu/text/LowercaseTransliterator$1;
.super Ljava/lang/Object;
.source "LowercaseTransliterator.java"

# interfaces
.implements Landroid/icu/text/Transliterator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/LowercaseTransliterator;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;
    .registers 4
    .param p1, "ID"    # Ljava/lang/String;

    .line 36
    new-instance v0, Landroid/icu/text/LowercaseTransliterator;

    sget-object v1, Landroid/icu/util/ULocale;->US:Landroid/icu/util/ULocale;

    invoke-direct {v0, v1}, Landroid/icu/text/LowercaseTransliterator;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method
