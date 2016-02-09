.class final Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;
.super Ljava/lang/Object;
.source "RBBIDataWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RBBIDataWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RBBIDataHeader"
.end annotation


# instance fields
.field fCatCount:I

.field fFTable:I

.field fFTableLen:I

.field fFormatVersion:[B

.field fLength:I

.field fMagic:I

.field fRTable:I

.field fRTableLen:I

.field fRuleSource:I

.field fRuleSourceLen:I

.field fSFTable:I

.field fSFTableLen:I

.field fSRTable:I

.field fSRTableLen:I

.field fStatusTable:I

.field fStatusTableLen:I

.field fTrie:I

.field fTrieLen:I

.field fVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 132
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fMagic:I

    #@6
    .line 133
    const/4 v0, 0x4

    #@7
    new-array v0, v0, [B

    #@9
    iput-object v0, p0, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    #@b
    .line 131
    return-void
.end method
