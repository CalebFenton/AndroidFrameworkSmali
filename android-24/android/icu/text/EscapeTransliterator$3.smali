.class final Landroid/icu/text/EscapeTransliterator$3;
.super Ljava/lang/Object;
.source "EscapeTransliterator.java"

# interfaces
.implements Landroid/icu/text/Transliterator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/EscapeTransliterator;->register()V
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
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;
    .locals 12
    .param p1, "ID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 101
    new-instance v9, Landroid/icu/text/EscapeTransliterator;

    #@2
    const-string/jumbo v8, "Any-Hex/C"

    #@5
    .line 102
    const-string/jumbo v10, "\\u"

    #@8
    const-string/jumbo v11, ""

    #@b
    .line 103
    new-instance v0, Landroid/icu/text/EscapeTransliterator;

    #@d
    const-string/jumbo v1, ""

    #@10
    const-string/jumbo v2, "\\U"

    #@13
    const-string/jumbo v3, ""

    #@16
    const/16 v4, 0x10

    #@18
    const/16 v5, 0x8

    #@1a
    const/4 v6, 0x1

    #@1b
    const/4 v7, 0x0

    #@1c
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/EscapeTransliterator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLandroid/icu/text/EscapeTransliterator;)V

    #@1f
    .line 102
    const/16 v5, 0x10

    #@21
    const/4 v6, 0x4

    #@22
    const/4 v7, 0x1

    #@23
    move-object v1, v9

    #@24
    move-object v2, v8

    #@25
    move-object v3, v10

    #@26
    move-object v4, v11

    #@27
    move-object v8, v0

    #@28
    .line 101
    invoke-direct/range {v1 .. v8}, Landroid/icu/text/EscapeTransliterator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLandroid/icu/text/EscapeTransliterator;)V

    #@2b
    return-object v9
.end method
