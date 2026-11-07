.class Landroid/icu/impl/LocaleDisplayNamesImpl$LangDataTables;
.super Ljava/lang/Object;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LangDataTables"
.end annotation


# static fields
.field static final blacklist impl:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 727
    const-string v0, "android.icu.impl.ICULangDataTables"

    invoke-static {v0}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;->load(Ljava/lang/String;)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$LangDataTables;->impl:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
