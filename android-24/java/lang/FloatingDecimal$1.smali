.class final Ljava/lang/FloatingDecimal$1;
.super Ljava/lang/ThreadLocal;
.source "FloatingDecimal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/FloatingDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/lang/FloatingDecimal;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/FloatingDecimal;
    .locals 2

    #@0
    .prologue
    .line 397
    new-instance v0, Ljava/lang/FloatingDecimal;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Ljava/lang/FloatingDecimal;-><init>(Ljava/lang/FloatingDecimal;)V

    #@6
    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 396
    invoke-virtual {p0}, Ljava/lang/FloatingDecimal$1;->initialValue()Ljava/lang/FloatingDecimal;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
