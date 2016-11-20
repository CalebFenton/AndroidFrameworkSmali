.class Lcom/android/commands/content/Content$Tokenizer;
.super Ljava/lang/Object;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tokenizer"
.end annotation


# instance fields
.field private final mArgs:[Ljava/lang/String;

.field private mNextArg:I


# direct methods
.method static synthetic -wrap0(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/commands/content/Content$Tokenizer;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 384
    iput-object p1, p0, Lcom/android/commands/content/Content$Tokenizer;->mArgs:[Ljava/lang/String;

    #@5
    .line 383
    return-void
.end method

.method private nextArg()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 388
    iget v0, p0, Lcom/android/commands/content/Content$Tokenizer;->mNextArg:I

    #@2
    iget-object v1, p0, Lcom/android/commands/content/Content$Tokenizer;->mArgs:[Ljava/lang/String;

    #@4
    array-length v1, v1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 389
    iget-object v0, p0, Lcom/android/commands/content/Content$Tokenizer;->mArgs:[Ljava/lang/String;

    #@9
    iget v1, p0, Lcom/android/commands/content/Content$Tokenizer;->mNextArg:I

    #@b
    add-int/lit8 v2, v1, 0x1

    #@d
    iput v2, p0, Lcom/android/commands/content/Content$Tokenizer;->mNextArg:I

    #@f
    aget-object v0, v0, v1

    #@11
    return-object v0

    #@12
    .line 391
    :cond_0
    const/4 v0, 0x0

    #@13
    return-object v0
.end method
