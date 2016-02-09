.class public final Ljava/net/PasswordAuthentication;
.super Ljava/lang/Object;
.source "PasswordAuthentication.java"


# instance fields
.field private password:[C

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # [C

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    iput-object p1, p0, Ljava/net/PasswordAuthentication;->userName:Ljava/lang/String;

    #@5
    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [C

    #@b
    iput-object v0, p0, Ljava/net/PasswordAuthentication;->password:[C

    #@d
    .line 41
    return-void
.end method


# virtual methods
.method public getPassword()[C
    .locals 1

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Ljava/net/PasswordAuthentication;->password:[C

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [C

    #@8
    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Ljava/net/PasswordAuthentication;->userName:Ljava/lang/String;

    #@2
    return-object v0
.end method
