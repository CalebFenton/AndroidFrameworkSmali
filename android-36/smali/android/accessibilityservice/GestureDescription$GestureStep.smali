.class public Landroid/accessibilityservice/GestureDescription$GestureStep;
.super Ljava/lang/Object;
.source "GestureDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GestureStep"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-o numTouchPoints:I

.field public greylist-max-o timeSinceGestureStart:J

.field public greylist-max-o touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 547
    new-instance v0, Landroid/accessibilityservice/GestureDescription$GestureStep$1;

    invoke-direct {v0}, Landroid/accessibilityservice/GestureDescription$GestureStep$1;-><init>()V

    sput-object v0, Landroid/accessibilityservice/GestureDescription$GestureStep;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(JI[Landroid/accessibilityservice/GestureDescription$TouchPoint;)V
    .registers 9
    .param p1, "timeSinceGestureStart"    # J
    .param p3, "numTouchPoints"    # I
    .param p4, "touchPointsToCopy"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput-wide p1, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    .line 518
    iput p3, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    .line 519
    new-array v0, p3, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 520
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, p3, :cond_1c

    .line 521
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    new-instance v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v3, p4, v0

    invoke-direct {v2, v3}, Landroid/accessibilityservice/GestureDescription$TouchPoint;-><init>(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    aput-object v2, v1, v0

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 523
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    .line 527
    const-class v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 528
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    .line 529
    .local v0, "parcelables":[Landroid/os/Parcelable;
    if-nez v0, :cond_1b

    const/4 v1, 0x0

    goto :goto_1c

    :cond_1b
    array-length v1, v0

    :goto_1c
    iput v1, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    .line 530
    iget v1, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    new-array v1, v1, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iput-object v1, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 531
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    iget v2, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    if-ge v1, v2, :cond_34

    .line 532
    iget-object v2, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v3, v0, v1

    check-cast v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aput-object v3, v2, v1

    .line 531
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 534
    .end local v1    # "i":I
    :cond_34
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 538
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 543
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 544
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 545
    return-void
.end method
