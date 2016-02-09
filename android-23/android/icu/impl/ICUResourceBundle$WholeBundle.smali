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
.field baseName:Ljava/lang/String;

.field loader:Ljava/lang/ClassLoader;

.field localeID:Ljava/lang/String;

.field reader:Landroid/icu/impl/ICUResourceBundleReader;

.field topLevelKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ulocale:Landroid/icu/util/ULocale;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundleReader;)V
    .locals 1
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "localeID"    # Ljava/lang/String;
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .param p4, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;

    #@0
    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 150
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    #@5
    .line 151
    iput-object p2, p0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->localeID:Ljava/lang/String;

    #@7
    .line 152
    new-instance v0, Landroid/icu/util/ULocale;

    #@9
    invoke-direct {v0, p2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@c
    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->ulocale:Landroid/icu/util/ULocale;

    #@e
    .line 153
    iput-object p3, p0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->loader:Ljava/lang/ClassLoader;

    #@10
    .line 154
    iput-object p4, p0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@12
    .line 149
    return-void
.end method
