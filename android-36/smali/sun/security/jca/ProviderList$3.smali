.class Lsun/security/jca/ProviderList$3;
.super Ljava/util/AbstractList;
.source "ProviderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/jca/ProviderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/security/Provider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lsun/security/jca/ProviderList;


# direct methods
.method constructor blacklist <init>(Lsun/security/jca/ProviderList;)V
    .registers 2
    .param p1, "this$0"    # Lsun/security/jca/ProviderList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lsun/security/jca/ProviderList$3;->this$0:Lsun/security/jca/ProviderList;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api get(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 143
    invoke-virtual {p0, p1}, Lsun/security/jca/ProviderList$3;->get(I)Ljava/security/Provider;

    move-result-object p1

    return-object p1
.end method

.method public blacklist get(I)Ljava/security/Provider;
    .registers 3
    .param p1, "index"    # I

    .line 148
    iget-object v0, p0, Lsun/security/jca/ProviderList$3;->this$0:Lsun/security/jca/ProviderList;

    invoke-virtual {v0, p1}, Lsun/security/jca/ProviderList;->getProvider(I)Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 145
    iget-object v0, p0, Lsun/security/jca/ProviderList$3;->this$0:Lsun/security/jca/ProviderList;

    invoke-static {v0}, Lsun/security/jca/ProviderList;->-$$Nest$fgetconfigs(Lsun/security/jca/ProviderList;)[Lsun/security/jca/ProviderConfig;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
