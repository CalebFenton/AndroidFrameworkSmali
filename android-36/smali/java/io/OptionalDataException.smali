.class public Ljava/io/OptionalDataException;
.super Ljava/io/ObjectStreamException;
.source "OptionalDataException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x6f2d38e4604bc55cL


# instance fields
.field public whitelist test-api eof:Z

.field public whitelist test-api length:I


# direct methods
.method constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "len"    # I

    .line 55
    invoke-direct {p0}, Ljava/io/ObjectStreamException;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/OptionalDataException;->eof:Z

    .line 57
    iput p1, p0, Ljava/io/OptionalDataException;->length:I

    .line 58
    return-void
.end method

.method constructor greylist-max-o <init>(Z)V
    .registers 3
    .param p1, "end"    # Z

    .line 64
    invoke-direct {p0}, Ljava/io/ObjectStreamException;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/OptionalDataException;->length:I

    .line 66
    iput-boolean p1, p0, Ljava/io/OptionalDataException;->eof:Z

    .line 67
    return-void
.end method
