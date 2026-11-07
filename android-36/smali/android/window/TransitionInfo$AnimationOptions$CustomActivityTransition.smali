.class public final Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;
.super Ljava/lang/Object;
.source "TransitionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionInfo$AnimationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomActivityTransition"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCustomBackgroundColor:I

.field private blacklist mCustomEnterResId:I

.field private blacklist mCustomExitResId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1453
    new-instance v0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition$1;

    invoke-direct {v0}, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition$1;-><init>()V

    sput-object v0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 1424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1427
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomEnterResId:I

    .line 1428
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomExitResId:I

    .line 1429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomBackgroundColor:I

    .line 1430
    return-void
.end method


# virtual methods
.method public blacklist addCustomActivityTransition(III)V
    .registers 4
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "backgroundColor"    # I

    .line 1435
    iput p1, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomEnterResId:I

    .line 1436
    iput p2, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomExitResId:I

    .line 1437
    iput p3, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomBackgroundColor:I

    .line 1438
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1442
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCustomBackgroundColor()I
    .registers 2

    .line 1422
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomBackgroundColor:I

    return v0
.end method

.method public blacklist getCustomEnterResId()I
    .registers 2

    .line 1412
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomEnterResId:I

    return v0
.end method

.method public blacklist getCustomExitResId()I
    .registers 2

    .line 1417
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomExitResId:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1447
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomEnterResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1448
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomExitResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1449
    iget v0, p0, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->mCustomBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1450
    return-void
.end method
