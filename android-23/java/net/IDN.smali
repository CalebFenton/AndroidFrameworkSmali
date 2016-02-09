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
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static toASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    #@0
    .prologue
    .line 75
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static toASCII(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 64
    invoke-static {p0, p1}, Llibcore/icu/NativeIDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static toUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    #@0
    .prologue
    .line 104
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Llibcore/icu/NativeIDN;->toUnicode(Ljava/lang/String;I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static toUnicode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 94
    invoke-static {p0, p1}, Llibcore/icu/NativeIDN;->toUnicode(Ljava/lang/String;I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
