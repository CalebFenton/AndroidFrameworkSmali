.class public Ljava/io/OptionalDataException;
.super Ljava/io/ObjectStreamException;
.source "OptionalDataException.java"


# static fields
.field private static final serialVersionUID:J = -0x6f2d38e4604bc55cL


# instance fields
.field public eof:Z

.field public length:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "len"    # I

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/io/ObjectStreamException;-><init>()V

    #@3
    .line 56
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/io/OptionalDataException;->eof:Z

    #@6
    .line 57
    iput p1, p0, Ljava/io/OptionalDataException;->length:I

    #@8
    .line 55
    return-void
.end method

.method constructor <init>(Z)V
    .locals 1
    .param p1, "end"    # Z

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/io/ObjectStreamException;-><init>()V

    #@3
    .line 65
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/io/OptionalDataException;->length:I

    #@6
    .line 66
    iput-boolean p1, p0, Ljava/io/OptionalDataException;->eof:Z

    #@8
    .line 64
    return-void
.end method
