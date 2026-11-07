.class public final Landroid/service/assist/classification/FieldClassificationResponse;
.super Ljava/lang/Object;
.source "FieldClassificationResponse.java"

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
            "Landroid/service/assist/classification/FieldClassificationResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mClassifications:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/service/assist/classification/FieldClassification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 138
    new-instance v0, Landroid/service/assist/classification/FieldClassificationResponse$1;

    invoke-direct {v0}, Landroid/service/assist/classification/FieldClassificationResponse$1;-><init>()V

    sput-object v0, Landroid/service/assist/classification/FieldClassificationResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-static {p1}, Landroid/service/assist/classification/FieldClassificationResponse;->unparcelClassifications(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    .line 130
    .local v0, "classifications":Ljava/util/Set;, "Ljava/util/Set<Landroid/service/assist/classification/FieldClassification;>;"
    iput-object v0, p0, Landroid/service/assist/classification/FieldClassificationResponse;->mClassifications:Ljava/util/Set;

    .line 131
    const-class v1, Landroid/annotation/NonNull;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/service/assist/classification/FieldClassificationResponse;->mClassifications:Ljava/util/Set;

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/service/assist/classification/FieldClassification;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p1, "classifications":Ljava/util/Set;, "Ljava/util/Set<Landroid/service/assist/classification/FieldClassification;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Landroid/service/assist/classification/FieldClassificationResponse;->mClassifications:Ljava/util/Set;

    .line 83
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/service/assist/classification/FieldClassificationResponse;->mClassifications:Ljava/util/Set;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    return-void
.end method

.method static blacklist unparcelClassifications(Landroid/os/Parcel;)Ljava/util/Set;
    .registers 4
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Set<",
            "Landroid/service/assist/classification/FieldClassification;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, "detections":Ljava/util/List;, "Ljava/util/List<Landroid/service/assist/classification/FieldClassification;>;"
    const-class v1, Landroid/service/assist/classification/FieldClassification;

    .line 50
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/service/assist/classification/FieldClassification;

    .line 49
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 51
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getClassifications()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/service/assist/classification/FieldClassification;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Landroid/service/assist/classification/FieldClassificationResponse;->mClassifications:Ljava/util/Set;

    return-object v0
.end method

.method blacklist parcelClassifications(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/service/assist/classification/FieldClassificationResponse;->mClassifications:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 56
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldClassificationResponse { classifications = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/assist/classification/FieldClassificationResponse;->mClassifications:Ljava/util/Set;

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
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 114
    invoke-virtual {p0, p1, p2}, Landroid/service/assist/classification/FieldClassificationResponse;->parcelClassifications(Landroid/os/Parcel;I)V

    .line 115
    return-void
.end method
