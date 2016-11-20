.class final Ljava/text/EntryPair;
.super Ljava/lang/Object;
.source "EntryPair.java"


# instance fields
.field public entryName:Ljava/lang/String;

.field public fwd:Z

.field public value:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 53
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/text/EntryPair;-><init>(Ljava/lang/String;IZ)V

    #@4
    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "fwd"    # Z

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    iput-object p1, p0, Ljava/text/EntryPair;->entryName:Ljava/lang/String;

    #@5
    .line 57
    iput p2, p0, Ljava/text/EntryPair;->value:I

    #@7
    .line 58
    iput-boolean p3, p0, Ljava/text/EntryPair;->fwd:Z

    #@9
    .line 55
    return-void
.end method
