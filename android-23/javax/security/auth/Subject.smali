.class public final Ljavax/security/auth/Subject;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/security/auth/Subject$SecureSet;
    }
.end annotation


# static fields
.field private static final _AS:Ljavax/security/auth/AuthPermission;

.field private static final _AS_PRIVILEGED:Ljavax/security/auth/AuthPermission;

.field private static final _PRINCIPALS:Ljavax/security/auth/AuthPermission;

.field private static final _PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission;

.field private static final _PUBLIC_CREDENTIALS:Ljavax/security/auth/AuthPermission;

.field private static final _READ_ONLY:Ljavax/security/auth/AuthPermission;

.field private static final _SUBJECT:Ljavax/security/auth/AuthPermission;

.field private static final serialVersionUID:J = -0x734dcd6cffcc0598L


# instance fields
.field private final principals:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/Principal;",
            ">;"
        }
    .end annotation
.end field

.field private transient privateCredentials:Ljavax/security/auth/Subject$SecureSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/security/auth/Subject$SecureSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transient publicCredentials:Ljavax/security/auth/Subject$SecureSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/security/auth/Subject$SecureSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private readOnly:Z


# direct methods
.method static synthetic -get0()Ljavax/security/auth/AuthPermission;
    .locals 1

    #@0
    sget-object v0, Ljavax/security/auth/Subject;->_PRINCIPALS:Ljavax/security/auth/AuthPermission;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Ljavax/security/auth/AuthPermission;
    .locals 1

    #@0
    sget-object v0, Ljavax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    #@2
    return-object v0
.end method

.method static synthetic -get2()Ljavax/security/auth/AuthPermission;
    .locals 1

    #@0
    sget-object v0, Ljavax/security/auth/Subject;->_PUBLIC_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljavax/security/auth/Subject;)V
    .locals 0

    #@0
    invoke-direct {p0}, Ljavax/security/auth/Subject;->checkState()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 57
    new-instance v0, Ljavax/security/auth/AuthPermission;

    #@2
    const-string/jumbo v1, "doAs"

    #@5
    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljavax/security/auth/Subject;->_AS:Ljavax/security/auth/AuthPermission;

    #@a
    .line 59
    new-instance v0, Ljavax/security/auth/AuthPermission;

    #@c
    .line 60
    const-string/jumbo v1, "doAsPrivileged"

    #@f
    .line 59
    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    #@12
    sput-object v0, Ljavax/security/auth/Subject;->_AS_PRIVILEGED:Ljavax/security/auth/AuthPermission;

    #@14
    .line 62
    new-instance v0, Ljavax/security/auth/AuthPermission;

    #@16
    .line 63
    const-string/jumbo v1, "getSubject"

    #@19
    .line 62
    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    #@1c
    sput-object v0, Ljavax/security/auth/Subject;->_SUBJECT:Ljavax/security/auth/AuthPermission;

    #@1e
    .line 65
    new-instance v0, Ljavax/security/auth/AuthPermission;

    #@20
    .line 66
    const-string/jumbo v1, "modifyPrincipals"

    #@23
    .line 65
    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    #@26
    sput-object v0, Ljavax/security/auth/Subject;->_PRINCIPALS:Ljavax/security/auth/AuthPermission;

    #@28
    .line 68
    new-instance v0, Ljavax/security/auth/AuthPermission;

    #@2a
    .line 69
    const-string/jumbo v1, "modifyPrivateCredentials"

    #@2d
    .line 68
    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    #@30
    sput-object v0, Ljavax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    #@32
    .line 71
    new-instance v0, Ljavax/security/auth/AuthPermission;

    #@34
    .line 72
    const-string/jumbo v1, "modifyPublicCredentials"

    #@37
    .line 71
    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    #@3a
    sput-object v0, Ljavax/security/auth/Subject;->_PUBLIC_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    #@3c
    .line 74
    new-instance v0, Ljavax/security/auth/AuthPermission;

    #@3e
    .line 75
    const-string/jumbo v1, "setReadOnly"

    #@41
    .line 74
    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    #@44
    sput-object v0, Ljavax/security/auth/Subject;->_READ_ONLY:Ljavax/security/auth/AuthPermission;

    #@46
    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 92
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    #@5
    sget-object v1, Ljavax/security/auth/Subject;->_PRINCIPALS:Ljavax/security/auth/AuthPermission;

    #@7
    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V

    #@a
    iput-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    #@c
    .line 93
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    #@e
    sget-object v1, Ljavax/security/auth/Subject;->_PUBLIC_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    #@10
    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V

    #@13
    iput-object v0, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    #@15
    .line 94
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    #@17
    sget-object v1, Ljavax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    #@19
    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V

    #@1c
    iput-object v0, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    #@1e
    .line 96
    const/4 v0, 0x0

    #@1f
    iput-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    #@21
    .line 91
    return-void
