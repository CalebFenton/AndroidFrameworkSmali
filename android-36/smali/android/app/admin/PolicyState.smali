.class public final Landroid/app/admin/PolicyState;
.super Ljava/lang/Object;
.source "PolicyState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/PolicyState<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/admin/PolicyValue<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final blacklist mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/app/admin/EnforcingAdmin;",
            "Landroid/app/admin/PolicyValue<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private blacklist mResolutionMechanism:Landroid/app/admin/ResolutionMechanism;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/admin/ResolutionMechanism<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 129
    new-instance v0, Landroid/app/admin/PolicyState$1;

    invoke-direct {v0}, Landroid/app/admin/PolicyState$1;-><init>()V

    sput-object v0, Landroid/app/admin/PolicyState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .line 62
    .local p0, "this":Landroid/app/admin/PolicyState;, "Landroid/app/admin/PolicyState<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/app/admin/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_31

    .line 65
    const-class v2, Landroid/app/admin/EnforcingAdmin;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/admin/EnforcingAdmin;

    .line 66
    .local v2, "admin":Landroid/app/admin/EnforcingAdmin;
    const-class v3, Landroid/app/admin/PolicyValue;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/admin/PolicyValue;

    .line 67
    .local v3, "policyValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    iget-object v4, p0, Landroid/app/admin/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .end local v2    # "admin":Landroid/app/admin/EnforcingAdmin;
    .end local v3    # "policyValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 69
    .end local v1    # "i":I
    :cond_31
    const-class v1, Landroid/app/admin/PolicyValue;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/admin/PolicyValue;

    iput-object v1, p0, Landroid/app/admin/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 70
    const-class v1, Landroid/app/admin/ResolutionMechanism;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/admin/ResolutionMechanism;

    iput-object v1, p0, Landroid/app/admin/PolicyState;->mResolutionMechanism:Landroid/app/admin/ResolutionMechanism;

    .line 71
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/admin/PolicyState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/admin/PolicyState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/LinkedHashMap;Landroid/app/admin/PolicyValue;Landroid/app/admin/ResolutionMechanism;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Landroid/app/admin/EnforcingAdmin;",
            "Landroid/app/admin/PolicyValue<",
            "TV;>;>;",
            "Landroid/app/admin/PolicyValue<",
            "TV;>;",
            "Landroid/app/admin/ResolutionMechanism<",
            "TV;>;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Landroid/app/admin/PolicyState;, "Landroid/app/admin/PolicyState<TV;>;"
    .local p1, "policiesSetByAdmins":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/app/admin/EnforcingAdmin;Landroid/app/admin/PolicyValue<TV;>;>;"
    .local p2, "currentEnforcedPolicy":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    .local p3, "resolutionMechanism":Landroid/app/admin/ResolutionMechanism;, "Landroid/app/admin/ResolutionMechanism<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/app/admin/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 54
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Landroid/app/admin/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 58
    iput-object p2, p0, Landroid/app/admin/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 59
    iput-object p3, p0, Landroid/app/admin/PolicyState;->mResolutionMechanism:Landroid/app/admin/ResolutionMechanism;

    .line 60
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 114
    .local p0, "this":Landroid/app/admin/PolicyState;, "Landroid/app/admin/PolicyState<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCurrentResolvedPolicy()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 90
    .local p0, "this":Landroid/app/admin/PolicyState;, "Landroid/app/admin/PolicyState<TV;>;"
    iget-object v0, p0, Landroid/app/admin/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/app/admin/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    invoke-virtual {v0}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Landroid/app/admin/EnforcingAdmin;",
            "TV;>;"
        }
    .end annotation

    .line 78
    .local p0, "this":Landroid/app/admin/PolicyState;, "Landroid/app/admin/PolicyState<TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 79
    .local v0, "policies":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/app/admin/EnforcingAdmin;TV;>;"
    iget-object v1, p0, Landroid/app/admin/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/EnforcingAdmin;

    .line 80
    .local v2, "admin":Landroid/app/admin/EnforcingAdmin;
    iget-object v3, p0, Landroid/app/admin/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/PolicyValue;

    invoke-virtual {v3}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .end local v2    # "admin":Landroid/app/admin/EnforcingAdmin;
    goto :goto_f

    .line 82
    :cond_2b
    return-object v0
.end method

.method public blacklist getResolutionMechanism()Landroid/app/admin/ResolutionMechanism;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/app/admin/ResolutionMechanism<",
            "TV;>;"
        }
    .end annotation

    .line 102
    .local p0, "this":Landroid/app/admin/PolicyState;, "Landroid/app/admin/PolicyState<TV;>;"
    iget-object v0, p0, Landroid/app/admin/PolicyState;->mResolutionMechanism:Landroid/app/admin/ResolutionMechanism;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 107
    .local p0, "this":Landroid/app/admin/PolicyState;, "Landroid/app/admin/PolicyState<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PolicyState { mPoliciesSetByAdmins= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCurrentResolvedPolicy= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResolutionMechanism= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/PolicyState;->mResolutionMechanism:Landroid/app/admin/ResolutionMechanism;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 119
    .local p0, "this":Landroid/app/admin/PolicyState;, "Landroid/app/admin/PolicyState<TV;>;"
    iget-object v0, p0, Landroid/app/admin/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object v0, p0, Landroid/app/admin/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/EnforcingAdmin;

    .line 121
    .local v1, "admin":Landroid/app/admin/EnforcingAdmin;
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 122
    iget-object v2, p0, Landroid/app/admin/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 123
    .end local v1    # "admin":Landroid/app/admin/EnforcingAdmin;
    goto :goto_13

    .line 124
    :cond_2e
    iget-object v0, p0, Landroid/app/admin/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 125
    iget-object v0, p0, Landroid/app/admin/PolicyState;->mResolutionMechanism:Landroid/app/admin/ResolutionMechanism;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 126
    return-void
.end method
