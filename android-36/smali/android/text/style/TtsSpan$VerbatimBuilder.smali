.class public Landroid/text/style/TtsSpan$VerbatimBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerbatimBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "Landroid/text/style/TtsSpan$VerbatimBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 1557
    const-string v0, "android.type.verbatim"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 1558
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "verbatim"    # Ljava/lang/String;

    .line 1565
    invoke-direct {p0}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>()V

    .line 1566
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$VerbatimBuilder;->setVerbatim(Ljava/lang/String;)Landroid/text/style/TtsSpan$VerbatimBuilder;

    .line 1567
    return-void
.end method


# virtual methods
.method public whitelist setVerbatim(Ljava/lang/String;)Landroid/text/style/TtsSpan$VerbatimBuilder;
    .registers 3
    .param p1, "verbatim"    # Ljava/lang/String;

    .line 1576
    const-string v0, "android.arg.verbatim"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$VerbatimBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$VerbatimBuilder;

    return-object v0
.end method
