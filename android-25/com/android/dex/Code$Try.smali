.class public Lcom/android/dex/Code$Try;
.super Ljava/lang/Object;
.source "Code.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dex/Code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Try"
.end annotation


# instance fields
.field final catchHandlerIndex:I

.field final instructionCount:I

.field final startAddress:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "startAddress"    # I
    .param p2, "instructionCount"    # I
    .param p3, "catchHandlerIndex"    # I

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    iput p1, p0, Lcom/android/dex/Code$Try;->startAddress:I

    #@5
    .line 74
    iput p2, p0, Lcom/android/dex/Code$Try;->instructionCount:I

    #@7
    .line 75
    iput p3, p0, Lcom/android/dex/Code$Try;->catchHandlerIndex:I

    #@9
    .line 72
    return-void
.end method


# virtual methods
.method public getCatchHandlerIndex()I
    .locals 1

    #@0
    .prologue
    .line 91
    iget v0, p0, Lcom/android/dex/Code$Try;->catchHandlerIndex:I

    #@2
    return v0
.end method

.method public getInstructionCount()I
    .locals 1

    #@0
    .prologue
    .line 83
    iget v0, p0, Lcom/android/dex/Code$Try;->instructionCount:I

    #@2
    return v0
.end method

.method public getStartAddress()I
    .locals 1

    #@0
    .prologue
    .line 79
    iget v0, p0, Lcom/android/dex/Code$Try;->startAddress:I

    #@2
    return v0
.end method
