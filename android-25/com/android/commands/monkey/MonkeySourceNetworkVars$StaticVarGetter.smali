.class Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkVars.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetworkVars$VarGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetworkVars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StaticVarGetter"
.end annotation


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;->value:Ljava/lang/String;

    #@5
    .line 51
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;->value:Ljava/lang/String;

    #@2
    return-object v0
.end method
