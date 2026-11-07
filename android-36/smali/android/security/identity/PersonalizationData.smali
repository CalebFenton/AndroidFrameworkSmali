.class public Landroid/security/identity/PersonalizationData;
.super Ljava/lang/Object;
.source "PersonalizationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/PersonalizationData$NamespaceData;,
        Landroid/security/identity/PersonalizationData$Builder;,
        Landroid/security/identity/PersonalizationData$EntryData;
    }
.end annotation


# instance fields
.field private blacklist mNamespaces:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/security/identity/PersonalizationData$NamespaceData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProfiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/security/identity/AccessControlProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNamespaces(Landroid/security/identity/PersonalizationData;)Ljava/util/LinkedHashMap;
    .registers 1

    iget-object p0, p0, Landroid/security/identity/PersonalizationData;->mNamespaces:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProfiles(Landroid/security/identity/PersonalizationData;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/security/identity/PersonalizationData;->mProfiles:Ljava/util/ArrayList;

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/security/identity/PersonalizationData;->mProfiles:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/security/identity/PersonalizationData;->mNamespaces:Ljava/util/LinkedHashMap;

    .line 40
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/security/identity/PersonalizationData-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/security/identity/PersonalizationData;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist getAccessControlProfiles()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/security/identity/AccessControlProfile;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Landroid/security/identity/PersonalizationData;->mProfiles:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method blacklist getNamespaceData(Ljava/lang/String;)Landroid/security/identity/PersonalizationData$NamespaceData;
    .registers 3
    .param p1, "namespace"    # Ljava/lang/String;

    .line 55
    iget-object v0, p0, Landroid/security/identity/PersonalizationData;->mNamespaces:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/identity/PersonalizationData$NamespaceData;

    return-object v0
.end method

.method blacklist getNamespaces()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Landroid/security/identity/PersonalizationData;->mNamespaces:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
