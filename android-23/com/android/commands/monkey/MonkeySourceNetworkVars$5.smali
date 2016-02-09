.class final Lcom/android/commands/monkey/MonkeySourceNetworkVars$5;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkVars.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetworkVars$VarGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetworkVars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 127
    sget-object v0, Lcom/android/commands/monkey/Monkey;->currentIntent:Landroid/content/Intent;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 128
    return-object v1

    #@6
    .line 130
    :cond_0
    sget-object v0, Lcom/android/commands/monkey/Monkey;->currentIntent:Landroid/content/Intent;

    #@8
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method
