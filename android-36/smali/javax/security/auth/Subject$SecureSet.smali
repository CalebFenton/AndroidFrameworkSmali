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
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final whitelist serialVersionUID:J = 0x6dcc328017557e27L


# instance fields
.field greylist-max-o elements:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TE;>;"
        }
    .end annotation
.end field

.field greylist-max-o subject:Ljavax/security/auth/Subject;

.field private greylist-max-o which:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetwhich(Ljavax/security/auth/Subject$SecureSet;)I
    .registers 1

    iget p0, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 1010
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "this$0"

    const-class v3, Ljavax/security/auth/Subject;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "elements"

    const-class v3, Ljava/util/LinkedList;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "which"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Ljavax/security/auth/Subject$SecureSet;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljavax/security/auth/Subject;I)V
    .registers 4
    .param p1, "subject"    # Ljavax/security/auth/Subject;
    .param p2, "which"    # I

    .line 1031
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1032
    iput-object p1, p0, Ljavax/security/auth/Subject$SecureSet;->subject:Ljavax/security/auth/Subject;

    .line 1033
    iput p2, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    .line 1034
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    .line 1035
    return-void
.end method

.method constructor greylist-max-o <init>(Ljavax/security/auth/Subject;ILjava/util/Set;)V
    .registers 5
    .param p1, "subject"    # Ljavax/security/auth/Subject;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/security/auth/Subject;",
            "I",
            "Ljava/util/Set<",
            "+TE;>;)V"
        }
    .end annotation

    .line 1037
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    .local p3, "set":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1038
    iput-object p1, p0, Ljavax/security/auth/Subject$SecureSet;->subject:Ljavax/security/auth/Subject;

    .line 1039
    iput p2, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    .line 1040
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    .line 1041
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1336
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 1337
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "this$0"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/security/auth/Subject;

    iput-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->subject:Ljavax/security/auth/Subject;

    .line 1338
    const-string v1, "which"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    .line 1340
    const-string v1, "elements"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 1341
    .local v1, "tmp":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/util/LinkedList;

    if-eq v2, v3, :cond_30

    .line 1342
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    goto :goto_32

    .line 1344
    :cond_30
    iput-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    .line 1346
    :goto_32
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1318
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    iget v0, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    .line 1320
    invoke-virtual {p0}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1321
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1322
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_9

    .line 1325
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_13
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1326
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "this$0"

    iget-object v2, p0, Ljavax/security/auth/Subject$SecureSet;->subject:Ljavax/security/auth/Subject;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1327
    const-string v1, "elements"

    iget-object v2, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1328
    const-string v1, "which"

    iget v2, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1329
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1330
    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1101
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->subject:Ljavax/security/auth/Subject;

    invoke-virtual {v0}, Ljavax/security/auth/Subject;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 1106
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1107
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_25

    .line 1108
    iget v1, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    packed-switch v1, :pswitch_data_5a

    .line 1116
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->MODIFY_PRIVATE_CREDENTIALS_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    goto :goto_25

    .line 1113
    :pswitch_19
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->MODIFY_PUBLIC_CREDENTIALS_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1114
    goto :goto_25

    .line 1110
    :pswitch_1f
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->MODIFY_PRINCIPALS_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1111
    nop

    .line 1121
    :cond_25
    :goto_25
    iget v1, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    packed-switch v1, :pswitch_data_62

    goto :goto_3c

    .line 1123
    :pswitch_2b
    instance-of v1, p1, Ljava/security/Principal;

    if-eqz v1, :cond_30

    goto :goto_3c

    .line 1124
    :cond_30
    new-instance v1, Ljava/lang/SecurityException;

    .line 1125
    const-string v2, "attempting.to.add.an.object.which.is.not.an.instance.of.java.security.Principal.to.a.Subject.s.Principal.Set"

    invoke-static {v2}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1134
    :goto_3c
    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1135
    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1137
    :cond_4b
    const/4 v1, 0x0

    return v1

    .line 1102
    .end local v0    # "sm":Ljava/lang/SecurityManager;
    :cond_4d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1103
    const-string v1, "Subject.is.read.only"

    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_19
    .end packed-switch

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_2b
    .end packed-switch
.end method

