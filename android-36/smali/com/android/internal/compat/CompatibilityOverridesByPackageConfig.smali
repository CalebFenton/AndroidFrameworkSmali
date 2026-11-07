.class public final Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;
.super Ljava/lang/Object;
.source "CompatibilityOverridesByPackageConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist packageNameToOverrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/compat/CompatibilityOverrideConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig$1;

    invoke-direct {v0}, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig$1;-><init>()V

    sput-object v0, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 40
    .local v0, "keyCount":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->packageNameToOverrides:Ljava/util/Map;

    .line 41
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_25

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->packageNameToOverrides:Ljava/util/Map;

    sget-object v4, Lcom/android/internal/compat/CompatibilityOverrideConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    .line 43
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .end local v2    # "key":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 46
    .end local v1    # "i":I
    :cond_25
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/compat/CompatibilityOverrideConfig;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p1, "packageNameToOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/compat/CompatibilityOverrideConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->packageNameToOverrides:Ljava/util/Map;

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 55
    iget-object v0, p0, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->packageNameToOverrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object v0, p0, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->packageNameToOverrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 57
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->packageNameToOverrides:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/compat/CompatibilityOverrideConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 59
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_13

    .line 60
    :cond_2f
    return-void
.end method
