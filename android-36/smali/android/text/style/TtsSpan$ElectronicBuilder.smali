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
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "Landroid/text/style/TtsSpan$ElectronicBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 1430
    const-string v0, "android.type.electronic"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 1431
    return-void
.end method


# virtual methods
.method public whitelist setDomain(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .registers 3
    .param p1, "domain"    # Ljava/lang/String;

    .line 1477
    const-string v0, "android.arg.domain"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    return-object v0
.end method

.method public whitelist setEmailArguments(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .registers 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    .line 1442
    invoke-virtual {p0, p2}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setDomain(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setUsername(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setFragmentId(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .registers 3
    .param p1, "fragmentId"    # Ljava/lang/String;

    .line 1511
    const-string v0, "android.arg.fragment_id"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    return-object v0
.end method

.method public whitelist setPassword(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .line 1468
    const-string v0, "android.arg.password"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    return-object v0
.end method

.method public whitelist setPath(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 1494
    const-string v0, "android.arg.path"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    return-object v0
.end method

.method public whitelist setPort(I)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .registers 3
    .param p1, "port"    # I

    .line 1485
    const-string v0, "android.arg.port"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    return-object v0
.end method

.method public whitelist setProtocol(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .registers 3
    .param p1, "protocol"    # Ljava/lang/String;

    .line 1452
    const-string v0, "android.arg.protocol"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    return-object v0
.end method

.method public whitelist setQueryString(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .registers 3
    .param p1, "queryString"    # Ljava/lang/String;

    .line 1503
    const-string v0, "android.arg.query_string"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    return-object v0
.end method

.method public whitelist setUsername(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .registers 3
    .param p1, "username"    # Ljava/lang/String;

    .line 1460
    const-string v0, "android.arg.username"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    return-object v0
.end method
