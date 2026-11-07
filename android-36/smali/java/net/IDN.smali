.class public final Ljava/net/IDN;
.super Ljava/lang/Object;
.source "IDN.java"


# static fields
.field public static final whitelist test-api ALLOW_UNASSIGNED:I = 0x1

.field public static final whitelist test-api USE_STD3_ASCII_RULES:I = 0x2


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o convertFullStop(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3
    .param p0, "input"    # Ljava/lang/StringBuffer;

    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 181
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/net/IDN;->isLabelSeperator(C)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 182
    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 180
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 185
    .end local v0    # "i":I
    :cond_19
    return-object p0
.end method

.method private static greylist-max-o isLabelSeperator(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 176
    const/16 v0, 0x3002

    if-eq p0, v0, :cond_11

    const v0, 0xff0e

    if-eq p0, v0, :cond_11

    const v0, 0xff61

    if-ne p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public static whitelist test-api toASCII(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "input"    # Ljava/lang/String;

    .line 138
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toASCII(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "flag"    # I

    .line 108
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/icu/text/ExtendedIDNA;->convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 109
    :catch_9
    move-exception v0

    .line 112
    .local v0, "e":Landroid/icu/text/StringPrepParseException;
    const-string v1, "."

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 113
    return-object p0

    .line 115
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid input to toASCII: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static whitelist test-api toUnicode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "input"    # Ljava/lang/String;

    .line 204
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toUnicode(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "flag"    # I

    .line 165
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/icu/text/ExtendedIDNA;->convertIDNToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v0}, Ljava/net/IDN;->convertFullStop(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 166
    :catch_d
    move-exception v0

    .line 169
    .local v0, "e":Landroid/icu/text/StringPrepParseException;
    return-object p0
.end method
