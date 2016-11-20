.class public Lcom/android/org/bouncycastle/util/Properties;
.super Ljava/lang/Object;
.source "Properties.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static isOverrideSet(Ljava/lang/String;)Z
    .locals 3
    .param p0, "propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 16
    :try_start_0
    const-string/jumbo v1, "true"

    #@3
    new-instance v2, Lcom/android/org/bouncycastle/util/Properties$1;

    #@5
    invoke-direct {v2, p0}, Lcom/android/org/bouncycastle/util/Properties$1;-><init>(Ljava/lang/String;)V

    #@8
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 32
    :catch_0
    move-exception v0

    #@12
    .line 33
    .local v0, "e":Ljava/security/AccessControlException;
    const/4 v1, 0x0

    #@13
    return v1
.end method
