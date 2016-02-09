.class Landroid/media/Tokenizer;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Tokenizer$TokenizerPhase;,
        Landroid/media/Tokenizer$DataTokenizer;,
        Landroid/media/Tokenizer$TagTokenizer;,
        Landroid/media/Tokenizer$OnTokenListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Tokenizer"


# instance fields
.field private mDataTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

.field private mHandledLen:I

.field private mLine:Ljava/lang/String;

.field private mListener:Landroid/media/Tokenizer$OnTokenListener;

.field private mPhase:Landroid/media/Tokenizer$TokenizerPhase;

.field private mTagTokenizer:Landroid/media/Tokenizer$TokenizerPhase;


# direct methods
.method static synthetic -get0(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$TokenizerPhase;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/Tokenizer;->mDataTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/Tokenizer;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/media/Tokenizer;->mHandledLen:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/media/Tokenizer;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/Tokenizer;->mLine:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$OnTokenListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/Tokenizer;->mListener:Landroid/media/Tokenizer$OnTokenListener;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$TokenizerPhase;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/Tokenizer;->mTagTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/media/Tokenizer;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/media/Tokenizer;->mHandledLen:I

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/media/Tokenizer;Landroid/media/Tokenizer$TokenizerPhase;)Landroid/media/Tokenizer$TokenizerPhase;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/Tokenizer;->mPhase:Landroid/media/Tokenizer$TokenizerPhase;

    #@2
    return-object p1
.end method

.method constructor <init>(Landroid/media/Tokenizer$OnTokenListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/Tokenizer$OnTokenListener;

    #@0
    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 307
    new-instance v0, Landroid/media/Tokenizer$DataTokenizer;

    #@5
    invoke-direct {v0, p0}, Landroid/media/Tokenizer$DataTokenizer;-><init>(Landroid/media/Tokenizer;)V

    #@8
    iput-object v0, p0, Landroid/media/Tokenizer;->mDataTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

    #@a
    .line 308
    new-instance v0, Landroid/media/Tokenizer$TagTokenizer;

    #@c
    invoke-direct {v0, p0}, Landroid/media/Tokenizer$TagTokenizer;-><init>(Landroid/media/Tokenizer;)V

    #@f
    iput-object v0, p0, Landroid/media/Tokenizer;->mTagTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

    #@11
    .line 309
    invoke-virtual {p0}, Landroid/media/Tokenizer;->reset()V

    #@14
    .line 310
    iput-object p1, p0, Landroid/media/Tokenizer;->mListener:Landroid/media/Tokenizer$OnTokenListener;

    #@16
    .line 306
    return-void
.end method


# virtual methods
.method reset()V
    .locals 1

    #@0
    .prologue
    .line 314
    iget-object v0, p0, Landroid/media/Tokenizer;->mDataTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

    #@2
    invoke-interface {v0}, Landroid/media/Tokenizer$TokenizerPhase;->start()Landroid/media/Tokenizer$TokenizerPhase;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroid/media/Tokenizer;->mPhase:Landroid/media/Tokenizer$TokenizerPhase;

    #@8
    .line 313
    return-void
.end method

.method tokenize(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 318
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/media/Tokenizer;->mHandledLen:I

    #@3
    .line 319
    iput-object p1, p0, Landroid/media/Tokenizer;->mLine:Ljava/lang/String;

    #@5
    .line 320
    :goto_0
    iget v0, p0, Landroid/media/Tokenizer;->mHandledLen:I

    #@7
    iget-object v1, p0, Landroid/media/Tokenizer;->mLine:Ljava/lang/String;

    #@9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@c
    move-result v1

    #@d
    if-ge v0, v1, :cond_0

    #@f
    .line 321
    iget-object v0, p0, Landroid/media/Tokenizer;->mPhase:Landroid/media/Tokenizer$TokenizerPhase;

    #@11
    invoke-interface {v0}, Landroid/media/Tokenizer$TokenizerPhase;->tokenize()V

    #@14
    goto :goto_0

    #@15
    .line 324
    :cond_0
    iget-object v0, p0, Landroid/media/Tokenizer;->mPhase:Landroid/media/Tokenizer$TokenizerPhase;

    #@17
    instance-of v0, v0, Landroid/media/Tokenizer$TagTokenizer;

    #@19
    if-nez v0, :cond_1

    #@1b
    .line 326
    iget-object v0, p0, Landroid/media/Tokenizer;->mListener:Landroid/media/Tokenizer$OnTokenListener;

    #@1d
    invoke-interface {v0}, Landroid/media/Tokenizer$OnTokenListener;->onLineEnd()V

    #@20
    .line 317
    :cond_1
    return-void
.end method
