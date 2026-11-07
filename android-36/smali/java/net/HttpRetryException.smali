.class public Ljava/net/HttpRetryException;
.super Ljava/io/IOException;
.source "HttpRetryException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x7f7b4e9993d01e55L


# instance fields
.field private greylist-max-o location:Ljava/lang/String;

.field private greylist-max-o responseCode:I


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "detail"    # Ljava/lang/String;
    .param p2, "code"    # I

    .line 53
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 54
    iput p2, p0, Ljava/net/HttpRetryException;->responseCode:I

    .line 55
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p1, "detail"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "location"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 67
    iput p2, p0, Ljava/net/HttpRetryException;->responseCode:I

    .line 68
    iput-object p3, p0, Ljava/net/HttpRetryException;->location:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public whitelist test-api getLocation()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Ljava/net/HttpRetryException;->location:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getReason()Ljava/lang/String;
    .registers 2

    .line 87
    invoke-super {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api responseCode()I
    .registers 2

    .line 77
    iget v0, p0, Ljava/net/HttpRetryException;->responseCode:I

    return v0
.end method
