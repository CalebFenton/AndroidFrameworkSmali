.class public final Landroid/content/pm/CapabilityParams;
.super Ljava/lang/Object;
.source "CapabilityParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/CapabilityParams$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/CapabilityParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPrimaryValue:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 154
    new-instance v0, Landroid/content/pm/CapabilityParams$1;

    invoke-direct {v0}, Landroid/content/pm/CapabilityParams$1;-><init>()V

    sput-object v0, Landroid/content/pm/CapabilityParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/pm/CapabilityParams$Builder;)V
    .registers 5
    .param p1, "builder"    # Landroid/content/pm/CapabilityParams$Builder;

    .line 74
    invoke-static {p1}, Landroid/content/pm/CapabilityParams$Builder;->-$$Nest$fgetmKey(Landroid/content/pm/CapabilityParams$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/content/pm/CapabilityParams$Builder;->-$$Nest$fgetmPrimaryValue(Landroid/content/pm/CapabilityParams$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/content/pm/CapabilityParams$Builder;->-$$Nest$fgetmAliases(Landroid/content/pm/CapabilityParams$Builder;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/content/pm/CapabilityParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 75
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/pm/CapabilityParams$Builder;Landroid/content/pm/CapabilityParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/CapabilityParams;-><init>(Landroid/content/pm/CapabilityParams$Builder;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/pm/CapabilityParams;)V
    .registers 5
    .param p1, "orig"    # Landroid/content/pm/CapabilityParams;

    .line 70
    iget-object v0, p1, Landroid/content/pm/CapabilityParams;->mName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/CapabilityParams;->mPrimaryValue:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/CapabilityParams;->mAliases:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Landroid/content/pm/CapabilityParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 71
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/CapabilityParams;->mName:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/CapabilityParams;->mPrimaryValue:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 82
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/CapabilityParams;->mAliases:Ljava/util/List;

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/CapabilityParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/CapabilityParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "primaryValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p3, "aliases":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iput-object p1, p0, Landroid/content/pm/CapabilityParams;->mName:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Landroid/content/pm/CapabilityParams;->mPrimaryValue:Ljava/lang/String;

    .line 61
    if-nez p3, :cond_14

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1d

    .line 62
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_1d
    iput-object v0, p0, Landroid/content/pm/CapabilityParams;->mAliases:Ljava/util/List;

    .line 63
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 128
    instance-of v0, p1, Landroid/content/pm/CapabilityParams;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 129
    return v1

    .line 131
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/content/pm/CapabilityParams;

    .line 132
    .local v0, "target":Landroid/content/pm/CapabilityParams;
    iget-object v2, p0, Landroid/content/pm/CapabilityParams;->mName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/CapabilityParams;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/content/pm/CapabilityParams;->mPrimaryValue:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/CapabilityParams;->mPrimaryValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/content/pm/CapabilityParams;->mAliases:Ljava/util/List;

    iget-object v3, v0, Landroid/content/pm/CapabilityParams;->mAliases:Ljava/util/List;

    .line 133
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    nop

    .line 132
    :goto_2a
    return v1
.end method

.method public whitelist getAliases()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/content/pm/CapabilityParams;->mAliases:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/content/pm/CapabilityParams;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getValue()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/content/pm/CapabilityParams;->mPrimaryValue:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getValues()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Landroid/content/pm/CapabilityParams;->mAliases:Ljava/util/List;

    if-nez v0, :cond_10

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/content/pm/CapabilityParams;->mPrimaryValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 120
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/content/pm/CapabilityParams;->mAliases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/content/pm/CapabilityParams;->mPrimaryValue:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v1, p0, Landroid/content/pm/CapabilityParams;->mAliases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 138
    iget-object v0, p0, Landroid/content/pm/CapabilityParams;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/CapabilityParams;->mPrimaryValue:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/CapabilityParams;->mAliases:Ljava/util/List;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 148
    iget-object v0, p0, Landroid/content/pm/CapabilityParams;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Landroid/content/pm/CapabilityParams;->mPrimaryValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Landroid/content/pm/CapabilityParams;->mAliases:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 151
    return-void
.end method
