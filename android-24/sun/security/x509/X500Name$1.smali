.class final Lsun/security/x509/X500Name$1;
.super Ljava/lang/Object;
.source "X500Name.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/x509/X500Name;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1409
    invoke-virtual {p0}, Lsun/security/x509/X500Name$1;->run()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 1410
    const-class v3, Ljavax/security/auth/x500/X500Principal;

    #@4
    .line 1411
    .local v3, "pClass":Ljava/lang/Class;
    new-array v0, v5, [Ljava/lang/Class;

    #@6
    const-class v4, Lsun/security/x509/X500Name;

    #@8
    aput-object v4, v0, v6

    #@a
    .line 1412
    .local v0, "args":[Ljava/lang/Class;
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@d
    move-result-object v1

    #@e
    .line 1413
    .local v1, "cons":Ljava/lang/reflect/Constructor;
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    #@11
    .line 1414
    const-string/jumbo v4, "thisX500Name"

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@17
    move-result-object v2

    #@18
    .line 1415
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@1b
    .line 1416
    const/4 v4, 0x2

    #@1c
    new-array v4, v4, [Ljava/lang/Object;

    #@1e
    aput-object v1, v4, v6

    #@20
    aput-object v2, v4, v5

    #@22
    return-object v4
.end method
