.class public final Landroid/service/settings/preferences/GetValueRequest;
.super Ljava/lang/Object;
.source "GetValueRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/settings/preferences/GetValueRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/settings/preferences/GetValueRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mPreferenceKey:Ljava/lang/String;

.field private final blacklist mScreenKey:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 96
    new-instance v0, Landroid/service/settings/preferences/GetValueRequest$1;

    invoke-direct {v0}, Landroid/service/settings/preferences/GetValueRequest$1;-><init>()V

    sput-object v0, Landroid/service/settings/preferences/GetValueRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/service/settings/preferences/GetValueRequest;->mScreenKey:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/service/settings/preferences/GetValueRequest;->mPreferenceKey:Ljava/lang/String;

    .line 77
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/settings/preferences/GetValueRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/settings/preferences/GetValueRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/settings/preferences/GetValueRequest$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/service/settings/preferences/GetValueRequest$Builder;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Landroid/service/settings/preferences/GetValueRequest$Builder;->-$$Nest$fgetmScreenKey(Landroid/service/settings/preferences/GetValueRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/GetValueRequest;->mScreenKey:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Landroid/service/settings/preferences/GetValueRequest$Builder;->-$$Nest$fgetmPreferenceKey(Landroid/service/settings/preferences/GetValueRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/GetValueRequest;->mPreferenceKey:Ljava/lang/String;

    .line 72
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/settings/preferences/GetValueRequest$Builder;Landroid/service/settings/preferences/GetValueRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/settings/preferences/GetValueRequest;-><init>(Landroid/service/settings/preferences/GetValueRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPreferenceKey()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/service/settings/preferences/GetValueRequest;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getScreenKey()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Landroid/service/settings/preferences/GetValueRequest;->mScreenKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 82
    iget-object v0, p0, Landroid/service/settings/preferences/GetValueRequest;->mScreenKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Landroid/service/settings/preferences/GetValueRequest;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 84
    return-void
.end method
