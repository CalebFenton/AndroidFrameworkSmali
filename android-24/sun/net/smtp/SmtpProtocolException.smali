.class public Lsun/net/smtp/SmtpProtocolException;
.super Ljava/io/IOException;
.source "SmtpProtocolException.java"


# static fields
.field private static final serialVersionUID:J = -0x68bcd0e82ab8387cL


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3
    .line 37
    return-void
.end method
