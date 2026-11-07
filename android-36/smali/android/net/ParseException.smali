.class public Landroid/net/ParseException;
.super Ljava/lang/RuntimeException;
.source "ParseException.java"


# instance fields
.field public whitelist response:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "response"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Landroid/net/ParseException;->response:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    iput-object p1, p0, Landroid/net/ParseException;->response:Ljava/lang/String;

    .line 36
    return-void
.end method
