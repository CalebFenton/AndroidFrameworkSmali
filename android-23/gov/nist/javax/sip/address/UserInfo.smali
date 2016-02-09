.class public final Lgov/nist/javax/sip/address/UserInfo;
.super Lgov/nist/javax/sip/address/NetObject;
.source "UserInfo.java"


# static fields
.field public static final TELEPHONE_SUBSCRIBER:I = 0x1

.field public static final USER:I = 0x2

.field private static final serialVersionUID:J = 0x64df3b126d0c8190L


# instance fields
.field protected password:Ljava/lang/String;

.field protected user:Ljava/lang/String;

.field protected userType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Lgov/nist/javax/sip/address/NetObject;-><init>()V

    #@3
    .line 69
    return-void
.end method


# virtual methods
.method public clearPassword()V
    .locals 1

    #@0
    .prologue
    .line 121
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    #@3
    .line 120
    return-void
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/UserInfo;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 111
    iget-object v0, p0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9
    move-result-object v0

    #@a
    const-string/jumbo v1, ":"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16
    .line 115
    :goto_0
    return-object p1

    #@17
    .line 113
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    #@19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 79
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/UserInfo;->getClass()Ljava/lang/Class;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v2

    #@9
    if-eq v1, v2, :cond_0

    #@b
    .line 80
    return v3

    #@c
    :cond_0
    move-object v0, p1

    #@d
    .line 82
    check-cast v0, Lgov/nist/javax/sip/address/UserInfo;

    #@f
    .line 83
    .local v0, "other":Lgov/nist/javax/sip/address/UserInfo;
    iget v1, p0, Lgov/nist/javax/sip/address/UserInfo;->userType:I

    #@11
    iget v2, v0, Lgov/nist/javax/sip/address/UserInfo;->userType:I

    #@13
    if-eq v1, v2, :cond_1

    #@15
    .line 84
    return v3

    #@16
    .line 86
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    #@18
    iget-object v2, v0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_2

    #@20
    .line 87
    return v3

    #@21
    .line 89
    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    #@23
    if-eqz v1, :cond_3

    #@25
    iget-object v1, v0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    #@27
    if-nez v1, :cond_3

    #@29
    .line 90
    return v3

    #@2a
    .line 92
    :cond_3
    iget-object v1, v0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    #@2c
    if-eqz v1, :cond_4

    #@2e
    iget-object v1, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    #@30
    if-nez v1, :cond_4

    #@32
    .line 93
    return v3

    #@33
    .line 95
    :cond_4
    iget-object v1, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    #@35
    iget-object v2, v0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    #@37
    if-ne v1, v2, :cond_5

    #@39
    .line 96
    const/4 v1, 0x1

    #@3a
    return v1

    #@3b
    .line 98
    :cond_5
    iget-object v1, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    #@3d
    iget-object v2, v0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v1

    #@43
    return v1
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUserType()I
    .locals 1

    #@0
    .prologue
    .line 129
    iget v0, p0, Lgov/nist/javax/sip/address/UserInfo;->userType:I

    #@2
    return v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;

    #@0
    .prologue
    .line 169
    iput-object p1, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    #@2
    .line 168
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;

    #@0
    .prologue
    .line 151
    iput-object p1, p0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    #@2
    .line 156
    if-eqz p1, :cond_1

    #@4
    .line 157
    const-string/jumbo v0, "#"

    #@7
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    if-gez v0, :cond_0

    #@d
    const-string/jumbo v0, ";"

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@13
    move-result v0

    #@14
    if-ltz v0, :cond_1

    #@16
    .line 158
    :cond_0
    const/4 v0, 0x1

    #@17
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/UserInfo;->setUserType(I)V

    #@1a
    .line 150
    :goto_0
    return-void

    #@1b
    .line 160
    :cond_1
    const/4 v0, 0x2

    #@1c
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/UserInfo;->setUserType(I)V

    #@1f
    goto :goto_0
.end method

.method public setUserType(I)V
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 178
    const/4 v0, 0x1

    #@1
    if-eq p1, v0, :cond_0

    #@3
    const/4 v0, 0x2

    #@4
    if-eq p1, v0, :cond_0

    #@6
    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Parameter not in range"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 181
    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/address/UserInfo;->userType:I

    #@11
    .line 177
    return-void
.end method
