.class public final Llibcore/icu/NativeIDN;
.super Ljava/lang/Object;
.source "NativeIDN.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static convert(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .param p2, "toAscii"    # Z

    #@0
    .prologue
    .line 36
    if-nez p0, :cond_0

    #@2
    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "s == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 39
    :cond_0
    invoke-static {p0, p1, p2}, Llibcore/icu/NativeIDN;->convertImpl(Ljava/lang/String;IZ)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method private static native convertImpl(Ljava/lang/String;IZ)Ljava/lang/String;
.end method

.method public static toASCII(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 21
    const/4 v0, 0x1

    #@1
    invoke-static {p0, p1, v0}, Llibcore/icu/NativeIDN;->convert(Ljava/lang/String;IZ)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static toUnicode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 26
    const/4 v1, 0x0

    #@1
    :try_start_0
    invoke-static {p0, p1, v1}, Llibcore/icu/NativeIDN;->convert(Ljava/lang/String;IZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object v1

    #@5
    return-object v1

    #@6
    .line 27
    :catch_0
    move-exception v0

    #@7
    .line 31
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    return-object p0
.end method
