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
        "Ljava/util/AbstractSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private greylist-max-o set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljavax/security/auth/Subject;

.field private greylist-max-o which:I


# direct methods
.method constructor blacklist <init>(Ljavax/security/auth/Subject;ILjava/lang/Class;)V
    .registers 5
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1359
    .local p0, "this":Ljavax/security/auth/Subject$ClassSet;, "Ljavax/security/auth/Subject$ClassSet<TT;>;"
    .local p3, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iput-object p1, p0, Ljavax/security/auth/Subject$ClassSet;->this$0:Ljavax/security/auth/Subject;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1360
    iput p2, p0, Ljavax/security/auth/Subject$ClassSet;->which:I

    .line 1361
    iput-object p3, p0, Ljavax/security/auth/Subject$ClassSet;->c:Ljava/lang/Class;

    .line 1362
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    .line 1364
    packed-switch p2, :pswitch_data_36

    .line 1372
    iget-object p1, p1, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    monitor-enter p1

    goto :goto_2d

    .line 1369
    :pswitch_17
    iget-object v0, p1, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    monitor-enter v0

    :try_start_1a
    invoke-direct {p0}, Ljavax/security/auth/Subject$ClassSet;->populateSet()V

    monitor-exit v0

    .line 1370
    goto :goto_31

    .line 1369
    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_1f

    throw p1

    .line 1366
    :pswitch_22
    iget-object v0, p1, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    monitor-enter v0

    :try_start_25
    invoke-direct {p0}, Ljavax/security/auth/Subject$ClassSet;->populateSet()V

    monitor-exit v0

    .line 1367
    goto :goto_31

    .line 1366
    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2a

    throw p1

    .line 1372
    :goto_2d
    :try_start_2d
    invoke-direct {p0}, Ljavax/security/auth/Subject$ClassSet;->populateSet()V

    monitor-exit p1

    .line 1375
    :goto_31
    return-void

    .line 1372
    :catchall_32
    move-exception v0

    monitor-exit p1
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_32

    throw v0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_22
        :pswitch_17
    .end packed-switch
.end method

.method private greylist-max-o populateSet()V
    .registers 7

    .line 1380
    .local p0, "this":Ljavax/security/auth/Subject$ClassSet;, "Ljavax/security/auth/Subject$ClassSet<TT;>;"
    iget v0, p0, Ljavax/security/auth/Subject$ClassSet;->which:I

    packed-switch v0, :pswitch_data_72

    .line 1388
    iget-object v0, p0, Ljavax/security/auth/Subject$ClassSet;->this$0:Ljavax/security/auth/Subject;

    iget-object v0, v0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    goto :goto_20

    .line 1385
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :pswitch_e
    iget-object v0, p0, Ljavax/security/auth/Subject$ClassSet;->this$0:Ljavax/security/auth/Subject;

    iget-object v0, v0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1386
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    goto :goto_20

    .line 1382
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :pswitch_17
    iget-object v0, p0, Ljavax/security/auth/Subject$ClassSet;->this$0:Ljavax/security/auth/Subject;

    iget-object v0, v0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1383
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    nop

    .line 1395
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1397
    iget v1, p0, Ljavax/security/auth/Subject$ClassSet;->which:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_35

    .line 1398
    new-instance v1, Ljavax/security/auth/Subject$ClassSet$1;

    invoke-direct {v1, p0, v0}, Ljavax/security/auth/Subject$ClassSet$1;-><init>(Ljavax/security/auth/Subject$ClassSet;Ljava/util/Iterator;)V

    .line 1399
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "next":Ljava/lang/Object;
    goto :goto_39

    .line 1405
    .end local v1    # "next":Ljava/lang/Object;
    :cond_35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1407
    .restart local v1    # "next":Ljava/lang/Object;
    :goto_39
    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 1408
    iget v3, p0, Ljavax/security/auth/Subject$ClassSet;->which:I

    if-eq v3, v2, :cond_4f

    .line 1409
    iget-object v2, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 1412
    :cond_4f
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 1413
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_6b

    .line 1414
    new-instance v3, Ljavax/security/auth/PrivateCredentialPermission;

    .line 1415
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljavax/security/auth/Subject$ClassSet;->this$0:Ljavax/security/auth/Subject;

    .line 1416
    invoke-virtual {v5}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/security/auth/PrivateCredentialPermission;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 1414
    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1418
    :cond_6b
    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1421
    .end local v1    # "next":Ljava/lang/Object;
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    :cond_70
    :goto_70
    goto :goto_20

    .line 1422
    :cond_71
    return-void

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_17
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1434
    .local p0, "this":Ljavax/security/auth/Subject$ClassSet;, "Ljavax/security/auth/Subject$ClassSet<TT;>;"
    .local p1, "o":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Ljavax/security/auth/Subject$ClassSet;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1441
    iget-object v0, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1435
    :cond_13
    new-instance v0, Ljava/text/MessageFormat;

    .line 1436
    const-string v1, "attempting.to.add.an.object.which.is.not.an.instance.of.class"

    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 1437
    .local v0, "form":Ljava/text/MessageFormat;
    iget-object v1, p0, Ljavax/security/auth/Subject$ClassSet;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1438
    .local v1, "source":[Ljava/lang/Object;
    new-instance v2, Ljava/lang/SecurityException;

    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1429
    .local p0, "this":Ljavax/security/auth/Subject$ClassSet;, "Ljavax/security/auth/Subject$ClassSet<TT;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 1425
    .local p0, "this":Ljavax/security/auth/Subject$ClassSet;, "Ljavax/security/auth/Subject$ClassSet<TT;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
