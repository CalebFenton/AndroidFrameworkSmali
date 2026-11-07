.class public Landroid/credentials/selection/BaseDialogResult;
.super Ljava/lang/Object;
.source "BaseDialogResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/selection/BaseDialogResult$ResultCode;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/selection/BaseDialogResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EXTRA_BASE_RESULT:Ljava/lang/String; = "android.credentials.selection.extra.BASE_RESULT"

.field public static final blacklist RESULT_CODE_CANCELED_AND_LAUNCHED_SETTINGS:I = 0x1

.field public static final blacklist RESULT_CODE_DATA_PARSING_FAILURE:I = 0x3

.field public static final blacklist RESULT_CODE_DIALOG_COMPLETE_WITH_SELECTION:I = 0x2

.field public static final blacklist RESULT_CODE_DIALOG_USER_CANCELED:I


# instance fields
.field private final blacklist mRequestToken:Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 133
    new-instance v0, Landroid/credentials/selection/BaseDialogResult$1;

    invoke-direct {v0}, Landroid/credentials/selection/BaseDialogResult$1;-><init>()V

    sput-object v0, Landroid/credentials/selection/BaseDialogResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "requestToken"    # Landroid/os/IBinder;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Landroid/credentials/selection/BaseDialogResult;->mRequestToken:Landroid/os/IBinder;

    .line 103
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 120
    .local v0, "requestToken":Landroid/os/IBinder;
    iput-object v0, p0, Landroid/credentials/selection/BaseDialogResult;->mRequestToken:Landroid/os/IBinder;

    .line 121
    return-void
.end method

.method public static blacklist addToBundle(Landroid/credentials/selection/BaseDialogResult;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "result"    # Landroid/credentials/selection/BaseDialogResult;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 59
    const-string v0, "android.credentials.selection.extra.BASE_RESULT"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 60
    return-void
.end method

.method public static blacklist fromResultData(Landroid/os/Bundle;)Landroid/credentials/selection/BaseDialogResult;
    .registers 3
    .param p0, "resultData"    # Landroid/os/Bundle;

    .line 51
    const-string v0, "android.credentials.selection.extra.BASE_RESULT"

    const-class v1, Landroid/credentials/selection/BaseDialogResult;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/credentials/selection/BaseDialogResult;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRequestToken()Landroid/os/IBinder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    iget-object v0, p0, Landroid/credentials/selection/BaseDialogResult;->mRequestToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 125
    iget-object v0, p0, Landroid/credentials/selection/BaseDialogResult;->mRequestToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 126
    return-void
.end method
