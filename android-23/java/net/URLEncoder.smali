.class public Ljava/net/URLEncoder;
.super Ljava/lang/Object;
.source "URLEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/URLEncoder$1;
    }
.end annotation


# static fields
.field static ENCODER:Llibcore/net/UriCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 37
    new-instance v0, Ljava/net/URLEncoder$1;

    #@2
    invoke-direct {v0}, Ljava/net/URLEncoder$1;-><init>()V

    #@5
    sput-object v0, Ljava/net/URLEncoder;->ENCODER:Llibcore/net/UriCodec;

    #@7
    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 50
    sget-object v0, Ljava/net/URLEncoder;->ENCODER:Llibcore/net/UriCodec;

    #@2
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@4
    invoke-virtual {v0, p0, v1}, Llibcore/net/UriCodec;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 57
    sget-object v0, Ljava/net/URLEncoder;->ENCODER:Llibcore/net/UriCodec;

    #@2
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, p0, v1}, Llibcore/net/UriCodec;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method
