.class Landroid/icu/text/TransliteratorRegistry$ResourceEntry;
.super Ljava/lang/Object;
.source "TransliteratorRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResourceEntry"
.end annotation


# instance fields
.field public direction:I

.field public encoding:Ljava/lang/String;

.field public resource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "n"    # Ljava/lang/String;
    .param p2, "enc"    # Ljava/lang/String;
    .param p3, "d"    # I

    #@0
    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 224
    iput-object p1, p0, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;->resource:Ljava/lang/String;

    #@5
    .line 225
    iput-object p2, p0, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;->encoding:Ljava/lang/String;

    #@7
    .line 226
    iput p3, p0, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;->direction:I

    #@9
    .line 223
    return-void
.end method