.end method

.method public constructor <init>(ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .param p1, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<+",
            "Ljava/security/Principal;",
            ">;",
            "Ljava/util/Set",
            "<*>;",
            "Ljava/util/Set",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 116
    .local p2, "subjPrincipals":Ljava/util/Set;, "Ljava/util/Set<+Ljava/security/Principal;>;"
    .local p3, "pubCredentials":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .local p4, "privCredentials":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 119
    if-nez p2, :cond_0

    #@5
    .line 120
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "subjPrincipals == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 121
    :cond_0
    if-nez p3, :cond_1

    #@10
    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v1, "pubCredentials == null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 123
    :cond_1
    if-nez p4, :cond_2

    #@1b
    .line 124
    new-instance v0, Ljava/lang/NullPointerException;

    #@1d
    const-string/jumbo v1, "privCredentials == null"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 127
    :cond_2
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    #@26
    sget-object v1, Ljavax/security/auth/Subject;->_PRINCIPALS:Ljavax/security/auth/AuthPermission;

    #@28
    invoke-direct {v0, p0, v1, p2}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;Ljava/util/Collection;)V

    #@2b
    iput-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    #@2d
    .line 128
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    #@2f
    sget-object v1, Ljavax/security/auth/Subject;->_PUBLIC_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    #@31
    invoke-direct {v0, p0, v1, p3}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;Ljava/util/Collection;)V

    #@34
    iput-object v0, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    #@36
    .line 129
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    #@38
    sget-object v1, Ljavax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    #@3a
    invoke-direct {v0, p0, v1, p4}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;Ljava/util/Collection;)V

    #@3d
    iput-object v0, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    #@3f
    .line 131
    iput-boolean p1, p0, Ljavax/security/auth/Subject;->readOnly:Z

    #@41
    .line 117
    return-void
.end method

.method private checkState()V
    .locals 2

    #@0
    .prologue
    .line 490
    iget-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 491
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Set is read-only"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 489
    :cond_0
    return-void
.end method

