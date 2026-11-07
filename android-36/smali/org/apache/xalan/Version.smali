.class public Lorg/apache/xalan/Version;
.super Ljava/lang/Object;
.source "Version.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist getDevelopmentVersionNum()I
    .registers 3

    .line 145
    const-string v0, ""

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 148
    :cond_f
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_13} :catch_14

    return v0

    :catch_14
    return v1
.end method

.method public static greylist getImplementationLanguage()Ljava/lang/String;
    .registers 1

    .line 77
    const-string v0, "Java"

    return-object v0
.end method

.method public static greylist getMaintenanceVersionNum()I
    .registers 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public static greylist getMajorVersionNum()I
    .registers 1

    .line 0
    const/4 v0, 0x2

    return v0
.end method

.method public static greylist getProduct()Ljava/lang/String;
    .registers 1

    .line 69
    const-string v0, "Xalan"

    return-object v0
.end method

.method public static greylist getReleaseVersionNum()I
    .registers 1

    .line 0
    const/4 v0, 0x7

    return v0
.end method

.method public static greylist getVersion()Ljava/lang/String;
    .registers 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/xalan/Version;->getProduct()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/apache/xalan/Version;->getImplementationLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-static {}, Lorg/apache/xalan/Version;->getMajorVersionNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/apache/xalan/Version;->getReleaseVersionNum()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-static {}, Lorg/apache/xalan/Version;->getDevelopmentVersionNum()I

    move-result v1

    if-lez v1, :cond_4d

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "D"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/apache/xalan/Version;->getDevelopmentVersionNum()I

    move-result v2

    :goto_45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5c

    :cond_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/apache/xalan/Version;->getMaintenanceVersionNum()I

    move-result v2

    goto :goto_45

    :goto_5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist main([Ljava/lang/String;)V
    .registers 2

    .line 61
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lorg/apache/xalan/Version;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
