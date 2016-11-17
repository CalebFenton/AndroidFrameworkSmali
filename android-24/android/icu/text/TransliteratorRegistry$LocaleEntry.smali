.class Landroid/icu/text/TransliteratorRegistry$LocaleEntry;
.super Ljava/lang/Object;
.source "TransliteratorRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocaleEntry"
.end annotation


# instance fields
.field public direction:I

.field public rule:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "r"    # Ljava/lang/String;
    .param p2, "d"    # I

    #@0
    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 235
    iput-object p1, p0, Landroid/icu/text/TransliteratorRegistry$LocaleEntry;->rule:Ljava/lang/String;

    #@5
    .line 236
    iput p2, p0, Landroid/icu/text/TransliteratorRegistry$LocaleEntry;->direction:I

    #@7
    .line 234
    return-void
.end method
