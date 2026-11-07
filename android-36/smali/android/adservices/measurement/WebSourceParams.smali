.class public final Landroid/adservices/measurement/WebSourceParams;
.super Ljava/lang/Object;
.source "WebSourceParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/measurement/WebSourceParams$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/measurement/WebSourceParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDebugKeyAllowed:Z

.field private final blacklist mRegistrationUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Landroid/adservices/measurement/WebSourceParams$1;

    invoke-direct {v0}, Landroid/adservices/measurement/WebSourceParams$1;-><init>()V

    sput-object v0, Landroid/adservices/measurement/WebSourceParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/measurement/WebSourceParams$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/measurement/WebSourceParams$Builder;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Landroid/adservices/measurement/WebSourceParams$Builder;->-$$Nest$fgetmRegistrationUri(Landroid/adservices/measurement/WebSourceParams$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/WebSourceParams;->mRegistrationUri:Landroid/net/Uri;

    .line 55
    invoke-static {p1}, Landroid/adservices/measurement/WebSourceParams$Builder;->-$$Nest$fgetmDebugKeyAllowed(Landroid/adservices/measurement/WebSourceParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/adservices/measurement/WebSourceParams;->mDebugKeyAllowed:Z

    .line 56
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/measurement/WebSourceParams$Builder;Landroid/adservices/measurement/WebSourceParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/measurement/WebSourceParams;-><init>(Landroid/adservices/measurement/WebSourceParams$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/adservices/measurement/WebSourceParams;->mRegistrationUri:Landroid/net/Uri;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/adservices/measurement/WebSourceParams;->mDebugKeyAllowed:Z

    .line 62
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/measurement/WebSourceParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/measurement/WebSourceParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 66
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 67
    :cond_4
    instance-of v1, p1, Landroid/adservices/measurement/WebSourceParams;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 68
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/measurement/WebSourceParams;

    .line 69
    .local v1, "that":Landroid/adservices/measurement/WebSourceParams;
    iget-boolean v3, p0, Landroid/adservices/measurement/WebSourceParams;->mDebugKeyAllowed:Z

    iget-boolean v4, v1, Landroid/adservices/measurement/WebSourceParams;->mDebugKeyAllowed:Z

    if-ne v3, v4, :cond_1e

    iget-object v3, p0, Landroid/adservices/measurement/WebSourceParams;->mRegistrationUri:Landroid/net/Uri;

    iget-object v4, v1, Landroid/adservices/measurement/WebSourceParams;->mRegistrationUri:Landroid/net/Uri;

    .line 70
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    .line 69
    :goto_1f
    return v0
.end method

.method public whitelist getRegistrationUri()Landroid/net/Uri;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceParams;->mRegistrationUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 75
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceParams;->mRegistrationUri:Landroid/net/Uri;

    iget-boolean v1, p0, Landroid/adservices/measurement/WebSourceParams;->mDebugKeyAllowed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isDebugKeyAllowed()Z
    .registers 2

    .line 89
    iget-boolean v0, p0, Landroid/adservices/measurement/WebSourceParams;->mDebugKeyAllowed:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 99
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Landroid/adservices/measurement/WebSourceParams;->mRegistrationUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 101
    iget-boolean v0, p0, Landroid/adservices/measurement/WebSourceParams;->mDebugKeyAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 102
    return-void
.end method
