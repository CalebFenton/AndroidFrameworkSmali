.class public final Landroid/adservices/measurement/WebTriggerRegistrationRequest;
.super Ljava/lang/Object;
.source "WebTriggerRegistrationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/measurement/WebTriggerRegistrationRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/measurement/WebTriggerRegistrationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist WEB_TRIGGER_PARAMS_MAX_COUNT:I = 0x50


# instance fields
.field private final blacklist mDestination:Landroid/net/Uri;

.field private final blacklist mWebTriggerParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/measurement/WebTriggerParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Landroid/adservices/measurement/WebTriggerRegistrationRequest$1;

    invoke-direct {v0}, Landroid/adservices/measurement/WebTriggerRegistrationRequest$1;-><init>()V

    sput-object v0, Landroid/adservices/measurement/WebTriggerRegistrationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/measurement/WebTriggerRegistrationRequest$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/measurement/WebTriggerRegistrationRequest$Builder;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Landroid/adservices/measurement/WebTriggerRegistrationRequest$Builder;->-$$Nest$fgetmWebTriggerParams(Landroid/adservices/measurement/WebTriggerRegistrationRequest$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequest;->mWebTriggerParams:Ljava/util/List;

    .line 55
    invoke-static {p1}, Landroid/adservices/measurement/WebTriggerRegistrationRequest$Builder;->-$$Nest$fgetmDestination(Landroid/adservices/measurement/WebTriggerRegistrationRequest$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequest;->mDestination:Landroid/net/Uri;

    .line 56
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/measurement/WebTriggerRegistrationRequest$Builder;Landroid/adservices/measurement/WebTriggerRegistrationRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/measurement/WebTriggerRegistrationRequest;-><init>(Landroid/adservices/measurement/WebTriggerRegistrationRequest$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "webTriggerParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/adservices/measurement/WebTriggerParams;>;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-ge v1, v2, :cond_1b

    .line 62
    const-class v1, Landroid/adservices/measurement/WebTriggerParams;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    goto :goto_26

    .line 64
    :cond_1b
    const-class v1, Landroid/adservices/measurement/WebTriggerParams;

    .line 66
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/adservices/measurement/WebTriggerParams;

    .line 64
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 69
    :goto_26
    iput-object v0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequest;->mWebTriggerParams:Ljava/util/List;

    .line 70
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequest;->mDestination:Landroid/net/Uri;

    .line 71
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/measurement/WebTriggerRegistrationRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/measurement/WebTriggerRegistrationRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 75
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 76
    :cond_4
    instance-of v1, p1, Landroid/adservices/measurement/WebTriggerRegistrationRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 77
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/measurement/WebTriggerRegistrationRequest;

    .line 78
    .local v1, "that":Landroid/adservices/measurement/WebTriggerRegistrationRequest;
    iget-object v3, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequest;->mWebTriggerParams:Ljava/util/List;

    iget-object v4, v1, Landroid/adservices/measurement/WebTriggerRegistrationRequest;->mWebTriggerParams:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequest;->mDestination:Landroid/net/Uri;

    iget-object v4, v1, Landroid/adservices/measurement/WebTriggerRegistrationRequest;->mDestination:Landroid/net/Uri;

    .line 79
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    .line 78
    :goto_23
    return v0
.end method

.method public whitelist getDestination()Landroid/net/Uri;
    .registers 2

    .line 96
    iget-object v0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequest;->mDestination:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getTriggerParams()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/adservices/measurement/WebTriggerParams;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequest;->mWebTriggerParams:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 84
    iget-object v0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequest;->mWebTriggerParams:Ljava/util/List;

    iget-object v1, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequest;->mDestination:Landroid/net/Uri;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 106
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequest;->mWebTriggerParams:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 108
    iget-object v0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequest;->mDestination:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 109
    return-void
.end method
