.class Ljavax/security/auth/Subject$AuthPermissionHolder;
.super Ljava/lang/Object;
.source "Subject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/security/auth/Subject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthPermissionHolder"
.end annotation


# static fields
.field static final greylist-max-o DO_AS_PERMISSION:Ljavax/security/auth/AuthPermission;

.field static final greylist-max-o DO_AS_PRIVILEGED_PERMISSION:Ljavax/security/auth/AuthPermission;

.field static final greylist-max-o GET_SUBJECT_PERMISSION:Ljavax/security/auth/AuthPermission;

.field static final greylist-max-o MODIFY_PRINCIPALS_PERMISSION:Ljavax/security/auth/AuthPermission;

.field static final greylist-max-o MODIFY_PRIVATE_CREDENTIALS_PERMISSION:Ljavax/security/auth/AuthPermission;

.field static final greylist-max-o MODIFY_PUBLIC_CREDENTIALS_PERMISSION:Ljavax/security/auth/AuthPermission;

.field static final greylist-max-o SET_READ_ONLY_PERMISSION:Ljavax/security/auth/AuthPermission;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1446
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "doAs"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject$AuthPermissionHolder;->DO_AS_PERMISSION:Ljavax/security/auth/AuthPermission;

    .line 1449
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "doAsPrivileged"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject$AuthPermissionHolder;->DO_AS_PRIVILEGED_PERMISSION:Ljavax/security/auth/AuthPermission;

    .line 1452
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "setReadOnly"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject$AuthPermissionHolder;->SET_READ_ONLY_PERMISSION:Ljavax/security/auth/AuthPermission;

    .line 1455
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "getSubject"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject$AuthPermissionHolder;->GET_SUBJECT_PERMISSION:Ljavax/security/auth/AuthPermission;

    .line 1458
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "modifyPrincipals"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject$AuthPermissionHolder;->MODIFY_PRINCIPALS_PERMISSION:Ljavax/security/auth/AuthPermission;

    .line 1461
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "modifyPublicCredentials"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject$AuthPermissionHolder;->MODIFY_PUBLIC_CREDENTIALS_PERMISSION:Ljavax/security/auth/AuthPermission;

    .line 1464
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "modifyPrivateCredentials"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject$AuthPermissionHolder;->MODIFY_PRIVATE_CREDENTIALS_PERMISSION:Ljavax/security/auth/AuthPermission;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 1445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
