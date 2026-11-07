.class public final Landroid/view/SurfaceControlViewHost$SurfacePackage;
.super Ljava/lang/Object;
.source "SurfaceControlViewHost.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControlViewHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SurfacePackage"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/SurfaceControlViewHost$SurfacePackage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

.field private final blacklist mInputTransferToken:Landroid/window/InputTransferToken;

.field private final blacklist mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

.field private blacklist mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 313
    new-instance v0, Landroid/view/SurfaceControlViewHost$SurfacePackage$1;

    invoke-direct {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage$1;-><init>()V

    sput-object v0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 192
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->readFromParcel(Landroid/os/Parcel;)V

    .line 193
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v1, "SurfacePackage(Parcel)"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setUnreleasedWarningCallSite(Ljava/lang/String;)V

    .line 194
    nop

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 194
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    .line 196
    sget-object v0, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/InputTransferToken;

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mInputTransferToken:Landroid/window/InputTransferToken;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ISurfaceControlViewHost$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ISurfaceControlViewHost;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    .line 198
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/SurfaceControlViewHost-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/SurfaceControl;Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/window/InputTransferToken;Landroid/view/ISurfaceControlViewHost;)V
    .registers 5
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "connection"    # Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    .param p3, "inputTransferToken"    # Landroid/window/InputTransferToken;
    .param p4, "ri"    # Landroid/view/ISurfaceControlViewHost;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 165
    iput-object p2, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    .line 166
    iput-object p3, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mInputTransferToken:Landroid/window/InputTransferToken;

    .line 167
    iput-object p4, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    .line 168
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 5
    .param p1, "other"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iget-object v0, p1, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 182
    .local v0, "otherSurfaceControl":Landroid/view/SurfaceControl;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 183
    new-instance v1, Landroid/view/SurfaceControl;

    const-string v2, "SurfacePackage"

    invoke-direct {v1, v0, v2}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 185
    :cond_16
    iget-object v1, p1, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    iput-object v1, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    .line 186
    iget-object v1, p1, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mInputTransferToken:Landroid/window/InputTransferToken;

    iput-object v1, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mInputTransferToken:Landroid/window/InputTransferToken;

    .line 187
    iget-object v1, p1, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    iput-object v1, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    .line 188
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    return-object v0
.end method

.method public whitelist getInputTransferToken()Landroid/window/InputTransferToken;
    .registers 2

    .line 304
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mInputTransferToken:Landroid/window/InputTransferToken;

    return-object v0
.end method

.method public blacklist getRemoteInterface()Landroid/view/ISurfaceControlViewHost;
    .registers 2

    .line 226
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    return-object v0
.end method

.method public whitelist getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 208
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public whitelist notifyConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "c"    # Landroid/content/res/Configuration;

    .line 249
    :try_start_0
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ISurfaceControlViewHost;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 252
    goto :goto_c

    .line 250
    :catch_8
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 253
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public whitelist notifyDetachedFromWindow()V
    .registers 2

    .line 261
    :try_start_0
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ISurfaceControlViewHost;->onDispatchDetachedFromWindow()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 264
    goto :goto_c

    .line 262
    :catch_8
    move-exception v0

    .line 263
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 265
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public whitelist release()V
    .registers 2

    .line 287
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    .line 288
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 290
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 291
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{inputTransferToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " remoteInterface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 310
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 274
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 275
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 276
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mInputTransferToken:Landroid/window/InputTransferToken;

    invoke-virtual {v0, p1, p2}, Landroid/window/InputTransferToken;->writeToParcel(Landroid/os/Parcel;I)V

    .line 277
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    invoke-interface {v0}, Landroid/view/ISurfaceControlViewHost;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 278
    return-void
.end method
