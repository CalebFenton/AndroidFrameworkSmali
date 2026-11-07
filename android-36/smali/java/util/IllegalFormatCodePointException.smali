.class public Ljava/util/IllegalFormatCodePointException;
.super Ljava/util/IllegalFormatException;
.source "IllegalFormatCodePointException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x12325b6L


# instance fields
.field private greylist-max-o c:I


# direct methods
.method public constructor whitelist test-api <init>(I)V
    .registers 2
    .param p1, "c"    # I

    .line 53
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 54
    iput p1, p0, Ljava/util/IllegalFormatCodePointException;->c:I

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist test-api getCodePoint()I
    .registers 2

    .line 64
    iget v0, p0, Ljava/util/IllegalFormatCodePointException;->c:I

    return v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 3

    .line 68
    iget v0, p0, Ljava/util/IllegalFormatCodePointException;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Code point = %#x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
