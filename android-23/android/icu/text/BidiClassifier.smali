.class public Landroid/icu/text/BidiClassifier;
.super Ljava/lang/Object;
.source "BidiClassifier.java"


# instance fields
.field protected context:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    iput-object p1, p0, Landroid/icu/text/BidiClassifier;->context:Ljava/lang/Object;

    #@5
    .line 56
    return-void
.end method


# virtual methods
.method public classify(I)I
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 94
    const/16 v0, 0x17

    #@2
    return v0
.end method

.method public getContext()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Landroid/icu/text/BidiClassifier;->context:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public setContext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 69
    iput-object p1, p0, Landroid/icu/text/BidiClassifier;->context:Ljava/lang/Object;

    #@2
    .line 68
    return-void
.end method
