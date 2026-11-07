.class public Lcom/android/internal/util/State;
.super Ljava/lang/Object;
.source "State.java"

# interfaces
.implements Lcom/android/internal/util/IState;


# direct methods
.method protected constructor greylist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public greylist enter()V
    .registers 1

    .line 45
    return-void
.end method

.method public greylist-max-r exit()V
    .registers 1

    .line 53
    return-void
.end method

.method public greylist getName()Ljava/lang/String;
    .registers 4

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 81
    .local v1, "lastDollar":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public greylist processMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 61
    const/4 v0, 0x0

    return v0
.end method
