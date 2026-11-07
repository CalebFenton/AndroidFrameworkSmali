.class Lsun/security/util/ResourcesMgr$2;
.super Ljava/lang/Object;
.source "ResourcesMgr.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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


# instance fields
.field final synthetic blacklist val$altBundleName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lsun/security/util/ResourcesMgr$2;->val$altBundleName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 61
    invoke-virtual {p0}, Lsun/security/util/ResourcesMgr$2;->run()Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/util/ResourceBundle;
    .registers 2

    .line 63
    iget-object v0, p0, Lsun/security/util/ResourcesMgr$2;->val$altBundleName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method
