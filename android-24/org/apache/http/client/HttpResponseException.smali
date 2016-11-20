.class public Lorg/apache/http/client/HttpResponseException;
.super Lorg/apache/http/client/ClientProtocolException;
.source "HttpResponseException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x63bc080fd5942acdL


# instance fields
.field private final statusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p2}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    #@3
    .line 49
    iput p1, p0, Lorg/apache/http/client/HttpResponseException;->statusCode:I

    #@5
    .line 47
    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    #@0
    .prologue
    .line 53
    iget v0, p0, Lorg/apache/http/client/HttpResponseException;->statusCode:I

    #@2
    return v0
.end method
