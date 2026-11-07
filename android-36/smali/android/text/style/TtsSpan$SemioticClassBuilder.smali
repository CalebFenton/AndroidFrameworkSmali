.class public Landroid/text/style/TtsSpan$SemioticClassBuilder;
.super Landroid/text/style/TtsSpan$Builder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemioticClassBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "*>;>",
        "Landroid/text/style/TtsSpan$Builder<",
        "TC;>;"
    }
.end annotation


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .line 621
    .local p0, "this":Landroid/text/style/TtsSpan$SemioticClassBuilder;, "Landroid/text/style/TtsSpan$SemioticClassBuilder<TC;>;"
    invoke-direct {p0, p1}, Landroid/text/style/TtsSpan$Builder;-><init>(Ljava/lang/String;)V

    .line 622
    return-void
.end method


# virtual methods
.method public whitelist setAnimacy(Ljava/lang/String;)Landroid/text/style/TtsSpan$SemioticClassBuilder;
    .registers 3
    .param p1, "animacy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation

    .line 641
    .local p0, "this":Landroid/text/style/TtsSpan$SemioticClassBuilder;, "Landroid/text/style/TtsSpan$SemioticClassBuilder<TC;>;"
    const-string v0, "android.arg.animacy"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$SemioticClassBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$SemioticClassBuilder;

    return-object v0
.end method

.method public whitelist setCase(Ljava/lang/String;)Landroid/text/style/TtsSpan$SemioticClassBuilder;
    .registers 3
    .param p1, "grammaticalCase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation

    .line 665
    .local p0, "this":Landroid/text/style/TtsSpan$SemioticClassBuilder;, "Landroid/text/style/TtsSpan$SemioticClassBuilder<TC;>;"
    const-string v0, "android.arg.case"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$SemioticClassBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$SemioticClassBuilder;

    return-object v0
.end method

.method public whitelist setGender(Ljava/lang/String;)Landroid/text/style/TtsSpan$SemioticClassBuilder;
    .registers 3
    .param p1, "gender"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation

    .line 631
    .local p0, "this":Landroid/text/style/TtsSpan$SemioticClassBuilder;, "Landroid/text/style/TtsSpan$SemioticClassBuilder<TC;>;"
    const-string v0, "android.arg.gender"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$SemioticClassBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$SemioticClassBuilder;

    return-object v0
.end method

.method public whitelist setMultiplicity(Ljava/lang/String;)Landroid/text/style/TtsSpan$SemioticClassBuilder;
    .registers 3
    .param p1, "multiplicity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation

    .line 652
    .local p0, "this":Landroid/text/style/TtsSpan$SemioticClassBuilder;, "Landroid/text/style/TtsSpan$SemioticClassBuilder<TC;>;"
    const-string v0, "android.arg.multiplicity"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$SemioticClassBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$SemioticClassBuilder;

    return-object v0
.end method
