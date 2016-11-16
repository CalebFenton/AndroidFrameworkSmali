.class public final Lorg/apache/http/HttpVersion;
.super Lorg/apache/http/ProtocolVersion;
.source "HttpVersion.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final HTTP:Ljava/lang/String; = "HTTP"

.field public static final HTTP_0_9:Lorg/apache/http/HttpVersion;

.field public static final HTTP_1_0:Lorg/apache/http/HttpVersion;

.field public static final HTTP_1_1:Lorg/apache/http/HttpVersion;

.field private static final serialVersionUID:J = -0x514703574c384bf0L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 57
    new-instance v0, Lorg/apache/http/HttpVersion;

    #@4
    const/16 v1, 0x9

    #@6
    invoke-direct {v0, v3, v1}, Lorg/apache/http/HttpVersion;-><init>(II)V

    #@9
    sput-object v0, Lorg/apache/http/HttpVersion;->HTTP_0_9:Lorg/apache/http/HttpVersion;

    #@b
    .line 60
    new-instance v0, Lorg/apache/http/HttpVersion;

    #@d
    invoke-direct {v0, v2, v3}, Lorg/apache/http/HttpVersion;-><init>(II)V

    #@10
    sput-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    #@12
    .line 63
    new-instance v0, Lorg/apache/http/HttpVersion;

    #@14
    invoke-direct {v0, v2, v2}, Lorg/apache/http/HttpVersion;-><init>(II)V

    #@17
    sput-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    #@19
    .line 48
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "major"    # I
    .param p2, "minor"    # I

    #@0
    .prologue
    .line 75
    const-string/jumbo v0, "HTTP"

    #@3
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    #@6
    .line 74
    return-void
.end method


# virtual methods
.method public forVersion(II)Lorg/apache/http/ProtocolVersion;
    .locals 2
    .param p1, "major"    # I
    .param p2, "minor"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 89
    iget v0, p0, Lorg/apache/http/HttpVersion;->major:I

    #@3
    if-ne p1, v0, :cond_0

    #@5
    iget v0, p0, Lorg/apache/http/HttpVersion;->minor:I

    #@7
    if-ne p2, v0, :cond_0

    #@9
    .line 90
    return-object p0

    #@a
    .line 93
    :cond_0
    if-ne p1, v1, :cond_2

    #@c
    .line 94
    if-nez p2, :cond_1

    #@e
    .line 95
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    #@10
    return-object v0

    #@11
    .line 97
    :cond_1
    if-ne p2, v1, :cond_2

    #@13
    .line 98
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    #@15
    return-object v0

    #@16
    .line 101
    :cond_2
    if-nez p1, :cond_3

    #@18
    const/16 v0, 0x9

    #@1a
    if-ne p2, v0, :cond_3

    #@1c
    .line 102
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_0_9:Lorg/apache/http/HttpVersion;

    #@1e
    return-object v0

    #@1f
    .line 106
    :cond_3
    new-instance v0, Lorg/apache/http/HttpVersion;

    #@21
    invoke-direct {v0, p1, p2}, Lorg/apache/http/HttpVersion;-><init>(II)V

    #@24
    return-object v0
.end method
