.class Landroid/icu/text/EscapeTransliterator$3;
.super Ljava/lang/Object;
.source "EscapeTransliterator.java"

# interfaces
.implements Landroid/icu/text/Transliterator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/EscapeTransliterator;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;
    .registers 11
    .param p1, "ID"    # Ljava/lang/String;

    .line 106
    new-instance v0, Landroid/icu/text/EscapeTransliterator;

    new-instance v1, Landroid/icu/text/EscapeTransliterator;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v2, ""

    const-string v3, "\\U"

    const-string v4, ""

    const/16 v5, 0x10

    const/16 v6, 0x8

    invoke-direct/range {v1 .. v8}, Landroid/icu/text/EscapeTransliterator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLandroid/icu/text/EscapeTransliterator;)V

    const-string v2, "Any-Hex/C"

    move-object v7, v1

    move-object v1, v2

    const-string v2, "\\u"

    const-string v3, ""

    const/16 v4, 0x10

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/EscapeTransliterator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLandroid/icu/text/EscapeTransliterator;)V

    return-object v0
.end method
