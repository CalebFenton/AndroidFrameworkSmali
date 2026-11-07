.class public final Landroid/credentials/selection/UserSelectionDialogResult;
.super Landroid/credentials/selection/BaseDialogResult;
.source "UserSelectionDialogResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/selection/UserSelectionDialogResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EXTRA_USER_SELECTION_RESULT:Ljava/lang/String; = "android.credentials.selection.extra.USER_SELECTION_RESULT"


# instance fields
.field private final blacklist mEntryKey:Ljava/lang/String;

.field private final blacklist mEntrySubkey:Ljava/lang/String;

.field private final blacklist mProviderId:Ljava/lang/String;

.field private blacklist mProviderPendingIntentResponse:Landroid/credentials/selection/ProviderPendingIntentResponse;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 145
    new-instance v0, Landroid/credentials/selection/UserSelectionDialogResult$1;

    invoke-direct {v0}, Landroid/credentials/selection/UserSelectionDialogResult$1;-><init>()V

    sput-object v0, Landroid/credentials/selection/UserSelectionDialogResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "requestToken"    # Landroid/os/IBinder;
    .param p2, "providerId"    # Ljava/lang/String;
    .param p3, "entryKey"    # Ljava/lang/String;
    .param p4, "entrySubkey"    # Ljava/lang/String;

    .line 75
    invoke-direct {p0, p1}, Landroid/credentials/selection/BaseDialogResult;-><init>(Landroid/os/IBinder;)V

    .line 76
    iput-object p2, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mProviderId:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mEntryKey:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mEntrySubkey:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/ProviderPendingIntentResponse;)V
    .registers 6
    .param p1, "requestToken"    # Landroid/os/IBinder;
    .param p2, "providerId"    # Ljava/lang/String;
    .param p3, "entryKey"    # Ljava/lang/String;
    .param p4, "entrySubkey"    # Ljava/lang/String;
    .param p5, "providerPendingIntentResponse"    # Landroid/credentials/selection/ProviderPendingIntentResponse;

    .line 85
    invoke-direct {p0, p1}, Landroid/credentials/selection/BaseDialogResult;-><init>(Landroid/os/IBinder;)V

    .line 86
    iput-object p2, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mProviderId:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mEntryKey:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mEntrySubkey:Ljava/lang/String;

    .line 89
    iput-object p5, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mProviderPendingIntentResponse:Landroid/credentials/selection/ProviderPendingIntentResponse;

    .line 90
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 117
    invoke-direct {p0, p1}, Landroid/credentials/selection/BaseDialogResult;-><init>(Landroid/os/Parcel;)V

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "providerId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "entryKey":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "entrySubkey":Ljava/lang/String;
    iput-object v0, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mProviderId:Ljava/lang/String;

    .line 123
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 124
    iput-object v1, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mEntryKey:Ljava/lang/String;

    .line 125
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mEntryKey:Ljava/lang/String;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 126
    iput-object v2, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mEntrySubkey:Ljava/lang/String;

    .line 127
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mEntrySubkey:Ljava/lang/String;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 128
    sget-object v3, Landroid/credentials/selection/ProviderPendingIntentResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/credentials/selection/ProviderPendingIntentResponse;

    iput-object v3, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mProviderPendingIntentResponse:Landroid/credentials/selection/ProviderPendingIntentResponse;

    .line 129
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/credentials/selection/UserSelectionDialogResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/credentials/selection/UserSelectionDialogResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist addToBundle(Landroid/credentials/selection/UserSelectionDialogResult;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "result"    # Landroid/credentials/selection/UserSelectionDialogResult;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 53
    const-string v0, "android.credentials.selection.extra.USER_SELECTION_RESULT"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 54
    return-void
.end method

.method public static blacklist fromResultData(Landroid/os/Bundle;)Landroid/credentials/selection/UserSelectionDialogResult;
    .registers 3
    .param p0, "resultData"    # Landroid/os/Bundle;

    .line 43
    const-string v0, "android.credentials.selection.extra.USER_SELECTION_RESULT"

    const-class v1, Landroid/credentials/selection/UserSelectionDialogResult;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/credentials/selection/UserSelectionDialogResult;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEntryKey()Ljava/lang/String;
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mEntryKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getEntrySubkey()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mEntrySubkey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPendingIntentProviderResponse()Landroid/credentials/selection/ProviderPendingIntentResponse;
    .registers 2

    .line 113
    iget-object v0, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mProviderPendingIntentResponse:Landroid/credentials/selection/ProviderPendingIntentResponse;

    return-object v0
.end method

.method public blacklist getProviderId()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mProviderId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 133
    invoke-super {p0, p1, p2}, Landroid/credentials/selection/BaseDialogResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 134
    iget-object v0, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mProviderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mEntryKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mEntrySubkey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Landroid/credentials/selection/UserSelectionDialogResult;->mProviderPendingIntentResponse:Landroid/credentials/selection/ProviderPendingIntentResponse;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 138
    return-void
.end method
