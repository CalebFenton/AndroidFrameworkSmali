.class Ljava/util/ResourceBundle$RBClassLoader$1;
.super Ljava/lang/Object;
.source "ResourceBundle.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle$RBClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/util/ResourceBundle$RBClassLoader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 520
    invoke-virtual {p0}, Ljava/util/ResourceBundle$RBClassLoader$1;->run()Ljava/util/ResourceBundle$RBClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/util/ResourceBundle$RBClassLoader;
    .registers 3

    .line 522
    new-instance v0, Ljava/util/ResourceBundle$RBClassLoader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$RBClassLoader;-><init>(Ljava/util/ResourceBundle-IA;)V

    return-object v0
.end method
