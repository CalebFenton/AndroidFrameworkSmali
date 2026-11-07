.class public final Landroid/app/appsearch/observer/ObserverSpec;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/observer/ObserverSpec$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/observer/ObserverSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist mFilterSchemas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mFilterSchemasCached:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/observer/ObserverSpecCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/observer/ObserverSpecCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/observer/ObserverSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/observer/ObserverSpec;->mFilterSchemas:Ljava/util/List;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public whitelist getFilterSchemas()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/observer/ObserverSpec;->mFilterSchemasCached:Ljava/util/Set;

    .line 2
    .line 3
    if-nez v0, :cond_1a

    .line 4
    .line 5
    iget-object v0, p0, Landroid/app/appsearch/observer/ObserverSpec;->mFilterSchemas:Ljava/util/List;

    .line 6
    .line 7
    if-nez v0, :cond_d

    .line 8
    .line 9
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 10
    .line 11
    iput-object v0, p0, Landroid/app/appsearch/observer/ObserverSpec;->mFilterSchemasCached:Ljava/util/Set;

    .line 12
    .line 13
    goto :goto_1a

    .line 14
    :cond_d
    new-instance v0, Landroid/util/ArraySet;

    .line 15
    .line 16
    iget-object v1, p0, Landroid/app/appsearch/observer/ObserverSpec;->mFilterSchemas:Ljava/util/List;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Landroid/app/appsearch/observer/ObserverSpec;->mFilterSchemasCached:Ljava/util/Set;

    .line 26
    .line 27
    :cond_1a
    :goto_1a
    iget-object p0, p0, Landroid/app/appsearch/observer/ObserverSpec;->mFilterSchemasCached:Ljava/util/Set;

    .line 28
    .line 29
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/observer/ObserverSpecCreator;->writeToParcel(Landroid/app/appsearch/observer/ObserverSpec;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