.method public whitelist test-api clear()V
    .registers 4

    .line 1287
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    invoke-virtual {p0}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1288
    .local v0, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1290
    iget v1, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_14

    .line 1291
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "next":Ljava/lang/Object;, "TE;"
    goto :goto_1d

    .line 1293
    .end local v1    # "next":Ljava/lang/Object;, "TE;"
    :cond_14
    new-instance v1, Ljavax/security/auth/Subject$SecureSet$6;

    invoke-direct {v1, p0, v0}, Ljavax/security/auth/Subject$SecureSet$6;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    .line 1294
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .line 1300
    .restart local v1    # "next":Ljava/lang/Object;, "TE;"
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1301
    .end local v1    # "next":Ljava/lang/Object;, "TE;"
    goto :goto_4

    .line 1302
    :cond_21
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1170
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    invoke-virtual {p0}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1171
    .local v0, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1173
    iget v1, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_14

    .line 1174
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "next":Ljava/lang/Object;, "TE;"
    goto :goto_3a

    .line 1183
    .end local v1    # "next":Ljava/lang/Object;, "TE;"
    :cond_14
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 1184
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_30

    .line 1185
    new-instance v2, Ljavax/security/auth/PrivateCredentialPermission;

    .line 1186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljavax/security/auth/Subject$SecureSet;->subject:Ljavax/security/auth/Subject;

    .line 1187
    invoke-virtual {v4}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/security/auth/PrivateCredentialPermission;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 1185
    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1189
    :cond_30
    new-instance v2, Ljavax/security/auth/Subject$SecureSet$3;

    invoke-direct {v2, p0, v0}, Ljavax/security/auth/Subject$SecureSet$3;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    .line 1190
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 1197
    .local v1, "next":Ljava/lang/Object;, "TE;"
    :goto_3a
    const/4 v2, 0x1

    if-nez v1, :cond_40

    .line 1198
    if-nez p1, :cond_47

    .line 1199
    return v2

    .line 1201
    :cond_40
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 1202
    return v2

    .line 1204
    .end local v1    # "next":Ljava/lang/Object;, "TE;"
    :cond_47
    goto :goto_4

    .line 1205
    :cond_48
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1048
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    .line 1049
    .local v0, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    new-instance v1, Ljavax/security/auth/Subject$SecureSet$1;

    invoke-direct {v1, p0, v0}, Ljavax/security/auth/Subject$SecureSet$1;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/LinkedList;)V

    return-object v1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1142
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    invoke-virtual {p0}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1143
    .local v0, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1145
    iget v1, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_14

    .line 1146
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "next":Ljava/lang/Object;, "TE;"
    goto :goto_1d

    .line 1148
    .end local v1    # "next":Ljava/lang/Object;, "TE;"
    :cond_14
    new-instance v1, Ljavax/security/auth/Subject$SecureSet$2;

    invoke-direct {v1, p0, v0}, Ljavax/security/auth/Subject$SecureSet$2;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    .line 1149
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .line 1156
    .restart local v1    # "next":Ljava/lang/Object;, "TE;"
    :goto_1d
    const/4 v2, 0x1

    if-nez v1, :cond_26

    .line 1157
    if-nez p1, :cond_30

    .line 1158
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1159
    return v2

    .line 1161
    :cond_26
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1162
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1163
    return v2

    .line 1165
    .end local v1    # "next":Ljava/lang/Object;, "TE;"
    :cond_30
    goto :goto_4

    .line 1166
    :cond_31
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1209
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    const/4 v0, 0x0

    .line 1211
    .local v0, "modified":Z
    invoke-virtual {p0}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1212
    .local v1, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1214
    iget v2, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_18

    .line 1215
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "next":Ljava/lang/Object;, "TE;"
    goto :goto_21

    .line 1217
    .end local v2    # "next":Ljava/lang/Object;, "TE;"
    :cond_18
    new-instance v2, Ljavax/security/auth/Subject$SecureSet$4;

    invoke-direct {v2, p0, v1}, Ljavax/security/auth/Subject$SecureSet$4;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    .line 1218
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    .line 1225
    .restart local v2    # "next":Ljava/lang/Object;, "TE;"
    :goto_21
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1226
    .local v3, "ce":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 1227
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1228
    .local v4, "o":Ljava/lang/Object;
    if-nez v2, :cond_38

    .line 1229
    if-nez v4, :cond_43

    .line 1230
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1231
    const/4 v0, 0x1

    .line 1232
    goto :goto_44

    .line 1234
    :cond_38
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 1235
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1236
    const/4 v0, 0x1

    .line 1237
    goto :goto_44

    .line 1239
    .end local v4    # "o":Ljava/lang/Object;
    :cond_43
    goto :goto_25

    .line 1240
    .end local v2    # "next":Ljava/lang/Object;, "TE;"
    .end local v3    # "ce":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_44
    :goto_44
    goto :goto_8

    .line 1241
    :cond_45
    return v0
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1245
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    const/4 v0, 0x0

    .line 1247
    .local v0, "modified":Z
    const/4 v1, 0x0

    .line 1248
    .local v1, "retain":Z
    invoke-virtual {p0}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1249
    .local v2, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1250
    const/4 v1, 0x0

    .line 1252
    iget v3, p0, Ljavax/security/auth/Subject$SecureSet;->which:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1a

    .line 1253
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "next":Ljava/lang/Object;, "TE;"
    goto :goto_23

    .line 1255
    .end local v3    # "next":Ljava/lang/Object;, "TE;"
    :cond_1a
    new-instance v3, Ljavax/security/auth/Subject$SecureSet$5;

    invoke-direct {v3, p0, v2}, Ljavax/security/auth/Subject$SecureSet$5;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    .line 1256
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    .line 1263
    .restart local v3    # "next":Ljava/lang/Object;, "TE;"
    :goto_23
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1264
    .local v4, "ce":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 1265
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1266
    .local v5, "o":Ljava/lang/Object;
    if-nez v3, :cond_37

    .line 1267
    if-nez v5, :cond_3f

    .line 1268
    const/4 v1, 0x1

    .line 1269
    goto :goto_40

    .line 1271
    :cond_37
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 1272
    const/4 v1, 0x1

    .line 1273
    goto :goto_40

    .line 1275
    .end local v5    # "o":Ljava/lang/Object;
    :cond_3f
    goto :goto_27

    .line 1277
    :cond_40
    :goto_40
    if-nez v1, :cond_47

    .line 1278
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1279
    const/4 v1, 0x0

    .line 1280
    const/4 v0, 0x1

    .line 1282
    .end local v3    # "next":Ljava/lang/Object;, "TE;"
    .end local v4    # "ce":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_47
    goto :goto_9

    .line 1283
    :cond_48
    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 1044
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet;->elements:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
