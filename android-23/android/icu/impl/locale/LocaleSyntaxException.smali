.class public Landroid/icu/impl/locale/LocaleSyntaxException;
.super Ljava/lang/Exception;
.source "LocaleSyntaxException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _index:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 16
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    #@4
    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "errorIndex"    # I

    #@0
    .prologue
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 13
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/icu/impl/locale/LocaleSyntaxException;->_index:I

    #@6
    .line 21
    iput p2, p0, Landroid/icu/impl/locale/LocaleSyntaxException;->_index:I

    #@8
    .line 19
    return-void
.end method


# virtual methods
.method public getErrorIndex()I
    .locals 1

    #@0
    .prologue
    .line 25
    iget v0, p0, Landroid/icu/impl/locale/LocaleSyntaxException;->_index:I

    #@2
    return v0
.end method
