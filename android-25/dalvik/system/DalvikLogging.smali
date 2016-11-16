.class public final Ldalvik/system/DalvikLogging;
.super Ljava/lang/Object;
.source "DalvikLogging.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static loggerNameToTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "loggerName"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0x17

    #@2
    .line 34
    if-nez p0, :cond_0

    #@4
    .line 35
    const-string/jumbo v2, "null"

    #@7
    return-object v2

    #@8
    .line 38
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@b
    move-result v1

    #@c
    .line 39
    .local v1, "length":I
    if-gt v1, v3, :cond_1

    #@e
    .line 40
    return-object p0

    #@f
    .line 43
    :cond_1
    const-string/jumbo v2, "."

    #@12
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@15
    move-result v0

    #@16
    .line 44
    .local v0, "lastPeriod":I
    add-int/lit8 v2, v0, 0x1

    #@18
    sub-int v2, v1, v2

    #@1a
    if-gt v2, v3, :cond_2

    #@1c
    .line 45
    add-int/lit8 v2, v0, 0x1

    #@1e
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 44
    :goto_0
    return-object v2

    #@23
    .line 46
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@26
    move-result v2

    #@27
    add-int/lit8 v2, v2, -0x17

    #@29
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    goto :goto_0
.end method
