.class Lsun/security/jca/ProviderList$2;
.super Ljava/lang/Object;
.source "ProviderList.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/jca/ProviderList;->fromSecurityProperties()Lsun/security/jca/ProviderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Lsun/security/jca/ProviderList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 84
    invoke-virtual {p0}, Lsun/security/jca/ProviderList$2;->run()Lsun/security/jca/ProviderList;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Lsun/security/jca/ProviderList;
    .registers 3

    .line 86
    new-instance v0, Lsun/security/jca/ProviderList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsun/security/jca/ProviderList;-><init>(Lsun/security/jca/ProviderList-IA;)V

    return-object v0
.end method
