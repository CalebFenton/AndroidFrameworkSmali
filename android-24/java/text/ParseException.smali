.class public Ljava/text/ParseException;
.super Ljava/lang/Exception;
.source "ParseException.java"


# instance fields
.field private errorOffset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "errorOffset"    # I

    #@0
    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 61
    iput p2, p0, Ljava/text/ParseException;->errorOffset:I

    #@5
    .line 59
    return-void
.end method


# virtual methods
.method public getErrorOffset()I
    .locals 1

    #@0
    .prologue
    .line 68
    iget v0, p0, Ljava/text/ParseException;->errorOffset:I

    #@2
    return v0
.end method
