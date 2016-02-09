.class public Landroid/text/style/TtsSpan$OrdinalBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrdinalBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder",
        "<",
        "Landroid/text/style/TtsSpan$OrdinalBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 739
    const-string/jumbo v0, "android.type.ordinal"

    #@3
    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    #@6
    .line 738
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "number"    # J

    #@0
    .prologue
    .line 749
    invoke-direct {p0}, Landroid/text/style/TtsSpan$OrdinalBuilder;-><init>()V

    #@3
    .line 750
    invoke-virtual {p0, p1, p2}, Landroid/text/style/TtsSpan$OrdinalBuilder;->setNumber(J)Landroid/text/style/TtsSpan$OrdinalBuilder;

    #@6
    .line 748
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 760
    invoke-direct {p0}, Landroid/text/style/TtsSpan$OrdinalBuilder;-><init>()V

    #@3
    .line 761
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$OrdinalBuilder;->setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$OrdinalBuilder;

    #@6
    .line 759
    return-void
.end method


# virtual methods
.method public setNumber(J)Landroid/text/style/TtsSpan$OrdinalBuilder;
    .locals 1
    .param p1, "number"    # J

    #@0
    .prologue
    .line 771
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$OrdinalBuilder;->setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$OrdinalBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$OrdinalBuilder;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 781
    const-string/jumbo v0, "android.arg.number"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$OrdinalBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$OrdinalBuilder;

    #@9
    return-object v0
.end method
