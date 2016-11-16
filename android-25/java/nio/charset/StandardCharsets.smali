.class public final Ljava/nio/charset/StandardCharsets;
.super Ljava/lang/Object;
.source "StandardCharsets.java"


# static fields
.field public static final ISO_8859_1:Ljava/nio/charset/Charset;

.field public static final US_ASCII:Ljava/nio/charset/Charset;

.field public static final UTF_16:Ljava/nio/charset/Charset;

.field public static final UTF_16BE:Ljava/nio/charset/Charset;

.field public static final UTF_16LE:Ljava/nio/charset/Charset;

.field public static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 44
    const-string/jumbo v0, "US-ASCII"

    #@3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@9
    .line 48
    const-string/jumbo v0, "ISO-8859-1"

    #@c
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@f
    move-result-object v0

    #@10
    sput-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@12
    .line 52
    const-string/jumbo v0, "UTF-8"

    #@15
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@18
    move-result-object v0

    #@19
    sput-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@1b
    .line 56
    const-string/jumbo v0, "UTF-16BE"

    #@1e
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@21
    move-result-object v0

    #@22
    sput-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    #@24
    .line 60
    const-string/jumbo v0, "UTF-16LE"

    #@27
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@2a
    move-result-object v0

    #@2b
    sput-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    #@2d
    .line 65
    const-string/jumbo v0, "UTF-16"

    #@30
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@33
    move-result-object v0

    #@34
    sput-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    #@36
    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    new-instance v0, Ljava/lang/AssertionError;

    #@5
    const-string/jumbo v1, "No java.nio.charset.StandardCharsets instances for you!"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@b
    throw v0
.end method
