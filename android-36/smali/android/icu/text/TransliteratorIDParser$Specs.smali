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
.field public blacklist filter:Ljava/lang/String;

.field public blacklist sawSource:Z

.field public blacklist source:Ljava/lang/String;

.field public blacklist target:Ljava/lang/String;

.field public blacklist variant:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/String;
    .param p3, "v"    # Ljava/lang/String;
    .param p4, "sawS"    # Z
    .param p5, "f"    # Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->source:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->target:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->variant:Ljava/lang/String;

    .line 94
    iput-boolean p4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->sawSource:Z

    .line 95
    iput-object p5, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    .line 96
    return-void
.end method
