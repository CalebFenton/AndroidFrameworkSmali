.class public Landroid/icu/text/BidiClassifier;
.super Ljava/lang/Object;
.source "BidiClassifier.java"


# instance fields
.field protected greylist-max-o context:Ljava/lang/Object;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "context"    # Ljava/lang/Object;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/icu/text/BidiClassifier;->context:Ljava/lang/Object;

    .line 59
    return-void
.end method


# virtual methods
.method public whitelist test-api classify(I)I
    .registers 3
    .param p1, "c"    # I

    .line 91
    const/16 v0, 0x17

    return v0
.end method

.method public whitelist test-api getContext()Ljava/lang/Object;
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/icu/text/BidiClassifier;->context:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api setContext(Ljava/lang/Object;)V
    .registers 2
    .param p1, "context"    # Ljava/lang/Object;

    .line 69
    iput-object p1, p0, Landroid/icu/text/BidiClassifier;->context:Ljava/lang/Object;

    .line 70
    return-void
.end method
