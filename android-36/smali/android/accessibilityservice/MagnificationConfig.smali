.class public final Landroid/accessibilityservice/MagnificationConfig;
.super Ljava/lang/Object;
.source "MagnificationConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/MagnificationConfig$Builder;,
        Landroid/accessibilityservice/MagnificationConfig$MagnificationMode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/accessibilityservice/MagnificationConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MAGNIFICATION_MODE_DEFAULT:I = 0x0

.field public static final whitelist MAGNIFICATION_MODE_FULLSCREEN:I = 0x1

.field public static final whitelist MAGNIFICATION_MODE_WINDOW:I = 0x2


# instance fields
.field private blacklist mActivated:Z

.field private blacklist mCenterX:F

.field private blacklist mCenterY:F

.field private blacklist mMode:I

.field private blacklist mScale:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmActivated(Landroid/accessibilityservice/MagnificationConfig;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/accessibilityservice/MagnificationConfig;->mActivated:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCenterX(Landroid/accessibilityservice/MagnificationConfig;F)V
    .registers 2

    iput p1, p0, Landroid/accessibilityservice/MagnificationConfig;->mCenterX:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCenterY(Landroid/accessibilityservice/MagnificationConfig;F)V
    .registers 2

    iput p1, p0, Landroid/accessibilityservice/MagnificationConfig;->mCenterY:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMode(Landroid/accessibilityservice/MagnificationConfig;I)V
    .registers 2

    iput p1, p0, Landroid/accessibilityservice/MagnificationConfig;->mMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScale(Landroid/accessibilityservice/MagnificationConfig;F)V
    .registers 2

    iput p1, p0, Landroid/accessibilityservice/MagnificationConfig;->mScale:F

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 276
    new-instance v0, Landroid/accessibilityservice/MagnificationConfig$1;

    invoke-direct {v0}, Landroid/accessibilityservice/MagnificationConfig$1;-><init>()V

    sput-object v0, Landroid/accessibilityservice/MagnificationConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Landroid/accessibilityservice/MagnificationConfig;->mMode:I

    .line 79
    iput-boolean v0, p0, Landroid/accessibilityservice/MagnificationConfig;->mActivated:Z

    .line 80
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/accessibilityservice/MagnificationConfig;->mScale:F

    .line 81
    iput v0, p0, Landroid/accessibilityservice/MagnificationConfig;->mCenterX:F

    .line 82
    iput v0, p0, Landroid/accessibilityservice/MagnificationConfig;->mCenterY:F

    .line 86
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/accessibilityservice/MagnificationConfig-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/accessibilityservice/MagnificationConfig;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Landroid/accessibilityservice/MagnificationConfig;->mMode:I

    .line 79
    iput-boolean v0, p0, Landroid/accessibilityservice/MagnificationConfig;->mActivated:Z

    .line 80
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/accessibilityservice/MagnificationConfig;->mScale:F

    .line 81
    iput v0, p0, Landroid/accessibilityservice/MagnificationConfig;->mCenterX:F

    .line 82
    iput v0, p0, Landroid/accessibilityservice/MagnificationConfig;->mCenterY:F

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/MagnificationConfig;->mMode:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/accessibilityservice/MagnificationConfig;->mActivated:Z

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/MagnificationConfig;->mScale:F

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/MagnificationConfig;->mCenterX:F

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/MagnificationConfig;->mCenterY:F

    .line 94
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/accessibilityservice/MagnificationConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/accessibilityservice/MagnificationConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCenterX()F
    .registers 2

    .line 132
    iget v0, p0, Landroid/accessibilityservice/MagnificationConfig;->mCenterX:F

    return v0
.end method

.method public whitelist getCenterY()F
    .registers 2

    .line 141
    iget v0, p0, Landroid/accessibilityservice/MagnificationConfig;->mCenterY:F

    return v0
.end method

.method public whitelist getMode()I
    .registers 2

    .line 103
    iget v0, p0, Landroid/accessibilityservice/MagnificationConfig;->mMode:I

    return v0
.end method

.method public whitelist getScale()F
    .registers 2

    .line 123
    iget v0, p0, Landroid/accessibilityservice/MagnificationConfig;->mScale:F

    return v0
.end method

.method public whitelist isActivated()Z
    .registers 2

    .line 114
    iget-boolean v0, p0, Landroid/accessibilityservice/MagnificationConfig;->mActivated:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MagnificationConfig["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v2, "activated: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/accessibilityservice/MagnificationConfig;->isActivated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string/jumbo v2, "scale: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v2, "centerX: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, "centerY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 168
    iget v0, p0, Landroid/accessibilityservice/MagnificationConfig;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-boolean v0, p0, Landroid/accessibilityservice/MagnificationConfig;->mActivated:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 170
    iget v0, p0, Landroid/accessibilityservice/MagnificationConfig;->mScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 171
    iget v0, p0, Landroid/accessibilityservice/MagnificationConfig;->mCenterX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 172
    iget v0, p0, Landroid/accessibilityservice/MagnificationConfig;->mCenterY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 173
    return-void
.end method
