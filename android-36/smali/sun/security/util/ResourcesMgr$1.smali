.class Lsun/security/util/ResourcesMgr$1;
.super Ljava/lang/Object;
.source "ResourcesMgr.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/util/ResourceBundle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 44
    invoke-virtual {p0}, Lsun/security/util/ResourcesMgr$1;->run()Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/util/ResourceBundle;
    .registers 2

    .line 47
    const-class v0, Lsun/security/util/Resources;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method
