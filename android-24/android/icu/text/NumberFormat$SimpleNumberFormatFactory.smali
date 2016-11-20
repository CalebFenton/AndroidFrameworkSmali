.class public abstract Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;
.super Landroid/icu/text/NumberFormat$NumberFormatFactory;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/NumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleNumberFormatFactory"
.end annotation


# instance fields
.field final localeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final visible:Z


# direct methods
.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 838
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;-><init>(Landroid/icu/util/ULocale;Z)V

    #@4
    .line 837
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Z)V
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "visible"    # Z

    #@0
    .prologue
    .line 845
    invoke-direct {p0}, Landroid/icu/text/NumberFormat$NumberFormatFactory;-><init>()V

    #@3
    .line 846
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;->localeNames:Ljava/util/Set;

    #@d
    .line 847
    iput-boolean p2, p0, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;->visible:Z

    #@f
    .line 845
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 822
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;-><init>(Ljava/util/Locale;Z)V

    #@4
    .line 821
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Z)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "visible"    # Z

    #@0
    .prologue
    .line 829
    invoke-direct {p0}, Landroid/icu/text/NumberFormat$NumberFormatFactory;-><init>()V

    #@3
    .line 830
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;->localeNames:Ljava/util/Set;

    #@11
    .line 831
    iput-boolean p2, p0, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;->visible:Z

    #@13
    .line 829
    return-void
.end method


# virtual methods
.method public final getSupportedLocaleNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 863
    iget-object v0, p0, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;->localeNames:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public final visible()Z
    .locals 1

    #@0
    .prologue
    .line 855
    iget-boolean v0, p0, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;->visible:Z

    #@2
    return v0
.end method
