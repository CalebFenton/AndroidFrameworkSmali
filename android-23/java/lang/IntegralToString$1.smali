.class final Ljava/lang/IntegralToString$1;
.super Ljava/lang/ThreadLocal;
.source "IntegralToString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/IntegralToString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<[C>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 47
    invoke-virtual {p0}, Ljava/lang/IntegralToString$1;->initialValue()[C

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected initialValue()[C
    .locals 1

    #@0
    .prologue
    .line 48
    const/16 v0, 0x14

    #@2
    new-array v0, v0, [C

    #@4
    return-object v0
.end method
