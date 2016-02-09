.class public final Lcom/android/dex/Code;
.super Ljava/lang/Object;
.source "Code.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dex/Code$Try;,
        Lcom/android/dex/Code$CatchHandler;
    }
.end annotation


# instance fields
.field private final catchHandlers:[Lcom/android/dex/Code$CatchHandler;

.field private final debugInfoOffset:I

.field private final insSize:I

.field private final instructions:[S

.field private final outsSize:I

.field private final registersSize:I

.field private final tries:[Lcom/android/dex/Code$Try;


# direct methods
.method public constructor <init>(IIII[S[Lcom/android/dex/Code$Try;[Lcom/android/dex/Code$CatchHandler;)V
    .locals 0
    .param p1, "registersSize"    # I
    .param p2, "insSize"    # I
    .param p3, "outsSize"    # I
    .param p4, "debugInfoOffset"    # I
    .param p5, "instructions"    # [S
    .param p6, "tries"    # [Lcom/android/dex/Code$Try;
    .param p7, "catchHandlers"    # [Lcom/android/dex/Code$CatchHandler;

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    iput p1, p0, Lcom/android/dex/Code;->registersSize:I

    #@5
    .line 31
    iput p2, p0, Lcom/android/dex/Code;->insSize:I

    #@7
    .line 32
    iput p3, p0, Lcom/android/dex/Code;->outsSize:I

    #@9
    .line 33
    iput p4, p0, Lcom/android/dex/Code;->debugInfoOffset:I

    #@b
    .line 34
    iput-object p5, p0, Lcom/android/dex/Code;->instructions:[S

    #@d
    .line 35
    iput-object p6, p0, Lcom/android/dex/Code;->tries:[Lcom/android/dex/Code$Try;

    #@f
    .line 36
    iput-object p7, p0, Lcom/android/dex/Code;->catchHandlers:[Lcom/android/dex/Code$CatchHandler;

    #@11
    .line 29
    return-void
.end method


# virtual methods
.method public getCatchHandlers()[Lcom/android/dex/Code$CatchHandler;
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/dex/Code;->catchHandlers:[Lcom/android/dex/Code$CatchHandler;

    #@2
    return-object v0
.end method

.method public getDebugInfoOffset()I
    .locals 1

    #@0
    .prologue
    .line 52
    iget v0, p0, Lcom/android/dex/Code;->debugInfoOffset:I

    #@2
    return v0
.end method

.method public getInsSize()I
    .locals 1

    #@0
    .prologue
    .line 44
    iget v0, p0, Lcom/android/dex/Code;->insSize:I

    #@2
    return v0
.end method

.method public getInstructions()[S
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/dex/Code;->instructions:[S

    #@2
    return-object v0
.end method

.method public getOutsSize()I
    .locals 1

    #@0
    .prologue
    .line 48
    iget v0, p0, Lcom/android/dex/Code;->outsSize:I

    #@2
    return v0
.end method

.method public getRegistersSize()I
    .locals 1

    #@0
    .prologue
    .line 40
    iget v0, p0, Lcom/android/dex/Code;->registersSize:I

    #@2
    return v0
.end method

.method public getTries()[Lcom/android/dex/Code$Try;
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/dex/Code;->tries:[Lcom/android/dex/Code$Try;

    #@2
    return-object v0
.end method
