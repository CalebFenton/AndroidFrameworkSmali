.class public Landroid/icu/impl/locale/LocaleSyntaxException;
.super Ljava/lang/Exception;
.source "LocaleSyntaxException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private greylist-max-o _index:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    .line 23
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "errorIndex"    # I

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/locale/LocaleSyntaxException;->_index:I

    .line 27
    iput p2, p0, Landroid/icu/impl/locale/LocaleSyntaxException;->_index:I

    .line 28
    return-void
.end method


# virtual methods
.method public blacklist getErrorIndex()I
    .registers 2

    .line 31
    iget v0, p0, Landroid/icu/impl/locale/LocaleSyntaxException;->_index:I

    return v0
.end method
