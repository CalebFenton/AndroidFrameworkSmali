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
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    iput-object p1, p0, Ljava/net/PasswordAuthentication;->userName:Ljava/lang/String;

    #@5
    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [C

    #@b
    iput-object v0, p0, Ljava/net/PasswordAuthentication;->password:[C

    #@d
    .line 55
    return-void
.end method


# virtual methods
.method public getPassword()[C
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Ljava/net/PasswordAuthentication;->password:[C

    #@2
    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Ljava/net/PasswordAuthentication;->userName:Ljava/lang/String;

    #@2
    return-object v0
.end method
