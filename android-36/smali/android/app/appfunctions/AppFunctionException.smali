.class public final Landroid/app/appfunctions/AppFunctionException;
.super Ljava/lang/Exception;
.source "AppFunctionException.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/AppFunctionException$ErrorCategory;,
        Landroid/app/appfunctions/AppFunctionException$ErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appfunctions/AppFunctionException;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ERROR_APP_UNKNOWN_ERROR:I = 0xbb8

.field public static final whitelist ERROR_CANCELLED:I = 0x7d1

.field public static final whitelist ERROR_CATEGORY_APP:I = 0x3

.field public static final whitelist ERROR_CATEGORY_REQUEST_ERROR:I = 0x1

.field public static final whitelist ERROR_CATEGORY_SYSTEM:I = 0x2

.field public static final whitelist ERROR_CATEGORY_UNKNOWN:I = 0x0

.field public static final whitelist ERROR_DENIED:I = 0x3e8

.field public static final whitelist ERROR_DISABLED:I = 0x3ea

.field public static final whitelist ERROR_ENTERPRISE_POLICY_DISALLOWED:I = 0x7d2

.field public static final whitelist ERROR_FUNCTION_NOT_FOUND:I = 0x3eb

.field public static final whitelist ERROR_INVALID_ARGUMENT:I = 0x3e9

.field public static final whitelist ERROR_SYSTEM_ERROR:I = 0x7d0


# instance fields
.field private final blacklist mErrorCode:I

.field private final blacklist mErrorMessage:Ljava/lang/String;

.field private final blacklist mExtras:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 264
    new-instance v0, Landroid/app/appfunctions/AppFunctionException$1;

    invoke-direct {v0}, Landroid/app/appfunctions/AppFunctionException$1;-><init>()V

    sput-object v0, Landroid/app/appfunctions/AppFunctionException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 148
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {p0, p1, p2, v0}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 149
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 158
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 159
    iput p1, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorCode:I

    .line 160
    iput-object p2, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorMessage:Ljava/lang/String;

    .line 161
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/appfunctions/AppFunctionException;->mExtras:Landroid/os/Bundle;

    .line 162
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 164
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorCode:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorMessage:Ljava/lang/String;

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/appfunctions/AppFunctionException;->mExtras:Landroid/os/Bundle;

    .line 168
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/appfunctions/AppFunctionException-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/appfunctions/AppFunctionException;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getErrorCategory()I
    .registers 4

    .line 197
    iget v0, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorCode:I

    const/16 v1, 0x3e8

    const/16 v2, 0x7d0

    if-lt v0, v1, :cond_e

    iget v0, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorCode:I

    if-ge v0, v2, :cond_e

    .line 198
    const/4 v0, 0x1

    return v0

    .line 200
    :cond_e
    iget v0, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorCode:I

    const/16 v1, 0xbb8

    if-lt v0, v2, :cond_1a

    iget v0, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorCode:I

    if-ge v0, v1, :cond_1a

    .line 201
    const/4 v0, 0x2

    return v0

    .line 203
    :cond_1a
    iget v0, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorCode:I

    if-lt v0, v1, :cond_26

    iget v0, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorCode:I

    const/16 v1, 0xfa0

    if-ge v0, v1, :cond_26

    .line 204
    const/4 v0, 0x3

    return v0

    .line 206
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getErrorCode()I
    .registers 2

    .line 173
    iget v0, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorCode:I

    return v0
.end method

.method public whitelist getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 179
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 212
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionException;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 222
    iget v0, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionException;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionException;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 225
    return-void
.end method
