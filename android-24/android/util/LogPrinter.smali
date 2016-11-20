.class public Landroid/util/LogPrinter;
.super Ljava/lang/Object;
.source "LogPrinter.java"

# interfaces
.implements Landroid/util/Printer;


# instance fields
.field private final mBuffer:I

.field private final mPriority:I

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput p1, p0, Landroid/util/LogPrinter;->mPriority:I

    #@5
    .line 42
    iput-object p2, p0, Landroid/util/LogPrinter;->mTag:Ljava/lang/String;

    #@7
    .line 43
    const/4 v0, 0x0

    #@8
    iput v0, p0, Landroid/util/LogPrinter;->mBuffer:I

    #@a
    .line 40
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "buffer"    # I

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    iput p1, p0, Landroid/util/LogPrinter;->mPriority:I

    #@5
    .line 52
    iput-object p2, p0, Landroid/util/LogPrinter;->mTag:Ljava/lang/String;

    #@7
    .line 53
    iput p3, p0, Landroid/util/LogPrinter;->mBuffer:I

    #@9
    .line 50
    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 3
    .param p1, "x"    # Ljava/lang/String;

    #@0
    .prologue
    .line 57
    iget v0, p0, Landroid/util/LogPrinter;->mBuffer:I

    #@2
    iget v1, p0, Landroid/util/LogPrinter;->mPriority:I

    #@4
    iget-object v2, p0, Landroid/util/LogPrinter;->mTag:Ljava/lang/String;

    #@6
    invoke-static {v0, v1, v2, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    #@9
    .line 56
    return-void
.end method
