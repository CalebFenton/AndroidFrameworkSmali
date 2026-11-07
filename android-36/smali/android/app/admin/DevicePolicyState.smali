.class public final Landroid/app/admin/DevicePolicyState;
.super Ljava/lang/Object;
.source "DevicePolicyState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/DevicePolicyState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mPolicies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Ljava/util/Map<",
            "Landroid/app/admin/PolicyKey;",
            "Landroid/app/admin/PolicyState<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 107
    new-instance v0, Landroid/app/admin/DevicePolicyState$1;

    invoke-direct {v0}, Landroid/app/admin/DevicePolicyState$1;-><init>()V

    sput-object v0, Landroid/app/admin/DevicePolicyState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "source"    # Landroid/os/Parcel;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyState;->mPolicies:Ljava/util/Map;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 49
    .local v0, "usersSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_53

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 51
    .local v2, "userHandle":Landroid/os/UserHandle;
    iget-object v3, p0, Landroid/app/admin/DevicePolicyState;->mPolicies:Ljava/util/Map;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 53
    .local v3, "policiesSize":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_28
    if-ge v4, v3, :cond_50

    .line 54
    const-class v5, Landroid/app/admin/PolicyKey;

    .line 55
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/app/admin/PolicyKey;

    .line 56
    .local v5, "policyKey":Landroid/app/admin/PolicyKey;
    const-class v6, Landroid/app/admin/PolicyState;

    .line 57
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/app/admin/PolicyState;

    .line 58
    .local v6, "policyState":Landroid/app/admin/PolicyState;, "Landroid/app/admin/PolicyState<*>;"
    iget-object v7, p0, Landroid/app/admin/DevicePolicyState;->mPolicies:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .end local v5    # "policyKey":Landroid/app/admin/PolicyKey;
    .end local v6    # "policyState":Landroid/app/admin/PolicyState;, "Landroid/app/admin/PolicyState<*>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 49
    .end local v2    # "userHandle":Landroid/os/UserHandle;
    .end local v3    # "policiesSize":I
    .end local v4    # "j":I
    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 61
    .end local v1    # "i":I
    :cond_53
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/admin/DevicePolicyState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Ljava/util/Map<",
            "Landroid/app/admin/PolicyKey;",
            "Landroid/app/admin/PolicyState<",
            "*>;>;>;)V"
        }
    .end annotation

    .line 42
    .local p1, "policies":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/UserHandle;Ljava/util/Map<Landroid/app/admin/PolicyKey;Landroid/app/admin/PolicyState<*>;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroid/app/admin/DevicePolicyState;->mPolicies:Ljava/util/Map;

    .line 44
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPoliciesForAllUsers()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Ljava/util/Map<",
            "Landroid/app/admin/PolicyKey;",
            "Landroid/app/admin/PolicyState<",
            "*>;>;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Landroid/app/admin/DevicePolicyState;->mPolicies:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getPoliciesForUser(Landroid/os/UserHandle;)Ljava/util/Map;
    .registers 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/Map<",
            "Landroid/app/admin/PolicyKey;",
            "Landroid/app/admin/PolicyState<",
            "*>;>;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroid/app/admin/DevicePolicyState;->mPolicies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/app/admin/DevicePolicyState;->mPolicies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_16

    :cond_11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_16
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DevicePolicyState { mPolicies= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/DevicePolicyState;->mPolicies:Ljava/util/Map;

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
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 96
    iget-object v0, p0, Landroid/app/admin/DevicePolicyState;->mPolicies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object v0, p0, Landroid/app/admin/DevicePolicyState;->mPolicies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 98
    .local v1, "user":Landroid/os/UserHandle;
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v2, p0, Landroid/app/admin/DevicePolicyState;->mPolicies:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v2, p0, Landroid/app/admin/DevicePolicyState;->mPolicies:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/PolicyKey;

    .line 101
    .local v3, "key":Landroid/app/admin/PolicyKey;
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 102
    iget-object v4, p0, Landroid/app/admin/DevicePolicyState;->mPolicies:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 103
    .end local v3    # "key":Landroid/app/admin/PolicyKey;
    goto :goto_45

    .line 104
    .end local v1    # "user":Landroid/os/UserHandle;
    :cond_66
    goto :goto_13

    .line 105
    :cond_67
    return-void
.end method
