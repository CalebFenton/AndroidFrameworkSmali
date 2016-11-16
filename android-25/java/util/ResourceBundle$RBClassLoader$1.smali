.class final Ljava/util/ResourceBundle$RBClassLoader$1;
.super Ljava/lang/Object;
.source "ResourceBundle.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle$RBClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/util/ResourceBundle$RBClassLoader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 442
    invoke-virtual {p0}, Ljava/util/ResourceBundle$RBClassLoader$1;->run()Ljava/util/ResourceBundle$RBClassLoader;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/util/ResourceBundle$RBClassLoader;
    .locals 2

    #@0
    .prologue
    .line 443
    new-instance v0, Ljava/util/ResourceBundle$RBClassLoader;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$RBClassLoader;-><init>(Ljava/util/ResourceBundle$RBClassLoader;)V

    #@6
    return-object v0
.end method
