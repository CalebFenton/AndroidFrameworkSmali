.class public final Landroid/app/ambientcontext/AmbientContextEventRequest;
.super Ljava/lang/Object;
.source "AmbientContextEventRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ambientcontext/AmbientContextEventRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEventTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOptions:Landroid/os/PersistableBundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 105
    new-instance v0, Landroid/app/ambientcontext/AmbientContextEventRequest$1;

    invoke-direct {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$1;-><init>()V

    sput-object v0, Landroid/app/ambientcontext/AmbientContextEventRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    .line 90
    .local v0, "eventTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 93
    .local v1, "options":Landroid/os/PersistableBundle;
    iput-object v0, p0, Landroid/app/ambientcontext/AmbientContextEventRequest;->mEventTypes:Ljava/util/Set;

    .line 94
    const-class v2, Landroid/annotation/NonNull;

    iget-object v3, p0, Landroid/app/ambientcontext/AmbientContextEventRequest;->mEventTypes:Ljava/util/Set;

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 96
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "eventTypes cannot be empty"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 97
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 98
    .local v3, "eventType":I
    const-class v5, Landroid/app/ambientcontext/AmbientContextEvent$EventCode;

    invoke-static {v5, v4, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 99
    .end local v3    # "eventType":I
    goto :goto_2e

    .line 100
    :cond_44
    iput-object v1, p0, Landroid/app/ambientcontext/AmbientContextEventRequest;->mOptions:Landroid/os/PersistableBundle;

    .line 101
    const-class v2, Landroid/annotation/NonNull;

    iget-object v3, p0, Landroid/app/ambientcontext/AmbientContextEventRequest;->mOptions:Landroid/os/PersistableBundle;

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ambientcontext/AmbientContextEventRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ambientcontext/AmbientContextEventRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Set;Landroid/os/PersistableBundle;)V
    .registers 7
    .param p2, "options"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/PersistableBundle;",
            ")V"
        }
    .end annotation

    .line 44
    .local p1, "eventTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/app/ambientcontext/AmbientContextEventRequest;->mEventTypes:Ljava/util/Set;

    .line 46
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/app/ambientcontext/AmbientContextEventRequest;->mEventTypes:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 47
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "eventTypes cannot be empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 48
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 49
    .local v1, "eventType":I
    const-class v3, Landroid/app/ambientcontext/AmbientContextEvent$EventCode;

    invoke-static {v3, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 50
    .end local v1    # "eventType":I
    goto :goto_1c

    .line 51
    :cond_32
    iput-object p2, p0, Landroid/app/ambientcontext/AmbientContextEventRequest;->mOptions:Landroid/os/PersistableBundle;

    .line 52
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/app/ambientcontext/AmbientContextEventRequest;->mOptions:Landroid/os/PersistableBundle;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Set;Landroid/os/PersistableBundle;Landroid/app/ambientcontext/AmbientContextEventRequest-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/app/ambientcontext/AmbientContextEventRequest;-><init>(Ljava/util/Set;Landroid/os/PersistableBundle;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEventTypes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Landroid/app/ambientcontext/AmbientContextEventRequest;->mEventTypes:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getOptions()Landroid/os/PersistableBundle;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/app/ambientcontext/AmbientContextEventRequest;->mOptions:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AmbientContextEventRequest { eventTypes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ambientcontext/AmbientContextEventRequest;->mEventTypes:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", options = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ambientcontext/AmbientContextEventRequest;->mOptions:Landroid/os/PersistableBundle;

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
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 77
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/app/ambientcontext/AmbientContextEventRequest;->mEventTypes:Ljava/util/Set;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 78
    iget-object v0, p0, Landroid/app/ambientcontext/AmbientContextEventRequest;->mOptions:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 79
    return-void
.end method
