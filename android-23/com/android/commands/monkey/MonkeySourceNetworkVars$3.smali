.class final Lcom/android/commands/monkey/MonkeySourceNetworkVars$3;
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
    .line 109
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
    .line 111
    sget-object v0, Lcom/android/commands/monkey/Monkey;->currentIntent:Landroid/content/Intent;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 112
    return-object v1

    #@6
    .line 114
    :cond_0
    sget-object v0, Lcom/android/commands/monkey/Monkey;->currentIntent:Landroid/content/Intent;

    #@8
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method
