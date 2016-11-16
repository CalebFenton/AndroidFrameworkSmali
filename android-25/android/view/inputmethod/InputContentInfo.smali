.class public final Landroid/view/inputmethod/InputContentInfo;
.super Ljava/lang/Object;
.source "InputContentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputContentInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/inputmethod/InputContentInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContentUri:Landroid/net/Uri;

.field private final mDescription:Landroid/content/ClipDescription;

.field private final mLinkUri:Landroid/net/Uri;

.field private mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 231
    new-instance v0, Landroid/view/inputmethod/InputContentInfo$1;

    #@2
    invoke-direct {v0}, Landroid/view/inputmethod/InputContentInfo$1;-><init>()V

    #@5
    .line 230
    sput-object v0, Landroid/view/inputmethod/InputContentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;)V
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "description"    # Landroid/content/ClipDescription;

    #@0
    .prologue
    .line 56
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/InputContentInfo;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    #@4
    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "description"    # Landroid/content/ClipDescription;
    .param p3, "linkUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    const/4 v0, 0x1

    #@4
    invoke-static {p1, p2, p3, v0}, Landroid/view/inputmethod/InputContentInfo;->validateInternal(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;Z)Z

    #@7
    .line 75
    iput-object p1, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUri:Landroid/net/Uri;

    #@9
    .line 76
    iput-object p2, p0, Landroid/view/inputmethod/InputContentInfo;->mDescription:Landroid/content/ClipDescription;

    #@b
    .line 77
    iput-object p3, p0, Landroid/view/inputmethod/InputContentInfo;->mLinkUri:Landroid/net/Uri;

    #@d
    .line 73
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 217
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/net/Uri;

    #@b
    iput-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUri:Landroid/net/Uri;

    #@d
    .line 218
    sget-object v0, Landroid/content/ClipDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/content/ClipDescription;

    #@15
    iput-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mDescription:Landroid/content/ClipDescription;

    #@17
    .line 219
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@19
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/net/Uri;

    #@1f
    iput-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mLinkUri:Landroid/net/Uri;

    #@21
    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    const/4 v1, 0x1

    #@26
    if-ne v0, v1, :cond_0

    #@28
    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2b
    move-result-object v0

    #@2c
    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    #@32
    .line 216
    :goto_0
    return-void

    #@33
    .line 223
    :cond_0
    const/4 v0, 0x0

    #@34
    iput-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    #@36
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/inputmethod/InputContentInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputContentInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private static validateInternal(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;Z)Z
    .locals 4
    .param p0, "contentUri"    # Landroid/net/Uri;
    .param p1, "description"    # Landroid/content/ClipDescription;
    .param p2, "linkUri"    # Landroid/net/Uri;
    .param p3, "throwException"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 105
    if-nez p0, :cond_1

    #@3
    .line 106
    if-eqz p3, :cond_0

    #@5
    .line 107
    new-instance v2, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v3, "contentUri"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 109
    :cond_0
    return v3

    #@f
    .line 111
    :cond_1
    if-nez p1, :cond_3

    #@11
    .line 112
    if-eqz p3, :cond_2

    #@13
    .line 113
    new-instance v2, Ljava/lang/NullPointerException;

    #@15
    const-string/jumbo v3, "description"

    #@18
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 115
    :cond_2
    return v3

    #@1d
    .line 117
    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 118
    .local v0, "contentUriScheme":Ljava/lang/String;
    const-string/jumbo v2, "content"

    #@24
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v2

    #@28
    if-nez v2, :cond_5

    #@2a
    .line 119
    if-eqz p3, :cond_4

    #@2c
    .line 120
    new-instance v2, Ljava/security/InvalidParameterException;

    #@2e
    const-string/jumbo v3, "contentUri must have content scheme"

    #@31
    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@34
    throw v2

    #@35
    .line 122
    :cond_4
    return v3

    #@36
    .line 124
    :cond_5
    if-eqz p2, :cond_6

    #@38
    .line 125
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    .line 126
    .local v1, "scheme":Ljava/lang/String;
    if-eqz v1, :cond_7

    #@3e
    .line 127
    const-string/jumbo v2, "http"

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@44
    move-result v2

    #@45
    if-nez v2, :cond_6

    #@47
    const-string/jumbo v2, "https"

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4d
    move-result v2

    #@4e
    if-eqz v2, :cond_7

    #@50
    .line 135
    .end local v1    # "scheme":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x1

    #@51
    return v2

    #@52
    .line 128
    .restart local v1    # "scheme":Ljava/lang/String;
    :cond_7
    if-eqz p3, :cond_8

    #@54
    .line 129
    new-instance v2, Ljava/security/InvalidParameterException;

    #@56
    .line 130
    const-string/jumbo v3, "linkUri must have either http or https scheme"

    #@59
    .line 129
    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v2

    #@5d
    .line 132
    :cond_8
    return v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 248
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getDescription()Landroid/content/ClipDescription;
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mDescription:Landroid/content/ClipDescription;

    #@2
    return-object v0
.end method

.method public getLinkUri()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mLinkUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public releasePermission()V
    .locals 2

    #@0
    .prologue
    .line 187
    iget-object v1, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 188
    return-void

    #@5
    .line 191
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    #@7
    invoke-interface {v1}, Lcom/android/internal/inputmethod/IInputContentUriToken;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 186
    :goto_0
    return-void

    #@b
    .line 192
    :catch_0
    move-exception v0

    #@c
    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    goto :goto_0
.end method

.method public requestPermission()V
    .locals 2

    #@0
    .prologue
    .line 171
    iget-object v1, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 172
    return-void

    #@5
    .line 175
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    #@7
    invoke-interface {v1}, Lcom/android/internal/inputmethod/IInputContentUriToken;->take()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 170
    :goto_0
    return-void

    #@b
    .line 176
    :catch_0
    move-exception v0

    #@c
    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    goto :goto_0
.end method

.method setUriToken(Lcom/android/internal/inputmethod/IInputContentUriToken;)V
    .locals 2
    .param p1, "token"    # Lcom/android/internal/inputmethod/IInputContentUriToken;

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "URI token is already set"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 162
    :cond_0
    iput-object p1, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    #@f
    .line 158
    return-void
.end method

.method public validate()Z
    .locals 4

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUri:Landroid/net/Uri;

    #@2
    iget-object v1, p0, Landroid/view/inputmethod/InputContentInfo;->mDescription:Landroid/content/ClipDescription;

    #@4
    iget-object v2, p0, Landroid/view/inputmethod/InputContentInfo;->mLinkUri:Landroid/net/Uri;

    #@6
    const/4 v3, 0x0

    #@7
    invoke-static {v0, v1, v2, v3}, Landroid/view/inputmethod/InputContentInfo;->validateInternal(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;Z)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUri:Landroid/net/Uri;

    #@2
    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    #@5
    .line 206
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mDescription:Landroid/content/ClipDescription;

    #@7
    invoke-virtual {v0, p1, p2}, Landroid/content/ClipDescription;->writeToParcel(Landroid/os/Parcel;I)V

    #@a
    .line 207
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mLinkUri:Landroid/net/Uri;

    #@c
    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    #@f
    .line 208
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 209
    const/4 v0, 0x1

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 210
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    #@19
    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputContentUriToken;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@20
    .line 204
    :goto_0
    return-void

    #@21
    .line 212
    :cond_0
    const/4 v0, 0x0

    #@22
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    goto :goto_0
.end method
