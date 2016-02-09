.class public Landroid/text/style/TtsSpan$ElectronicBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElectronicBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder",
        "<",
        "Landroid/text/style/TtsSpan$ElectronicBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1340
    const-string/jumbo v0, "android.type.electronic"

    #@3
    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    #@6
    .line 1339
    return-void
.end method


# virtual methods
.method public setDomain(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1387
    const-string/jumbo v0, "android.arg.domain"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    #@9
    return-object v0
.end method

.method public setEmailArguments(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1352
    invoke-virtual {p0, p2}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setDomain(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setUsername(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setFragmentId(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1
    .param p1, "fragmentId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1421
    const-string/jumbo v0, "android.arg.fragment_id"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    #@9
    return-object v0
.end method

.method public setPassword(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1378
    const-string/jumbo v0, "android.arg.password"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    #@9
    return-object v0
.end method

.method public setPath(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1404
    const-string/jumbo v0, "android.arg.path"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    #@9
    return-object v0
.end method

.method public setPort(I)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1
    .param p1, "port"    # I

    #@0
    .prologue
    .line 1395
    const-string/jumbo v0, "android.arg.port"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    #@9
    return-object v0
.end method

.method public setProtocol(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1362
    const-string/jumbo v0, "android.arg.protocol"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    #@9
    return-object v0
.end method

.method public setQueryString(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1
    .param p1, "queryString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1413
    const-string/jumbo v0, "android.arg.query_string"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    #@9
    return-object v0
.end method

.method public setUsername(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1370
    const-string/jumbo v0, "android.arg.username"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    #@9
    return-object v0
.end method
