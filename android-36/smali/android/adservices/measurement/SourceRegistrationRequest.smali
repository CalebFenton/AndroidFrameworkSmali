.class public final Landroid/adservices/measurement/SourceRegistrationRequest;
.super Ljava/lang/Object;
.source "SourceRegistrationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/measurement/SourceRegistrationRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/measurement/SourceRegistrationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist REGISTRATION_URIS_MAX_COUNT:I = 0x14


# instance fields
.field private final blacklist mInputEvent:Landroid/view/InputEvent;

.field private final blacklist mRegistrationUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 170
    new-instance v0, Landroid/adservices/measurement/SourceRegistrationRequest$1;

    invoke-direct {v0}, Landroid/adservices/measurement/SourceRegistrationRequest$1;-><init>()V

    sput-object v0, Landroid/adservices/measurement/SourceRegistrationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/measurement/SourceRegistrationRequest$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/measurement/SourceRegistrationRequest$Builder;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Landroid/adservices/measurement/SourceRegistrationRequest$Builder;->-$$Nest$fgetmRegistrationUris(Landroid/adservices/measurement/SourceRegistrationRequest$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/SourceRegistrationRequest;->mRegistrationUris:Ljava/util/List;

    .line 50
    invoke-static {p1}, Landroid/adservices/measurement/SourceRegistrationRequest$Builder;->-$$Nest$fgetmInputEvent(Landroid/adservices/measurement/SourceRegistrationRequest$Builder;)Landroid/view/InputEvent;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/SourceRegistrationRequest;->mInputEvent:Landroid/view/InputEvent;

    .line 51
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/measurement/SourceRegistrationRequest$Builder;Landroid/adservices/measurement/SourceRegistrationRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/measurement/SourceRegistrationRequest;-><init>(Landroid/adservices/measurement/SourceRegistrationRequest$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v0, "registrationsUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-ge v1, v2, :cond_1b

    .line 57
    const-class v1, Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    goto :goto_26

    .line 59
    :cond_1b
    const-class v1, Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 61
    :goto_26
    iput-object v0, p0, Landroid/adservices/measurement/SourceRegistrationRequest;->mRegistrationUris:Ljava/util/List;

    .line 62
    sget-object v1, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 64
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/adservices/adselection/ReportInteractionInput$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Landroid/adservices/adselection/ReportInteractionInput$$ExternalSyntheticLambda2;-><init>(Landroid/os/Parcelable$Creator;)V

    .line 63
    invoke-static {p1, v2}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputEvent;

    iput-object v1, p0, Landroid/adservices/measurement/SourceRegistrationRequest;->mInputEvent:Landroid/view/InputEvent;

    .line 65
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/measurement/SourceRegistrationRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/measurement/SourceRegistrationRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic blacklist lambda$writeToParcel$0(ILandroid/os/Parcel;Landroid/view/InputEvent;)V
    .registers 3
    .param p0, "flags"    # I
    .param p1, "target"    # Landroid/os/Parcel;
    .param p2, "event"    # Landroid/view/InputEvent;

    .line 107
    invoke-virtual {p2, p1, p0}, Landroid/view/InputEvent;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 69
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 70
    :cond_4
    instance-of v1, p1, Landroid/adservices/measurement/SourceRegistrationRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 71
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/measurement/SourceRegistrationRequest;

    .line 72
    .local v1, "that":Landroid/adservices/measurement/SourceRegistrationRequest;
    iget-object v3, p0, Landroid/adservices/measurement/SourceRegistrationRequest;->mRegistrationUris:Ljava/util/List;

    iget-object v4, v1, Landroid/adservices/measurement/SourceRegistrationRequest;->mRegistrationUris:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/adservices/measurement/SourceRegistrationRequest;->mInputEvent:Landroid/view/InputEvent;

    iget-object v4, v1, Landroid/adservices/measurement/SourceRegistrationRequest;->mInputEvent:Landroid/view/InputEvent;

    .line 73
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    .line 72
    :goto_23
    return v0
.end method

.method public whitelist getInputEvent()Landroid/view/InputEvent;
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/adservices/measurement/SourceRegistrationRequest;->mInputEvent:Landroid/view/InputEvent;

    return-object v0
.end method

.method public whitelist getRegistrationUris()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Landroid/adservices/measurement/SourceRegistrationRequest;->mRegistrationUris:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 78
    iget-object v0, p0, Landroid/adservices/measurement/SourceRegistrationRequest;->mRegistrationUris:Ljava/util/List;

    iget-object v1, p0, Landroid/adservices/measurement/SourceRegistrationRequest;->mInputEvent:Landroid/view/InputEvent;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 104
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Landroid/adservices/measurement/SourceRegistrationRequest;->mRegistrationUris:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 106
    iget-object v0, p0, Landroid/adservices/measurement/SourceRegistrationRequest;->mInputEvent:Landroid/view/InputEvent;

    new-instance v1, Landroid/adservices/measurement/SourceRegistrationRequest$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Landroid/adservices/measurement/SourceRegistrationRequest$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 108
    return-void
.end method
