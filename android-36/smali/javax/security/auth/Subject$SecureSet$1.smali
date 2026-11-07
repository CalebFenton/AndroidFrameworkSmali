.class Ljavax/security/auth/Subject$SecureSet$1;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field blacklist i:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljavax/security/auth/Subject$SecureSet;

.field final synthetic blacklist val$list:Ljava/util/LinkedList;


# direct methods
.method constructor blacklist <init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/LinkedList;)V
    .registers 4
    .param p1, "this$0"    # Ljavax/security/auth/Subject$SecureSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1049
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet$1;, "Ljavax/security/auth/Subject$SecureSet$1;"
    iput-object p1, p0, Ljavax/security/auth/Subject$SecureSet$1;->this$0:Ljavax/security/auth/Subject$SecureSet;

    iput-object p2, p0, Ljavax/security/auth/Subject$SecureSet$1;->val$list:Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    iget-object p2, p0, Ljavax/security/auth/Subject$SecureSet$1;->val$list:Ljava/util/LinkedList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    iput-object p2, p0, Ljavax/security/auth/Subject$SecureSet$1;->i:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 1052
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet$1;, "Ljavax/security/auth/Subject$SecureSet$1;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1055
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet$1;, "Ljavax/security/auth/Subject$SecureSet$1;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$1;->this$0:Ljavax/security/auth/Subject$SecureSet;

    invoke-static {v0}, Ljavax/security/auth/Subject$SecureSet;->-$$Nest$fgetwhich(Ljavax/security/auth/Subject$SecureSet;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    .line 1056
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1059
    :cond_10
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1060
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_42

    .line 1062
    :try_start_16
    new-instance v1, Ljavax/security/auth/PrivateCredentialPermission;

    iget-object v2, p0, Ljavax/security/auth/Subject$SecureSet$1;->val$list:Ljava/util/LinkedList;

    iget-object v3, p0, Ljavax/security/auth/Subject$SecureSet$1;->i:Ljava/util/ListIterator;

    .line 1063
    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljavax/security/auth/Subject$SecureSet$1;->this$0:Ljavax/security/auth/Subject$SecureSet;

    iget-object v3, v3, Ljavax/security/auth/Subject$SecureSet;->subject:Ljavax/security/auth/Subject;

    .line 1064
    invoke-virtual {v3}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/security/auth/PrivateCredentialPermission;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 1062
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_3a} :catch_3b

    .line 1068
    goto :goto_42

    .line 1065
    :catch_3b
    move-exception v1

    .line 1066
    .local v1, "se":Ljava/lang/SecurityException;
    iget-object v2, p0, Ljavax/security/auth/Subject$SecureSet$1;->i:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 1067
    throw v1

    .line 1070
    .end local v1    # "se":Ljava/lang/SecurityException;
    :cond_42
    :goto_42
    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet$1;->i:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 1075
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet$1;, "Ljavax/security/auth/Subject$SecureSet$1;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$1;->this$0:Ljavax/security/auth/Subject$SecureSet;

    iget-object v0, v0, Ljavax/security/auth/Subject$SecureSet;->subject:Ljavax/security/auth/Subject;

    invoke-virtual {v0}, Ljavax/security/auth/Subject;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_31

    .line 1080
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1081
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_2b

    .line 1082
    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet$1;->this$0:Ljavax/security/auth/Subject$SecureSet;

    invoke-static {v1}, Ljavax/security/auth/Subject$SecureSet;->-$$Nest$fgetwhich(Ljavax/security/auth/Subject$SecureSet;)I

    move-result v1

    packed-switch v1, :pswitch_data_3e

    .line 1090
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->MODIFY_PRIVATE_CREDENTIALS_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    goto :goto_2b

    .line 1087
    :pswitch_1f
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->MODIFY_PUBLIC_CREDENTIALS_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1088
    goto :goto_2b

    .line 1084
    :pswitch_25
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->MODIFY_PRINCIPALS_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1085
    nop

    .line 1094
    :cond_2b
    :goto_2b
    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet$1;->i:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 1095
    return-void

    .line 1076
    .end local v0    # "sm":Ljava/lang/SecurityManager;
    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1077
    const-string v1, "Subject.is.read.only"

    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_25
        :pswitch_1f
    .end packed-switch
.end method
