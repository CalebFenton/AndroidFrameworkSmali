.class Ljavax/security/auth/Subject$SecureSet;
.super Ljava/util/AbstractSet;
.source "Subject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/security/auth/Subject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecureSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x6dcc328017557e27L


# instance fields
.field elements:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation
.end field

.field subject:Ljavax/security/auth/Subject;

.field private which:I


# direct methods
.method static synthetic -get0(Ljavax/security/auth/Subject$SecureSet;)I
    .locals 1

    #@0
    iget v0, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 972
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    #@3
    .line 973
    new-instance v1, Ljava/io/ObjectStreamField;

    #@5
    const-string/jumbo v2, "this$0"

    #@8
    const-class v3, Ljavax/security/auth/Subject;

    #@a
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@d
    const/4 v2, 0x0

    #@e
    aput-object v1, v0, v2

    #@10
    .line 974
    new-instance v1, Ljava/io/ObjectStreamField;

    #@12
    const-string/jumbo v2, "elements"

    #@15
    const-class v3, Ljava/util/LinkedList;

    #@17
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@1a
    const/4 v2, 0x1

    #@1b
    aput-object v1, v0, v2

    #@1d
    .line 975
    new-instance v1, Ljava/io/ObjectStreamField;

    #@1f
    const-string/jumbo v2, "which"

    #@22
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@24
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@27
    const/4 v2, 0x2

    #@28
    aput-object v1, v0, v2

    #@2a
    .line 972
    sput-object v0, Ljavax/security/auth/Subject$SecureSet;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@2c
    .line 962
    return-void
.end method

.method constructor <init>(Ljavax/security/auth/Subject;I)V
    .locals 1
    .param p1, "subject"    # Ljavax/security/auth/Subject;
    .param p2, "which"    # I

    #@0
    .prologue
    .line 993
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 994
    iput-object p1, p0, Ljavax/security/auth/Subject$SecureSet;->subject:Ljavax/security/auth/Subject;

    #@5
    .line 995
    iput p2, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    #@7
    .line 996
    new-instance v0, Ljava/util/LinkedList;

    #@9
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@c
    iput-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    #@e
    .line 993
    return-void
.end method

