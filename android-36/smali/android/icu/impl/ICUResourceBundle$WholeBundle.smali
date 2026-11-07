.class public final Landroid/icu/impl/ICUResourceBundle$WholeBundle;
.super Ljava/lang/Object;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "WholeBundle"
.end annotation


# instance fields
.field greylist-max-o baseName:Ljava/lang/String;

.field greylist-max-o loader:Ljava/lang/ClassLoader;

.field greylist-max-o localeID:Ljava/lang/String;

.field greylist-max-o reader:Landroid/icu/impl/ICUResourceBundleReader;

.field greylist-max-o topLevelKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o ulocale:Landroid/icu/util/ULocale;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundleReader;)V
    .registers 6
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "localeID"    # Ljava/lang/String;
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .param p4, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->localeID:Ljava/lang/String;

    .line 66
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->ulocale:Landroid/icu/util/ULocale;

    .line 67
    iput-object p3, p0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->loader:Ljava/lang/ClassLoader;

    .line 68
    iput-object p4, p0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    .line 69
    return-void
.end method
