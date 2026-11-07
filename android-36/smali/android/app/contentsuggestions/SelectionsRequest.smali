.class public final Landroid/app/contentsuggestions/SelectionsRequest;
.super Ljava/lang/Object;
.source "SelectionsRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/contentsuggestions/SelectionsRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/contentsuggestions/SelectionsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mInterestPoint:Landroid/graphics/Point;

.field private final blacklist mTaskId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Landroid/app/contentsuggestions/SelectionsRequest$1;

    invoke-direct {v0}, Landroid/app/contentsuggestions/SelectionsRequest$1;-><init>()V

    sput-object v0, Landroid/app/contentsuggestions/SelectionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/graphics/Point;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "interestPoint"    # Landroid/graphics/Point;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mTaskId:I

    .line 46
    iput-object p2, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mInterestPoint:Landroid/graphics/Point;

    .line 47
    iput-object p3, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mExtras:Landroid/os/Bundle;

    .line 48
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/graphics/Point;Landroid/os/Bundle;Landroid/app/contentsuggestions/SelectionsRequest-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/app/contentsuggestions/SelectionsRequest;-><init>(ILandroid/graphics/Point;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_a

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_c

    :cond_a
    iget-object v0, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mExtras:Landroid/os/Bundle;

    :goto_c
    return-object v0
.end method

.method public whitelist getInterestPoint()Landroid/graphics/Point;
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mInterestPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public whitelist getTaskId()I
    .registers 2

    .line 54
    iget v0, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mTaskId:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 79
    iget v0, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v0, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mInterestPoint:Landroid/graphics/Point;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 81
    iget-object v0, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 82
    return-void
.end method
