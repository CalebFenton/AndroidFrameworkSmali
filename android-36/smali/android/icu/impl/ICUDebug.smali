.class public final Landroid/icu/impl/ICUDebug;
.super Ljava/lang/Object;
.source "ICUDebug.java"


# static fields
.field private static blacklist debug:Z

.field private static blacklist help:Z

.field private static blacklist params:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 19
    :try_start_0
    const-string v0, "ICUDebug"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_8} :catch_9

    .line 22
    goto :goto_a

    .line 21
    :catch_9
    move-exception v0

    .line 24
    :goto_a
    sget-object v0, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    sput-boolean v0, Landroid/icu/impl/ICUDebug;->debug:Z

    .line 25
    sget-boolean v0, Landroid/icu/impl/ICUDebug;->debug:Z

    if-eqz v0, :cond_2f

    sget-object v0, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    sget-object v0, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    const-string v3, "help"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2f

    :cond_2e
    goto :goto_30

    :cond_2f
    move v1, v2

    :goto_30
    sput-boolean v1, Landroid/icu/impl/ICUDebug;->help:Z

    .line 28
    sget-boolean v0, Landroid/icu/impl/ICUDebug;->debug:Z

    if-eqz v0, :cond_50

    .line 29
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nICUDebug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    :cond_50
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist enabled()Z
    .registers 1

    .line 34
    sget-boolean v0, Landroid/icu/impl/ICUDebug;->debug:Z

    return v0
.end method

.method public static blacklist enabled(Ljava/lang/String;)Z
    .registers 5
    .param p0, "arg"    # Ljava/lang/String;

    .line 38
    sget-boolean v0, Landroid/icu/impl/ICUDebug;->debug:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 39
    sget-object v0, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_f

    const/4 v1, 0x1

    .line 40
    .local v1, "result":Z
    :cond_f
    sget-boolean v0, Landroid/icu/impl/ICUDebug;->help:Z

    if-eqz v0, :cond_35

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nICUDebug.enabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    :cond_35
    return v1

    .line 43
    .end local v1    # "result":Z
    :cond_36
    return v1
.end method

.method public static blacklist value(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "arg"    # Ljava/lang/String;

    .line 47
    const-string v0, "false"

    .line 48
    .local v0, "result":Ljava/lang/String;
    sget-boolean v1, Landroid/icu/impl/ICUDebug;->debug:Z

    if-eqz v1, :cond_69

    .line 49
    sget-object v1, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 50
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_43

    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 52
    sget-object v3, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_41

    sget-object v3, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_41

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    sget-object v3, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 55
    .local v3, "limit":I
    sget-object v4, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    if-ne v3, v2, :cond_3b

    sget-object v2, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_3c

    :cond_3b
    move v2, v3

    :goto_3c
    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 56
    .end local v3    # "limit":I
    goto :goto_43

    .line 57
    :cond_41
    const-string v0, "true"

    .line 61
    :cond_43
    :goto_43
    sget-boolean v2, Landroid/icu/impl/ICUDebug;->help:Z

    if-eqz v2, :cond_69

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nICUDebug.value("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    .end local v1    # "index":I
    :cond_69
    return-object v0
.end method
