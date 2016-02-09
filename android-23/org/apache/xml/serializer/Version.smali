.class public final Lorg/apache/xml/serializer/Version;
.super Ljava/lang/Object;
.source "Version.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getDevelopmentVersionNum()I
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 142
    :try_start_0
    new-instance v1, Ljava/lang/String;

    #@3
    const-string/jumbo v2, ""

    #@6
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 143
    return v3

    #@10
    .line 145
    :cond_0
    const-string/jumbo v1, ""

    #@13
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 146
    :catch_0
    move-exception v0

    #@19
    .line 147
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return v3
.end method

.method public static getImplementationLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 74
    const-string/jumbo v0, "Java"

    #@3
    return-object v0
.end method

.method public static getMaintenanceVersionNum()I
    .locals 1

    #@0
    .prologue
    .line 119
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public static getMajorVersionNum()I
    .locals 1

    #@0
    .prologue
    .line 91
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method public static getProduct()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 66
    const-string/jumbo v0, "Serializer"

    #@3
    return-object v0
.end method

.method public static getReleaseVersionNum()I
    .locals 1

    #@0
    .prologue
    .line 105
    const/4 v0, 0x7

    #@1
    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {}, Lorg/apache/xml/serializer/Version;->getProduct()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, " "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-static {}, Lorg/apache/xml/serializer/Version;->getImplementationLanguage()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string/jumbo v1, " "

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 46
    invoke-static {}, Lorg/apache/xml/serializer/Version;->getMajorVersionNum()I

    #@26
    move-result v1

    #@27
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 46
    const-string/jumbo v1, "."

    #@2e
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 46
    invoke-static {}, Lorg/apache/xml/serializer/Version;->getReleaseVersionNum()I

    #@35
    move-result v1

    #@36
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 46
    const-string/jumbo v1, "."

    #@3d
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    .line 47
    invoke-static {}, Lorg/apache/xml/serializer/Version;->getDevelopmentVersionNum()I

    #@44
    move-result v0

    #@45
    if-lez v0, :cond_0

    #@47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v2, "D"

    #@4f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    invoke-static {}, Lorg/apache/xml/serializer/Version;->getDevelopmentVersionNum()I

    #@56
    move-result v2

    #@57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    .line 45
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v0

    #@67
    return-object v0

    #@68
    .line 48
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v2, ""

    #@70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    invoke-static {}, Lorg/apache/xml/serializer/Version;->getMaintenanceVersionNum()I

    #@77
    move-result v2

    #@78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v0

    #@7c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v0

    #@80
    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "argv"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 58
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    invoke-static {}, Lorg/apache/xml/serializer/Version;->getVersion()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9
    .line 56
    return-void
.end method
