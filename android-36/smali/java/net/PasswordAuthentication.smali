.class public final Ljava/net/PasswordAuthentication;
.super Ljava/lang/Object;
.source "PasswordAuthentication.java"


# instance fields
.field private greylist-max-o password:[C

.field private greylist-max-o userName:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;[C)V
    .registers 4
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # [C

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Ljava/net/PasswordAuthentication;->userName:Ljava/lang/String;

    .line 57
    invoke-virtual {p2}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljava/net/PasswordAuthentication;->password:[C

    .line 58
    return-void
.end method


# virtual methods
.method public whitelist test-api getPassword()[C
    .registers 2

    .line 79
    iget-object v0, p0, Ljava/net/PasswordAuthentication;->password:[C

    return-object v0
.end method

.method public whitelist test-api getUserName()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Ljava/net/PasswordAuthentication;->userName:Ljava/lang/String;

    return-object v0
.end method
