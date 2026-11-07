.class public final Lgov/nist/javax/sip/address/UserInfo;
.super Lgov/nist/javax/sip/address/NetObject;
.source "UserInfo.java"


# static fields
.field public static final greylist TELEPHONE_SUBSCRIBER:I = 0x1

.field public static final greylist USER:I = 0x2

.field private static final whitelist serialVersionUID:J = 0x64df3b126d0c8190L


# instance fields
.field protected greylist password:Ljava/lang/String;

.field protected greylist user:Ljava/lang/String;

.field protected greylist userType:I


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Lgov/nist/javax/sip/address/NetObject;-><init>()V

    .line 71
    return-void
.end method


# virtual methods
.method public greylist clearPassword()V
    .registers 2

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public greylist encode()Ljava/lang/String;
    .registers 2

    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/UserInfo;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 110
    iget-object v0, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 111
    iget-object v0, p0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    .line 113
    :cond_16
    iget-object v0, p0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    :goto_1b
    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 80
    return v2

    .line 82
    :cond_c
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/address/UserInfo;

    .line 83
    .local v0, "other":Lgov/nist/javax/sip/address/UserInfo;
    iget v1, p0, Lgov/nist/javax/sip/address/UserInfo;->userType:I

    iget v3, v0, Lgov/nist/javax/sip/address/UserInfo;->userType:I

    if-eq v1, v3, :cond_16

    .line 84
    return v2

    .line 86
    :cond_16
    iget-object v1, p0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    iget-object v3, v0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 87
    return v2

    .line 89
    :cond_21
    iget-object v1, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    if-nez v1, :cond_2a

    .line 90
    return v2

    .line 92
    :cond_2a
    iget-object v1, v0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    if-nez v1, :cond_33

    .line 93
    return v2

    .line 95
    :cond_33
    iget-object v1, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    iget-object v2, v0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    if-ne v1, v2, :cond_3b

    .line 96
    const/4 v1, 0x1

    return v1

    .line 98
    :cond_3b
    iget-object v1, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    iget-object v2, v0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public greylist getPassword()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getUser()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getUserType()I
    .registers 2

    .line 129
    iget v0, p0, Lgov/nist/javax/sip/address/UserInfo;->userType:I

    return v0
.end method

.method public greylist setPassword(Ljava/lang/String;)V
    .registers 2
    .param p1, "p"    # Ljava/lang/String;

    .line 169
    iput-object p1, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public greylist setUser(Ljava/lang/String;)V
    .registers 3
    .param p1, "user"    # Ljava/lang/String;

    .line 151
    iput-object p1, p0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    .line 156
    if-eqz p1, :cond_19

    .line 157
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_14

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_19

    .line 158
    :cond_14
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/UserInfo;->setUserType(I)V

    goto :goto_1d

    .line 160
    :cond_19
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/UserInfo;->setUserType(I)V

    .line 162
    :goto_1d
    return-void
.end method

.method public greylist setUserType(I)V
    .registers 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 178
    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    goto :goto_f

    .line 179
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter not in range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_f
    :goto_f
    iput p1, p0, Lgov/nist/javax/sip/address/UserInfo;->userType:I

    .line 182
    return-void
.end method
