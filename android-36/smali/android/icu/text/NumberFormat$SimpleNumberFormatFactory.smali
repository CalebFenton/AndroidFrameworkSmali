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
.field final greylist-max-o localeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o visible:Z


# direct methods
.method public constructor greylist-max-o <init>(Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 934
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;-><init>(Landroid/icu/util/ULocale;Z)V

    .line 935
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/icu/util/ULocale;Z)V
    .registers 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "visible"    # Z

    .line 941
    invoke-direct {p0}, Landroid/icu/text/NumberFormat$NumberFormatFactory;-><init>()V

    .line 942
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;->localeNames:Ljava/util/Set;

    .line 943
    iput-boolean p2, p0, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;->visible:Z

    .line 944
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 918
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;-><init>(Ljava/util/Locale;Z)V

    .line 919
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/Locale;Z)V
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "visible"    # Z

    .line 925
    invoke-direct {p0}, Landroid/icu/text/NumberFormat$NumberFormatFactory;-><init>()V

    .line 926
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;->localeNames:Ljava/util/Set;

    .line 927
    iput-boolean p2, p0, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;->visible:Z

    .line 928
    return-void
.end method


# virtual methods
.method public final greylist-max-o getSupportedLocaleNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 959
    iget-object v0, p0, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;->localeNames:Ljava/util/Set;

    return-object v0
.end method

.method public final greylist-max-o visible()Z
    .registers 2

    .line 951
    iget-boolean v0, p0, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;->visible:Z

    return v0
.end method
