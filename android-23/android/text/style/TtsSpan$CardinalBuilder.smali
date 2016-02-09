.class public Landroid/text/style/TtsSpan$CardinalBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardinalBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder",
        "<",
        "Landroid/text/style/TtsSpan$CardinalBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 683
    const-string/jumbo v0, "android.type.cardinal"

    #@3
    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    #@6
    .line 682
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "number"    # J

    #@0
    .prologue
    .line 693
    invoke-direct {p0}, Landroid/text/style/TtsSpan$CardinalBuilder;-><init>()V

    #@3
    .line 694
    invoke-virtual {p0, p1, p2}, Landroid/text/style/TtsSpan$CardinalBuilder;->setNumber(J)Landroid/text/style/TtsSpan$CardinalBuilder;

    #@6
    .line 692
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 704
    invoke-direct {p0}, Landroid/text/style/TtsSpan$CardinalBuilder;-><init>()V

    #@3
    .line 705
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$CardinalBuilder;->setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$CardinalBuilder;

    #@6
    .line 703
    return-void
.end method


# virtual methods
.method public setNumber(J)Landroid/text/style/TtsSpan$CardinalBuilder;
    .locals 1
    .param p1, "number"    # J

    #@0
    .prologue
    .line 715
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$CardinalBuilder;->setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$CardinalBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$CardinalBuilder;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 725
    const-string/jumbo v0, "android.arg.number"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$CardinalBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$CardinalBuilder;

    #@9
    return-object v0
.end method
