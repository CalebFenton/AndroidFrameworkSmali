.class public Landroid/icu/util/IllformedLocaleException;
.super Ljava/lang/RuntimeException;
.source "IllformedLocaleException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _errIdx:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    #@3
    .line 20
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/icu/util/IllformedLocaleException;->_errIdx:I

    #@6
    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3
    .line 20
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/icu/util/IllformedLocaleException;->_errIdx:I

    #@6
    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorIndex"    # I

    #@0
    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v1

    #@9
    if-gez p2, :cond_0

    #@b
    const-string/jumbo v0, ""

    #@e
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@19
    .line 20
    const/4 v0, -0x1

    #@1a
    iput v0, p0, Landroid/icu/util/IllformedLocaleException;->_errIdx:I

    #@1c
    .line 55
    iput p2, p0, Landroid/icu/util/IllformedLocaleException;->_errIdx:I

    #@1e
    .line 53
    return-void

    #@1f
    .line 54
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v2, " [at index "

    #@27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    const-string/jumbo v2, "]"

    #@32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    goto :goto_0
.end method


# virtual methods
.method public getErrorIndex()I
    .locals 1

    #@0
    .prologue
    .line 66
    iget v0, p0, Landroid/icu/util/IllformedLocaleException;->_errIdx:I

    #@2
    return v0
.end method
