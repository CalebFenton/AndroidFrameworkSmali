.class public final Landroid/service/ambientcontext/AmbientContextDetectionResult;
.super Ljava/lang/Object;
.source "AmbientContextDetectionResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/ambientcontext/AmbientContextDetectionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist RESULT_RESPONSE_BUNDLE_KEY:Ljava/lang/String; = "android.app.ambientcontext.AmbientContextDetectionResultBundleKey"


# instance fields
.field private final blacklist mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ambientcontext/AmbientContextEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 109
    new-instance v0, Landroid/service/ambientcontext/AmbientContextDetectionResult$1;

    invoke-direct {v0}, Landroid/service/ambientcontext/AmbientContextDetectionResult$1;-><init>()V

    sput-object v0, Landroid/service/ambientcontext/AmbientContextDetectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 96
    .local v0, "flg":B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ambientcontext/AmbientContextEvent;>;"
    const-class v2, Landroid/app/ambientcontext/AmbientContextEvent;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/app/ambientcontext/AmbientContextEvent;

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "packageName":Ljava/lang/String;
    iput-object v1, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult;->mEvents:Ljava/util/List;

    .line 102
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult;->mEvents:Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 104
    iput-object v2, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult;->mPackageName:Ljava/lang/String;

    .line 105
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ambientcontext/AmbientContextEvent;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 51
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/app/ambientcontext/AmbientContextEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult;->mEvents:Ljava/util/List;

    .line 53
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult;->mEvents:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 54
    iput-object p2, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult;->mPackageName:Ljava/lang/String;

    .line 55
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 56
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEvents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ambientcontext/AmbientContextEvent;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult;->mEvents:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AmbientContextEventResponse { events = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult;->mEvents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "flg":B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 83
    iget-object v1, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult;->mEvents:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 84
    iget-object v1, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return-void
.end method
