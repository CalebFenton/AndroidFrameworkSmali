.class public Lsun/util/locale/LocaleSyntaxException;
.super Ljava/lang/Exception;
.source "LocaleSyntaxException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private greylist-max-o index:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "errorIndex"    # I

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lsun/util/locale/LocaleSyntaxException;->index:I

    .line 47
    iput p2, p0, Lsun/util/locale/LocaleSyntaxException;->index:I

    .line 48
    return-void
.end method


# virtual methods
.method public blacklist getErrorIndex()I
    .registers 2

    .line 51
    iget v0, p0, Lsun/util/locale/LocaleSyntaxException;->index:I

    return v0
.end method
