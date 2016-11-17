.class public final Ljavax/obex/PasswordAuthentication;
.super Ljava/lang/Object;
.source "PasswordAuthentication.java"


# instance fields
.field private final mPassword:[B

.field private mUserName:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 3
    .param p1, "userName"    # [B
    .param p2, "password"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 54
    if-eqz p1, :cond_0

    #@6
    .line 55
    array-length v0, p1

    #@7
    new-array v0, v0, [B

    #@9
    iput-object v0, p0, Ljavax/obex/PasswordAuthentication;->mUserName:[B

    #@b
    .line 56
    iget-object v0, p0, Ljavax/obex/PasswordAuthentication;->mUserName:[B

    #@d
    array-length v1, p1

    #@e
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@11
    .line 59
    :cond_0
    array-length v0, p2

    #@12
    new-array v0, v0, [B

    #@14
    iput-object v0, p0, Ljavax/obex/PasswordAuthentication;->mPassword:[B

    #@16
    .line 60
    iget-object v0, p0, Ljavax/obex/PasswordAuthentication;->mPassword:[B

    #@18
    array-length v1, p2

    #@19
    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1c
    .line 53
    return-void
.end method


# virtual methods
.method public getPassword()[B
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Ljavax/obex/PasswordAuthentication;->mPassword:[B

    #@2
    return-object v0
.end method

.method public getUserName()[B
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Ljavax/obex/PasswordAuthentication;->mUserName:[B

    #@2
    return-object v0
.end method
