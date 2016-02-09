.class public final Landroid/icu/text/ComposedCharIter;
.super Ljava/lang/Object;
.source "ComposedCharIter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DONE:C = '\uffff'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private curChar:I

.field private decompBuf:Ljava/lang/String;

.field private final n2impl:Landroid/icu/impl/Normalizer2Impl;

.field private nextChar:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 76
    invoke-direct {p0, v0, v0}, Landroid/icu/text/ComposedCharIter;-><init>(ZI)V

    #@4
    .line 75
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "compat"    # Z
    .param p2, "options"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 169
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/icu/text/ComposedCharIter;->curChar:I

    #@6
    .line 170
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/icu/text/ComposedCharIter;->nextChar:I

    #@9
    .line 91
    if-eqz p1, :cond_0

    #@b
    .line 92
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKCInstance()Landroid/icu/impl/Norm2AllModes;

    #@e
    move-result-object v0

    #@f
    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@11
    iput-object v0, p0, Landroid/icu/text/ComposedCharIter;->n2impl:Landroid/icu/impl/Normalizer2Impl;

    #@13
    .line 90
    :goto_0
    return-void

    #@14
    .line 94
    :cond_0
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    #@17
    move-result-object v0

    #@18
    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@1a
    iput-object v0, p0, Landroid/icu/text/ComposedCharIter;->n2impl:Landroid/icu/impl/Normalizer2Impl;

    #@1c
    goto :goto_0
.end method

.method private findNextChar()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 148
    iget v1, p0, Landroid/icu/text/ComposedCharIter;->curChar:I

    #@3
    add-int/lit8 v0, v1, 0x1

    #@5
    .line 149
    .local v0, "c":I
    iput-object v2, p0, Landroid/icu/text/ComposedCharIter;->decompBuf:Ljava/lang/String;

    #@7
    .line 151
    :goto_0
    const v1, 0xffff

    #@a
    if-ge v0, v1, :cond_1

    #@c
    .line 152
    iget-object v1, p0, Landroid/icu/text/ComposedCharIter;->n2impl:Landroid/icu/impl/Normalizer2Impl;

    #@e
    invoke-virtual {v1, v0}, Landroid/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Landroid/icu/text/ComposedCharIter;->decompBuf:Ljava/lang/String;

    #@14
    .line 153
    iget-object v1, p0, Landroid/icu/text/ComposedCharIter;->decompBuf:Ljava/lang/String;

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 164
    :goto_1
    iput v0, p0, Landroid/icu/text/ComposedCharIter;->nextChar:I

    #@1a
    .line 147
    return-void

    #@1b
    .line 158
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 160
    :cond_1
    const/4 v0, -0x1

    #@1f
    .line 161
    goto :goto_1
.end method


# virtual methods
.method public decomposition()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Landroid/icu/text/ComposedCharIter;->decompBuf:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 141
    iget-object v0, p0, Landroid/icu/text/ComposedCharIter;->decompBuf:Ljava/lang/String;

    #@6
    return-object v0

    #@7
    .line 143
    :cond_0
    const-string/jumbo v0, ""

    #@a
    return-object v0
.end method

.method public hasNext()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 105
    iget v0, p0, Landroid/icu/text/ComposedCharIter;->nextChar:I

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 106
    invoke-direct {p0}, Landroid/icu/text/ComposedCharIter;->findNextChar()V

    #@8
    .line 108
    :cond_0
    iget v0, p0, Landroid/icu/text/ComposedCharIter;->nextChar:I

    #@a
    if-eq v0, v1, :cond_1

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public next()C
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 121
    iget v0, p0, Landroid/icu/text/ComposedCharIter;->nextChar:I

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 122
    invoke-direct {p0}, Landroid/icu/text/ComposedCharIter;->findNextChar()V

    #@8
    .line 124
    :cond_0
    iget v0, p0, Landroid/icu/text/ComposedCharIter;->nextChar:I

    #@a
    iput v0, p0, Landroid/icu/text/ComposedCharIter;->curChar:I

    #@c
    .line 125
    iput v1, p0, Landroid/icu/text/ComposedCharIter;->nextChar:I

    #@e
    .line 126
    iget v0, p0, Landroid/icu/text/ComposedCharIter;->curChar:I

    #@10
    int-to-char v0, v0

    #@11
    return v0
.end method
