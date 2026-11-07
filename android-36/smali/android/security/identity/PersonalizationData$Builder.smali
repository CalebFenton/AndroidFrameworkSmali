.class public final Landroid/security/identity/PersonalizationData$Builder;
.super Ljava/lang/Object;
.source "PersonalizationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/PersonalizationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mData:Landroid/security/identity/PersonalizationData;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Landroid/security/identity/PersonalizationData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/security/identity/PersonalizationData;-><init>(Landroid/security/identity/PersonalizationData-IA;)V

    iput-object v0, p0, Landroid/security/identity/PersonalizationData$Builder;->mData:Landroid/security/identity/PersonalizationData;

    .line 113
    return-void
.end method


# virtual methods
.method public whitelist addAccessControlProfile(Landroid/security/identity/AccessControlProfile;)Landroid/security/identity/PersonalizationData$Builder;
    .registers 3
    .param p1, "profile"    # Landroid/security/identity/AccessControlProfile;

    .line 144
    iget-object v0, p0, Landroid/security/identity/PersonalizationData$Builder;->mData:Landroid/security/identity/PersonalizationData;

    invoke-static {v0}, Landroid/security/identity/PersonalizationData;->-$$Nest$fgetmProfiles(Landroid/security/identity/PersonalizationData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    return-object p0
.end method

.method public whitelist build()Landroid/security/identity/PersonalizationData;
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/security/identity/PersonalizationData$Builder;->mData:Landroid/security/identity/PersonalizationData;

    return-object v0
.end method

.method public whitelist putEntry(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;[B)Landroid/security/identity/PersonalizationData$Builder;
    .registers 8
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p4, "value"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Landroid/security/identity/AccessControlProfileId;",
            ">;[B)",
            "Landroid/security/identity/PersonalizationData$Builder;"
        }
    .end annotation

    .line 127
    .local p3, "accessControlProfileIds":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/security/identity/AccessControlProfileId;>;"
    iget-object v0, p0, Landroid/security/identity/PersonalizationData$Builder;->mData:Landroid/security/identity/PersonalizationData;

    invoke-static {v0}, Landroid/security/identity/PersonalizationData;->-$$Nest$fgetmNamespaces(Landroid/security/identity/PersonalizationData;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/identity/PersonalizationData$NamespaceData;

    .line 128
    .local v0, "namespaceData":Landroid/security/identity/PersonalizationData$NamespaceData;
    if-nez v0, :cond_1e

    .line 129
    new-instance v1, Landroid/security/identity/PersonalizationData$NamespaceData;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/security/identity/PersonalizationData$NamespaceData;-><init>(Ljava/lang/String;Landroid/security/identity/PersonalizationData-IA;)V

    move-object v0, v1

    .line 130
    iget-object v1, p0, Landroid/security/identity/PersonalizationData$Builder;->mData:Landroid/security/identity/PersonalizationData;

    invoke-static {v1}, Landroid/security/identity/PersonalizationData;->-$$Nest$fgetmNamespaces(Landroid/security/identity/PersonalizationData;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_1e
    invoke-static {v0}, Landroid/security/identity/PersonalizationData$NamespaceData;->-$$Nest$fgetmEntries(Landroid/security/identity/PersonalizationData$NamespaceData;)Ljava/util/LinkedHashMap;

    move-result-object v1

    new-instance v2, Landroid/security/identity/PersonalizationData$EntryData;

    invoke-direct {v2, p4, p3}, Landroid/security/identity/PersonalizationData$EntryData;-><init>([BLjava/util/Collection;)V

    invoke-virtual {v1, p2, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-object p0
.end method
