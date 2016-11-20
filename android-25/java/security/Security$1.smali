.class final Ljava/security/Security$1;
.super Ljava/lang/Object;
.source "Security.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/security/Security;->invalidateSMCache(Ljava/lang/String;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$pa:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .param p1, "val$pa"    # Z

    #@0
    .prologue
    .line 707
    iput-boolean p1, p0, Ljava/security/Security$1;->val$pa:Z

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 708
    invoke-virtual {p0}, Ljava/security/Security$1;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 712
    :try_start_0
    const-string/jumbo v4, "java.lang.SecurityManager"

    #@4
    const/4 v5, 0x0

    #@5
    const/4 v6, 0x0

    #@6
    .line 711
    invoke-static {v4, v5, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@9
    move-result-object v1

    #@a
    .line 713
    .local v1, "cl":Ljava/lang/Class;
    const/4 v3, 0x0

    #@b
    .line 714
    .local v3, "f":Ljava/lang/reflect/Field;
    const/4 v0, 0x0

    #@c
    .line 716
    .local v0, "accessible":Z
    iget-boolean v4, p0, Ljava/security/Security$1;->val$pa:Z

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 717
    const-string/jumbo v4, "packageAccessValid"

    #@13
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@16
    move-result-object v3

    #@17
    .line 718
    .local v3, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    #@1a
    move-result v0

    #@1b
    .line 719
    .local v0, "accessible":Z
    const/4 v4, 0x1

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    #@1f
    .line 725
    :goto_0
    const/4 v4, 0x0

    #@20
    invoke-virtual {v3, v3, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    #@23
    .line 726
    invoke-virtual {v3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    #@26
    .line 739
    .end local v0    # "accessible":Z
    .end local v1    # "cl":Ljava/lang/Class;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    :goto_1
    return-object v7

    #@27
    .line 721
    .local v0, "accessible":Z
    .restart local v1    # "cl":Ljava/lang/Class;
    .local v3, "f":Ljava/lang/reflect/Field;
    :cond_0
    const-string/jumbo v4, "packageDefinitionValid"

    #@2a
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@2d
    move-result-object v3

    #@2e
    .line 722
    .local v3, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    #@31
    move-result v0

    #@32
    .line 723
    .local v0, "accessible":Z
    const/4 v4, 0x1

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    goto :goto_0

    #@37
    .line 728
    .end local v0    # "accessible":Z
    .end local v1    # "cl":Ljava/lang/Class;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    #@38
    .local v2, "e1":Ljava/lang/Exception;
    goto :goto_1
.end method
