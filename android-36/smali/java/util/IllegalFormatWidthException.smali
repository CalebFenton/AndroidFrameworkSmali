.class public Ljava/util/IllegalFormatWidthException;
.super Ljava/util/IllegalFormatException;
.source "IllegalFormatWidthException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0xfe39a6L


# instance fields
.field private greylist-max-o w:I


# direct methods
.method public constructor whitelist test-api <init>(I)V
    .registers 2
    .param p1, "w"    # I

    .line 49
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 50
    iput p1, p0, Ljava/util/IllegalFormatWidthException;->w:I

    .line 51
    return-void
.end method


# virtual methods
.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 2

    .line 64
    iget v0, p0, Ljava/util/IllegalFormatWidthException;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getWidth()I
    .registers 2

    .line 60
    iget v0, p0, Ljava/util/IllegalFormatWidthException;->w:I

    return v0
.end method
