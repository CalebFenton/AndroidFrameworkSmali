.class Ljava/net/DefaultInterface;
.super Ljava/lang/Object;
.source "DefaultInterface.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getDefault()Ljava/net/NetworkInterface;
    .locals 1

    #@0
    .prologue
    .line 39
    const/4 v0, 0x0

    #@1
    return-object v0
.end method
