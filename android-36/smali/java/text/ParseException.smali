.class public Ljava/text/ParseException;
.super Ljava/lang/Exception;
.source "ParseException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x2583c2da188a0732L


# instance fields
.field private greylist-max-o errorOffset:I


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "errorOffset"    # I

    .line 64
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 65
    iput p2, p0, Ljava/text/ParseException;->errorOffset:I

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist test-api getErrorOffset()I
    .registers 2

    .line 74
    iget v0, p0, Ljava/text/ParseException;->errorOffset:I

    return v0
.end method
