.class final Lcom/google/android/gtalkservice/Presence$1;
.super Ljava/lang/Object;
.source "Presence.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gtalkservice/Presence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gtalkservice/Presence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gtalkservice/Presence;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 539
    new-instance v0, Lcom/google/android/gtalkservice/Presence;

    #@2
    invoke-direct {v0, p1}, Lcom/google/android/gtalkservice/Presence;-><init>(Landroid/os/Parcel;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 538
    invoke-virtual {p0, p1}, Lcom/google/android/gtalkservice/Presence$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gtalkservice/Presence;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gtalkservice/Presence;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 543
    new-array v0, p1, [Lcom/google/android/gtalkservice/Presence;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 542
    invoke-virtual {p0, p1}, Lcom/google/android/gtalkservice/Presence$1;->newArray(I)[Lcom/google/android/gtalkservice/Presence;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
