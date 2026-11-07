.class Ljava/security/Security$1;
.super Ljava/lang/Object;
.source "Security.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/security/Security;->invalidateSMCache(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$pa:Z


# direct methods
.method constructor blacklist <init>(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 749
    iput-boolean p1, p0, Ljava/security/Security$1;->val$pa:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 749
    invoke-virtual {p0}, Ljava/security/Security$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 8

    .line 753
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "java.lang.SecurityManager"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 755
    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 756
    .local v3, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    .line 758
    .local v4, "accessible":Z
    iget-boolean v5, p0, Ljava/security/Security$1;->val$pa:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_1d

    .line 759
    const-string v5, "packageAccessValid"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 760
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .local v5, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v3

    .line 761
    .end local v4    # "accessible":Z
    .local v3, "accessible":Z
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_2a

    .line 763
    .end local v5    # "f":Ljava/lang/reflect/Field;
    .local v3, "f":Ljava/lang/reflect/Field;
    .restart local v4    # "accessible":Z
    :cond_1d
    const-string v5, "packageDefinitionValid"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 764
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .restart local v5    # "f":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v3

    .line 765
    .end local v4    # "accessible":Z
    .local v3, "accessible":Z
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 767
    :goto_2a
    invoke-virtual {v5, v5, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 768
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_31

    .line 780
    .end local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "accessible":Z
    .end local v5    # "f":Ljava/lang/reflect/Field;
    goto :goto_32

    .line 770
    :catch_31
    move-exception v1

    .line 781
    :goto_32
    return-object v0
.end method
