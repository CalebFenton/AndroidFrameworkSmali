.class Lsun/security/jca/ProviderConfig$3;
.super Ljava/lang/Object;
.source "ProviderConfig.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/jca/ProviderConfig;->expand(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$value:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 285
    iput-object p1, p0, Lsun/security/jca/ProviderConfig$3;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 285
    invoke-virtual {p0}, Lsun/security/jca/ProviderConfig$3;->run()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/String;
    .registers 3

    .line 288
    :try_start_0
    iget-object v0, p0, Lsun/security/jca/ProviderConfig$3;->val$value:Ljava/lang/String;

    invoke-static {v0}, Lsun/security/util/PropertyExpander;->expand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 289
    :catch_7
    move-exception v0

    .line 290
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/ProviderException;

    invoke-direct {v1, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
