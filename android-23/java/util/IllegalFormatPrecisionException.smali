.class public Ljava/util/IllegalFormatPrecisionException;
.super Ljava/util/IllegalFormatException;
.source "IllegalFormatPrecisionException.java"


# static fields
.field private static final serialVersionUID:J = 0x11d81e0L


# instance fields
.field private final p:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "p"    # I

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    #@3
    .line 39
    iput p1, p0, Ljava/util/IllegalFormatPrecisionException;->p:I

    #@5
    .line 38
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 53
    iget v0, p0, Ljava/util/IllegalFormatPrecisionException;->p:I

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPrecision()I
    .locals 1

    #@0
    .prologue
    .line 48
    iget v0, p0, Ljava/util/IllegalFormatPrecisionException;->p:I

    #@2
    return v0
.end method
