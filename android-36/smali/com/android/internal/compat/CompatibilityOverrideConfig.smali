.class public final Lcom/android/internal/compat/CompatibilityOverrideConfig;
.super Ljava/lang/Object;
.source "CompatibilityOverrideConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/compat/CompatibilityOverrideConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist overrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/app/compat/PackageOverride;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Lcom/android/internal/compat/CompatibilityOverrideConfig$1;

    invoke-direct {v0}, Lcom/android/internal/compat/CompatibilityOverrideConfig$1;-><init>()V

    sput-object v0, Lcom/android/internal/compat/CompatibilityOverrideConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 41
    .local v0, "keyCount":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    .line 42
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_25

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 44
    .local v2, "key":J
    iget-object v4, p0, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p1}, Landroid/app/compat/PackageOverride;->createFromParcel(Landroid/os/Parcel;)Landroid/app/compat/PackageOverride;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .end local v2    # "key":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 46
    .end local v1    # "i":I
    :cond_25
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/compat/CompatibilityOverrideConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/compat/CompatibilityOverrideConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/app/compat/PackageOverride;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "overrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/app/compat/PackageOverride;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    .line 37
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
    iget-object v0, p0, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object v0, p0, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 57
    .local v1, "key":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    iget-object v2, p0, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/compat/PackageOverride;

    invoke-virtual {v2, p1}, Landroid/app/compat/PackageOverride;->writeToParcel(Landroid/os/Parcel;)V

    .line 59
    .end local v1    # "key":Ljava/lang/Long;
    goto :goto_13

    .line 60
    :cond_32
    return-void
.end method
