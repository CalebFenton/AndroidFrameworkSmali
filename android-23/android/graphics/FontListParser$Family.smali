.class public Landroid/graphics/FontListParser$Family;
.super Ljava/lang/Object;
.source "FontListParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/FontListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Family"
.end annotation


# instance fields
.field public fonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListParser$Font;",
            ">;"
        }
    .end annotation
.end field

.field public lang:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public variant:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "lang"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListParser$Font;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 63
    .local p2, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Font;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    iput-object p1, p0, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    #@5
    .line 65
    iput-object p2, p0, Landroid/graphics/FontListParser$Family;->fonts:Ljava/util/List;

    #@7
    .line 66
    iput-object p3, p0, Landroid/graphics/FontListParser$Family;->lang:Ljava/lang/String;

    #@9
    .line 67
    iput-object p4, p0, Landroid/graphics/FontListParser$Family;->variant:Ljava/lang/String;

    #@b
    .line 63
    return-void
.end method