.method constructor <init>(Ljavax/security/auth/Subject;ILjava/util/Set;)V
    .locals 1
    .param p1, "subject"    # Ljavax/security/auth/Subject;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/security/auth/Subject;",
            "I",
            "Ljava/util/Set",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 999
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    .local p3, "set":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 1000
    iput-object p1, p0, Ljavax/security/auth/Subject$SecureSet;->subject:Ljavax/security/auth/Subject;

    #@5
    .line 1001
    iput p2, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    #@7
    .line 1002
    new-instance v0, Ljava/util/LinkedList;

    #@9
    invoke-direct {v0, p3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    #@c
    iput-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    #@e
    .line 999
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 1297
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@4
    move-result-object v0

    #@5
    .line 1298
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v1, "this$0"

    #@8
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljavax/security/auth/Subject;

    #@e
    iput-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->subject:Ljavax/security/auth/Subject;

    #@10
    .line 1299
    const-string/jumbo v1, "elements"

    #@13
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/util/LinkedList;

    #@19
    iput-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    #@1b
    .line 1300
    const-string/jumbo v1, "which"

    #@1e
    const/4 v2, 0x0

    #@1f
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@22
    move-result v1

    #@23
    iput v1, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    #@25
    .line 1295
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1280
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    iget v2, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    #@2
    const/4 v3, 0x3

    #@3
    if-ne v2, v3, :cond_0

    #@5
    .line 1282
    invoke-virtual {p0}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .line 1283
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 1284
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    goto :goto_0

    #@13
    .line 1287
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@16
    move-result-object v0

    #@17
    .line 1288
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v2, "this$0"

    #@1a
    iget-object v3, p0, Ljavax/security/auth/Subject$SecureSet;->subject:Ljavax/security/auth/Subject;

    #@1c
    invoke-virtual {v0, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@1f
    .line 1289
    const-string/jumbo v2, "elements"

    #@22
    iget-object v3, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    #@24
    invoke-virtual {v0, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@27
    .line 1290
    const-string/jumbo v2, "which"

    #@2a
    iget v3, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    #@2c
    invoke-virtual {v0, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@2f
    .line 1291
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@32
    .line 1278
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1063
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->subject:Ljavax/security/auth/Subject;

    #@2
    invoke-virtual {v1}, Ljavax/security/auth/Subject;->isReadOnly()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1064
    new-instance v1, Ljava/lang/IllegalStateException;

    #@a
    .line 1065
    const-string/jumbo v2, "Subject.is.read.only"

    #@d
    invoke-static {v2}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    .line 1064
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    .line 1068
    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@18
    move-result-object v0

    #@19
    .line 1069
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    #@1b
    .line 1070
    iget v1, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    #@1d
    packed-switch v1, :pswitch_data_0

    #@20
    .line 1078
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->MODIFY_PRIVATE_CREDENTIALS_PERMISSION:Ljavax/security/auth/AuthPermission;

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@25
    .line 1083
    :cond_1
    :goto_0
    iget v1, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    #@27
    packed-switch v1, :pswitch_data_1

    #@2a
    .line 1096
    :cond_2
    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    #@2c
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    #@2f
    move-result v1

    #@30
    if-nez v1, :cond_3

    #@32
    .line 1097
    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    #@34
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@37
    move-result v1

    #@38
    return v1

    #@39
    .line 1072
    :pswitch_0
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->MODIFY_PRINCIPALS_PERMISSION:Ljavax/security/auth/AuthPermission;

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@3e
    goto :goto_0

    #@3f
    .line 1075
    :pswitch_1
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->MODIFY_PUBLIC_CREDENTIALS_PERMISSION:Ljavax/security/auth/AuthPermission;

    #@41
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@44
    goto :goto_0

    #@45
    .line 1085
    :pswitch_2
    instance-of v1, p1, Ljava/security/Principal;

    #@47
    if-nez v1, :cond_2

    #@49
    .line 1086
    new-instance v1, Ljava/lang/SecurityException;

    #@4b
    .line 1087
    const-string/jumbo v2, "attempting.to.add.an.object.which.is.not.an.instance.of.java.security.Principal.to.a.Subject.s.Principal.Set"

    #@4e
    .line 1086
    invoke-static {v2}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@55
    throw v1

    #@56
    .line 1099
    :cond_3
    const/4 v1, 0x0

    #@57
    return v1

    #@58
    .line 1070
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    #@60
    .line 1083
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public clear()V
    .locals 4

    #@0
    .prologue
    .line 1249
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    invoke-virtual {p0}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    .line 1250
    .local v0, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 1252
    iget v2, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    #@c
    const/4 v3, 0x3

    #@d
    if-eq v2, v3, :cond_0

    #@f
    .line 1253
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    .line 1262
    .local v1, "next":Ljava/lang/Object;, "TE;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@16
    goto :goto_0

    #@17
    .line 1256
    .end local v1    # "next":Ljava/lang/Object;, "TE;"
    :cond_0
    new-instance v2, Ljavax/security/auth/Subject$SecureSet$6;

    #@19
    invoke-direct {v2, p0, v0}, Ljavax/security/auth/Subject$SecureSet$6;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    #@1c
    .line 1255
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    .restart local v1    # "next":Ljava/lang/Object;, "TE;"
    goto :goto_1

    #@21
    .line 1248
    .end local v1    # "next":Ljava/lang/Object;, "TE;"
    :cond_1
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    const/4 v6, 0x1

    #@1
    .line 1132
    invoke-virtual {p0}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v0

    #@5
    .line 1133
    .local v0, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_4

    #@b
    .line 1135
    iget v3, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    #@d
    const/4 v4, 0x3

    #@e
    if-eq v3, v4, :cond_1

    #@10
    .line 1136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    .line 1159
    .local v1, "next":Ljava/lang/Object;, "TE;"
    :goto_0
    if-nez v1, :cond_3

    #@16
    .line 1160
    if-nez p1, :cond_0

    #@18
    .line 1161
    return v6

    #@19
    .line 1145
    .end local v1    # "next":Ljava/lang/Object;, "TE;"
    :cond_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@1c
    move-result-object v2

    #@1d
    .line 1146
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_2

    #@1f
    .line 1147
    new-instance v3, Ljavax/security/auth/PrivateCredentialPermission;

    #@21
    .line 1148
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    .line 1149
    iget-object v5, p0, Ljavax/security/auth/Subject$SecureSet;->subject:Ljavax/security/auth/Subject;

    #@2b
    invoke-virtual {v5}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    #@2e
    move-result-object v5

    #@2f
    .line 1147
    invoke-direct {v3, v4, v5}, Ljavax/security/auth/PrivateCredentialPermission;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@35
    .line 1152
    :cond_2
    new-instance v3, Ljavax/security/auth/Subject$SecureSet$3;

    #@37
    invoke-direct {v3, p0, v0}, Ljavax/security/auth/Subject$SecureSet$3;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    #@3a
    .line 1151
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@3d
    move-result-object v1

    #@3e
    .restart local v1    # "next":Ljava/lang/Object;, "TE;"
    goto :goto_0

    #@3f
    .line 1163
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v3

    #@43
    if-eqz v3, :cond_0

    #@45
    .line 1164
    return v6

    #@46
    .line 1167
    .end local v1    # "next":Ljava/lang/Object;, "TE;"
    :cond_4
    const/4 v3, 0x0

    #@47
    return v3
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1010
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    #@2
    .line 1011
    .local v0, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    new-instance v1, Ljavax/security/auth/Subject$SecureSet$1;

    #@4
    invoke-direct {v1, p0, v0}, Ljavax/security/auth/Subject$SecureSet$1;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/LinkedList;)V

    #@7
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    const/4 v4, 0x1

    #@1
    .line 1104
    invoke-virtual {p0}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v0

    #@5
    .line 1105
    .local v0, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_3

    #@b
    .line 1107
    iget v2, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    #@d
    const/4 v3, 0x3

    #@e
    if-eq v2, v3, :cond_1

    #@10
    .line 1108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    .line 1118
    .local v1, "next":Ljava/lang/Object;, "TE;"
    :goto_0
    if-nez v1, :cond_2

    #@16
    .line 1119
    if-nez p1, :cond_0

    #@18
    .line 1120
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@1b
    .line 1121
    return v4

    #@1c
    .line 1111
    .end local v1    # "next":Ljava/lang/Object;, "TE;"
    :cond_1
    new-instance v2, Ljavax/security/auth/Subject$SecureSet$2;

    #@1e
    invoke-direct {v2, p0, v0}, Ljavax/security/auth/Subject$SecureSet$2;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    #@21
    .line 1110
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    .restart local v1    # "next":Ljava/lang/Object;, "TE;"
    goto :goto_0

    #@26
    .line 1123
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 1124
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@2f
    .line 1125
    return v4

    #@30
    .line 1128
    .end local v1    # "next":Ljava/lang/Object;, "TE;"
    :cond_3
    const/4 v2, 0x0

    #@31
    return v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1172
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v2, 0x0

    #@1
    .line 1173
    .local v2, "modified":Z
    invoke-virtual {p0}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v1

    #@5
    .line 1174
    .local v1, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v5

    #@9
    if-eqz v5, :cond_4

    #@b
    .line 1176
    iget v5, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    #@d
    const/4 v6, 0x3

    #@e
    if-eq v5, v6, :cond_2

    #@10
    .line 1177
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    .line 1187
    .local v3, "next":Ljava/lang/Object;, "TE;"
    :goto_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v0

    #@18
    .line 1188
    .local v0, "ce":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_0

    #@1e
    .line 1189
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    .line 1190
    .local v4, "o":Ljava/lang/Object;
    if-nez v3, :cond_3

    #@24
    .line 1191
    if-nez v4, :cond_1

    #@26
    .line 1192
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@29
    .line 1193
    const/4 v2, 0x1

    #@2a
    .line 1194
    goto :goto_0

    #@2b
    .line 1180
    .end local v0    # "ce":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v3    # "next":Ljava/lang/Object;, "TE;"
    .end local v4    # "o":Ljava/lang/Object;
    :cond_2
    new-instance v5, Ljavax/security/auth/Subject$SecureSet$4;

    #@2d
    invoke-direct {v5, p0, v1}, Ljavax/security/auth/Subject$SecureSet$4;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    #@30
    .line 1179
    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@33
    move-result-object v3

    #@34
    .restart local v3    # "next":Ljava/lang/Object;, "TE;"
    goto :goto_1

    #@35
    .line 1196
    .restart local v0    # "ce":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v5

    #@39
    if-eqz v5, :cond_1

    #@3b
    .line 1197
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@3e
    .line 1198
    const/4 v2, 0x1

    #@3f
    .line 1199
    goto :goto_0

    #@40
    .line 1203
    .end local v0    # "ce":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v3    # "next":Ljava/lang/Object;, "TE;"
    .end local v4    # "o":Ljava/lang/Object;
    :cond_4
    return v2
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1208
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v2, 0x0

    #@1
    .line 1209
    .local v2, "modified":Z
    const/4 v5, 0x0

    #@2
    .line 1210
    .local v5, "retain":Z
    invoke-virtual {p0}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .line 1211
    .local v1, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v6

    #@a
    if-eqz v6, :cond_5

    #@c
    .line 1212
    const/4 v5, 0x0

    #@d
    .line 1214
    iget v6, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    #@f
    const/4 v7, 0x3

    #@10
    if-eq v6, v7, :cond_3

    #@12
    .line 1215
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    .line 1225
    .local v3, "next":Ljava/lang/Object;, "TE;"
    :goto_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v0

    #@1a
    .line 1226
    .local v0, "ce":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_2

    #@20
    .line 1227
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v4

    #@24
    .line 1228
    .local v4, "o":Ljava/lang/Object;
    if-nez v3, :cond_4

    #@26
    .line 1229
    if-nez v4, :cond_1

    #@28
    .line 1230
    const/4 v5, 0x1

    #@29
    .line 1239
    .end local v4    # "o":Ljava/lang/Object;
    :cond_2
    :goto_2
    if-nez v5, :cond_0

    #@2b
    .line 1240
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@2e
    .line 1241
    const/4 v5, 0x0

    #@2f
    .line 1242
    const/4 v2, 0x1

    #@30
    goto :goto_0

    #@31
    .line 1218
    .end local v0    # "ce":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v3    # "next":Ljava/lang/Object;, "TE;"
    :cond_3
    new-instance v6, Ljavax/security/auth/Subject$SecureSet$5;

    #@33
    invoke-direct {v6, p0, v1}, Ljavax/security/auth/Subject$SecureSet$5;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    #@36
    .line 1217
    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@39
    move-result-object v3

    #@3a
    .restart local v3    # "next":Ljava/lang/Object;, "TE;"
    goto :goto_1

    #@3b
    .line 1233
    .restart local v0    # "ce":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v6

    #@3f
    if-eqz v6, :cond_1

    #@41
    .line 1234
    const/4 v5, 0x1

    #@42
    .line 1235
    goto :goto_2

    #@43
    .line 1245
    .end local v0    # "ce":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v3    # "next":Ljava/lang/Object;, "TE;"
    .end local v4    # "o":Ljava/lang/Object;
    :cond_5
    return v2
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 1006
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
