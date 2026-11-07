.class public Ljava/net/MalformedURLException;
.super Ljava/io/IOException;
.source "MalformedURLException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x289644872212e7aL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 45
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method
