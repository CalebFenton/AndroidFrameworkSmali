.class public Lcom/android/dex/Code$CatchHandler;
.super Ljava/lang/Object;
.source "Code.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dex/Code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CatchHandler"
.end annotation


# instance fields
.field final addresses:[I

.field final catchAllAddress:I

.field final offset:I

.field final typeIndexes:[I


# direct methods
.method public constructor <init>([I[III)V
    .locals 0
    .param p1, "typeIndexes"    # [I
    .param p2, "addresses"    # [I
    .param p3, "catchAllAddress"    # I
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 102
    iput-object p1, p0, Lcom/android/dex/Code$CatchHandler;->typeIndexes:[I

    #@5
    .line 103
    iput-object p2, p0, Lcom/android/dex/Code$CatchHandler;->addresses:[I

    #@7
    .line 104
    iput p3, p0, Lcom/android/dex/Code$CatchHandler;->catchAllAddress:I

    #@9
    .line 105
    iput p4, p0, Lcom/android/dex/Code$CatchHandler;->offset:I

    #@b
    .line 101
    return-void
.end method


# virtual methods
.method public getAddresses()[I
    .locals 1

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/dex/Code$CatchHandler;->addresses:[I

    #@2
    return-object v0
.end method

.method public getCatchAllAddress()I
    .locals 1

    #@0
    .prologue
    .line 117
    iget v0, p0, Lcom/android/dex/Code$CatchHandler;->catchAllAddress:I

    #@2
    return v0
.end method

.method public getOffset()I
    .locals 1

    #@0
    .prologue
    .line 121
    iget v0, p0, Lcom/android/dex/Code$CatchHandler;->offset:I

    #@2
    return v0
.end method

.method public getTypeIndexes()[I
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/dex/Code$CatchHandler;->typeIndexes:[I

    #@2
    return-object v0
.end method
