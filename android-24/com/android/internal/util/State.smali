.class public Lcom/android/internal/util/State;
.super Ljava/lang/Object;
.source "State.java"

# interfaces
.implements Lcom/android/internal/util/IState;


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    #@0
    .prologue
    .line 38
    return-void
.end method

.method public exit()V
    .locals 0

    #@0
    .prologue
    .line 45
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/internal/util/State;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 71
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x24

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@d
    move-result v0

    #@e
    .line 72
    .local v0, "lastDollar":I
    add-int/lit8 v2, v0, 0x1

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    return-object v2
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 53
    const/4 v0, 0x0

    #@1
    return v0
.end method
