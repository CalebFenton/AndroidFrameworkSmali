.class public final Ljava/net/IDN;
.super Ljava/lang/Object;
.source "IDN.java"


# static fields
.field public static final ALLOW_UNASSIGNED:I = 0x1

.field public static final USE_STD3_ASCII_RULES:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static convertFullStop(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p0, "input"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 173
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    #@4
    move-result v1

    #@5
    if-ge v0, v1, :cond_1

    #@7
    .line 174
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    #@a
    move-result v1

    #@b
    invoke-static {v1}, Ljava/net/IDN;->isLabelSeperator(C)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 175
    const/16 v1, 0x2e

    #@13
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    #@16
    .line 173
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 178
    :cond_1
    return-object p0
.end method

.method private static isLabelSeperator(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 169
    const/16 v1, 0x3002

    #@3
    if-eq p0, v1, :cond_0

    #@5
    const v1, 0xff0e

    #@8
    if-ne p0, v1, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    const v1, 0xff61

    #@e
    if-eq p0, v1, :cond_0

    #@10
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public static toASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    #@0
    .prologue
    .line 134
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static toASCII(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "flag"    # I

    #@0
    .prologue
    .line 110
    :try_start_0
    invoke-static {p0, p1}, Landroid/icu/text/IDNA;->convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 111
    :catch_0
    move-exception v0

    #@a
    .line 112
    .local v0, "e":Landroid/icu/text/StringPrepParseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Invalid input to toASCII: "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@23
    throw v1
.end method

.method public static toUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    #@0
    .prologue
    .line 197
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static toUnicode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "flag"    # I

    #@0
    .prologue
    .line 160
    :try_start_0
    invoke-static {p0, p1}, Landroid/icu/text/IDNA;->convertIDNToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Ljava/net/IDN;->convertFullStop(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 161
    :catch_0
    move-exception v0

    #@e
    .line 164
    .local v0, "e":Landroid/icu/text/StringPrepParseException;
    return-object p0
.end method
