.class public Lcom/android/internal/view/AppearanceRegion;
.super Ljava/lang/Object;
.source "AppearanceRegion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/view/AppearanceRegion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAppearance:I

.field private blacklist mBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 121
    new-instance v0, Lcom/android/internal/view/AppearanceRegion$1;

    invoke-direct {v0}, Lcom/android/internal/view/AppearanceRegion$1;-><init>()V

    sput-object v0, Lcom/android/internal/view/AppearanceRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/graphics/Rect;)V
    .registers 6
    .param p1, "appearance"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/android/internal/view/AppearanceRegion;->mAppearance:I

    .line 71
    iput-object p2, p0, Lcom/android/internal/view/AppearanceRegion;->mBounds:Landroid/graphics/Rect;

    .line 72
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/view/AppearanceRegion;->mBounds:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 110
    .local v0, "appearance":I
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 112
    .local v1, "bounds":Landroid/graphics/Rect;
    iput v0, p0, Lcom/android/internal/view/AppearanceRegion;->mAppearance:I

    .line 113
    iput-object v1, p0, Lcom/android/internal/view/AppearanceRegion;->mBounds:Landroid/graphics/Rect;

    .line 114
    const-class v2, Landroid/annotation/NonNull;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/view/AppearanceRegion;->mBounds:Landroid/graphics/Rect;

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 38
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 39
    return v0

    .line 41
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    .line 44
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/internal/view/AppearanceRegion;

    .line 45
    .local v2, "sa":Lcom/android/internal/view/AppearanceRegion;
    iget v3, p0, Lcom/android/internal/view/AppearanceRegion;->mAppearance:I

    iget v4, v2, Lcom/android/internal/view/AppearanceRegion;->mAppearance:I

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Lcom/android/internal/view/AppearanceRegion;->mBounds:Landroid/graphics/Rect;

    iget-object v4, v2, Lcom/android/internal/view/AppearanceRegion;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    return v0

    .line 42
    .end local v2    # "sa":Lcom/android/internal/view/AppearanceRegion;
    :cond_28
    :goto_28
    return v1
.end method

.method public blacklist getAppearance()I
    .registers 2

    .line 80
    iget v0, p0, Lcom/android/internal/view/AppearanceRegion;->mAppearance:I

    return v0
.end method

.method public blacklist getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/internal/view/AppearanceRegion;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 50
    const-class v0, Landroid/view/InsetsFlags;

    iget v1, p0, Lcom/android/internal/view/AppearanceRegion;->mAppearance:I

    .line 51
    const-string v2, "appearance"

    invoke-static {v0, v2, v1}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "appearanceString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppearanceRegion{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/view/AppearanceRegion;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 94
    iget v0, p0, Lcom/android/internal/view/AppearanceRegion;->mAppearance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v0, p0, Lcom/android/internal/view/AppearanceRegion;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 96
    return-void
.end method
