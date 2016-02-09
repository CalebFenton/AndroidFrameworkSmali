.class public Landroid/text/TextUtils$SimpleStringSplitter;
.super Ljava/lang/Object;
.source "TextUtils.java"

# interfaces
.implements Landroid/text/TextUtils$StringSplitter;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleStringSplitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/text/TextUtils$StringSplitter;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mDelimiter:C

.field private mLength:I

.field private mPosition:I

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(C)V
    .locals 0
    .param p1, "delimiter"    # C

    #@0
    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 409
    iput-char p1, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mDelimiter:C

    #@5
    .line 408
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 427
    iget v0, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mPosition:I

    #@2
    iget v1, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mLength:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 423
    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 430
    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 431
    iget-object v2, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mString:Ljava/lang/String;

    #@2
    iget-char v3, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mDelimiter:C

    #@4
    iget v4, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mPosition:I

    #@6
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    #@9
    move-result v0

    #@a
    .line 432
    .local v0, "end":I
    const/4 v2, -0x1

    #@b
    if-ne v0, v2, :cond_0

    #@d
    .line 433
    iget v0, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mLength:I

    #@f
    .line 435
    :cond_0
    iget-object v2, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mString:Ljava/lang/String;

    #@11
    iget v3, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mPosition:I

    #@13
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 436
    .local v1, "nextString":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    #@19
    iput v2, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mPosition:I

    #@1b
    .line 437
    return-object v1
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 441
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 417
    iput-object p1, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mString:Ljava/lang/String;

    #@2
    .line 418
    const/4 v0, 0x0

    #@3
    iput v0, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mPosition:I

    #@5
    .line 419
    iget-object v0, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mString:Ljava/lang/String;

    #@7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mLength:I

    #@d
    .line 416
    return-void
.end method
