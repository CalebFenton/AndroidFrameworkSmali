.class public final Landroid/app/appsearch/AppSearchSchema$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/AppSearchSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilt:Z

.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mParentTypes:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPropertyConfigParcels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/appsearch/safeparcel/PropertyConfigParcel;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPropertyNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSchemaType:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/app/appsearch/AppSearchSchema;)V
    .registers 5

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mDescription:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mPropertyConfigParcels:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mParentTypes:Ljava/util/LinkedHashSet;

    .line 12
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mPropertyNames:Ljava/util/Set;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mBuilt:Z

    .line 14
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mSchemaType:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchSchema;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mDescription:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mPropertyConfigParcels:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/app/appsearch/AppSearchSchema;->mPropertyConfigParcels:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    iget-object v1, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mParentTypes:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Landroid/app/appsearch/AppSearchSchema;->-$$Nest$fgetmParentTypes(Landroid/app/appsearch/AppSearchSchema;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 18
    :goto_3b
    iget-object p1, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mPropertyConfigParcels:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_57

    .line 19
    iget-object p1, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mPropertyNames:Ljava/util/Set;

    iget-object v1, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mPropertyConfigParcels:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    invoke-virtual {v1}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_57
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mDescription:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mPropertyConfigParcels:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mParentTypes:Ljava/util/LinkedHashSet;

    .line 5
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mPropertyNames:Ljava/util/Set;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mBuilt:Z

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mSchemaType:Ljava/lang/String;

    return-void
.end method

.method private blacklist resetIfBuilt()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mBuilt:Z

    .line 2
    .line 3
    if-eqz v0, :cond_19

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mPropertyConfigParcels:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mPropertyConfigParcels:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 15
    .line 16
    iget-object v1, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mParentTypes:Ljava/util/LinkedHashSet;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mParentTypes:Ljava/util/LinkedHashSet;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mBuilt:Z

    .line 25
    .line 26
    :cond_19
    return-void
.end method


# virtual methods
.method public whitelist addParentType(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$Builder;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/AppSearchSchema$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mParentTypes:Ljava/util/LinkedHashSet;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public whitelist addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/AppSearchSchema$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mPropertyNames:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1a

    .line 18
    .line 19
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mPropertyConfigParcels:Ljava/util/ArrayList;

    .line 20
    .line 21
    iget-object p1, p1, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->mPropertyConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1a
    new-instance p0, Landroid/app/appsearch/exceptions/IllegalSchemaException;

    .line 28
    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "Property defined more than once: "

    .line 32
    .line 33
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Landroid/app/appsearch/exceptions/IllegalSchemaException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public whitelist build()Landroid/app/appsearch/AppSearchSchema;
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mBuilt:Z

    .line 3
    .line 4
    new-instance v0, Landroid/app/appsearch/AppSearchSchema;

    .line 5
    .line 6
    iget-object v1, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mSchemaType:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v2, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mPropertyConfigParcels:Ljava/util/ArrayList;

    .line 9
    .line 10
    new-instance v3, Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v4, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mParentTypes:Ljava/util/LinkedHashSet;

    .line 13
    .line 14
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mDescription:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/app/appsearch/AppSearchSchema;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public whitelist clearParentTypes()Landroid/app/appsearch/AppSearchSchema$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/AppSearchSchema$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mParentTypes:Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public whitelist clearProperties()Landroid/app/appsearch/AppSearchSchema$Builder;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/AppSearchSchema$Builder;->resetIfBuilt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mPropertyConfigParcels:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mPropertyNames:Ljava/util/Set;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public blacklist setDescription(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/AppSearchSchema$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mDescription:Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method public whitelist setSchemaType(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/AppSearchSchema$Builder;->resetIfBuilt()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/AppSearchSchema$Builder;->mSchemaType:Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method
