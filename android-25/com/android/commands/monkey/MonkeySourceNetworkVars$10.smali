.class final Lcom/android/commands/monkey/MonkeySourceNetworkVars$10;
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
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 164
    const/4 v0, 0x2

    #@1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method
