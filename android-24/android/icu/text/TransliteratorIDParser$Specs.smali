.class Landroid/icu/text/TransliteratorIDParser$Specs;
.super Ljava/lang/Object;
.source "TransliteratorIDParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorIDParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Specs"
.end annotation


# instance fields
.field public filter:Ljava/lang/String;

.field public sawSource:Z

.field public source:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public variant:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/String;
    .param p3, "v"    # Ljava/lang/String;
    .param p4, "sawS"    # Z
    .param p5, "f"    # Ljava/lang/String;

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 89
    iput-object p1, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->source:Ljava/lang/String;

    #@5
    .line 90
    iput-object p2, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->target:Ljava/lang/String;

    #@7
    .line 91
    iput-object p3, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->variant:Ljava/lang/String;

    #@9
    .line 92
    iput-boolean p4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->sawSource:Z

    #@b
    .line 93
    iput-object p5, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    #@d
    .line 88
    return-void
.end method
