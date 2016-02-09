.class public Landroid/icu/impl/locale/ParseStatus;
.super Ljava/lang/Object;
.source "ParseStatus.java"


# instance fields
.field _errorIndex:I

.field _errorMsg:Ljava/lang/String;

.field _parseLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 10
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    #@6
    .line 11
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    #@9
    .line 12
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    #@c
    .line 9
    return-void
.end method


# virtual methods
.method public getErrorIndex()I
    .locals 1

    #@0
    .prologue
    .line 25
    iget v0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    #@2
    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 33
    iget-object v0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getParseLength()I
    .locals 1

    #@0
    .prologue
    .line 29
    iget v0, p0, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    #@2
    return v0
.end method

.method public isError()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 21
    iget v1, p0, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    #@3
    if-ltz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 15
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    #@3
    .line 16
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    #@6
    .line 17
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    #@9
    .line 14
    return-void
.end method
