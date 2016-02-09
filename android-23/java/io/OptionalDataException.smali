.class public Ljava/io/OptionalDataException;
.super Ljava/io/ObjectStreamException;
.source "OptionalDataException.java"


# static fields
.field private static final serialVersionUID:J = -0x6f2d38e4604bc55cL


# instance fields
.field public eof:Z

.field public length:I


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/io/ObjectStreamException;-><init>()V

    #@3
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljava/io/ObjectStreamException;-><init>(Ljava/lang/String;)V

    #@3
    .line 58
    return-void
.end method
