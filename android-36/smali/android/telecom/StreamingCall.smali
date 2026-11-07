.class public final Landroid/telecom/StreamingCall;
.super Ljava/lang/Object;
.source "StreamingCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/StreamingCall$StreamingCallState;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/StreamingCall;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_CALL_ID:Ljava/lang/String; = "android.telecom.extra.CALL_ID"

.field public static final whitelist STATE_DISCONNECTED:I = 0x3

.field public static final whitelist STATE_HOLDING:I = 0x2

.field public static final whitelist STATE_STREAMING:I = 0x1


# instance fields
.field private blacklist mAdapter:Landroid/telecom/StreamingCallAdapter;

.field private final blacklist mAddress:Landroid/net/Uri;

.field private final blacklist mComponentName:Landroid/content/ComponentName;

.field private final blacklist mDisplayName:Ljava/lang/CharSequence;

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Landroid/telecom/StreamingCall$1;

    invoke-direct {v0}, Landroid/telecom/StreamingCall$1;-><init>()V

    sput-object v0, Landroid/telecom/StreamingCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "displayName"    # Ljava/lang/CharSequence;
    .param p3, "address"    # Landroid/net/Uri;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/StreamingCall;->mAdapter:Landroid/telecom/StreamingCallAdapter;

    .line 126
    iput-object p1, p0, Landroid/telecom/StreamingCall;->mComponentName:Landroid/content/ComponentName;

    .line 127
    iput-object p2, p0, Landroid/telecom/StreamingCall;->mDisplayName:Ljava/lang/CharSequence;

    .line 128
    iput-object p3, p0, Landroid/telecom/StreamingCall;->mAddress:Landroid/net/Uri;

    .line 129
    iput-object p4, p0, Landroid/telecom/StreamingCall;->mExtras:Landroid/os/Bundle;

    .line 130
    const/4 v0, 0x1

    iput v0, p0, Landroid/telecom/StreamingCall;->mState:I

    .line 131
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/StreamingCall;->mAdapter:Landroid/telecom/StreamingCallAdapter;

    .line 70
    const-class v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/telecom/StreamingCall;->mComponentName:Landroid/content/ComponentName;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/StreamingCall;->mDisplayName:Ljava/lang/CharSequence;

    .line 72
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telecom/StreamingCall;->mAddress:Landroid/net/Uri;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/StreamingCall;->mExtras:Landroid/os/Bundle;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/StreamingCall;->mState:I

    .line 75
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telecom/StreamingCall-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/StreamingCall;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAddress()Landroid/net/Uri;
    .registers 2

    .line 166
    iget-object v0, p0, Landroid/telecom/StreamingCall;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 148
    iget-object v0, p0, Landroid/telecom/StreamingCall;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getDisplayName()Ljava/lang/CharSequence;
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/telecom/StreamingCall;->mDisplayName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 183
    iget-object v0, p0, Landroid/telecom/StreamingCall;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getState()I
    .registers 2

    .line 174
    iget v0, p0, Landroid/telecom/StreamingCall;->mState:I

    return v0
.end method

.method public whitelist requestStreamingState(I)V
    .registers 3
    .param p1, "state"    # I

    .line 192
    iget-object v0, p0, Landroid/telecom/StreamingCall;->mAdapter:Landroid/telecom/StreamingCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/StreamingCallAdapter;->setStreamingState(I)V

    .line 193
    return-void
.end method

.method public blacklist setAdapter(Landroid/telecom/StreamingCallAdapter;)V
    .registers 2
    .param p1, "adapter"    # Landroid/telecom/StreamingCallAdapter;

    .line 137
    iput-object p1, p0, Landroid/telecom/StreamingCall;->mAdapter:Landroid/telecom/StreamingCallAdapter;

    .line 138
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 97
    iget-object v0, p0, Landroid/telecom/StreamingCall;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 98
    iget-object v0, p0, Landroid/telecom/StreamingCall;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Landroid/telecom/StreamingCall;->mAddress:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 100
    iget-object v0, p0, Landroid/telecom/StreamingCall;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 101
    iget v0, p0, Landroid/telecom/StreamingCall;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return-void
.end method
