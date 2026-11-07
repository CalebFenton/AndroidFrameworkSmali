.class public final Landroid/window/TaskFragmentCreationParams;
.super Ljava/lang/Object;
.source "TaskFragmentCreationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TaskFragmentCreationParams$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TaskFragmentCreationParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAllowTransitionWhenEmpty:Z

.field private final blacklist mConfigurationChangeMask:I

.field private final blacklist mFragmentToken:Landroid/os/IBinder;

.field private final blacklist mInitialRelativeBounds:Landroid/graphics/Rect;

.field private final blacklist mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

.field private final blacklist mOverrideOrientation:I

.field private final blacklist mOwnerToken:Landroid/os/IBinder;

.field private final blacklist mPairedActivityToken:Landroid/os/IBinder;

.field private final blacklist mPairedPrimaryFragmentToken:Landroid/os/IBinder;

.field private final blacklist mWindowingMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 234
    new-instance v0, Landroid/window/TaskFragmentCreationParams$1;

    invoke-direct {v0}, Landroid/window/TaskFragmentCreationParams$1;-><init>()V

    sput-object v0, Landroid/window/TaskFragmentCreationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mInitialRelativeBounds:Landroid/graphics/Rect;

    .line 206
    sget-object v0, Landroid/window/TaskFragmentOrganizerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskFragmentOrganizerToken;

    iput-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mFragmentToken:Landroid/os/IBinder;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mOwnerToken:Landroid/os/IBinder;

    .line 209
    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mInitialRelativeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskFragmentCreationParams;->mWindowingMode:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mPairedPrimaryFragmentToken:Landroid/os/IBinder;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mPairedActivityToken:Landroid/os/IBinder;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TaskFragmentCreationParams;->mAllowTransitionWhenEmpty:Z

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskFragmentCreationParams;->mOverrideOrientation:I

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskFragmentCreationParams;->mConfigurationChangeMask:I

    .line 216
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TaskFragmentCreationParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TaskFragmentCreationParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;ILandroid/os/IBinder;Landroid/os/IBinder;ZII)V
    .registers 13
    .param p1, "organizer"    # Landroid/window/TaskFragmentOrganizerToken;
    .param p2, "fragmentToken"    # Landroid/os/IBinder;
    .param p3, "ownerToken"    # Landroid/os/IBinder;
    .param p4, "initialRelativeBounds"    # Landroid/graphics/Rect;
    .param p5, "windowingMode"    # I
    .param p6, "pairedPrimaryFragmentToken"    # Landroid/os/IBinder;
    .param p7, "pairedActivityToken"    # Landroid/os/IBinder;
    .param p8, "allowTransitionWhenEmpty"    # Z
    .param p9, "overrideOrientation"    # I
    .param p10, "configurationChangeMask"    # I

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mInitialRelativeBounds:Landroid/graphics/Rect;

    .line 131
    if-eqz p6, :cond_17

    if-nez p7, :cond_f

    goto :goto_17

    .line 132
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pairedPrimaryFragmentToken and pairedActivityToken should not be set at the same time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_17
    :goto_17
    iput-object p1, p0, Landroid/window/TaskFragmentCreationParams;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    .line 136
    iput-object p2, p0, Landroid/window/TaskFragmentCreationParams;->mFragmentToken:Landroid/os/IBinder;

    .line 137
    iput-object p3, p0, Landroid/window/TaskFragmentCreationParams;->mOwnerToken:Landroid/os/IBinder;

    .line 138
    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mInitialRelativeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 139
    iput p5, p0, Landroid/window/TaskFragmentCreationParams;->mWindowingMode:I

    .line 140
    iput-object p6, p0, Landroid/window/TaskFragmentCreationParams;->mPairedPrimaryFragmentToken:Landroid/os/IBinder;

    .line 141
    iput-object p7, p0, Landroid/window/TaskFragmentCreationParams;->mPairedActivityToken:Landroid/os/IBinder;

    .line 142
    iput-boolean p8, p0, Landroid/window/TaskFragmentCreationParams;->mAllowTransitionWhenEmpty:Z

    .line 143
    iput p9, p0, Landroid/window/TaskFragmentCreationParams;->mOverrideOrientation:I

    .line 144
    iput p10, p0, Landroid/window/TaskFragmentCreationParams;->mConfigurationChangeMask:I

    .line 145
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;ILandroid/os/IBinder;Landroid/os/IBinder;ZIILandroid/window/TaskFragmentCreationParams-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/window/TaskFragmentCreationParams;-><init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;ILandroid/os/IBinder;Landroid/os/IBinder;ZII)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllowTransitionWhenEmpty()Z
    .registers 2

    .line 192
    iget-boolean v0, p0, Landroid/window/TaskFragmentCreationParams;->mAllowTransitionWhenEmpty:Z

    return v0
.end method

.method public blacklist getConfigurationChangeMask()I
    .registers 2

    .line 202
    iget v0, p0, Landroid/window/TaskFragmentCreationParams;->mConfigurationChangeMask:I

    return v0
.end method

.method public blacklist getFragmentToken()Landroid/os/IBinder;
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mFragmentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInitialRelativeBounds()Landroid/graphics/Rect;
    .registers 2

    .line 164
    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mInitialRelativeBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getOrganizer()Landroid/window/TaskFragmentOrganizerToken;
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    return-object v0
.end method

.method public blacklist getOverrideOrientation()I
    .registers 2

    .line 197
    iget v0, p0, Landroid/window/TaskFragmentCreationParams;->mOverrideOrientation:I

    return v0
.end method

.method public blacklist getOwnerToken()Landroid/os/IBinder;
    .registers 2

    .line 159
    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mOwnerToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getPairedActivityToken()Landroid/os/IBinder;
    .registers 2

    .line 187
    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mPairedActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getPairedPrimaryFragmentToken()Landroid/os/IBinder;
    .registers 2

    .line 178
    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mPairedPrimaryFragmentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getWindowingMode()I
    .registers 2

    .line 169
    iget v0, p0, Landroid/window/TaskFragmentCreationParams;->mWindowingMode:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskFragmentCreationParams{ organizer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fragmentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ownerToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mOwnerToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " initialRelativeBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mInitialRelativeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " windowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskFragmentCreationParams;->mWindowingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pairedFragmentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mPairedPrimaryFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pairedActivityToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mPairedActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " allowTransitionWhenEmpty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/TaskFragmentCreationParams;->mAllowTransitionWhenEmpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " overrideOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskFragmentCreationParams;->mOverrideOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " configurationChangeMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskFragmentCreationParams;->mConfigurationChangeMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 221
    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskFragmentOrganizerToken;->writeToParcel(Landroid/os/Parcel;I)V

    .line 222
    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mFragmentToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 223
    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mOwnerToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 224
    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mInitialRelativeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 225
    iget v0, p0, Landroid/window/TaskFragmentCreationParams;->mWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mPairedPrimaryFragmentToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 227
    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mPairedActivityToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 228
    iget-boolean v0, p0, Landroid/window/TaskFragmentCreationParams;->mAllowTransitionWhenEmpty:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 229
    iget v0, p0, Landroid/window/TaskFragmentCreationParams;->mOverrideOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget v0, p0, Landroid/window/TaskFragmentCreationParams;->mConfigurationChangeMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    return-void
.end method
