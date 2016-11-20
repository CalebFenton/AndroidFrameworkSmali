.class public Lsun/util/locale/ParseStatus;
.super Ljava/lang/Object;
.source "ParseStatus.java"


# instance fields
.field errorIndex:I

.field errorMsg:Ljava/lang/String;

.field parseLength:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    invoke-virtual {p0}, Lsun/util/locale/ParseStatus;->reset()V

    #@6
    .line 39
    return-void
.end method


# virtual methods
.method public getErrorIndex()I
    .locals 1

    #@0
    .prologue
    .line 54
    iget v0, p0, Lsun/util/locale/ParseStatus;->errorIndex:I

    #@2
    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Lsun/util/locale/ParseStatus;->errorMsg:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getParseLength()I
    .locals 1

    #@0
    .prologue
    .line 58
    iget v0, p0, Lsun/util/locale/ParseStatus;->parseLength:I

    #@2
    return v0
.end method

.method public isError()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 50
    iget v1, p0, Lsun/util/locale/ParseStatus;->errorIndex:I

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
    .line 44
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lsun/util/locale/ParseStatus;->parseLength:I

    #@3
    .line 45
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lsun/util/locale/ParseStatus;->errorIndex:I

    #@6
    .line 46
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lsun/util/locale/ParseStatus;->errorMsg:Ljava/lang/String;

    #@9
    .line 43
    return-void
.end method
