.class public abstract Ljavax/net/ssl/SNIMatcher;
.super Ljava/lang/Object;
.source "SNIMatcher.java"


# instance fields
.field private final greylist-max-o type:I


# direct methods
.method protected constructor whitelist test-api <init>(I)V
    .registers 4
    .param p1, "type"    # I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-ltz p1, :cond_14

    .line 69
    const/16 v0, 0xff

    if-gt p1, v0, :cond_c

    .line 74
    iput p1, p0, Ljavax/net/ssl/SNIMatcher;->type:I

    .line 75
    return-void

    .line 70
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Server name type cannot be greater than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Server name type cannot be less than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final whitelist test-api getType()I
    .registers 2

    .line 85
    iget v0, p0, Ljavax/net/ssl/SNIMatcher;->type:I

    return v0
.end method

.method public abstract whitelist test-api matches(Ljavax/net/ssl/SNIServerName;)Z
.end method
