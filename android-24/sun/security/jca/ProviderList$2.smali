.class Lsun/security/jca/ProviderList$2;
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
        "Ljava/util/AbstractList",
        "<",
        "Ljava/security/Provider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/security/jca/ProviderList;


# direct methods
.method constructor <init>(Lsun/security/jca/ProviderList;)V
    .locals 0
    .param p1, "this$0"    # Lsun/security/jca/ProviderList;

    #@0
    .prologue
    .line 142
    iput-object p1, p0, Lsun/security/jca/ProviderList$2;->this$0:Lsun/security/jca/ProviderList;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lsun/security/jca/ProviderList$2;->get(I)Ljava/security/Provider;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get(I)Ljava/security/Provider;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Lsun/security/jca/ProviderList$2;->this$0:Lsun/security/jca/ProviderList;

    #@2
    invoke-virtual {v0, p1}, Lsun/security/jca/ProviderList;->getProvider(I)Ljava/security/Provider;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Lsun/security/jca/ProviderList$2;->this$0:Lsun/security/jca/ProviderList;

    #@2
    invoke-static {v0}, Lsun/security/jca/ProviderList;->-get0(Lsun/security/jca/ProviderList;)[Lsun/security/jca/ProviderConfig;

    #@5
    move-result-object v0

    #@6
    array-length v0, v0

    #@7
    return v0
.end method
