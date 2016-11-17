.class final Landroid/icu/text/TitlecaseTransliterator$1;
.super Ljava/lang/Object;
.source "TitlecaseTransliterator.java"

# interfaces
.implements Landroid/icu/text/Transliterator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/TitlecaseTransliterator;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;
    .locals 2
    .param p1, "ID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 30
    new-instance v0, Landroid/icu/text/TitlecaseTransliterator;

    #@2
    sget-object v1, Landroid/icu/util/ULocale;->US:Landroid/icu/util/ULocale;

    #@4
    invoke-direct {v0, v1}, Landroid/icu/text/TitlecaseTransliterator;-><init>(Landroid/icu/util/ULocale;)V

    #@7
    return-object v0
.end method
