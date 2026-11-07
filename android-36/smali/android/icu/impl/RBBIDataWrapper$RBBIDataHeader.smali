.class public final Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;
.super Ljava/lang/Object;
.source "RBBIDataWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/RBBIDataWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RBBIDataHeader"
.end annotation


# instance fields
.field public blacklist fCatCount:I

.field blacklist fFTable:I

.field blacklist fFTableLen:I

.field blacklist fFormatVersion:[B

.field blacklist fLength:I

.field blacklist fMagic:I

.field blacklist fRTable:I

.field blacklist fRTableLen:I

.field blacklist fRuleSource:I

.field blacklist fRuleSourceLen:I

.field blacklist fStatusTable:I

.field blacklist fStatusTableLen:I

.field blacklist fTrie:I

.field blacklist fTrieLen:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fMagic:I

    .line 276
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    .line 277
    return-void
.end method
