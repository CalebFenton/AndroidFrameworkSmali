.class public abstract Ljava/security/IdentityScope;
.super Ljava/security/Identity;
.source "IdentityScope.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x206fec0f17658ffeL

.field private static systemScope:Ljava/security/IdentityScope;


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/security/Identity;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/security/Identity;-><init>(Ljava/lang/String;)V

    #@3
    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/IdentityScope;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/security/IdentityScope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/security/Identity;-><init>(Ljava/lang/String;Ljava/security/IdentityScope;)V

    #@3
    .line 66
    return-void
.end method

.method public static getSystemScope()Ljava/security/IdentityScope;
    .locals 3

    #@0
    .prologue
    .line 81
    sget-object v2, Ljava/security/IdentityScope;->systemScope:Ljava/security/IdentityScope;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 82
    const-string/jumbo v2, "system.scope"

    #@7
    invoke-static {v2}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 83
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@d
    .line 85
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/security/IdentityScope;

    #@17
    sput-object v2, Ljava/security/IdentityScope;->systemScope:Ljava/security/IdentityScope;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 91
    :cond_0
    :goto_0
    sget-object v2, Ljava/security/IdentityScope;->systemScope:Ljava/security/IdentityScope;

    #@1b
    return-object v2

    #@1c
    .line 86
    :catch_0
    move-exception v1

    #@1d
    .line 87
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    #@20
    goto :goto_0
.end method

.method protected static setSystemScope(Ljava/security/IdentityScope;)V
    .locals 0
    .param p0, "scope"    # Ljava/security/IdentityScope;

    #@0
    .prologue
    .line 101
    sput-object p0, Ljava/security/IdentityScope;->systemScope:Ljava/security/IdentityScope;

    #@2
    .line 100
    return-void
.end method


# virtual methods
.method public abstract addIdentity(Ljava/security/Identity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation
.end method

.method public abstract getIdentity(Ljava/lang/String;)Ljava/security/Identity;
.end method

.method public getIdentity(Ljava/security/Principal;)Ljava/security/Identity;
    .locals 1
    .param p1, "principal"    # Ljava/security/Principal;

    #@0
    .prologue
    .line 134
    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/security/IdentityScope;->getIdentity(Ljava/lang/String;)Ljava/security/Identity;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public abstract getIdentity(Ljava/security/PublicKey;)Ljava/security/Identity;
.end method

.method public abstract identities()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/security/Identity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeIdentity(Ljava/security/Identity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation
.end method

.method public abstract size()I
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-super {p0}, Ljava/security/Identity;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    .line 190
    const-string/jumbo v1, "["

    #@c
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 190
    invoke-virtual {p0}, Ljava/security/IdentityScope;->size()I

    #@13
    move-result v1

    #@14
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 190
    const-string/jumbo v1, "]"

    #@1b
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method
