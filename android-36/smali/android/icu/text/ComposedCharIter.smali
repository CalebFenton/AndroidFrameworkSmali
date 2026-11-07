.class public final Landroid/icu/text/ComposedCharIter;
.super Ljava/lang/Object;
.source "ComposedCharIter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist-max-o DONE:C = '\uffff'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private greylist-max-o curChar:I

.field private greylist-max-o decompBuf:Ljava/lang/String;

.field private final greylist-max-o n2impl:Landroid/icu/impl/Normalizer2Impl;

.field private greylist-max-o nextChar:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/icu/text/ComposedCharIter;-><init>(ZI)V

    .line 81
    return-void
.end method

.method public constructor greylist-max-o <init>(ZI)V
    .registers 4
    .param p1, "compat"    # Z
    .param p2, "options"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/ComposedCharIter;->curChar:I

    .line 174
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/ComposedCharIter;->nextChar:I

    .line 95
    if-eqz p1, :cond_14

    .line 96
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    iput-object v0, p0, Landroid/icu/text/ComposedCharIter;->n2impl:Landroid/icu/impl/Normalizer2Impl;

    goto :goto_1c

    .line 98
    :cond_14
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    iput-object v0, p0, Landroid/icu/text/ComposedCharIter;->n2impl:Landroid/icu/impl/Normalizer2Impl;

    .line 100
    :goto_1c
    return-void
.end method

.method private greylist-max-o findNextChar()V
    .registers 3

    .line 152
    iget v0, p0, Landroid/icu/text/ComposedCharIter;->curChar:I

    add-int/lit8 v0, v0, 0x1

    .line 153
    .local v0, "c":I
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/text/ComposedCharIter;->decompBuf:Ljava/lang/String;

    .line 155
    :goto_7
    const v1, 0xffff

    if-ge v0, v1, :cond_1c

    .line 156
    iget-object v1, p0, Landroid/icu/text/ComposedCharIter;->n2impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/ComposedCharIter;->decompBuf:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Landroid/icu/text/ComposedCharIter;->decompBuf:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 160
    goto :goto_1e

    .line 162
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 164
    :cond_1c
    const/4 v0, -0x1

    .line 165
    nop

    .line 168
    :goto_1e
    iput v0, p0, Landroid/icu/text/ComposedCharIter;->nextChar:I

    .line 169
    return-void
.end method


# virtual methods
.method public greylist-max-o decomposition()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    iget-object v0, p0, Landroid/icu/text/ComposedCharIter;->decompBuf:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 145
    iget-object v0, p0, Landroid/icu/text/ComposedCharIter;->decompBuf:Ljava/lang/String;

    return-object v0

    .line 147
    :cond_7
    const-string v0, ""

    return-object v0
.end method

.method public greylist-max-o hasNext()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    iget v0, p0, Landroid/icu/text/ComposedCharIter;->nextChar:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 110
    invoke-direct {p0}, Landroid/icu/text/ComposedCharIter;->findNextChar()V

    .line 112
    :cond_8
    iget v0, p0, Landroid/icu/text/ComposedCharIter;->nextChar:I

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist-max-o next()C
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    iget v0, p0, Landroid/icu/text/ComposedCharIter;->nextChar:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 126
    invoke-direct {p0}, Landroid/icu/text/ComposedCharIter;->findNextChar()V

    .line 128
    :cond_8
    iget v0, p0, Landroid/icu/text/ComposedCharIter;->nextChar:I

    iput v0, p0, Landroid/icu/text/ComposedCharIter;->curChar:I

    .line 129
    iput v1, p0, Landroid/icu/text/ComposedCharIter;->nextChar:I

    .line 130
    iget v0, p0, Landroid/icu/text/ComposedCharIter;->curChar:I

    int-to-char v0, v0

    return v0
.end method
