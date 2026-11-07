.class public Lcom/android/internal/telephony/State;
.super Ljava/lang/Object;
.source "State.java"

# interfaces
.implements Lcom/android/internal/telephony/IState;


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist exit()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x24

    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method
