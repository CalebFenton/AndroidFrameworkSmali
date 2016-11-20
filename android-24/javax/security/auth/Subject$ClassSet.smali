.class Ljavax/security/auth/Subject$ClassSet;
.super Ljava/util/AbstractSet;
.source "Subject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/security/auth/Subject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClassSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavax/security/auth/Subject;

.field private which:I


# direct methods
.method constructor <init>(Ljavax/security/auth/Subject;ILjava/lang/Class;)V
    .locals 2
    .param p1, "this$0"    # Ljavax/security/auth/Subject;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1314
    .local p0, "this":Ljavax/security/auth/Subject$ClassSet;, "Ljavax/security/auth/Subject$ClassSet<TT;>;"
    .local p3, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iput-object p1, p0, Ljavax/security/auth/Subject$ClassSet;->this$0:Ljavax/security/auth/Subject;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@5
    .line 1315
    iput p2, p0, Ljavax/security/auth/Subject$ClassSet;->which:I

    #@7
    .line 1316
    iput-object p3, p0, Ljavax/security/auth/Subject$ClassSet;->c:Ljava/lang/Class;

    #@9
    .line 1317
    new-instance v0, Ljava/util/HashSet;

    #@b
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@e
    iput-object v0, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    #@10
    .line 1319
    packed-switch p2, :pswitch_data_0

    #@13
    .line 1327
    iget-object v0, p1, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    #@15
    monitor-enter v0

    #@16
    :try_start_0
    invoke-direct {p0}, Ljavax/security/auth/Subject$ClassSet;->populateSet()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@19
    :goto_0
    monitor-exit v0

    #@1a
    .line 1314
    return-void

    #@1b
    .line 1321
    :pswitch_0
    iget-object v0, p1, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    #@1d
    monitor-enter v0

    #@1e
    :try_start_1
    invoke-direct {p0}, Ljavax/security/auth/Subject$ClassSet;->populateSet()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    goto :goto_0

    #@22
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v0

    #@24
    throw v1

    #@25
    .line 1324
    :pswitch_1
    iget-object v0, p1, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    #@27
    monitor-enter v0

    #@28
    :try_start_2
    invoke-direct {p0}, Ljavax/security/auth/Subject$ClassSet;->populateSet()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2b
    goto :goto_0

    #@2c
    :catchall_1
    move-exception v1

    #@2d
    monitor-exit v0

    #@2e
    throw v1

    #@2f
    .line 1327
    :catchall_2
    move-exception v1

    #@30
    monitor-exit v0

    #@31
    throw v1

    #@32
    .line 1319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private populateSet()V
    .locals 7

    #@0
    .prologue
    .local p0, "this":Ljavax/security/auth/Subject$ClassSet;, "Ljavax/security/auth/Subject$ClassSet<TT;>;"
    const/4 v6, 0x3

    #@1
    .line 1334
    iget v3, p0, Ljavax/security/auth/Subject$ClassSet;->which:I

    #@3
    packed-switch v3, :pswitch_data_0

    #@6
    .line 1342
    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->this$0:Ljavax/security/auth/Subject;

    #@8
    iget-object v3, v3, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    #@a
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v0

    #@e
    .line 1349
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_4

    #@14
    .line 1351
    iget v3, p0, Ljavax/security/auth/Subject$ClassSet;->which:I

    #@16
    if-ne v3, v6, :cond_1

    #@18
    .line 1353
    new-instance v3, Ljavax/security/auth/Subject$ClassSet$1;

    #@1a
    invoke-direct {v3, p0, v0}, Ljavax/security/auth/Subject$ClassSet$1;-><init>(Ljavax/security/auth/Subject$ClassSet;Ljava/util/Iterator;)V

    #@1d
    .line 1352
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    .line 1361
    .local v1, "next":Ljava/lang/Object;
    :goto_1
    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->c:Ljava/lang/Class;

    #@23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_0

    #@2d
    .line 1362
    iget v3, p0, Ljavax/security/auth/Subject$ClassSet;->which:I

    #@2f
    if-eq v3, v6, :cond_2

    #@31
    .line 1363
    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    #@33
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@36
    goto :goto_0

    #@37
    .line 1336
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v1    # "next":Ljava/lang/Object;
    :pswitch_0
    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->this$0:Ljavax/security/auth/Subject;

    #@39
    iget-object v3, v3, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    #@3b
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@3e
    move-result-object v0

    #@3f
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    goto :goto_0

    #@40
    .line 1339
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :pswitch_1
    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->this$0:Ljavax/security/auth/Subject;

    #@42
    iget-object v3, v3, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    #@44
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@47
    move-result-object v0

    #@48
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    goto :goto_0

    #@49
    .line 1359
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4c
    move-result-object v1

    #@4d
    .restart local v1    # "next":Ljava/lang/Object;
    goto :goto_1

    #@4e
    .line 1366
    :cond_2
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@51
    move-result-object v2

    #@52
    .line 1367
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_3

    #@54
    .line 1368
    new-instance v3, Ljavax/security/auth/PrivateCredentialPermission;

    #@56
    .line 1369
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    .line 1370
    iget-object v5, p0, Ljavax/security/auth/Subject$ClassSet;->this$0:Ljavax/security/auth/Subject;

    #@60
    invoke-virtual {v5}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    #@63
    move-result-object v5

    #@64
    .line 1368
    invoke-direct {v3, v4, v5}, Ljavax/security/auth/PrivateCredentialPermission;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    #@67
    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@6a
    .line 1372
    :cond_3
    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    #@6c
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6f
    goto :goto_0

    #@70
    .line 1332
    .end local v1    # "next":Ljava/lang/Object;
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    :cond_4
    return-void

    #@71
    .line 1334
    nop

    #@72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1388
    .local p0, "this":Ljavax/security/auth/Subject$ClassSet;, "Ljavax/security/auth/Subject$ClassSet<TT;>;"
    .local p1, "o":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v2

    #@4
    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->c:Ljava/lang/Class;

    #@6
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 1389
    new-instance v0, Ljava/text/MessageFormat;

    #@e
    .line 1390
    const-string/jumbo v2, "attempting.to.add.an.object.which.is.not.an.instance.of.class"

    #@11
    .line 1389
    invoke-static {v2}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-direct {v0, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    #@18
    .line 1391
    .local v0, "form":Ljava/text/MessageFormat;
    const/4 v2, 0x1

    #@19
    new-array v1, v2, [Ljava/lang/Object;

    #@1b
    iget-object v2, p0, Ljavax/security/auth/Subject$ClassSet;->c:Ljava/lang/Class;

    #@1d
    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    const/4 v3, 0x0

    #@22
    aput-object v2, v1, v3

    #@24
    .line 1392
    .local v1, "source":[Ljava/lang/Object;
    new-instance v2, Ljava/lang/SecurityException;

    #@26
    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2

    #@2e
    .line 1395
    .end local v0    # "form":Ljava/text/MessageFormat;
    .end local v1    # "source":[Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    #@30
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@33
    move-result v2

    #@34
    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1383
    .local p0, "this":Ljavax/security/auth/Subject$ClassSet;, "Ljavax/security/auth/Subject$ClassSet<TT;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 1379
    .local p0, "this":Ljavax/security/auth/Subject$ClassSet;, "Ljavax/security/auth/Subject$ClassSet<TT;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
