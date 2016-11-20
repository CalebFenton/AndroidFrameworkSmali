.class public Ljava/util/IllegalFormatWidthException;
.super Ljava/util/IllegalFormatException;
.source "IllegalFormatWidthException.java"


# static fields
.field private static final serialVersionUID:J = 0xfe39a6L


# instance fields
.field private w:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "w"    # I

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    #@3
    .line 47
    iput p1, p0, Ljava/util/IllegalFormatWidthException;->w:I

    #@5
    .line 46
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 60
    iget v0, p0, Ljava/util/IllegalFormatWidthException;->w:I

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 56
    iget v0, p0, Ljava/util/IllegalFormatWidthException;->w:I

    #@2
    return v0
.end method
