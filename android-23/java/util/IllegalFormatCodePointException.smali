.class public Ljava/util/IllegalFormatCodePointException;
.super Ljava/util/IllegalFormatException;
.source "IllegalFormatCodePointException.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x12325b6L


# instance fields
.field private final c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "c"    # I

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    #@3
    .line 42
    iput p1, p0, Ljava/util/IllegalFormatCodePointException;->c:I

    #@5
    .line 41
    return-void
.end method


# virtual methods
.method public getCodePoint()I
    .locals 1

    #@0
    .prologue
    .line 51
    iget v0, p0, Ljava/util/IllegalFormatCodePointException;->c:I

    #@2
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 56
    iget v0, p0, Ljava/util/IllegalFormatCodePointException;->c:I

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
