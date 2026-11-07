.class public final Landroid/service/settings/preferences/SetValueResult;
.super Ljava/lang/Object;
.source "SetValueResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/settings/preferences/SetValueResult$Builder;,
        Landroid/service/settings/preferences/SetValueResult$ResultCode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/settings/preferences/SetValueResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RESULT_DISABLED:I = 0x2

.field public static final whitelist RESULT_DISALLOW:I = 0x7

.field public static final whitelist RESULT_INTERNAL_ERROR:I = 0x9

.field public static final whitelist RESULT_INVALID_REQUEST:I = 0x8

.field public static final whitelist RESULT_OK:I = 0x0

.field public static final whitelist RESULT_REQUIRE_APP_PERMISSION:I = 0x5

.field public static final whitelist RESULT_REQUIRE_USER_CONSENT:I = 0x6

.field public static final whitelist RESULT_RESTRICTED:I = 0x3

.field public static final whitelist RESULT_UNAVAILABLE:I = 0x4

.field public static final whitelist RESULT_UNSUPPORTED:I = 0x1


# instance fields
.field private final blacklist mResultCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 144
    new-instance v0, Landroid/service/settings/preferences/SetValueResult$1;

    invoke-direct {v0}, Landroid/service/settings/preferences/SetValueResult$1;-><init>()V

    sput-object v0, Landroid/service/settings/preferences/SetValueResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/settings/preferences/SetValueResult;->mResultCode:I

    .line 126
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/settings/preferences/SetValueResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/settings/preferences/SetValueResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/settings/preferences/SetValueResult$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/service/settings/preferences/SetValueResult$Builder;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {p1}, Landroid/service/settings/preferences/SetValueResult$Builder;->-$$Nest$fgetmResultCode(Landroid/service/settings/preferences/SetValueResult$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/settings/preferences/SetValueResult;->mResultCode:I

    .line 122
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/settings/preferences/SetValueResult$Builder;Landroid/service/settings/preferences/SetValueResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/settings/preferences/SetValueResult;-><init>(Landroid/service/settings/preferences/SetValueResult$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getResultCode()I
    .registers 2

    .line 51
    iget v0, p0, Landroid/service/settings/preferences/SetValueResult;->mResultCode:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 131
    iget v0, p0, Landroid/service/settings/preferences/SetValueResult;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    return-void
.end method