.method public static doAs(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    .locals 1
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedAction",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 146
    .local p1, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<TT;>;"
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0}, Ljavax/security/auth/Subject;->doAs_PrivilegedAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static doAs(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    .locals 1
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    #@0
    .prologue
    .line 216
    .local p1, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<TT;>;"
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0}, Ljavax/security/auth/Subject;->doAs_PrivilegedExceptionAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static doAsPrivileged(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .locals 2
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .param p2, "context"    # Ljava/security/AccessControlContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 167
    .local p1, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<TT;>;"
    if-nez p2, :cond_0

    #@2
    .line 168
    new-instance v0, Ljava/security/AccessControlContext;

    #@4
    .line 169
    const/4 v1, 0x0

    #@5
    new-array v1, v1, [Ljava/security/ProtectionDomain;

    #@7
    .line 168
    invoke-direct {v0, v1}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    #@a
    invoke-static {p0, p1, v0}, Ljavax/security/auth/Subject;->doAs_PrivilegedAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 171
    :cond_0
    invoke-static {p0, p1, p2}, Ljavax/security/auth/Subject;->doAs_PrivilegedAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public static doAsPrivileged(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .locals 2
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .param p2, "context"    # Ljava/security/AccessControlContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    #@0
    .prologue
    .line 240
    .local p1, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<TT;>;"
    if-nez p2, :cond_0

    #@2
    .line 242
    new-instance v0, Ljava/security/AccessControlContext;

    #@4
    const/4 v1, 0x0

    #@5
    new-array v1, v1, [Ljava/security/ProtectionDomain;

    #@7
    invoke-direct {v0, v1}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    #@a
    .line 241
    invoke-static {p0, p1, v0}, Ljavax/security/auth/Subject;->doAs_PrivilegedExceptionAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 244
    :cond_0
    invoke-static {p0, p1, p2}, Ljavax/security/auth/Subject;->doAs_PrivilegedExceptionAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method private static doAs_PrivilegedAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .locals 4
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .param p2, "context"    # Ljava/security/AccessControlContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 182
    .local p1, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<TT;>;"
    if-nez p0, :cond_0

    #@2
    .line 185
    const/4 v0, 0x0

    #@3
    .line 190
    :goto_0
    new-instance v1, Ljavax/security/auth/Subject$1;

    #@5
    invoke-direct {v1, p2, v0}, Ljavax/security/auth/Subject$1;-><init>(Ljava/security/AccessControlContext;Ljavax/security/auth/SubjectDomainCombiner;)V

    #@8
    .line 196
    .local v1, "dccAction":Ljava/security/PrivilegedAction;
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Ljava/security/AccessControlContext;

    #@e
    .line 198
    .local v2, "newContext":Ljava/security/AccessControlContext;
    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    return-object v3

    #@13
    .line 187
    .end local v1    # "dccAction":Ljava/security/PrivilegedAction;
    .end local v2    # "newContext":Ljava/security/AccessControlContext;
    :cond_0
    new-instance v0, Ljavax/security/auth/SubjectDomainCombiner;

    #@15
    invoke-direct {v0, p0}, Ljavax/security/auth/SubjectDomainCombiner;-><init>(Ljavax/security/auth/Subject;)V

    #@18
    .local v0, "combiner":Ljavax/security/auth/SubjectDomainCombiner;
    goto :goto_0
.end method

.method private static doAs_PrivilegedExceptionAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .locals 4
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .param p2, "context"    # Ljava/security/AccessControlContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    #@0
    .prologue
    .line 256
    .local p1, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<TT;>;"
    if-nez p0, :cond_0

    #@2
    .line 259
    const/4 v0, 0x0

    #@3
    .line 264
    :goto_0
    new-instance v1, Ljavax/security/auth/Subject$2;

    #@5
    invoke-direct {v1, p2, v0}, Ljavax/security/auth/Subject$2;-><init>(Ljava/security/AccessControlContext;Ljavax/security/auth/SubjectDomainCombiner;)V

    #@8
    .line 270
    .local v1, "dccAction":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<Ljava/security/AccessControlContext;>;"
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Ljava/security/AccessControlContext;

    #@e
    .line 272
    .local v2, "newContext":Ljava/security/AccessControlContext;
    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    return-object v3

    #@13
    .line 261
    .end local v1    # "dccAction":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<Ljava/security/AccessControlContext;>;"
    .end local v2    # "newContext":Ljava/security/AccessControlContext;
    :cond_0
    new-instance v0, Ljavax/security/auth/SubjectDomainCombiner;

    #@15
    invoke-direct {v0, p0}, Ljavax/security/auth/SubjectDomainCombiner;-><init>(Ljavax/security/auth/Subject;)V

    #@18
    .local v0, "combiner":Ljavax/security/auth/SubjectDomainCombiner;
    goto :goto_0
.end method

.method public static getSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;
    .locals 4
    .param p0, "context"    # Ljava/security/AccessControlContext;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 473
    if-nez p0, :cond_0

    #@3
    .line 474
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v3, "context == null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 476
    :cond_0
    new-instance v0, Ljavax/security/auth/Subject$3;

    #@e
    invoke-direct {v0, p0}, Ljavax/security/auth/Subject$3;-><init>(Ljava/security/AccessControlContext;)V

    #@11
    .line 481
    .local v0, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<Ljava/security/DomainCombiner;>;"
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/security/DomainCombiner;

    #@17
    .line 483
    .local v1, "combiner":Ljava/security/DomainCombiner;
    if-eqz v1, :cond_1

    #@19
    instance-of v2, v1, Ljavax/security/auth/SubjectDomainCombiner;

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 486
    check-cast v1, Ljavax/security/auth/SubjectDomainCombiner;

    #@1f
    .end local v1    # "combiner":Ljava/security/DomainCombiner;
    invoke-virtual {v1}, Ljavax/security/auth/SubjectDomainCombiner;->getSubject()Ljavax/security/auth/Subject;

    #@22
    move-result-object v2

    #@23
    return-object v2

    #@24
    .line 484
    .restart local v1    # "combiner":Ljava/security/DomainCombiner;
    :cond_1
    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 452
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 454
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    #@5
    sget-object v1, Ljavax/security/auth/Subject;->_PUBLIC_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    #@7
    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V

    #@a
    iput-object v0, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    #@c
    .line 455
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    #@e
    sget-object v1, Ljavax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    #@10
    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V

    #@13
    iput-object v0, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    #@15
    .line 450
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 459
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 458
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 289
    if-ne p0, p1, :cond_0

    #@4
    .line 290
    return v4

    #@5
    .line 293
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Ljavax/security/auth/Subject;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v2

    #@f
    if-eq v1, v2, :cond_2

    #@11
    .line 294
    :cond_1
    return v3

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 297
    check-cast v0, Ljavax/security/auth/Subject;

    #@15
    .line 299
    .local v0, "that":Ljavax/security/auth/Subject;
    iget-object v1, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    #@17
    iget-object v2, v0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    #@19
    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_3

    #@1f
    .line 300
    iget-object v1, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    #@21
    iget-object v2, v0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    #@23
    invoke-virtual {v1, v2}, Ljavax/security/auth/Subject$SecureSet;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    .line 299
    if-eqz v1, :cond_3

    #@29
    .line 301
    iget-object v1, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    #@2b
    iget-object v2, v0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    #@2d
    invoke-virtual {v1, v2}, Ljavax/security/auth/Subject$SecureSet;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v1

    #@31
    .line 299
    if-eqz v1, :cond_3

    #@33
    .line 302
    return v4

    #@34
    .line 304
    :cond_3
    return v3
.end method

.method public getPrincipals()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/Principal;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 313
    iget-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public getPrincipals(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/Principal;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 329
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    #@2
    check-cast v0, Ljavax/security/auth/Subject$SecureSet;

    #@4
    invoke-virtual {v0, p1}, Ljavax/security/auth/Subject$SecureSet;->get(Ljava/lang/Class;)Ljava/util/Set;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getPrivateCredentials()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 338
    iget-object v0, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    #@2
    return-object v0
.end method

.method public getPrivateCredentials(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 353
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    #@2
    invoke-virtual {v0, p1}, Ljavax/security/auth/Subject$SecureSet;->get(Ljava/lang/Class;)Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPublicCredentials()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    #@2
    return-object v0
.end method

.method public getPublicCredentials(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 378
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    #@2
    invoke-virtual {v0, p1}, Ljavax/security/auth/Subject$SecureSet;->get(Ljava/lang/Class;)Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 388
    iget-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    #@8
    invoke-virtual {v1}, Ljavax/security/auth/Subject$SecureSet;->hashCode()I

    #@b
    move-result v1

    #@c
    add-int/2addr v0, v1

    #@d
    .line 389
    iget-object v1, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    #@f
    invoke-virtual {v1}, Ljavax/security/auth/Subject$SecureSet;->hashCode()I

    #@12
    move-result v1

    #@13
    .line 388
    add-int/2addr v0, v1

    #@14
    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    #@0
    .prologue
    .line 408
    iget-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    #@2
    return v0
.end method

.method public setReadOnly()V
    .locals 1

    #@0
    .prologue
    .line 399
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    #@3
    .line 398
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/16 v5, 0xa

    #@2
    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const-string/jumbo v4, "Subject:\n"

    #@7
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    .line 420
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v4, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    #@c
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v2

    #@10
    .line 421
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_0

    #@16
    .line 422
    const-string/jumbo v4, "\tPrincipal: "

    #@19
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 423
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    .line 424
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    goto :goto_0

    #@27
    .line 427
    :cond_0
    iget-object v4, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    #@29
    invoke-virtual {v4}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v2

    #@2d
    .line 428
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_1

    #@33
    .line 429
    const-string/jumbo v4, "\tPublic Credential: "

    #@36
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 430
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    .line 431
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@43
    goto :goto_1

    #@44
    .line 434
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@47
    move-result v4

    #@48
    add-int/lit8 v3, v4, -0x1

    #@4a
    .line 435
    .local v3, "offset":I
    iget-object v4, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    #@4c
    invoke-virtual {v4}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    #@4f
    move-result-object v2

    #@50
    .line 437
    :goto_2
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@53
    move-result v4

    #@54
    if-eqz v4, :cond_2

    #@56
    .line 438
    const-string/jumbo v4, "\tPrivate Credential: "

    #@59
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    .line 439
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@63
    .line 440
    const/16 v4, 0xa

    #@65
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@68
    goto :goto_2

    #@69
    .line 442
    :catch_0
    move-exception v1

    #@6a
    .line 443
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@6d
    move-result v4

    #@6e
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@71
    .line 444
    const-string/jumbo v4, "\tPrivate Credentials: no accessible information\n"

    #@74
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    .line 446
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v4

    #@7b
    return-object v4
.end method
