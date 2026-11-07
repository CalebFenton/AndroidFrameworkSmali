.class public Lsun/util/locale/ParseStatus;
.super Ljava/lang/Object;
.source "ParseStatus.java"


# instance fields
.field greylist-max-o errorIndex:I

.field greylist-max-o errorMsg:Ljava/lang/String;

.field greylist-max-o parseLength:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0}, Lsun/util/locale/ParseStatus;->reset()V

    .line 41
    return-void
.end method


# virtual methods
.method public blacklist getErrorIndex()I
    .registers 2

    .line 54
    iget v0, p0, Lsun/util/locale/ParseStatus;->errorIndex:I

    return v0
.end method

.method public blacklist getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lsun/util/locale/ParseStatus;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getParseLength()I
    .registers 2

    .line 58
    iget v0, p0, Lsun/util/locale/ParseStatus;->parseLength:I

    return v0
.end method

.method public blacklist isError()Z
    .registers 2

    .line 50
    iget v0, p0, Lsun/util/locale/ParseStatus;->errorIndex:I

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

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lsun/util/locale/ParseStatus;->parseLength:I

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lsun/util/locale/ParseStatus;->errorIndex:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/util/locale/ParseStatus;->errorMsg:Ljava/lang/String;

    .line 47
    return-void
.end method
