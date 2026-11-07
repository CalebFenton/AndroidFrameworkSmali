.class public Landroid/media/permission/IdentityContext;
.super Ljava/lang/Object;
.source "IdentityContext.java"

# interfaces
.implements Landroid/media/permission/SafeCloseable;


# static fields
.field private static blacklist sThreadLocalIdentity:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/media/permission/Identity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mPrior:Landroid/media/permission/Identity;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/media/permission/IdentityContext;->sThreadLocalIdentity:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/permission/Identity;)V
    .registers 3
    .param p1, "identity"    # Landroid/media/permission/Identity;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Landroid/media/permission/IdentityContext;->get()Landroid/media/permission/Identity;

    move-result-object v0

    iput-object v0, p0, Landroid/media/permission/IdentityContext;->mPrior:Landroid/media/permission/Identity;

    .line 89
    invoke-static {p1}, Landroid/media/permission/IdentityContext;->set(Landroid/media/permission/Identity;)V

    .line 90
    return-void
.end method

.method public static blacklist create(Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;
    .registers 2
    .param p0, "identity"    # Landroid/media/permission/Identity;

    .line 60
    new-instance v0, Landroid/media/permission/IdentityContext;

    invoke-direct {v0, p0}, Landroid/media/permission/IdentityContext;-><init>(Landroid/media/permission/Identity;)V

    return-object v0
.end method

.method public static blacklist get()Landroid/media/permission/Identity;
    .registers 1

    .line 70
    sget-object v0, Landroid/media/permission/IdentityContext;->sThreadLocalIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/permission/Identity;

    return-object v0
.end method

.method public static blacklist getNonNull()Landroid/media/permission/Identity;
    .registers 3

    .line 81
    invoke-static {}, Landroid/media/permission/IdentityContext;->get()Landroid/media/permission/Identity;

    move-result-object v0

    .line 82
    .local v0, "result":Landroid/media/permission/Identity;
    if-eqz v0, :cond_7

    .line 85
    return-object v0

    .line 83
    :cond_7
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Identity context is not set"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist set(Landroid/media/permission/Identity;)V
    .registers 2
    .param p0, "identity"    # Landroid/media/permission/Identity;

    .line 98
    sget-object v0, Landroid/media/permission/IdentityContext;->sThreadLocalIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 99
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/media/permission/IdentityContext;->mPrior:Landroid/media/permission/Identity;

    invoke-static {v0}, Landroid/media/permission/IdentityContext;->set(Landroid/media/permission/Identity;)V

    .line 95
    return-void
.end method
