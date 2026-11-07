.class public final Landroid/media/quality/ParameterCapability;
.super Ljava/lang/Object;
.source "ParameterCapability.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/ParameterCapability$Capability;,
        Landroid/media/quality/ParameterCapability$ParameterType;
    }
.end annotation


# static fields
.field public static final whitelist CAPABILITY_DEFAULT:Ljava/lang/String; = "default"

.field public static final whitelist CAPABILITY_ENUM:Ljava/lang/String; = "enum"

.field public static final whitelist CAPABILITY_MAX:Ljava/lang/String; = "max"

.field public static final whitelist CAPABILITY_MIN:Ljava/lang/String; = "min"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/quality/ParameterCapability;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TYPE_DOUBLE:I = 0x3

.field public static final whitelist TYPE_INT:I = 0x1

.field public static final whitelist TYPE_LONG:I = 0x2

.field public static final whitelist TYPE_NONE:I = 0x0

.field public static final whitelist TYPE_STRING:I = 0x4


# instance fields
.field private final blacklist mCaps:Landroid/os/Bundle;

.field private final blacklist mIsSupported:Z

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 134
    new-instance v0, Landroid/media/quality/ParameterCapability$1;

    invoke-direct {v0}, Landroid/media/quality/ParameterCapability$1;-><init>()V

    sput-object v0, Landroid/media/quality/ParameterCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/ParameterCapability;->mName:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/quality/ParameterCapability;->mIsSupported:Z

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/ParameterCapability;->mType:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/ParameterCapability;->mCaps:Landroid/os/Bundle;

    .line 118
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ZILandroid/os/Bundle;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isSupported"    # Z
    .param p3, "type"    # I
    .param p4, "caps"    # Landroid/os/Bundle;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Landroid/media/quality/ParameterCapability;->mName:Ljava/lang/String;

    .line 158
    iput-boolean p2, p0, Landroid/media/quality/ParameterCapability;->mIsSupported:Z

    .line 159
    iput p3, p0, Landroid/media/quality/ParameterCapability;->mType:I

    .line 160
    iput-object p4, p0, Landroid/media/quality/ParameterCapability;->mCaps:Landroid/os/Bundle;

    .line 161
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCapabilities()Landroid/os/Bundle;
    .registers 3

    .line 194
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/media/quality/ParameterCapability;->mCaps:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public whitelist getParameterName()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/media/quality/ParameterCapability;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getParameterType()I
    .registers 2

    .line 185
    iget v0, p0, Landroid/media/quality/ParameterCapability;->mType:I

    return v0
.end method

.method public whitelist isSupported()Z
    .registers 2

    .line 175
    iget-boolean v0, p0, Landroid/media/quality/ParameterCapability;->mIsSupported:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 122
    iget-object v0, p0, Landroid/media/quality/ParameterCapability;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-boolean v0, p0, Landroid/media/quality/ParameterCapability;->mIsSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 124
    iget v0, p0, Landroid/media/quality/ParameterCapability;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v0, p0, Landroid/media/quality/ParameterCapability;->mCaps:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 126
    return-void
.end method
