.class public Landroid/icu/impl/locale/ParseStatus;
.super Ljava/lang/Object;
.source "ParseStatus.java"


# instance fields
.field greylist-max-o _errorIndex:I

.field greylist-max-o _errorMsg:Ljava/lang/String;

.field greylist-max-o _parseLength:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getErrorIndex()I
    .registers 2

    .line 31
    iget v0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    return v0
.end method

.method public blacklist getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getParseLength()I
    .registers 2

    .line 35
    iget v0, p0, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    return v0
.end method

.method public blacklist isError()Z
    .registers 2

    .line 27
    iget v0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist reset()V
    .registers 2

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    .line 24
    return-void
.end method
