.class public final Landroid/app/sdksandbox/SharedPreferencesUpdate;
.super Ljava/lang/Object;
.source "SharedPreferencesUpdate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/sdksandbox/SharedPreferencesUpdate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mData:Landroid/os/Bundle;

.field private final blacklist mKeysToSync:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/sdksandbox/SharedPreferencesKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Landroid/app/sdksandbox/SharedPreferencesUpdate$1;

    invoke-direct {v0}, Landroid/app/sdksandbox/SharedPreferencesUpdate$1;-><init>()V

    sput-object v0, Landroid/app/sdksandbox/SharedPreferencesUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-class v0, Landroid/app/sdksandbox/SharedPreferencesKey;

    .line 75
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/app/sdksandbox/SharedPreferencesKey;

    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesUpdate;->mKeysToSync:Ljava/util/ArrayList;

    .line 76
    iget-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesUpdate;->mKeysToSync:Ljava/util/ArrayList;

    const-string v1, "mKeysToSync should not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesUpdate;->mData:Landroid/os/Bundle;

    .line 79
    iget-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesUpdate;->mData:Landroid/os/Bundle;

    const-string v1, "mData should not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/sdksandbox/SharedPreferencesUpdate-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/sdksandbox/SharedPreferencesUpdate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Collection;Landroid/os/Bundle;)V
    .registers 4
    .param p2, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/app/sdksandbox/SharedPreferencesKey;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 64
    .local p1, "keysToSync":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/sdksandbox/SharedPreferencesKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, "keysToSync should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    const-string v0, "data should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesUpdate;->mKeysToSync:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesUpdate;->mData:Landroid/os/Bundle;

    .line 70
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getData()Landroid/os/Bundle;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesUpdate;->mData:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getKeysInUpdate()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/sdksandbox/SharedPreferencesKey;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesUpdate;->mKeysToSync:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 84
    iget-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesUpdate;->mKeysToSync:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 85
    iget-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesUpdate;->mData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 86
    return-void
.end method
